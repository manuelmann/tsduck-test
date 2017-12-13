//----------------------------------------------------------------------------
//
// TSDuck - The MPEG Transport Stream Toolkit
// Copyright (c) 2005-2017, Thierry Lelegard
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
//!  Attribute of an XML element.
//!
//----------------------------------------------------------------------------

#pragma once
#include "tsxmlNode.h"
#include "tsEnumeration.h"
#include "tsTime.h"

namespace ts {
    namespace xml {
        //!
        //! Attribute of an XML element.
        //!
        class TSDUCKDLL Attribute
        {
        public:
            //!
            //! Default constructor.
            //! The argument is initially invalid, everything will fail.
            //!
            Attribute();

            //!
            //! Full constructor.
            //! @param [in] name Attribute name with original case sensitivity.
            //! @param [in] value Attribute value.
            //! @param [in] line Line number in input document.
            //!
            explicit Attribute(const UString& name, const UString& value = UString(), size_t line = 0);

            //!
            //! Check if the attribute is valid.
            //! @return True if the attribute is valid.
            //!
            bool isValid() const { return _valid; }

            //!
            //! Get the line number in input document.
            //! @return The line number in input document, zero if the attribute was built programmatically.
            //!
            size_t lineNumber() const { return _line; }

            //!
            //! Get the attribute name with original case sensitivity.
            //! @return A constant reference to the attribute name with original case sensitivity.
            //!
            const UString& name() const { return _name; }

            //!
            //! Get the attribute value.
            //! @return A constant reference to the attribute value.
            //!
            const UString& value() const { return _value; }

            //!
            //! Set a string attribute.
            //! @param [in] value Attribute value.
            //!
            void setString(const UString& value)
            {
                _value = value;
            }

            //!
            //! Set a bool attribute to a node.
            //! @param [in] value Attribute value.
            //!
            void setBool(bool value)
            {
                _value = UString::TrueFalse(value);
            }

            //!
            //! Set an attribute with an integer value to a node.
            //! @tparam INT An integer type.
            //! @param [in] value Attribute value.
            //! @param [in] hexa If true, use an hexadecimal representation (0x...).
            //!
            template <typename INT, typename std::enable_if<std::is_integral<INT>::value>::type* = nullptr>
            void setInteger(INT value, bool hexa = false)
            {
                _value = hexa ? UString::Hexa(value) : UString::Decimal(value);
            }

            //!
            //! Set an enumeration attribute of a node.
            //! @param [in] definition The definition of enumeration values.
            //! @param [in] value Attribute value.
            //!
            void setEnum(const Enumeration& definition, int value)
            {
                _value = definition.name(value);
            }

            //!
            //! Set an enumeration attribute of a node.
            //! @tparam INT An integer type.
            //! @param [in] definition The definition of enumeration values.
            //! @param [in] value Attribute value.
            //!
            template <typename INT, typename std::enable_if<std::is_integral<INT>::value>::type* = nullptr>
            void setIntEnum(const Enumeration& definition, INT value)
            {
                _value = definition.name(int(value), true, 2 * sizeof(INT));
            }

            //!
            //! Set a date/time attribute of an XML element.
            //! @param [in] value Attribute value.
            //!
            void setDateTime(const Time& value)
            {
                _value = DateTimeToString(value);
            }

            //!
            //! Set a time attribute of an XML element in "hh:mm:ss" format.
            //! @param [in] value Attribute value.
            //!
            void setTime(Second value)
            {
                _value = TimeToString(value);
            }

            //!
            //! Convert a date/time into a string, as required in attributes.
            //! @param [in] value Time value.
            //! @return The corresponding string.
            //!
            static UString DateTimeToString(const Time& value);

            //!
            //! Convert a time into a string, as required in attributes.
            //! @param [in] value Time value.
            //! @return The corresponding string.
            //!
            static UString TimeToString(Second value);

            //!
            //! Convert a string into a date/time, as required in attributes.
            //! @param [in,out] value Time value. Unmodified in case of error.
            //! @param [in] str Time value as a string.
            //! @return True on success, false on error.
            //!
            static bool DateTimeFromString(Time& value, const UString& str);

            //!
            //! Convert a string into a time, as required in attributes.
            //! @param [in,out] value Time value. Unmodified in case of error.
            //! @param [in] str Time value as a string.
            //! @return True on success, false on error.
            //!
            static bool TimeFromString(Second& value, const UString& str);

            //!
            //! A constant static invalid instance.
            //! Used as universal invalid attribute.
            //!
            static const Attribute INVALID;

        private:
            bool    _valid;
            UString _name;
            UString _value;
            size_t  _line;
        };
    }
}
