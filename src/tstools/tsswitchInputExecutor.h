//----------------------------------------------------------------------------
//
// TSDuck - The MPEG Transport Stream Toolkit
// Copyright (c) 2005-2018, Thierry Lelegard
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice,
//    this list of conditions and the following disclaimer.
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
// THE POSSIBILITY OF SUCH DAMAGE.
//
//----------------------------------------------------------------------------
//!
//!  @file
//!  Input switch (tsswitch) input plugin executor thread.
//!
//----------------------------------------------------------------------------

#pragma once
#include "tsPluginThread.h"
#include "tsMutex.h"
#include "tsCondition.h"

namespace ts {
    //!
    //! Input switch (tsswitch) namespace.
    //!
    namespace tsswitch {

        class Core;

        //!
        //! Execution context of a tsswitch input plugin.
        //! @ingroup plugin
        //!
        class InputExecutor : public PluginThread
        {
        public:
            // Constructor & destructor.
            InputExecutor(Core& core, size_t index);
            virtual ~InputExecutor();

            // Start, stop input.
            void startInput(bool isCurrent);
            void stopInput();

            // Set/reset as current input plugin. Do not start or stop it.
            void setCurrent(bool isCurrent);

            // Terminate input thread.
            void terminateInput();

            // Get/free some packets to output.
            void getOutputArea(TSPacket*& first, size_t& count);
            void freeOutput(size_t count);

            // Implementation of TSP. We do not use "joint termination" in tsswitch.
            virtual void useJointTermination(bool) override {}
            virtual void jointTerminate() override {}
            virtual bool useJointTermination() const override {return false;}
            virtual bool thisJointTerminated() const override {return false;}

        private:
            Core&          _core;         // Application core.
            InputPlugin*   _input;        // Plugin API.
            const size_t   _pluginIndex;  // Index of this input plugin.
            TSPacketVector _buffer;       // Packet buffer.
            Mutex          _mutex;        // Mutex to protect all subsequent fields.
            Condition      _todo;         // Condition to signal something to do.
            bool           _isCurrent;    // This plugin is the current input one.
            bool           _outputInUse;  // The output part of the buffer is currently in use by the output plugin.
            bool           _startRequest; // Start input requested.
            bool           _stopRequest;  // Stop input requested.
            bool           _terminated;   // Terminate thread.
            size_t         _outFirst;     // Index of first packet to output in _buffer.
            size_t         _outCount;     // Number of packets to output, not always contiguous, may wrap up.

            // Implementation of Thread.
            virtual void main() override;

            // Inaccessible operations.
            InputExecutor() = delete;
            InputExecutor(const InputExecutor&) = delete;
            InputExecutor& operator=(const InputExecutor&) = delete;
        };

        //!
        //! Vector of pointers to InputExecutor.
        //!
        typedef std::vector<InputExecutor*> InputExecutorVector;
    }
}