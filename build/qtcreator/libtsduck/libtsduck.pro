CONFIG += plugin
include(../tsduck.pri)
TEMPLATE = lib
TARGET = tsduck
QMAKE_CXXFLAGS += -I$$SRCROOT/libtsduck/private
INCLUDEPATH += $$SRCROOT/libtsduck/private
linux:QMAKE_LFLAGS += -Wl,-soname=tsduck.so
mac:QMAKE_POST_LINK += install_name_tool -id $$OUT_PWD/tsduck.so $$OUT_PWD/tsduck.so $$escape_expand(\\n\\t)

HEADERS += \
    ../../../src/libtsduck/tsAACDescriptor.h \
    ../../../src/libtsduck/tsAC3Attributes.h \
    ../../../src/libtsduck/tsAC3Descriptor.h \
    ../../../src/libtsduck/tsAES.h \
    ../../../src/libtsduck/tsAVCAttributes.h \
    ../../../src/libtsduck/tsAVCHRDParameters.h \
    ../../../src/libtsduck/tsAVCParser.h \
    ../../../src/libtsduck/tsAVCParserTemplate.h \
    ../../../src/libtsduck/tsAVCSequenceParameterSet.h \
    ../../../src/libtsduck/tsAVCVideoDescriptor.h \
    ../../../src/libtsduck/tsAVCVUIParameters.h \
    ../../../src/libtsduck/tsAbortInterface.h \
    ../../../src/libtsduck/tsAbstractAVCAccessUnit.h \
    ../../../src/libtsduck/tsAbstractAVCData.h \
    ../../../src/libtsduck/tsAbstractAVCStructure.h \
    ../../../src/libtsduck/tsAbstractAudioVideoAttributes.h \
    ../../../src/libtsduck/tsAbstractCASDate.h \
    ../../../src/libtsduck/tsAbstractDemux.h \
    ../../../src/libtsduck/tsAbstractDeliverySystemDescriptor.h \
    ../../../src/libtsduck/tsAbstractDescrambler.h \
    ../../../src/libtsduck/tsAbstractDescriptor.h \
    ../../../src/libtsduck/tsAbstractDescriptorsTable.h \
    ../../../src/libtsduck/tsAbstractLongTable.h \
    ../../../src/libtsduck/tsAbstractSignalization.h \
    ../../../src/libtsduck/tsAbstractTable.h \
    ../../../src/libtsduck/tsAbstractTransportListTable.h \
    ../../../src/libtsduck/tsAlgorithm.h \
    ../../../src/libtsduck/tsAlgorithmTemplate.h \
    ../../../src/libtsduck/tsApplicationSharedLibrary.h \
    ../../../src/libtsduck/tsApplicationSignallingDescriptor.h \
    ../../../src/libtsduck/tsArgs.h \
    ../../../src/libtsduck/tsArgsTemplate.h \
    ../../../src/libtsduck/tsAsyncReport.h \
    ../../../src/libtsduck/tsAudioAttributes.h \
    ../../../src/libtsduck/tsAudioLanguageOptions.h \
    ../../../src/libtsduck/tsBAT.h \
    ../../../src/libtsduck/tsBCD.h \
    ../../../src/libtsduck/tsBinaryTable.h \
    ../../../src/libtsduck/tsBitStream.h \
    ../../../src/libtsduck/tsBlockCipher.h \
    ../../../src/libtsduck/tsBouquetNameDescriptor.h \
    ../../../src/libtsduck/tsByteBlock.h \
    ../../../src/libtsduck/tsCADescriptor.h \
    ../../../src/libtsduck/tsCAIdentifierDescriptor.h \
    ../../../src/libtsduck/tsCASFamily.h \
    ../../../src/libtsduck/tsCASMapper.h \
    ../../../src/libtsduck/tsCASSelectionArgs.h \
    ../../../src/libtsduck/tsCAT.h \
    ../../../src/libtsduck/tsCBC.h \
    ../../../src/libtsduck/tsCBCTemplate.h \
    ../../../src/libtsduck/tsCOM.h \
    ../../../src/libtsduck/tsCRC32.h \
    ../../../src/libtsduck/tsCTS1.h \
    ../../../src/libtsduck/tsCTS1Template.h \
    ../../../src/libtsduck/tsCTS2.h \
    ../../../src/libtsduck/tsCTS2Template.h \
    ../../../src/libtsduck/tsCTS3.h \
    ../../../src/libtsduck/tsCTS3Template.h \
    ../../../src/libtsduck/tsCTS4.h \
    ../../../src/libtsduck/tsCTS4Template.h \
    ../../../src/libtsduck/tsCableDeliverySystemDescriptor.h \
    ../../../src/libtsduck/tsCerrReport.h \
    ../../../src/libtsduck/tsUChar.h \
    ../../../src/libtsduck/tsCipherChaining.h \
    ../../../src/libtsduck/tsComponentDescriptor.h \
    ../../../src/libtsduck/tsCondition.h \
    ../../../src/libtsduck/tsContentDescriptor.h \
    ../../../src/libtsduck/tsCountryAvailabilityDescriptor.h \
    ../../../src/libtsduck/tsCyclingPacketizer.h \
    ../../../src/libtsduck/tsDES.h \
    ../../../src/libtsduck/tsDTSDescriptor.h \
    ../../../src/libtsduck/tsDVBCharset.h \
    ../../../src/libtsduck/tsDVBCharsetSingleByte.h \
    ../../../src/libtsduck/tsDVBCharsetUTF16.h \
    ../../../src/libtsduck/tsDVBCharsetUTF8.h \
    ../../../src/libtsduck/tsDVS042.h \
    ../../../src/libtsduck/tsDVS042Template.h \
    ../../../src/libtsduck/tsDataBroadcastDescriptor.h \
    ../../../src/libtsduck/tsDataBroadcastIdDescriptor.h \
    ../../../src/libtsduck/tsDektecControl.h \
    ../../../src/libtsduck/tsDektecInputPlugin.h \
    ../../../src/libtsduck/tsDektecOutputPlugin.h \
    ../../../src/libtsduck/tsDektecUtils.h \
    ../../../src/libtsduck/tsDescriptor.h \
    ../../../src/libtsduck/tsDescriptorList.h \
    ../../../src/libtsduck/tsDescriptorListTemplate.h \
    ../../../src/libtsduck/tsDoubleCheckLock.h \
    ../../../src/libtsduck/tsECB.h \
    ../../../src/libtsduck/tsECBTemplate.h \
    ../../../src/libtsduck/tsECMGClient.h \
    ../../../src/libtsduck/tsECMGClientHandlerInterface.h \
    ../../../src/libtsduck/tsECMGSCS.h \
    ../../../src/libtsduck/tsEIT.h \
    ../../../src/libtsduck/tsEMMGMUX.h \
    ../../../src/libtsduck/tsETID.h \
    ../../../src/libtsduck/tsEacemPreferredNameIdentifierDescriptor.h \
    ../../../src/libtsduck/tsEacemPreferredNameListDescriptor.h \
    ../../../src/libtsduck/tsEacemStreamIdentifierDescriptor.h \
    ../../../src/libtsduck/tsEnhancedAC3Descriptor.h \
    ../../../src/libtsduck/tsEnumeration.h \
    ../../../src/libtsduck/tsEutelsatChannelNumberDescriptor.h \
    ../../../src/libtsduck/tsException.h \
    ../../../src/libtsduck/tsExtendedEventDescriptor.h \
    ../../../src/libtsduck/tsFatal.h \
    ../../../src/libtsduck/tsFileNameRate.h \
    ../../../src/libtsduck/tsForkPipe.h \
    ../../../src/libtsduck/tsArgMix.h \
    ../../../src/libtsduck/tsArgMixTemplate.h \
    ../../../src/libtsduck/tsGrid.h \
    ../../../src/libtsduck/tsGuard.h \
    ../../../src/libtsduck/tsGuardCondition.h \
    ../../../src/libtsduck/tsHDSimulcastLogicalChannelDescriptor.h \
    ../../../src/libtsduck/tsHash.h \
    ../../../src/libtsduck/tsIPAddress.h \
    ../../../src/libtsduck/tsIPUtils.h \
    ../../../src/libtsduck/tsISO639LanguageDescriptor.h \
    ../../../src/libtsduck/tsInputRedirector.h \
    ../../../src/libtsduck/tsIntegerUtils.h \
    ../../../src/libtsduck/tsIntegerUtilsTemplate.h \
    ../../../src/libtsduck/tsInterruptHandler.h \
    ../../../src/libtsduck/tsLNB.h \
    ../../../src/libtsduck/tsLinkageDescriptor.h \
    ../../../src/libtsduck/tsLocalTimeOffsetDescriptor.h \
    ../../../src/libtsduck/tsLogicalChannelNumberDescriptor.h \
    ../../../src/libtsduck/tsMD5.h \
    ../../../src/libtsduck/tsMJD.h \
    ../../../src/libtsduck/tsMPEG.h \
    ../../../src/libtsduck/tsMediaGuardDate.h \
    ../../../src/libtsduck/tsMemoryUtils.h \
    ../../../src/libtsduck/tsMessageDescriptor.h \
    ../../../src/libtsduck/tsMessageQueue.h \
    ../../../src/libtsduck/tsMessageQueueTemplate.h \
    ../../../src/libtsduck/tsModulation.h \
    ../../../src/libtsduck/tsMonotonic.h \
    ../../../src/libtsduck/tsMutex.h \
    ../../../src/libtsduck/tsMutexInterface.h \
    ../../../src/libtsduck/tsNIT.h \
    ../../../src/libtsduck/tsNames.h \
    ../../../src/libtsduck/tsNetworkNameDescriptor.h \
    ../../../src/libtsduck/tsNullMutex.h \
    ../../../src/libtsduck/tsNullReport.h \
    ../../../src/libtsduck/tsObject.h \
    ../../../src/libtsduck/tsOneShotPacketizer.h \
    ../../../src/libtsduck/tsOutputRedirector.h \
    ../../../src/libtsduck/tsPAT.h \
    ../../../src/libtsduck/tsPCR.h \
    ../../../src/libtsduck/tsPCRAnalyzer.h \
    ../../../src/libtsduck/tsPCSC.h \
    ../../../src/libtsduck/tsPESDemux.h \
    ../../../src/libtsduck/tsPESHandlerInterface.h \
    ../../../src/libtsduck/tsPESPacket.h \
    ../../../src/libtsduck/tsPIDOperator.h \
    ../../../src/libtsduck/tsPMT.h \
    ../../../src/libtsduck/tsPSILogger.h \
    ../../../src/libtsduck/tsPSILoggerArgs.h \
    ../../../src/libtsduck/tsPacketizer.h \
    ../../../src/libtsduck/tsParentalRatingDescriptor.h \
    ../../../src/libtsduck/tsPlatform.h \
    ../../../src/libtsduck/tsPlugin.h \
    ../../../src/libtsduck/tsPluginSharedLibrary.h \
    ../../../src/libtsduck/tsPollFiles.h \
    ../../../src/libtsduck/tsPrivateDataSpecifierDescriptor.h \
    ../../../src/libtsduck/tsRandomGenerator.h \
    ../../../src/libtsduck/tsRegistry.h \
    ../../../src/libtsduck/tsReportBuffer.h \
    ../../../src/libtsduck/tsReportBufferTemplate.h \
    ../../../src/libtsduck/tsReportFile.h \
    ../../../src/libtsduck/tsReportFileTemplate.h \
    ../../../src/libtsduck/tsReportHandler.h \
    ../../../src/libtsduck/tsReport.h \
    ../../../src/libtsduck/tsReportWithPrefix.h \
    ../../../src/libtsduck/tsResidentBuffer.h \
    ../../../src/libtsduck/tsResidentBufferTemplate.h \
    ../../../src/libtsduck/tsRingNode.h \
    ../../../src/libtsduck/tsRST.h \
    ../../../src/libtsduck/tsS2SatelliteDeliverySystemDescriptor.h \
    ../../../src/libtsduck/tsSDT.h \
    ../../../src/libtsduck/tsSHA1.h \
    ../../../src/libtsduck/tsSHA256.h \
    ../../../src/libtsduck/tsSHA512.h \
    ../../../src/libtsduck/tsSSUDataBroadcastIdDescriptor.h \
    ../../../src/libtsduck/tsSSULinkageDescriptor.h \
    ../../../src/libtsduck/tsSTDDescriptor.h \
    ../../../src/libtsduck/tsSafeAccessDate.h \
    ../../../src/libtsduck/tsSafePtr.h \
    ../../../src/libtsduck/tsSafePtrTemplate.h \
    ../../../src/libtsduck/tsSatelliteDeliverySystemDescriptor.h \
    ../../../src/libtsduck/tsScrambling.h \
    ../../../src/libtsduck/tsSection.h \
    ../../../src/libtsduck/tsSectionDemux.h \
    ../../../src/libtsduck/tsSectionHandlerInterface.h \
    ../../../src/libtsduck/tsSectionProviderInterface.h \
    ../../../src/libtsduck/tsService.h \
    ../../../src/libtsduck/tsServiceDescriptor.h \
    ../../../src/libtsduck/tsServiceListDescriptor.h \
    ../../../src/libtsduck/tsServiceTemplate.h \
    ../../../src/libtsduck/tsSharedLibrary.h \
    ../../../src/libtsduck/tsShortEventDescriptor.h \
    ../../../src/libtsduck/tsSimulCryptDate.h \
    ../../../src/libtsduck/tsSingletonManager.h \
    ../../../src/libtsduck/tsSocketAddress.h \
    ../../../src/libtsduck/tsStandaloneTableDemux.h \
    ../../../src/libtsduck/tsStaticInstance.h \
    ../../../src/libtsduck/tsStaticReferencesDVB.h \
    ../../../src/libtsduck/tsStreamIdentifierDescriptor.h \
    ../../../src/libtsduck/tsUString.h \
    ../../../src/libtsduck/tsUStringTemplate.h \
    ../../../src/libtsduck/tsSubtitlingDescriptor.h \
    ../../../src/libtsduck/tsSupplementaryAudioDescriptor.h \
    ../../../src/libtsduck/tsSysUtils.h \
    ../../../src/libtsduck/tsSysUtilsTemplate.h \
    ../../../src/libtsduck/tsSystemMonitor.h \
    ../../../src/libtsduck/tsSystemRandomGenerator.h \
    ../../../src/libtsduck/tsT2MIDemux.h \
    ../../../src/libtsduck/tsT2MIDescriptor.h \
    ../../../src/libtsduck/tsT2MIHandlerInterface.h \
    ../../../src/libtsduck/tsT2MIPacket.h \
    ../../../src/libtsduck/tsTCPConnection.h \
    ../../../src/libtsduck/tsTCPServer.h \
    ../../../src/libtsduck/tsTCPSocket.h \
    ../../../src/libtsduck/tsTDES.h \
    ../../../src/libtsduck/tsTDT.h \
    ../../../src/libtsduck/tsTLVSyntax.h \
    ../../../src/libtsduck/tsTOT.h \
    ../../../src/libtsduck/tsTSAnalyzer.h \
    ../../../src/libtsduck/tsTSAnalyzerOptions.h \
    ../../../src/libtsduck/tsTSAnalyzerReport.h \
    ../../../src/libtsduck/tsTSDT.h \
    ../../../src/libtsduck/tsTSFileInput.h \
    ../../../src/libtsduck/tsTSFileInputBuffered.h \
    ../../../src/libtsduck/tsTSFileOutput.h \
    ../../../src/libtsduck/tsTSFileOutputResync.h \
    ../../../src/libtsduck/tsTSPacket.h \
    ../../../src/libtsduck/tsTSScanner.h \
    ../../../src/libtsduck/tsTableHandlerInterface.h \
    ../../../src/libtsduck/tsTables.h \
    ../../../src/libtsduck/tsTablesDisplay.h \
    ../../../src/libtsduck/tsTablesDisplayArgs.h \
    ../../../src/libtsduck/tsTablesFactory.h \
    ../../../src/libtsduck/tsTablesLogger.h \
    ../../../src/libtsduck/tsTablesLoggerArgs.h \
    ../../../src/libtsduck/tsTablesPtr.h \
    ../../../src/libtsduck/tsTeletextDescriptor.h \
    ../../../src/libtsduck/tsTelnetConnection.h \
    ../../../src/libtsduck/tsTerrestrialDeliverySystemDescriptor.h \
    ../../../src/libtsduck/tsThread.h \
    ../../../src/libtsduck/tsThreadAttributes.h \
    ../../../src/libtsduck/tsTime.h \
    ../../../src/libtsduck/tsTransportStreamId.h \
    ../../../src/libtsduck/tsTuner.h \
    ../../../src/libtsduck/tsTunerArgs.h \
    ../../../src/libtsduck/tsTunerParameters.h \
    ../../../src/libtsduck/tsTunerParametersATSC.h \
    ../../../src/libtsduck/tsTunerParametersBitrateDiffDVBT.h \
    ../../../src/libtsduck/tsTunerParametersDVBC.h \
    ../../../src/libtsduck/tsTunerParametersDVBS.h \
    ../../../src/libtsduck/tsTunerParametersDVBT.h \
    ../../../src/libtsduck/tsTunerUtils.h \
    ../../../src/libtsduck/tsUDPSocket.h \
    ../../../src/libtsduck/tsUID.h \
    ../../../src/libtsduck/tsUserInterrupt.h \
    ../../../src/libtsduck/tsVBIDataDescriptor.h \
    ../../../src/libtsduck/tsVBITeletextDescriptor.h \
    ../../../src/libtsduck/tsVariable.h \
    ../../../src/libtsduck/tsVersion.h \
    ../../../src/libtsduck/tsVersionInfo.h \
    ../../../src/libtsduck/tsViaccessDate.h \
    ../../../src/libtsduck/tsVideoAttributes.h \
    ../../../src/libtsduck/tsXML.h \
    ../../../src/libtsduck/tsXMLTemplate.h \
    ../../../src/libtsduck/tsXMLTables.h \
    ../../../src/libtsduck/tsduck.h \
    ../../../src/libtsduck/tstlv.h \
    ../../../src/libtsduck/tstlvAnalyzer.h \
    ../../../src/libtsduck/tstlvChannelMessage.h \
    ../../../src/libtsduck/tstlvConnection.h \
    ../../../src/libtsduck/tstlvConnectionTemplate.h \
    ../../../src/libtsduck/tstlvMessage.h \
    ../../../src/libtsduck/tstlvMessageFactory.h \
    ../../../src/libtsduck/tstlvMessageFactoryTemplate.h \
    ../../../src/libtsduck/tstlvProtocol.h \
    ../../../src/libtsduck/tstlvSerializer.h \
    ../../../src/libtsduck/tstlvStreamMessage.h \
    ../../../src/libtsduck/tsxmlNode.h \
    ../../../src/libtsduck/tinyxml/tinyxml2.h \
    ../../../src/libtsduck/tsxmlAttribute.h \
    ../../../src/libtsduck/tsxmlComment.h \
    ../../../src/libtsduck/tsxmlDeclaration.h \
    ../../../src/libtsduck/tsxmlDocument.h \
    ../../../src/libtsduck/tsxmlElement.h \
    ../../../src/libtsduck/tsxmlElementTemplate.h \
    ../../../src/libtsduck/tsxmlText.h \
    ../../../src/libtsduck/tsxmlUnknown.h \
    ../../../src/libtsduck/private/tsxmlParser.h

SOURCES += \
    ../../../src/libtsduck/tsAACDescriptor.cpp \
    ../../../src/libtsduck/tsAC3Attributes.cpp \
    ../../../src/libtsduck/tsAC3Descriptor.cpp \
    ../../../src/libtsduck/tsAES.cpp \
    ../../../src/libtsduck/tsAVCAttributes.cpp \
    ../../../src/libtsduck/tsAVCHRDParameters.cpp \
    ../../../src/libtsduck/tsAVCParser.cpp \
    ../../../src/libtsduck/tsAVCSequenceParameterSet.cpp \
    ../../../src/libtsduck/tsAVCVideoDescriptor.cpp \
    ../../../src/libtsduck/tsAVCVUIParameters.cpp \
    ../../../src/libtsduck/tsAbstractAVCAccessUnit.cpp \
    ../../../src/libtsduck/tsAbstractAVCStructure.cpp \
    ../../../src/libtsduck/tsAbstractCASDate.cpp \
    ../../../src/libtsduck/tsAbstractDemux.cpp \
    ../../../src/libtsduck/tsAbstractDeliverySystemDescriptor.cpp \
    ../../../src/libtsduck/tsAbstractDescrambler.cpp \
    ../../../src/libtsduck/tsAbstractDescriptor.cpp \
    ../../../src/libtsduck/tsAbstractDescriptorsTable.cpp \
    ../../../src/libtsduck/tsAbstractSignalization.cpp \
    ../../../src/libtsduck/tsAbstractTable.cpp \
    ../../../src/libtsduck/tsAbstractTransportListTable.cpp \
    ../../../src/libtsduck/tsApplicationSharedLibrary.cpp \
    ../../../src/libtsduck/tsApplicationSignallingDescriptor.cpp \
    ../../../src/libtsduck/tsArgs.cpp \
    ../../../src/libtsduck/tsAsyncReport.cpp \
    ../../../src/libtsduck/tsAudioAttributes.cpp \
    ../../../src/libtsduck/tsAudioLanguageOptions.cpp \
    ../../../src/libtsduck/tsBAT.cpp \
    ../../../src/libtsduck/tsBCD.cpp \
    ../../../src/libtsduck/tsBinaryTable.cpp \
    ../../../src/libtsduck/tsBouquetNameDescriptor.cpp \
    ../../../src/libtsduck/tsByteBlock.cpp \
    ../../../src/libtsduck/tsCADescriptor.cpp \
    ../../../src/libtsduck/tsCAIdentifierDescriptor.cpp \
    ../../../src/libtsduck/tsCASFamily.cpp \
    ../../../src/libtsduck/tsCASMapper.cpp \
    ../../../src/libtsduck/tsCASSelectionArgs.cpp \
    ../../../src/libtsduck/tsCAT.cpp \
    ../../../src/libtsduck/tsCOM.cpp \
    ../../../src/libtsduck/tsCRC32.cpp \
    ../../../src/libtsduck/tsCableDeliverySystemDescriptor.cpp \
    ../../../src/libtsduck/tsCerrReport.cpp \
    ../../../src/libtsduck/tsUChar.cpp \
    ../../../src/libtsduck/tsCipherChaining.cpp \
    ../../../src/libtsduck/tsComponentDescriptor.cpp \
    ../../../src/libtsduck/tsCondition.cpp \
    ../../../src/libtsduck/tsContentDescriptor.cpp \
    ../../../src/libtsduck/tsCountryAvailabilityDescriptor.cpp \
    ../../../src/libtsduck/tsCyclingPacketizer.cpp \
    ../../../src/libtsduck/tsDES.cpp \
    ../../../src/libtsduck/tsDTSDescriptor.cpp \
    ../../../src/libtsduck/tsDVBCharset.cpp \
    ../../../src/libtsduck/tsDVBCharsetSingleByte.cpp \
    ../../../src/libtsduck/tsDVBCharsetUTF16.cpp \
    ../../../src/libtsduck/tsDVBCharsetUTF8.cpp \
    ../../../src/libtsduck/tsDataBroadcastDescriptor.cpp \
    ../../../src/libtsduck/tsDataBroadcastIdDescriptor.cpp \
    ../../../src/libtsduck/tsDektecControl.cpp \
    ../../../src/libtsduck/tsDektecInputPlugin.cpp \
    ../../../src/libtsduck/tsDektecOutputPlugin.cpp \
    ../../../src/libtsduck/tsDektecUtils.cpp \
    ../../../src/libtsduck/tsDescriptor.cpp \
    ../../../src/libtsduck/tsDescriptorList.cpp \
    ../../../src/libtsduck/tsECMGClient.cpp \
    ../../../src/libtsduck/tsECMGSCS.cpp \
    ../../../src/libtsduck/tsEIT.cpp \
    ../../../src/libtsduck/tsEMMGMUX.cpp \
    ../../../src/libtsduck/tsEacemPreferredNameIdentifierDescriptor.cpp \
    ../../../src/libtsduck/tsEacemPreferredNameListDescriptor.cpp \
    ../../../src/libtsduck/tsEacemStreamIdentifierDescriptor.cpp \
    ../../../src/libtsduck/tsEnhancedAC3Descriptor.cpp \
    ../../../src/libtsduck/tsEnumeration.cpp \
    ../../../src/libtsduck/tsEutelsatChannelNumberDescriptor.cpp \
    ../../../src/libtsduck/tsException.cpp \
    ../../../src/libtsduck/tsExtendedEventDescriptor.cpp \
    ../../../src/libtsduck/tsFatal.cpp \
    ../../../src/libtsduck/tsFileNameRate.cpp \
    ../../../src/libtsduck/tsForkPipe.cpp \
    ../../../src/libtsduck/tsArgMix.cpp \
    ../../../src/libtsduck/tsGrid.cpp \
    ../../../src/libtsduck/tsGuard.cpp \
    ../../../src/libtsduck/tsGuardCondition.cpp \
    ../../../src/libtsduck/tsHDSimulcastLogicalChannelDescriptor.cpp \
    ../../../src/libtsduck/tsIPAddress.cpp \
    ../../../src/libtsduck/tsIPUtils.cpp \
    ../../../src/libtsduck/tsISO639LanguageDescriptor.cpp \
    ../../../src/libtsduck/tsInputRedirector.cpp \
    ../../../src/libtsduck/tsIntegerUtils.cpp \
    ../../../src/libtsduck/tsLNB.cpp \
    ../../../src/libtsduck/tsLinkageDescriptor.cpp \
    ../../../src/libtsduck/tsLocalTimeOffsetDescriptor.cpp \
    ../../../src/libtsduck/tsLogicalChannelNumberDescriptor.cpp \
    ../../../src/libtsduck/tsMD5.cpp \
    ../../../src/libtsduck/tsMJD.cpp \
    ../../../src/libtsduck/tsMPEG.cpp \
    ../../../src/libtsduck/tsMemoryUtils.cpp \
    ../../../src/libtsduck/tsMessageDescriptor.cpp \
    ../../../src/libtsduck/tsModulation.cpp \
    ../../../src/libtsduck/tsMonotonic.cpp \
    ../../../src/libtsduck/tsMutex.cpp \
    ../../../src/libtsduck/tsNIT.cpp \
    ../../../src/libtsduck/tsNames.cpp \
    ../../../src/libtsduck/tsNetworkNameDescriptor.cpp \
    ../../../src/libtsduck/tsNullReport.cpp \
    ../../../src/libtsduck/tsObject.cpp \
    ../../../src/libtsduck/tsOneShotPacketizer.cpp \
    ../../../src/libtsduck/tsOutputRedirector.cpp \
    ../../../src/libtsduck/tsPAT.cpp \
    ../../../src/libtsduck/tsPCR.cpp \
    ../../../src/libtsduck/tsPCRAnalyzer.cpp \
    ../../../src/libtsduck/tsPCSC.cpp \
    ../../../src/libtsduck/tsPESDemux.cpp \
    ../../../src/libtsduck/tsPESPacket.cpp \
    ../../../src/libtsduck/tsPIDOperator.cpp \
    ../../../src/libtsduck/tsPMT.cpp \
    ../../../src/libtsduck/tsPSILogger.cpp \
    ../../../src/libtsduck/tsPSILoggerArgs.cpp \
    ../../../src/libtsduck/tsPacketizer.cpp \
    ../../../src/libtsduck/tsParentalRatingDescriptor.cpp \
    ../../../src/libtsduck/tsPlugin.cpp \
    ../../../src/libtsduck/tsPluginSharedLibrary.cpp \
    ../../../src/libtsduck/tsPollFiles.cpp \
    ../../../src/libtsduck/tsPrivateDataSpecifierDescriptor.cpp \
    ../../../src/libtsduck/tsRegistry.cpp \
    ../../../src/libtsduck/tsReport.cpp \
    ../../../src/libtsduck/tsReportWithPrefix.cpp \
    ../../../src/libtsduck/tsRingNode.cpp \
    ../../../src/libtsduck/tsRST.cpp \
    ../../../src/libtsduck/tsS2SatelliteDeliverySystemDescriptor.cpp \
    ../../../src/libtsduck/tsSDT.cpp \
    ../../../src/libtsduck/tsSHA1.cpp \
    ../../../src/libtsduck/tsSHA256.cpp \
    ../../../src/libtsduck/tsSHA512.cpp \
    ../../../src/libtsduck/tsSSUDataBroadcastIdDescriptor.cpp \
    ../../../src/libtsduck/tsSSULinkageDescriptor.cpp \
    ../../../src/libtsduck/tsSTDDescriptor.cpp \
    ../../../src/libtsduck/tsSatelliteDeliverySystemDescriptor.cpp \
    ../../../src/libtsduck/tsScrambling.cpp \
    ../../../src/libtsduck/tsSection.cpp \
    ../../../src/libtsduck/tsSectionDemux.cpp \
    ../../../src/libtsduck/tsService.cpp \
    ../../../src/libtsduck/tsServiceDescriptor.cpp \
    ../../../src/libtsduck/tsServiceListDescriptor.cpp \
    ../../../src/libtsduck/tsSharedLibrary.cpp \
    ../../../src/libtsduck/tsShortEventDescriptor.cpp \
    ../../../src/libtsduck/tsSimulCryptDate.cpp \
    ../../../src/libtsduck/tsSingletonManager.cpp \
    ../../../src/libtsduck/tsSocketAddress.cpp \
    ../../../src/libtsduck/tsStandaloneTableDemux.cpp \
    ../../../src/libtsduck/tsStaticReferencesDVB.cpp \
    ../../../src/libtsduck/tsStreamIdentifierDescriptor.cpp \
    ../../../src/libtsduck/tsUString.cpp \
    ../../../src/libtsduck/tsSubtitlingDescriptor.cpp \
    ../../../src/libtsduck/tsSupplementaryAudioDescriptor.cpp \
    ../../../src/libtsduck/tsSysUtils.cpp \
    ../../../src/libtsduck/tsSystemMonitor.cpp \
    ../../../src/libtsduck/tsSystemRandomGenerator.cpp \
    ../../../src/libtsduck/tsT2MIDemux.cpp \
    ../../../src/libtsduck/tsT2MIDescriptor.cpp \
    ../../../src/libtsduck/tsT2MIPacket.cpp \
    ../../../src/libtsduck/tsTCPConnection.cpp \
    ../../../src/libtsduck/tsTCPServer.cpp \
    ../../../src/libtsduck/tsTCPSocket.cpp \
    ../../../src/libtsduck/tsTDES.cpp \
    ../../../src/libtsduck/tsTDT.cpp \
    ../../../src/libtsduck/tsTLVSyntax.cpp \
    ../../../src/libtsduck/tsTOT.cpp \
    ../../../src/libtsduck/tsTSAnalyzer.cpp \
    ../../../src/libtsduck/tsTSAnalyzerOptions.cpp \
    ../../../src/libtsduck/tsTSAnalyzerReport.cpp \
    ../../../src/libtsduck/tsTSDT.cpp \
    ../../../src/libtsduck/tsTSFileInput.cpp \
    ../../../src/libtsduck/tsTSFileInputBuffered.cpp \
    ../../../src/libtsduck/tsTSFileOutput.cpp \
    ../../../src/libtsduck/tsTSFileOutputResync.cpp \
    ../../../src/libtsduck/tsTSPacket.cpp \
    ../../../src/libtsduck/tsTSScanner.cpp \
    ../../../src/libtsduck/tsTablesDisplay.cpp \
    ../../../src/libtsduck/tsTablesDisplayArgs.cpp \
    ../../../src/libtsduck/tsTablesFactory.cpp \
    ../../../src/libtsduck/tsTablesLogger.cpp \
    ../../../src/libtsduck/tsTablesLoggerArgs.cpp \
    ../../../src/libtsduck/tsTeletextDescriptor.cpp \
    ../../../src/libtsduck/tsTelnetConnection.cpp \
    ../../../src/libtsduck/tsTerrestrialDeliverySystemDescriptor.cpp \
    ../../../src/libtsduck/tsThread.cpp \
    ../../../src/libtsduck/tsThreadAttributes.cpp \
    ../../../src/libtsduck/tsTime.cpp \
    ../../../src/libtsduck/tsTunerArgs.cpp \
    ../../../src/libtsduck/tsTunerParameters.cpp \
    ../../../src/libtsduck/tsTunerParametersATSC.cpp \
    ../../../src/libtsduck/tsTunerParametersBitrateDiffDVBT.cpp \
    ../../../src/libtsduck/tsTunerParametersDVBC.cpp \
    ../../../src/libtsduck/tsTunerParametersDVBS.cpp \
    ../../../src/libtsduck/tsTunerParametersDVBT.cpp \
    ../../../src/libtsduck/tsTunerUtils.cpp \
    ../../../src/libtsduck/tsUDPSocket.cpp \
    ../../../src/libtsduck/tsUID.cpp \
    ../../../src/libtsduck/tsUserInterrupt.cpp \
    ../../../src/libtsduck/tsVBIDataDescriptor.cpp \
    ../../../src/libtsduck/tsVBITeletextDescriptor.cpp \
    ../../../src/libtsduck/tsVersionInfo.cpp \
    ../../../src/libtsduck/tsVideoAttributes.cpp \
    ../../../src/libtsduck/tsXML.cpp \
    ../../../src/libtsduck/tsXMLTables.cpp \
    ../../../src/libtsduck/tstlvAnalyzer.cpp \
    ../../../src/libtsduck/tstlvMessage.cpp \
    ../../../src/libtsduck/tstlvMessageFactory.cpp \
    ../../../src/libtsduck/tstlvSerializer.cpp \
    ../../../src/libtsduck/tsxmlNode.cpp \
    ../../../src/libtsduck/tinyxml/tinyxml2.cpp \
    ../../../src/libtsduck/tsxmlAttribute.cpp \
    ../../../src/libtsduck/tsxmlComment.cpp \
    ../../../src/libtsduck/tsxmlDeclaration.cpp \
    ../../../src/libtsduck/tsxmlDocument.cpp \
    ../../../src/libtsduck/tsxmlElement.cpp \
    ../../../src/libtsduck/tsxmlText.cpp \
    ../../../src/libtsduck/tsxmlUnknown.cpp \
    ../../../src/libtsduck/private/tsxmlParser.cpp
    
linux {
    HEADERS += \
        ../../../src/libtsduck/linux/tsDTVProperties.h \
        ../../../src/libtsduck/linux/tsSignalAllocator.h
    SOURCES += \
        ../../../src/libtsduck/linux/tsDTVProperties.cpp \
        ../../../src/libtsduck/linux/tsSignalAllocator.cpp \
        ../../../src/libtsduck/linux/tsTuner.cpp
}

mac {
    SOURCES += \
        ../../../src/libtsduck/mac/tsTuner.cpp
}

win32|win64 {
    HEADERS += \
        ../../../src/libtsduck/windows/tsComIds.h \
        ../../../src/libtsduck/windows/tsComPtr.h \
        ../../../src/libtsduck/windows/tsComUtils.h \
        ../../../src/libtsduck/windows/tsDirectShowUtils.h \
        ../../../src/libtsduck/windows/tsMediaTypeUtils.h \
        ../../../src/libtsduck/windows/tsSinkFilter.h
    SOURCES += \ 
        ../../../src/libtsduck/windows/tsComIds.cpp \
        ../../../src/libtsduck/windows/tsComUtils.cpp \
        ../../../src/libtsduck/windows/tsDirectShowUtils.cpp \
        ../../../src/libtsduck/windows/tsMediaTypeUtils.cpp \
        ../../../src/libtsduck/windows/tsSinkFilter.cpp \
        ../../../src/libtsduck/windows/tsTuner.cpp
}

DISTFILES += \
    ../../../src/libtsduck/tsduck.dvb.names \
    ../../../src/libtsduck/tsduck.oui.names \
    ../../../src/libtsduck/tsduck.xml \
    ../../../src/libtsduck/tsduck.mk
