<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting keepoldvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2X02" urn="urn:adsk.eagle:footprint:22337/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<text x="-2.54" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
</package>
<package name="2X02/90" urn="urn:adsk.eagle:footprint:22338/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="1.27" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-5.461" x2="-0.889" y2="-4.699" layer="21"/>
<rectangle x1="-1.651" y1="-4.699" x2="-0.889" y2="-2.921" layer="51"/>
<rectangle x1="0.889" y1="-4.699" x2="1.651" y2="-2.921" layer="51"/>
<rectangle x1="0.889" y1="-5.461" x2="1.651" y2="-4.699" layer="21"/>
</package>
<package name="2X11" urn="urn:adsk.eagle:footprint:22273/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-13.97" y1="-1.905" x2="-13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-1.905" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-2.54" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="-1.905" x2="-13.97" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="1.905" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="2.54" x2="-12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="2.54" x2="-11.43" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="1.905" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.905" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.905" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="11.43" y2="1.905" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-1.905" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-2.54" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="1.905" x2="-11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.905" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.905" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="11.43" y1="1.905" x2="11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="11.43" y1="1.905" x2="12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="2.54" x2="13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.97" y2="1.905" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-1.905" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-2.54" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-1.905" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="13.97" y1="1.905" x2="13.97" y2="-1.905" width="0.1524" layer="21"/>
<pad name="1" x="-12.7" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-12.7" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-10.16" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-10.16" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-7.62" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-7.62" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="7.62" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="7.62" y="1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="10.16" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="10.16" y="1.27" drill="1.016" shape="octagon"/>
<pad name="21" x="12.7" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="22" x="12.7" y="1.27" drill="1.016" shape="octagon"/>
<text x="-13.97" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-13.97" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-12.954" y1="-1.524" x2="-12.446" y2="-1.016" layer="51"/>
<rectangle x1="-12.954" y1="1.016" x2="-12.446" y2="1.524" layer="51"/>
<rectangle x1="-10.414" y1="1.016" x2="-9.906" y2="1.524" layer="51"/>
<rectangle x1="-10.414" y1="-1.524" x2="-9.906" y2="-1.016" layer="51"/>
<rectangle x1="-7.874" y1="1.016" x2="-7.366" y2="1.524" layer="51"/>
<rectangle x1="-7.874" y1="-1.524" x2="-7.366" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="7.366" y1="1.016" x2="7.874" y2="1.524" layer="51"/>
<rectangle x1="7.366" y1="-1.524" x2="7.874" y2="-1.016" layer="51"/>
<rectangle x1="9.906" y1="1.016" x2="10.414" y2="1.524" layer="51"/>
<rectangle x1="9.906" y1="-1.524" x2="10.414" y2="-1.016" layer="51"/>
<rectangle x1="12.446" y1="1.016" x2="12.954" y2="1.524" layer="51"/>
<rectangle x1="12.446" y1="-1.524" x2="12.954" y2="-1.016" layer="51"/>
</package>
<package name="2X11/90" urn="urn:adsk.eagle:footprint:22274/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-13.97" y1="-1.905" x2="-11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-1.905" x2="-11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.635" x2="-13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="0.635" x2="-13.97" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.985" x2="-12.7" y2="1.27" width="0.762" layer="21"/>
<wire x1="-11.43" y1="-1.905" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="6.985" x2="-10.16" y2="1.27" width="0.762" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="6.985" x2="-7.62" y2="1.27" width="0.762" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="6.985" x2="7.62" y2="1.27" width="0.762" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-1.905" x2="11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0.635" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.985" x2="10.16" y2="1.27" width="0.762" layer="21"/>
<wire x1="11.43" y1="-1.905" x2="13.97" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-1.905" x2="13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0.635" x2="11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.985" x2="12.7" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-12.7" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="-10.16" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="-7.62" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="-5.08" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="10" x="-2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="12" x="0" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="14" x="2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="16" x="5.08" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="18" x="7.62" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="20" x="10.16" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="22" x="12.7" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-12.7" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="-10.16" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="-7.62" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="7" x="-5.08" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="9" x="-2.54" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="11" x="0" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="13" x="2.54" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="15" x="5.08" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="17" x="7.62" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="19" x="10.16" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="21" x="12.7" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-14.605" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="15.875" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-13.081" y1="0.635" x2="-12.319" y2="1.143" layer="21"/>
<rectangle x1="-10.541" y1="0.635" x2="-9.779" y2="1.143" layer="21"/>
<rectangle x1="-8.001" y1="0.635" x2="-7.239" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="7.239" y1="0.635" x2="8.001" y2="1.143" layer="21"/>
<rectangle x1="9.779" y1="0.635" x2="10.541" y2="1.143" layer="21"/>
<rectangle x1="12.319" y1="0.635" x2="13.081" y2="1.143" layer="21"/>
<rectangle x1="-13.081" y1="-2.921" x2="-12.319" y2="-1.905" layer="21"/>
<rectangle x1="-10.541" y1="-2.921" x2="-9.779" y2="-1.905" layer="21"/>
<rectangle x1="-13.081" y1="-5.461" x2="-12.319" y2="-4.699" layer="21"/>
<rectangle x1="-13.081" y1="-4.699" x2="-12.319" y2="-2.921" layer="51"/>
<rectangle x1="-10.541" y1="-4.699" x2="-9.779" y2="-2.921" layer="51"/>
<rectangle x1="-10.541" y1="-5.461" x2="-9.779" y2="-4.699" layer="21"/>
<rectangle x1="-8.001" y1="-2.921" x2="-7.239" y2="-1.905" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-8.001" y1="-5.461" x2="-7.239" y2="-4.699" layer="21"/>
<rectangle x1="-8.001" y1="-4.699" x2="-7.239" y2="-2.921" layer="51"/>
<rectangle x1="-5.461" y1="-4.699" x2="-4.699" y2="-2.921" layer="51"/>
<rectangle x1="-5.461" y1="-5.461" x2="-4.699" y2="-4.699" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-5.461" x2="-2.159" y2="-4.699" layer="21"/>
<rectangle x1="-2.921" y1="-4.699" x2="-2.159" y2="-2.921" layer="51"/>
<rectangle x1="-0.381" y1="-4.699" x2="0.381" y2="-2.921" layer="51"/>
<rectangle x1="-0.381" y1="-5.461" x2="0.381" y2="-4.699" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-5.461" x2="2.921" y2="-4.699" layer="21"/>
<rectangle x1="2.159" y1="-4.699" x2="2.921" y2="-2.921" layer="51"/>
<rectangle x1="4.699" y1="-4.699" x2="5.461" y2="-2.921" layer="51"/>
<rectangle x1="4.699" y1="-5.461" x2="5.461" y2="-4.699" layer="21"/>
<rectangle x1="7.239" y1="-2.921" x2="8.001" y2="-1.905" layer="21"/>
<rectangle x1="9.779" y1="-2.921" x2="10.541" y2="-1.905" layer="21"/>
<rectangle x1="7.239" y1="-5.461" x2="8.001" y2="-4.699" layer="21"/>
<rectangle x1="7.239" y1="-4.699" x2="8.001" y2="-2.921" layer="51"/>
<rectangle x1="9.779" y1="-4.699" x2="10.541" y2="-2.921" layer="51"/>
<rectangle x1="9.779" y1="-5.461" x2="10.541" y2="-4.699" layer="21"/>
<rectangle x1="12.319" y1="-2.921" x2="13.081" y2="-1.905" layer="21"/>
<rectangle x1="12.319" y1="-5.461" x2="13.081" y2="-4.699" layer="21"/>
<rectangle x1="12.319" y1="-4.699" x2="13.081" y2="-2.921" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="2X02" urn="urn:adsk.eagle:package:22455/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X02"/>
</packageinstances>
</package3d>
<package3d name="2X02/90" urn="urn:adsk.eagle:package:22456/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X02/90"/>
</packageinstances>
</package3d>
<package3d name="2X11" urn="urn:adsk.eagle:package:22419/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X11"/>
</packageinstances>
</package3d>
<package3d name="2X11/90" urn="urn:adsk.eagle:package:22428/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X11/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINH2X2" urn="urn:adsk.eagle:symbol:22336/1" library_version="3">
<wire x1="-8.89" y1="-2.54" x2="6.35" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="6.35" y1="-2.54" x2="6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="6.35" y1="5.08" x2="-8.89" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-8.89" y1="5.08" x2="-8.89" y2="-2.54" width="0.4064" layer="94"/>
<text x="-8.89" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-8.89" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-5.08" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="2.54" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
<symbol name="PINH2X11" urn="urn:adsk.eagle:symbol:22272/1" library_version="3">
<wire x1="-6.35" y1="-15.24" x2="8.89" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-15.24" x2="8.89" y2="15.24" width="0.4064" layer="94"/>
<wire x1="8.89" y1="15.24" x2="-6.35" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="15.24" x2="-6.35" y2="-15.24" width="0.4064" layer="94"/>
<text x="-6.35" y="15.875" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="5.08" y="12.7" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="10.16" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="7" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="9" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="11" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="13" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="15" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="17" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="18" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="19" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="20" x="5.08" y="-10.16" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="21" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="22" x="5.08" y="-12.7" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-2X2" urn="urn:adsk.eagle:component:22526/3" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X02">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22455/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="2X02/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22456/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-2X11" urn="urn:adsk.eagle:component:22512/3" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X11" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X11">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22419/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="2X11/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22428/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="POLOLU-A4990">
<packages>
<package name="SHIELD_POLOLU-713">
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.127" layer="51"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.127" layer="51"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.127" layer="51"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.127" layer="51"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.127" layer="21"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.127" layer="21"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.127" layer="21"/>
<wire x1="-7.87" y1="10.41" x2="7.87" y2="10.41" width="0.05" layer="39"/>
<wire x1="7.87" y1="10.41" x2="7.87" y2="-10.41" width="0.05" layer="39"/>
<wire x1="7.87" y1="-10.41" x2="-7.87" y2="-10.41" width="0.05" layer="39"/>
<wire x1="-7.87" y1="-10.41" x2="-7.87" y2="10.41" width="0.05" layer="39"/>
<text x="-7.611840625" y="11.1173" size="0.814065625" layer="25">&gt;NAME</text>
<text x="-7.701259375" y="-11.5019" size="0.812934375" layer="27">&gt;VALUE</text>
<circle x="-8.2" y="8.9" radius="0.15" width="0.3" layer="21"/>
<pad name="1" x="-6.35" y="8.89" drill="1.04" shape="square"/>
<pad name="2" x="-6.35" y="6.35" drill="1.04"/>
<pad name="3" x="-6.35" y="3.81" drill="1.04"/>
<pad name="4" x="-6.35" y="1.27" drill="1.04"/>
<pad name="5" x="-6.35" y="-1.27" drill="1.04"/>
<pad name="6" x="-6.35" y="-3.81" drill="1.04"/>
<pad name="7" x="-6.35" y="-6.35" drill="1.04"/>
<pad name="8" x="-6.35" y="-8.89" drill="1.04" shape="square"/>
<pad name="9" x="6.35" y="-8.89" drill="1.04" shape="square"/>
<pad name="10" x="6.35" y="-6.35" drill="1.04"/>
<pad name="11" x="6.35" y="-3.81" drill="1.04"/>
<pad name="12" x="6.35" y="-1.27" drill="1.04"/>
<pad name="13" x="6.35" y="1.27" drill="1.04"/>
<pad name="14" x="6.35" y="3.81" drill="1.04"/>
<pad name="15" x="6.35" y="6.35" drill="1.04"/>
<pad name="16" x="6.35" y="8.89" drill="1.04"/>
</package>
</packages>
<symbols>
<symbol name="POLOLU-713">
<wire x1="7.62" y1="-17.78" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="7.62" y2="-17.78" width="0.254" layer="94"/>
<text x="-7.628790625" y="15.8933" size="1.78005" layer="95">&gt;NAME</text>
<text x="-7.622040625" y="-20.3255" size="1.77848125" layer="96">&gt;VALUE</text>
<pin name="GND" x="12.7" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="VCC" x="12.7" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="AO1" x="12.7" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="AO2" x="12.7" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="BO2" x="12.7" y="0" length="middle" direction="out" rot="R180"/>
<pin name="BO1" x="12.7" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="VMOT" x="-12.7" y="-10.16" length="middle" direction="in"/>
<pin name="PWMB" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="BIN2" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="BIN1" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="!STBY" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="AIN1" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="AIN2" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="PWMA" x="-12.7" y="-5.08" length="middle" direction="in"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="POLOLU-713" prefix="TB">
<description>DC-motor driver; IC: TB6612FNG; 100kHz; 1A; Uin mot: 4.5</description>
<gates>
<gate name="G$1" symbol="POLOLU-713" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SHIELD_POLOLU-713">
<connects>
<connect gate="G$1" pin="!STBY" pad="3"/>
<connect gate="G$1" pin="AIN1" pad="4"/>
<connect gate="G$1" pin="AIN2" pad="5"/>
<connect gate="G$1" pin="AO1" pad="16"/>
<connect gate="G$1" pin="AO2" pad="15"/>
<connect gate="G$1" pin="BIN1" pad="6"/>
<connect gate="G$1" pin="BIN2" pad="7"/>
<connect gate="G$1" pin="BO1" pad="14"/>
<connect gate="G$1" pin="BO2" pad="13"/>
<connect gate="G$1" pin="GND" pad="8 9 12" route="any"/>
<connect gate="G$1" pin="PWMA" pad="1"/>
<connect gate="G$1" pin="PWMB" pad="2"/>
<connect gate="G$1" pin="VCC" pad="11"/>
<connect gate="G$1" pin="VMOT" pad="10"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" DC-motor driver; IC: TB6612FNG; 100kHz; 1A; Uin mot: 4.5 "/>
<attribute name="MF" value="Pololu"/>
<attribute name="MP" value="POLOLU-713"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wirepad" urn="urn:adsk.eagle:library:412">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="3,81/1,4" urn="urn:adsk.eagle:footprint:30817/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.397" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/1,0" urn="urn:adsk.eagle:footprint:30810/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="3,81/1,4" urn="urn:adsk.eagle:package:30835/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,81/1,4"/>
</packageinstances>
</package3d>
<package3d name="2,54/1,0" urn="urn:adsk.eagle:package:30828/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/1,0"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD" urn="urn:adsk.eagle:symbol:30808/1" library_version="1">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="3,81/1,4" urn="urn:adsk.eagle:component:30853/1" prefix="PAD" uservalue="yes" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="3,81/1,4">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30835/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2,54/1,0" urn="urn:adsk.eagle:component:30846/1" prefix="PAD" uservalue="yes" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<gates>
<gate name="P" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2,54/1,0">
<connects>
<connect gate="P" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30828/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0.4064" drill="0">
<clearance class="0" value="0.4064"/>
</class>
<class number="1" name="Power" width="3.048" drill="0">
<clearance class="1" value="0.4064"/>
</class>
<class number="2" name="Motor" width="1.016" drill="0">
<clearance class="2" value="0.4064"/>
</class>
<class number="3" name="Low Power" width="3.048" drill="0">
<clearance class="3" value="0.4064"/>
</class>
</classes>
<parts>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="POLOLU-A4990_2" library="POLOLU-A4990" deviceset="POLOLU-713" device="" value=""/>
<part name="POLOLU-A4990_1" library="POLOLU-A4990" deviceset="POLOLU-713" device="" value=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="12V_OUT" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-2X2" device="" package3d_urn="urn:adsk.eagle:package:22455/2"/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="RASPI_COM" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-2X11" device="" package3d_urn="urn:adsk.eagle:package:22419/2"/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="ERR_OUT" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-2X2" device="" package3d_urn="urn:adsk.eagle:package:22455/2"/>
<part name="M1+" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="M1-" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="M2+" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="M2-" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="M3+" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="M3-" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="M4+" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="M4-" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="12V+" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="12V-" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="3,81/1,4" device="" package3d_urn="urn:adsk.eagle:package:30835/1"/>
<part name="SW+" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="2,54/1,0" device="" package3d_urn="urn:adsk.eagle:package:30828/1"/>
<part name="SW-" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="2,54/1,0" device="" package3d_urn="urn:adsk.eagle:package:30828/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="GND1" gate="1" x="5.08" y="-22.86" smashed="yes">
<attribute name="VALUE" x="2.54" y="-25.4" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="53.34" y="-25.4" smashed="yes">
<attribute name="VALUE" x="50.8" y="-27.94" size="1.778" layer="96"/>
</instance>
<instance part="POLOLU-A4990_2" gate="G$1" x="68.58" y="2.54" smashed="yes" rot="MR0">
<attribute name="NAME" x="76.208790625" y="18.4333" size="1.78005" layer="95" rot="MR0"/>
<attribute name="VALUE" x="76.202040625" y="-17.7855" size="1.77848125" layer="96" rot="MR0"/>
</instance>
<instance part="POLOLU-A4990_1" gate="G$1" x="17.78" y="2.54" smashed="yes" rot="MR0">
<attribute name="NAME" x="25.408790625" y="18.4333" size="1.78005" layer="95" rot="MR0"/>
<attribute name="VALUE" x="25.402040625" y="-17.7855" size="1.77848125" layer="96" rot="MR0"/>
</instance>
<instance part="GND4" gate="1" x="40.64" y="-43.18" smashed="yes">
<attribute name="VALUE" x="38.1" y="-45.72" size="1.778" layer="96"/>
</instance>
<instance part="12V_OUT" gate="A" x="73.66" y="-45.72" smashed="yes">
<attribute name="NAME" x="64.77" y="-40.005" size="1.778" layer="95"/>
<attribute name="VALUE" x="64.77" y="-50.8" size="1.778" layer="96"/>
</instance>
<instance part="GND5" gate="1" x="63.5" y="-53.34" smashed="yes">
<attribute name="VALUE" x="60.96" y="-55.88" size="1.778" layer="96"/>
</instance>
<instance part="GND6" gate="1" x="83.82" y="-53.34" smashed="yes">
<attribute name="VALUE" x="81.28" y="-55.88" size="1.778" layer="96"/>
</instance>
<instance part="RASPI_COM" gate="A" x="124.46" y="22.86" smashed="yes">
<attribute name="NAME" x="118.11" y="38.735" size="1.778" layer="95"/>
<attribute name="VALUE" x="118.11" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="127" y="2.54" smashed="yes">
<attribute name="VALUE" x="124.46" y="0" size="1.778" layer="96"/>
</instance>
<instance part="ERR_OUT" gate="A" x="137.16" y="-25.4" smashed="yes">
<attribute name="NAME" x="128.27" y="-19.685" size="1.778" layer="95"/>
<attribute name="VALUE" x="128.27" y="-30.48" size="1.778" layer="96"/>
</instance>
<instance part="M1+" gate="1" x="17.78" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="19.6342" y="62.103" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="14.478" y="62.103" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="M1-" gate="1" x="22.86" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="24.7142" y="62.103" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="19.558" y="62.103" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="M2+" gate="1" x="27.94" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="29.7942" y="62.103" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="24.638" y="62.103" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="M2-" gate="1" x="33.02" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="34.8742" y="62.103" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="29.718" y="62.103" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="M3+" gate="1" x="38.1" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="39.9542" y="62.103" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="34.798" y="62.103" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="M3-" gate="1" x="43.18" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="45.0342" y="62.103" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="39.878" y="62.103" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="M4+" gate="1" x="48.26" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="50.1142" y="62.103" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="44.958" y="62.103" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="M4-" gate="1" x="53.34" y="60.96" smashed="yes" rot="R270">
<attribute name="NAME" x="55.1942" y="62.103" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="50.038" y="62.103" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="12V+" gate="1" x="7.62" y="-33.02" smashed="yes">
<attribute name="NAME" x="6.477" y="-31.1658" size="1.778" layer="95"/>
<attribute name="VALUE" x="6.477" y="-36.322" size="1.778" layer="96"/>
</instance>
<instance part="12V-" gate="1" x="7.62" y="-40.64" smashed="yes">
<attribute name="NAME" x="6.477" y="-38.7858" size="1.778" layer="95"/>
<attribute name="VALUE" x="6.477" y="-43.942" size="1.778" layer="96"/>
</instance>
<instance part="SW+" gate="P" x="22.86" y="-30.48" smashed="yes">
<attribute name="NAME" x="21.717" y="-28.6258" size="1.778" layer="95"/>
<attribute name="VALUE" x="21.717" y="-33.782" size="1.778" layer="96"/>
</instance>
<instance part="SW-" gate="P" x="22.86" y="-35.56" smashed="yes">
<attribute name="NAME" x="21.717" y="-33.7058" size="1.778" layer="95"/>
<attribute name="VALUE" x="21.717" y="-38.862" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="1">
<segment>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="5.08" y1="-12.7" x2="5.08" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="55.88" y1="-12.7" x2="53.34" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-12.7" x2="53.34" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="10.16" y1="-40.64" x2="40.64" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="12V-" gate="1" pin="P"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="63.5" y1="-43.18" x2="63.5" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="12V_OUT" gate="A" pin="1"/>
<wire x1="63.5" y1="-43.18" x2="68.58" y2="-43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="83.82" y1="-43.18" x2="83.82" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="12V_OUT" gate="A" pin="2"/>
<wire x1="76.2" y1="-43.18" x2="83.82" y2="-43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="127" y1="5.08" x2="114.3" y2="5.08" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="21"/>
<wire x1="114.3" y1="5.08" x2="114.3" y2="10.16" width="0.1524" layer="91"/>
<wire x1="114.3" y1="10.16" x2="121.92" y2="10.16" width="0.1524" layer="91"/>
<wire x1="127" y1="5.08" x2="137.16" y2="5.08" width="0.1524" layer="91"/>
<junction x="127" y="5.08"/>
<pinref part="RASPI_COM" gate="A" pin="22"/>
<wire x1="137.16" y1="5.08" x2="137.16" y2="10.16" width="0.1524" layer="91"/>
<wire x1="137.16" y1="10.16" x2="129.54" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="2">
<segment>
<wire x1="0" y1="30.48" x2="27.94" y2="30.48" width="0.1524" layer="91"/>
<wire x1="27.94" y1="30.48" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="AO1"/>
<wire x1="5.08" y1="10.16" x2="0" y2="10.16" width="0.1524" layer="91"/>
<wire x1="0" y1="10.16" x2="0" y2="30.48" width="0.1524" layer="91"/>
<wire x1="27.94" y1="50.8" x2="17.78" y2="50.8" width="0.1524" layer="91"/>
<pinref part="M1+" gate="1" pin="P"/>
<wire x1="17.78" y1="50.8" x2="17.78" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="2">
<segment>
<wire x1="30.48" y1="50.8" x2="30.48" y2="27.94" width="0.1524" layer="91"/>
<wire x1="30.48" y1="27.94" x2="-2.54" y2="27.94" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="AO2"/>
<wire x1="-2.54" y1="27.94" x2="-2.54" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="7.62" x2="5.08" y2="7.62" width="0.1524" layer="91"/>
<pinref part="M1-" gate="1" pin="P"/>
<wire x1="30.48" y1="50.8" x2="22.86" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="2">
<segment>
<wire x1="33.02" y1="50.8" x2="33.02" y2="25.4" width="0.1524" layer="91"/>
<wire x1="33.02" y1="25.4" x2="-7.62" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="25.4" x2="-7.62" y2="5.08" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="BO1"/>
<wire x1="-7.62" y1="5.08" x2="5.08" y2="5.08" width="0.1524" layer="91"/>
<pinref part="M2+" gate="1" pin="P"/>
<wire x1="33.02" y1="50.8" x2="27.94" y2="55.88" width="0.1524" layer="91"/>
<wire x1="27.94" y1="55.88" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="2">
<segment>
<wire x1="35.56" y1="50.8" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="35.56" y1="22.86" x2="-12.7" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="22.86" x2="-12.7" y2="2.54" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="BO2"/>
<wire x1="-12.7" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="91"/>
<pinref part="M2-" gate="1" pin="P"/>
<wire x1="35.56" y1="50.8" x2="33.02" y2="53.34" width="0.1524" layer="91"/>
<wire x1="33.02" y1="53.34" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="2">
<segment>
<wire x1="38.1" y1="58.42" x2="38.1" y2="10.16" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="AO1"/>
<wire x1="38.1" y1="10.16" x2="55.88" y2="10.16" width="0.1524" layer="91"/>
<pinref part="M3+" gate="1" pin="P"/>
</segment>
</net>
<net name="N$7" class="2">
<segment>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="AO2"/>
<wire x1="55.88" y1="7.62" x2="40.64" y2="7.62" width="0.1524" layer="91"/>
<wire x1="40.64" y1="7.62" x2="40.64" y2="55.88" width="0.1524" layer="91"/>
<pinref part="M3-" gate="1" pin="P"/>
<wire x1="40.64" y1="55.88" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="2">
<segment>
<wire x1="43.18" y1="53.34" x2="43.18" y2="5.08" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="BO1"/>
<wire x1="43.18" y1="5.08" x2="55.88" y2="5.08" width="0.1524" layer="91"/>
<pinref part="M4+" gate="1" pin="P"/>
<wire x1="43.18" y1="53.34" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="2">
<segment>
<wire x1="45.72" y1="50.8" x2="45.72" y2="2.54" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="BO2"/>
<wire x1="45.72" y1="2.54" x2="55.88" y2="2.54" width="0.1524" layer="91"/>
<wire x1="45.72" y1="50.8" x2="53.34" y2="50.8" width="0.1524" layer="91"/>
<pinref part="M4-" gate="1" pin="P"/>
<wire x1="53.34" y1="50.8" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="!STBY"/>
<wire x1="81.28" y1="10.16" x2="88.9" y2="10.16" width="0.1524" layer="91"/>
<wire x1="88.9" y1="10.16" x2="88.9" y2="22.86" width="0.1524" layer="91"/>
<wire x1="88.9" y1="22.86" x2="121.92" y2="22.86" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="11"/>
<pinref part="RASPI_COM" gate="A" pin="12"/>
<wire x1="121.92" y1="22.86" x2="129.54" y2="22.86" width="0.1524" layer="91"/>
<junction x="121.92" y="22.86"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="BIN2"/>
<wire x1="81.28" y1="0" x2="99.06" y2="0" width="0.1524" layer="91"/>
<wire x1="99.06" y1="0" x2="99.06" y2="12.7" width="0.1524" layer="91"/>
<wire x1="99.06" y1="12.7" x2="121.92" y2="12.7" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="19"/>
<pinref part="RASPI_COM" gate="A" pin="20"/>
<wire x1="121.92" y1="12.7" x2="129.54" y2="12.7" width="0.1524" layer="91"/>
<junction x="121.92" y="12.7"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="BIN1"/>
<wire x1="81.28" y1="2.54" x2="96.52" y2="2.54" width="0.1524" layer="91"/>
<wire x1="96.52" y1="2.54" x2="96.52" y2="15.24" width="0.1524" layer="91"/>
<wire x1="96.52" y1="15.24" x2="121.92" y2="15.24" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="17"/>
<pinref part="RASPI_COM" gate="A" pin="18"/>
<wire x1="121.92" y1="15.24" x2="129.54" y2="15.24" width="0.1524" layer="91"/>
<junction x="121.92" y="15.24"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="121.92" y1="17.78" x2="93.98" y2="17.78" width="0.1524" layer="91"/>
<wire x1="93.98" y1="17.78" x2="93.98" y2="5.08" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="AIN2"/>
<wire x1="93.98" y1="5.08" x2="81.28" y2="5.08" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="15"/>
<pinref part="RASPI_COM" gate="A" pin="16"/>
<wire x1="121.92" y1="17.78" x2="129.54" y2="17.78" width="0.1524" layer="91"/>
<junction x="121.92" y="17.78"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="AIN1"/>
<wire x1="81.28" y1="7.62" x2="91.44" y2="7.62" width="0.1524" layer="91"/>
<wire x1="91.44" y1="7.62" x2="91.44" y2="20.32" width="0.1524" layer="91"/>
<wire x1="91.44" y1="20.32" x2="121.92" y2="20.32" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="13"/>
<pinref part="RASPI_COM" gate="A" pin="14"/>
<wire x1="121.92" y1="20.32" x2="129.54" y2="20.32" width="0.1524" layer="91"/>
<junction x="121.92" y="20.32"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="!STBY"/>
<wire x1="30.48" y1="10.16" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<wire x1="53.34" y1="35.56" x2="121.92" y2="35.56" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="1"/>
<pinref part="RASPI_COM" gate="A" pin="2"/>
<wire x1="121.92" y1="35.56" x2="129.54" y2="35.56" width="0.1524" layer="91"/>
<junction x="121.92" y="35.56"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="AIN1"/>
<wire x1="30.48" y1="7.62" x2="53.34" y2="33.02" width="0.1524" layer="91"/>
<wire x1="53.34" y1="33.02" x2="121.92" y2="33.02" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="3"/>
<pinref part="RASPI_COM" gate="A" pin="4"/>
<wire x1="121.92" y1="33.02" x2="129.54" y2="33.02" width="0.1524" layer="91"/>
<junction x="121.92" y="33.02"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="AIN2"/>
<wire x1="30.48" y1="5.08" x2="53.34" y2="30.48" width="0.1524" layer="91"/>
<wire x1="53.34" y1="30.48" x2="121.92" y2="30.48" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="5"/>
<pinref part="RASPI_COM" gate="A" pin="6"/>
<wire x1="121.92" y1="30.48" x2="129.54" y2="30.48" width="0.1524" layer="91"/>
<junction x="121.92" y="30.48"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="BIN1"/>
<wire x1="30.48" y1="2.54" x2="53.34" y2="27.94" width="0.1524" layer="91"/>
<wire x1="53.34" y1="27.94" x2="121.92" y2="27.94" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="7"/>
<pinref part="RASPI_COM" gate="A" pin="8"/>
<wire x1="121.92" y1="27.94" x2="129.54" y2="27.94" width="0.1524" layer="91"/>
<junction x="121.92" y="27.94"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="BIN2"/>
<wire x1="30.48" y1="0" x2="53.34" y2="25.4" width="0.1524" layer="91"/>
<wire x1="53.34" y1="25.4" x2="121.92" y2="25.4" width="0.1524" layer="91"/>
<pinref part="RASPI_COM" gate="A" pin="9"/>
<pinref part="RASPI_COM" gate="A" pin="10"/>
<wire x1="121.92" y1="25.4" x2="129.54" y2="25.4" width="0.1524" layer="91"/>
<junction x="121.92" y="25.4"/>
</segment>
</net>
<net name="N$22" class="3">
<segment>
<wire x1="55.88" y1="43.18" x2="20.32" y2="43.18" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="VCC"/>
<wire x1="55.88" y1="43.18" x2="55.88" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="PWMA"/>
<wire x1="30.48" y1="-2.54" x2="48.26" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-2.54" x2="48.26" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-20.32" x2="132.08" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="ERR_OUT" gate="A" pin="1"/>
<wire x1="132.08" y1="-20.32" x2="132.08" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="PWMB"/>
<wire x1="30.48" y1="-5.08" x2="45.72" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-5.08" x2="45.72" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-22.86" x2="124.46" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-22.86" x2="124.46" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-15.24" x2="149.86" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="149.86" y1="-15.24" x2="149.86" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="ERR_OUT" gate="A" pin="2"/>
<wire x1="149.86" y1="-22.86" x2="139.7" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="PWMA"/>
<wire x1="81.28" y1="-2.54" x2="106.68" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-2.54" x2="106.68" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-25.4" x2="132.08" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="ERR_OUT" gate="A" pin="3"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="PWMB"/>
<wire x1="81.28" y1="-5.08" x2="104.14" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-5.08" x2="104.14" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-27.94" x2="121.92" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-27.94" x2="121.92" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-33.02" x2="147.32" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-33.02" x2="147.32" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="ERR_OUT" gate="A" pin="4"/>
<wire x1="147.32" y1="-25.4" x2="139.7" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="3">
<segment>
<wire x1="5.08" y1="35.56" x2="20.32" y2="35.56" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="VCC"/>
<wire x1="5.08" y1="15.24" x2="5.08" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SW-" gate="P" pin="P"/>
<pinref part="12V+" gate="1" pin="P"/>
<wire x1="25.4" y1="-35.56" x2="10.16" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-35.56" x2="10.16" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="12V_OUT" gate="A" pin="4"/>
<pinref part="12V_OUT" gate="A" pin="3"/>
<wire x1="76.2" y1="-45.72" x2="68.58" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-45.72" x2="58.42" y2="-45.72" width="0.1524" layer="91"/>
<junction x="68.58" y="-45.72"/>
<pinref part="POLOLU-A4990_1" gate="G$1" pin="VMOT"/>
<wire x1="30.48" y1="-7.62" x2="35.56" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-7.62" x2="35.56" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-30.48" x2="58.42" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-30.48" x2="83.82" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-30.48" x2="83.82" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="POLOLU-A4990_2" gate="G$1" pin="VMOT"/>
<wire x1="83.82" y1="-7.62" x2="81.28" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="SW+" gate="P" pin="P"/>
<wire x1="25.4" y1="-30.48" x2="35.56" y2="-30.48" width="0.1524" layer="91"/>
<junction x="35.56" y="-30.48"/>
<wire x1="25.4" y1="-30.48" x2="35.56" y2="-30.48" width="0.1524" layer="91"/>
<junction x="25.4" y="-30.48"/>
<wire x1="58.42" y1="-30.48" x2="68.58" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-45.72" x2="58.42" y2="-30.48" width="0.1524" layer="91"/>
<junction x="58.42" y="-30.48"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
