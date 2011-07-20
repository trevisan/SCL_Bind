<?xml version="1.0" encoding="UTF-8"?>
<SCL xmlns="http://www.iec.ch/61850/2006/SCL" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">  
  <Header toolID="RTDS IEC61850 Configurator, Version: 2.011.1" nameStructure="IEDName" id="RTDS IEC61850 / IEC61850 station" version="1" revision="14"> 
    <Text>SS #1</Text>  
    <History> 
      <Hitem version="1" revision="1" when="Tuesday, May 05, 2009 15:14:00" who="RTDS User: Lasse" what="Created New SCD From GTNET Template" why="New SCD Requested For Runtime GTNET Component"/>  
      <Hitem version="1" revision="2" when="Tuesday, May 05, 2009 15:18:06" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="3" when="Tuesday, May 05, 2009 15:41:37" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="4" when="Tuesday, May 05, 2009 16:43:18" who="RTDS User: Lasse" what="Icd-Import: C:\RTDS_USER\fileman\TREINAMENTO2\IEC61850\gtnet_with_communication_element.icd : TEMPLATE as IED_B with prefix IED_B" why="User Initiated Action"/>  
      <Hitem version="1" revision="5" when="Tuesday, May 05, 2009 16:57:21" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="6" when="Tuesday, May 05, 2009 17:03:15" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="7" when="Wednesday, May 06, 2009 15:47:36" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="8" when="Wednesday, May 06, 2009 15:47:49" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="9" when="Wednesday, May 06, 2009 15:48:01" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="10" when="Friday, May 08, 2009 17:23:44" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="11" when="Friday, May 08, 2009 17:25:19" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="12" when="Friday, May 08, 2009 17:25:30" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="13" when="Monday, May 18, 2009 11:04:54" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>  
      <Hitem version="1" revision="14" when="Tuesday, June 02, 2009 14:28:46" who="RTDS User: Lasse" what="File Saved" why="User Initiated Action"/>
    </History> 
  </Header>  
  <Communication> 
    <SubNetwork name="subnetwork"> 
      <ConnectedAP iedName="IED_A" apName="P1"> 
        <Address> 
          <P type="OSI-AP-Title">1,3,9999,23</P>  
          <P type="OSI-AE-Qualifier">23</P>  
          <P type="OSI-PSEL">00000001</P>  
          <P type="OSI-SSEL">0001</P>  
          <P type="OSI-TSEL">0001</P> 
        </Address>  
        <GSE ldInst="CTRL" cbName="GOOSE_outputs_control"> 
          <Address> 
            <P xsi:type="tP_VLAN-ID" type="VLAN-ID">000</P>  
            <P xsi:type="tP_VLAN-PRIORITY" type="VLAN-PRIORITY">4</P>  
            <P xsi:type="tP_MAC-Address" type="MAC-Address">01-0C-CD-01-00-23</P>  
            <P xsi:type="tP_APPID" type="APPID">0003</P> 
          </Address>  
          <MinTime unit="s" multiplier="m">10</MinTime>  
          <MaxTime unit="s" multiplier="m">2000</MaxTime> 
        </GSE> 
      </ConnectedAP> 
    </SubNetwork>  
    <SubNetwork name="NONE"> 
      <ConnectedAP iedName="IED_B" apName="P1"> 
        <Address> 
          <P type="OSI-AP-Title">1,3,9999,23</P>  
          <P type="OSI-AE-Qualifier">23</P>  
          <P type="OSI-PSEL">00000001</P>  
          <P type="OSI-SSEL">0001</P>  
          <P type="OSI-TSEL">0001</P> 
        </Address>  
        <GSE ldInst="CTRL" cbName="GOOSE_outputs_control"> 
          <Address> 
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>  
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>  
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-24</P>  
            <P type="APPID" xsi:type="tP_APPID">0003</P> 
          </Address>  
          <MinTime unit="s" multiplier="m">10</MinTime>  
          <MaxTime unit="s" multiplier="m">2000</MaxTime> 
        </GSE> 
      </ConnectedAP> 
    </SubNetwork> 
  </Communication>  
  <IED name="IED_A" desc="RTDS 61850 GOOSE/GSSE interface" type="Generic IED" manufacturer="RTDS Technologies" configVersion="1.0"> 
    <Services> 
      <ConfDataSet max="1" maxAttributes="32"/>  
      <GOOSE max="1"/>  
      <ConfLNs fixPrefix="true" fixLnInst="true"/> 
    </Services>  
    <AccessPoint name="P1"> 
      <Server> 
        <Authentication none="true"/>  
        <LDevice desc="GTNET I/O" inst="CTRL"> 
          <LN0 desc="General" lnClass="LLN0" lnType="IED_A_GTNET/CTRL/LLN0" inst=""> 
            <DataSet name="GOOSE_outputs"> 
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="1" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="1" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="2" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="2" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="3" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="3" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="4" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="4" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="5" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="5" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="6" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="6" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="7" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="7" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="8" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="8" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="9" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="9" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="10" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="10" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="11" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="11" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="12" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="12" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="13" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="13" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="14" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="14" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="15" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="15" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="16" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="16" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="17" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="17" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="18" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="18" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="19" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="19" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="20" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="20" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="21" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="21" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="22" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="22" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="23" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="23" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="24" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="24" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="25" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="25" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="26" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="26" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="27" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="27" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="28" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="28" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="29" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="29" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="30" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="30" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="31" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="31" doName="SPCSO" daName="stVal" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="32" doName="SPCSO" daName="q" fc="ST"/>  
              <FCDA ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="32" doName="SPCSO" daName="stVal" fc="ST"/> 
            </DataSet>  
            <GSEControl name="GOOSE_outputs_control" datSet="GOOSE_outputs" confRev="1" appID="1" type="GOOSE"/> 
          </LN0>  
          <LN desc="" lnType="IED_A_GTNET/CTRL/LPHD1" lnClass="LPHD" inst="1"/>  
          <LN desc="Input 1 (bit 0) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="1" prefix="IN_"> 
            <Inputs> 
              <ExtRef iedName="IED_B" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="1" doName="SPCSO" daName="q"/>  
              <ExtRef iedName="IED_B" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="1" doName="SPCSO" daName="stVal"/> 
            </Inputs> 
          </LN>  
          <LN desc="Input 2 (bit 1) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="2" prefix="IN_"> 
            <Inputs> 
              <ExtRef iedName="IED_B" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="2" doName="SPCSO" daName="q"/>
              <ExtRef iedName="IED_B" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="2" doName="SPCSO" daName="stVal"/>
            </Inputs> 
          </LN>  
          <LN desc="Input 3 (bit 2) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="3" prefix="IN_"/>  
          <LN desc="Input 4 (bit 3) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="4" prefix="IN_"/>  
          <LN desc="Input 5 (bit 4) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="5" prefix="IN_"/>  
          <LN desc="Input 6 (bit 5) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="6" prefix="IN_"/>  
          <LN desc="Input 7 (bit 6) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="7" prefix="IN_"/>  
          <LN desc="Input 8 (bit 7) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="8" prefix="IN_"/>  
          <LN desc="Input 9 (bit 8) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="9" prefix="IN_"/>  
          <LN desc="Input 10 (bit 9) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="10" prefix="IN_"/>  
          <LN desc="Input 11 (bit 10) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="11" prefix="IN_"/>  
          <LN desc="Input 12 (bit 11) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="12" prefix="IN_"/>  
          <LN desc="Input 13 (bit 12) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="13" prefix="IN_"/>  
          <LN desc="Input 14 (bit 13) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="14" prefix="IN_"/>  
          <LN desc="Input 15 (bit 14) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="15" prefix="IN_"/>  
          <LN desc="Input 16 (bit 15) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="16" prefix="IN_"/>  
          <LN desc="Input 17 (bit 16) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="17" prefix="IN_"/>  
          <LN desc="Input 18 (bit 17) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="18" prefix="IN_"/>  
          <LN desc="Input 19 (bit 18) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="19" prefix="IN_"/>  
          <LN desc="Input 20 (bit 19) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="20" prefix="IN_"/>  
          <LN desc="Input 21 (bit 20) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="21" prefix="IN_"/>  
          <LN desc="Input 22 (bit 21) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="22" prefix="IN_"/>  
          <LN desc="Input 23 (bit 22) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="23" prefix="IN_"/>  
          <LN desc="Input 24 (bit 23) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="24" prefix="IN_"/>  
          <LN desc="Input 25 (bit 24) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="25" prefix="IN_"/>  
          <LN desc="Input 26 (bit 25) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="26" prefix="IN_"/>  
          <LN desc="Input 27 (bit 26) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="27" prefix="IN_"/>  
          <LN desc="Input 28 (bit 27) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="28" prefix="IN_"/>  
          <LN desc="Input 29 (bit 28) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="29" prefix="IN_"/>  
          <LN desc="Input 30 (bit 29) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="30" prefix="IN_"/>  
          <LN desc="Input 31 (bit 30) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="31" prefix="IN_"/>  
          <LN desc="Input 32 (bit 31) to GTNET" lnType="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO" inst="32" prefix="IN_"/>  
          <LN desc="Output 1 (bit 0) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="1" prefix="OUT_"/>  
          <LN desc="Output 2 (bit 1) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="2" prefix="OUT_"/>  
          <LN desc="Output 3 (bit 2) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="3" prefix="OUT_"/>  
          <LN desc="Output 4 (bit 3) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="4" prefix="OUT_"/>  
          <LN desc="Output 5 (bit 4) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="5" prefix="OUT_"/>  
          <LN desc="Output 6 (bit 5) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="6" prefix="OUT_"/>  
          <LN desc="Output 7 (bit 6) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="7" prefix="OUT_"/>  
          <LN desc="Output 8 (bit 7) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="8" prefix="OUT_"/>  
          <LN desc="Output 9 (bit 8) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="9" prefix="OUT_"/>  
          <LN desc="Output 10 (bit 9) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="10" prefix="OUT_"/>  
          <LN desc="Output 11 (bit 10) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="11" prefix="OUT_"/>  
          <LN desc="Output 12 (bit 11) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="12" prefix="OUT_"/>  
          <LN desc="Output 13 (bit 12) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="13" prefix="OUT_"/>  
          <LN desc="Output 14 (bit 13) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="14" prefix="OUT_"/>  
          <LN desc="Output 15 (bit 14) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="15" prefix="OUT_"/>  
          <LN desc="Output 16 (bit 15) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="16" prefix="OUT_"/>  
          <LN desc="Output 17 (bit 16) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="17" prefix="OUT_"/>  
          <LN desc="Output 18 (bit 17) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="18" prefix="OUT_"/>  
          <LN desc="Output 19 (bit 18) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="19" prefix="OUT_"/>  
          <LN desc="Output 20 (bit 19) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="20" prefix="OUT_"/>  
          <LN desc="Output 21 (bit 20) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="21" prefix="OUT_"/>  
          <LN desc="Output 22 (bit 21) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="22" prefix="OUT_"/>  
          <LN desc="Output 23 (bit 22) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="23" prefix="OUT_"/>  
          <LN desc="Output 24 (bit 23) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="24" prefix="OUT_"/>  
          <LN desc="Output 25 (bit 24) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="25" prefix="OUT_"/>  
          <LN desc="Output 26 (bit 25) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="26" prefix="OUT_"/>  
          <LN desc="Output 27 (bit 26) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="27" prefix="OUT_"/>  
          <LN desc="Output 28 (bit 27) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="28" prefix="OUT_"/>  
          <LN desc="Output 29 (bit 28) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="29" prefix="OUT_"/>  
          <LN desc="Output 30 (bit 29) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="30" prefix="OUT_"/>  
          <LN desc="Output 31 (bit 30) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="31" prefix="OUT_"/>  
          <LN desc="Output 32 (bit 31) from GTNET" lnType="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO" inst="32" prefix="OUT_"/> 
        </LDevice> 
      </Server> 
    </AccessPoint> 
  </IED>  
  <IED name="IED_B" type="Generic IED" manufacturer="RTDS Technologies" desc="RTDS 61850 GOOSE/GSSE interface" configVersion="1.0"> 
    <Services> 
      <GOOSE max="1"/>  
      <ConfDataSet max="1" maxAttributes="32"/>  
      <ConfLNs fixPrefix="true" fixLnInst="true"/> 
    </Services>  
    <AccessPoint name="P1"> 
      <Server> 
        <Authentication none="true"/>  
        <LDevice inst="CTRL" desc="GTNET I/O"> 
          <LN0 inst="" desc="General" lnClass="LLN0" lnType="IED_BGTNET/CTRL/LLN0"> 
            <DataSet name="GOOSE_outputs"> 
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="1"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="1"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="2"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="2"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="3"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="3"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="4"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="4"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="5"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="5"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="6"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="6"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="7"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="7"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="8"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="8"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="9"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="9"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="10"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="10"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="11"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="11"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="12"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="12"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="13"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="13"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="14"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="14"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="15"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="15"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="16"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="16"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="17"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="17"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="18"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="18"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="19"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="19"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="20"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="20"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="21"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="21"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="22"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="22"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="23"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="23"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="24"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="24"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="25"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="25"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="26"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="26"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="27"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="27"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="28"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="28"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="29"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="29"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="30"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="30"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="31"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="31"/>  
              <FCDA fc="ST" doName="SPCSO" daName="q" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="32"/>  
              <FCDA fc="ST" doName="SPCSO" daName="stVal" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="32"/> 
            </DataSet>  
            <GSEControl name="GOOSE_outputs_control" confRev="1" appID="1" datSet="GOOSE_outputs" type="GOOSE"/> 
          </LN0>  
          <LN inst="1" desc="" lnClass="LPHD" lnType="IED_BGTNET/CTRL/LPHD1"/>  
          <LN inst="1" desc="Input 1 (bit 0) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"> 
            <Inputs> 
              <ExtRef iedName="IED_A" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="1" doName="SPCSO" daName="q"/>  
              <ExtRef iedName="IED_A" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="1" doName="SPCSO" daName="stVal"/> 
            </Inputs> 
          </LN>  
          <LN inst="2" desc="Input 2 (bit 1) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"> 
            <Inputs> 
              <ExtRef iedName="IED_A" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="2" doName="SPCSO" daName="q"/>
              <ExtRef iedName="IED_A" ldInst="CTRL" prefix="OUT_" lnClass="GGIO" lnInst="2" doName="SPCSO" daName="stVal"/>
            </Inputs> 
          </LN>  
          <LN inst="3" desc="Input 3 (bit 2) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="4" desc="Input 4 (bit 3) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="5" desc="Input 5 (bit 4) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="6" desc="Input 6 (bit 5) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="7" desc="Input 7 (bit 6) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="8" desc="Input 8 (bit 7) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="9" desc="Input 9 (bit 8) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="10" desc="Input 10 (bit 9) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="11" desc="Input 11 (bit 10) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="12" desc="Input 12 (bit 11) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="13" desc="Input 13 (bit 12) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="14" desc="Input 14 (bit 13) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="15" desc="Input 15 (bit 14) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="16" desc="Input 16 (bit 15) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="17" desc="Input 17 (bit 16) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="18" desc="Input 18 (bit 17) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="19" desc="Input 19 (bit 18) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="20" desc="Input 20 (bit 19) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="21" desc="Input 21 (bit 20) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="22" desc="Input 22 (bit 21) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="23" desc="Input 23 (bit 22) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="24" desc="Input 24 (bit 23) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="25" desc="Input 25 (bit 24) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="26" desc="Input 26 (bit 25) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="27" desc="Input 27 (bit 26) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="28" desc="Input 28 (bit 27) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="29" desc="Input 29 (bit 28) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="30" desc="Input 30 (bit 29) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="31" desc="Input 31 (bit 30) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="32" desc="Input 32 (bit 31) to GTNET" prefix="IN_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/IN_GGIO"/>  
          <LN inst="1" desc="Output 1 (bit 0) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="2" desc="Output 2 (bit 1) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="3" desc="Output 3 (bit 2) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="4" desc="Output 4 (bit 3) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="5" desc="Output 5 (bit 4) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="6" desc="Output 6 (bit 5) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="7" desc="Output 7 (bit 6) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="8" desc="Output 8 (bit 7) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="9" desc="Output 9 (bit 8) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="10" desc="Output 10 (bit 9) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="11" desc="Output 11 (bit 10) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="12" desc="Output 12 (bit 11) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="13" desc="Output 13 (bit 12) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="14" desc="Output 14 (bit 13) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="15" desc="Output 15 (bit 14) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="16" desc="Output 16 (bit 15) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="17" desc="Output 17 (bit 16) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="18" desc="Output 18 (bit 17) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="19" desc="Output 19 (bit 18) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="20" desc="Output 20 (bit 19) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="21" desc="Output 21 (bit 20) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="22" desc="Output 22 (bit 21) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="23" desc="Output 23 (bit 22) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="24" desc="Output 24 (bit 23) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="25" desc="Output 25 (bit 24) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="26" desc="Output 26 (bit 25) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="27" desc="Output 27 (bit 26) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="28" desc="Output 28 (bit 27) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="29" desc="Output 29 (bit 28) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="30" desc="Output 30 (bit 29) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="31" desc="Output 31 (bit 30) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/>  
          <LN inst="32" desc="Output 32 (bit 31) from GTNET" prefix="OUT_" lnClass="GGIO" lnType="IED_BGTNET/CTRL/OUT_GGIO"/> 
        </LDevice> 
      </Server> 
    </AccessPoint> 
  </IED>  
  <DataTypeTemplates> 
    <LNodeType id="IED_A_GTNET/CTRL/LLN0" lnClass="LLN0"> 
      <DO name="Mod" type="IED_A_myMod_1"/>  
      <DO name="Beh" type="IED_A_myBeh_1"/>  
      <DO name="Health" type="IED_A_myHealth_1"/>  
      <DO name="NamPlt" type="IED_A_myNamPlt_1"/>  
      <DO name="Loc" type="IED_A_myProxy_1"/> 
    </LNodeType>  
    <LNodeType id="IED_A_GTNET/CTRL/LPHD1" lnClass="LPHD"> 
      <DO name="PhyNam" type="IED_A_myPhyNam_1"/>  
      <DO name="PhyHealth" type="IED_A_myHealth_1"/>  
      <DO name="Proxy" type="IED_A_myProxy_1"/> 
    </LNodeType>  
    <LNodeType id="IED_A_GTNET/CTRL/IN_GGIO" lnClass="GGIO"> 
      <DO name="Mod" type="IED_A_myMod_1"/>  
      <DO name="Beh" type="IED_A_myBeh_1"/>  
      <DO name="Health" type="IED_A_myHealth_1"/>  
      <DO name="NamPlt" type="IED_A_myNamPlt_2"/>  
      <DO name="Ind" type="IED_A_myInd_inputs"/> 
    </LNodeType>  
    <LNodeType id="IED_A_GTNET/CTRL/OUT_GGIO" lnClass="GGIO"> 
      <DO name="Mod" type="IED_A_myMod_1"/>  
      <DO name="Beh" type="IED_A_myBeh_1"/>  
      <DO name="Health" type="IED_A_myHealth_1"/>  
      <DO name="NamPlt" type="IED_A_myNamPlt_2"/>  
      <DO name="SPCSO" type="IED_A_mySPCSO_outputs"/> 
    </LNodeType>  
    <LNodeType id="IED_BGTNET/CTRL/LPHD1" lnClass="LPHD"> 
      <DO name="PhyNam" type="IED_BmyPhyNam_1"/>  
      <DO name="PhyHealth" type="IED_BmyHealth_1"/>  
      <DO name="Proxy" type="IED_BmyProxy_1"/> 
    </LNodeType>  
    <LNodeType id="IED_BGTNET/CTRL/IN_GGIO" lnClass="GGIO"> 
      <DO name="Mod" type="IED_BmyMod_1"/>  
      <DO name="Beh" type="IED_BmyBeh_1"/>  
      <DO name="Health" type="IED_BmyHealth_1"/>  
      <DO name="NamPlt" type="IED_BmyNamPlt_2"/>  
      <DO name="Ind" type="IED_BmyInd_inputs"/> 
    </LNodeType>  
    <LNodeType id="IED_BGTNET/CTRL/OUT_GGIO" lnClass="GGIO"> 
      <DO name="Mod" type="IED_BmyMod_1"/>  
      <DO name="Beh" type="IED_BmyBeh_1"/>  
      <DO name="Health" type="IED_BmyHealth_1"/>  
      <DO name="NamPlt" type="IED_BmyNamPlt_2"/>  
      <DO name="SPCSO" type="IED_BmySPCSO_outputs"/> 
    </LNodeType>  
    <LNodeType id="IED_BGTNET/CTRL/LLN0" lnClass="LLN0"> 
      <DO name="Mod" type="IED_BmyMod_1"/>  
      <DO name="Beh" type="IED_BmyBeh_1"/>  
      <DO name="Health" type="IED_BmyHealth_1"/>  
      <DO name="NamPlt" type="IED_BmyNamPlt_1"/>  
      <DO name="Loc" type="IED_BmyProxy_1"/> 
    </LNodeType>  
    <DOType id="IED_A_myHealth_1" cdc="INS"> 
      <DA name="q" bType="Quality" qchg="true" fc="ST"/>  
      <DA name="t" bType="Timestamp" fc="ST"/>  
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/> 
    </DOType>  
    <DOType id="IED_A_myMod_1" cdc="INC"> 
      <DA name="q" bType="Quality" qchg="true" fc="ST"/>  
      <DA name="t" bType="Timestamp" fc="ST"/>  
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>  
      <DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/> 
    </DOType>  
    <DOType id="IED_A_myBeh_1" cdc="INC"> 
      <DA name="q" bType="Quality" qchg="true" fc="ST"/>  
      <DA name="t" bType="Timestamp" fc="ST"/>  
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>  
      <DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/> 
    </DOType>  
    <DOType id="IED_A_myNamPlt_1" cdc="LPL"> 
      <DA name="vendor" bType="VisString255" fc="DC"/>  
      <DA name="swRev" bType="VisString255" fc="DC"/>  
      <DA name="d" bType="VisString255" fc="DC"/>  
      <DA name="configRev" bType="VisString255" fc="DC"/>  
      <DA name="ldNs" bType="VisString255" fc="EX"/> 
    </DOType>  
    <DOType id="IED_A_myNamPlt_2" cdc="LPL"> 
      <DA name="vendor" bType="VisString255" fc="DC"/>  
      <DA name="swRev" bType="VisString255" fc="DC"/>  
      <DA name="d" bType="VisString255" fc="DC"/>  
      <DA name="ldNs" bType="VisString255" fc="EX"/> 
    </DOType>  
    <DOType id="IED_A_myPhyNam_1" cdc="DPL"> 
      <DA name="vendor" bType="VisString255" fc="DC"/>  
      <DA name="hwRev" bType="VisString255" fc="DC"/>  
      <DA name="swRev" bType="VisString255" fc="DC"/>  
      <DA name="serNum" bType="VisString255" fc="DC"/>  
      <DA name="model" bType="VisString255" fc="DC"/>  
      <DA name="location" bType="VisString255" fc="DC"/>  
      <DA name="cdcNs" bType="VisString255" fc="EX"/>  
      <DA name="scdConfigRev" bType="VisString255" fc="DC"/> 
    </DOType>  
    <DOType id="IED_A_myProxy_1" cdc="SPS"> 
      <DA name="q" bType="Quality" qchg="true" fc="ST"/>  
      <DA name="t" bType="Timestamp" fc="ST"/>  
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/> 
    </DOType>  
    <DOType id="IED_A_mySPCSO_outputs" cdc="SPC"> 
      <DA name="stVal" bType="BOOLEAN" dchg="true" fc="ST"/>  
      <DA name="q" bType="Quality" qchg="true" fc="ST"/>  
      <DA name="t" bType="Timestamp" fc="ST"/>  
      <DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/> 
    </DOType>  
    <DOType id="IED_A_myInd_inputs" cdc="SPC"> 
      <DA name="ctlVal" bType="BOOLEAN" fc="CO"/>  
      <DA name="ctlModel" bType="Enum" type="ctlModel" fc="CF"/> 
    </DOType>  
    <DOType cdc="DPL" id="IED_BmyPhyNam_1"> 
      <DA bType="VisString255" fc="DC" name="vendor"/>  
      <DA bType="VisString255" fc="DC" name="hwRev"/>  
      <DA bType="VisString255" fc="DC" name="swRev"/>  
      <DA bType="VisString255" fc="DC" name="serNum"/>  
      <DA bType="VisString255" fc="DC" name="model"/>  
      <DA bType="VisString255" fc="DC" name="location"/>  
      <DA bType="VisString255" fc="EX" name="cdcNs"/>  
      <DA bType="VisString255" fc="DC" name="scdConfigRev"/> 
    </DOType>  
    <DOType cdc="INS" id="IED_BmyHealth_1"> 
      <DA bType="Quality" fc="ST" name="q" qchg="true"/>  
      <DA bType="Timestamp" fc="ST" name="t"/>  
      <DA bType="BOOLEAN" fc="ST" name="stVal" dchg="true"/> 
    </DOType>  
    <DOType cdc="SPS" id="IED_BmyProxy_1"> 
      <DA bType="Quality" fc="ST" name="q" qchg="true"/>  
      <DA bType="Timestamp" fc="ST" name="t"/>  
      <DA bType="BOOLEAN" fc="ST" name="stVal" dchg="true"/> 
    </DOType>  
    <DOType cdc="INC" id="IED_BmyMod_1"> 
      <DA bType="Quality" fc="ST" name="q" qchg="true"/>  
      <DA bType="Timestamp" fc="ST" name="t"/>  
      <DA bType="BOOLEAN" fc="ST" name="stVal" dchg="true"/>  
      <DA bType="Enum" fc="CF" name="ctlModel" type="IED_BctlModel"/> 
    </DOType>  
    <DOType cdc="INC" id="IED_BmyBeh_1"> 
      <DA bType="Quality" fc="ST" name="q" qchg="true"/>  
      <DA bType="Timestamp" fc="ST" name="t"/>  
      <DA bType="BOOLEAN" fc="ST" name="stVal" dchg="true"/>  
      <DA bType="Enum" fc="CF" name="ctlModel" type="IED_BctlModel"/> 
    </DOType>  
    <DOType cdc="LPL" id="IED_BmyNamPlt_2"> 
      <DA bType="VisString255" fc="DC" name="vendor"/>  
      <DA bType="VisString255" fc="DC" name="swRev"/>  
      <DA bType="VisString255" fc="DC" name="d"/>  
      <DA bType="VisString255" fc="EX" name="ldNs"/> 
    </DOType>  
    <DOType cdc="SPC" id="IED_BmyInd_inputs"> 
      <DA bType="BOOLEAN" fc="CO" name="ctlVal"/>  
      <DA bType="Enum" fc="CF" name="ctlModel" type="IED_BctlModel"/> 
    </DOType>  
    <DOType cdc="SPC" id="IED_BmySPCSO_outputs"> 
      <DA bType="BOOLEAN" dchg="true" fc="ST" name="stVal"/>  
      <DA bType="Quality" fc="ST" name="q" qchg="true"/>  
      <DA bType="Timestamp" fc="ST" name="t"/>  
      <DA bType="Enum" fc="CF" name="ctlModel" type="IED_BctlModel"/> 
    </DOType>  
    <DOType cdc="LPL" id="IED_BmyNamPlt_1"> 
      <DA bType="VisString255" fc="DC" name="vendor"/>  
      <DA bType="VisString255" fc="DC" name="swRev"/>  
      <DA bType="VisString255" fc="DC" name="d"/>  
      <DA bType="VisString255" fc="DC" name="configRev"/>  
      <DA bType="VisString255" fc="EX" name="ldNs"/> 
    </DOType>  
    <EnumType id="Boolean"> 
      <EnumVal ord="0">FALSE</EnumVal>  
      <EnumVal ord="1">TRUE</EnumVal> 
    </EnumType>  
    <EnumType id="ctlModel"> 
      <EnumVal ord="0">status-only</EnumVal>  
      <EnumVal ord="1">direct-with-normal-security</EnumVal>  
      <EnumVal ord="2">sbo-with-normal-security</EnumVal>  
      <EnumVal ord="3">direct-with-enhanced-security</EnumVal>  
      <EnumVal ord="4">sbo-with-enhanced-security</EnumVal> 
    </EnumType>  
    <EnumType id="Beh"> 
      <EnumVal ord="1">on</EnumVal>  
      <EnumVal ord="2">blocked</EnumVal>  
      <EnumVal ord="3">test</EnumVal>  
      <EnumVal ord="4">test/blocked</EnumVal>  
      <EnumVal ord="5">off</EnumVal> 
    </EnumType>  
    <EnumType id="Health"> 
      <EnumVal ord="1">Ok</EnumVal>  
      <EnumVal ord="2">Warning</EnumVal>  
      <EnumVal ord="3">Alarm</EnumVal> 
    </EnumType>  
    <EnumType id="IED_BctlModel"> 
      <EnumVal ord="0">status-only</EnumVal>  
      <EnumVal ord="1">direct-with-normal-security</EnumVal>  
      <EnumVal ord="2">sbo-with-normal-security</EnumVal>  
      <EnumVal ord="3">direct-with-enhanced-security</EnumVal>  
      <EnumVal ord="4">sbo-with-enhanced-security</EnumVal> 
    </EnumType> 
  </DataTypeTemplates> 
</SCL>
