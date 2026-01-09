<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sw1" />
        <signal name="Led2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_2" />
        <signal name="sw2" />
        <signal name="Led(7:4)" />
        <signal name="Led(4)" />
        <signal name="Led(5)" />
        <signal name="Led(6)" />
        <signal name="Led(7)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="clk" />
        <signal name="XLXN_43(7:0)" />
        <signal name="XLXN_44(15:0)" />
        <signal name="XLXN_43(7)" />
        <signal name="XLXN_43(6)" />
        <signal name="XLXN_43(5)" />
        <signal name="XLXN_43(4)" />
        <signal name="XLXN_43(2)" />
        <signal name="XLXN_43(0)" />
        <signal name="XLXN_44(15)" />
        <signal name="XLXN_44(14)" />
        <signal name="XLXN_44(13)" />
        <signal name="XLXN_44(8)" />
        <signal name="led0" />
        <signal name="XLXN_64" />
        <port polarity="Input" name="sw1" />
        <port polarity="Output" name="Led2" />
        <port polarity="Input" name="sw2" />
        <port polarity="Output" name="Led(7:4)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="led0" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="cb8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="and12">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="192" y1="-416" y2="-416" x1="256" />
            <line x2="64" y1="-368" y2="-368" x1="144" />
            <line x2="144" y1="-464" y2="-464" x1="64" />
            <arc ex="144" ey="-464" sx="144" sy="-368" r="48" cx="144" cy="-416" />
            <line x2="64" y1="-704" y2="-704" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-768" y2="-768" x1="0" />
            <line x2="64" y1="-768" y2="-64" x1="64" />
        </blockdef>
        <block symbolname="xnor2" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="Led2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="sw2" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="sw2" name="I0" />
            <blockpin signalname="sw1" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="cb16ce" name="XLXI_7">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="led0" name="CE" />
            <blockpin signalname="sw1" name="CLR" />
            <blockpin signalname="XLXN_36" name="CEO" />
            <blockpin signalname="XLXN_44(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb8ce" name="XLXI_8">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_36" name="CE" />
            <blockpin signalname="sw1" name="CLR" />
            <blockpin signalname="XLXN_37" name="CEO" />
            <blockpin signalname="XLXN_43(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb4ce" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_37" name="CE" />
            <blockpin signalname="sw1" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="Led(4)" name="Q0" />
            <blockpin signalname="Led(5)" name="Q1" />
            <blockpin signalname="Led(6)" name="Q2" />
            <blockpin signalname="Led(7)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and12" name="XLXI_9">
            <blockpin signalname="Led(6)" name="I0" />
            <blockpin signalname="Led(4)" name="I1" />
            <blockpin signalname="XLXN_44(13)" name="I10" />
            <blockpin signalname="XLXN_44(8)" name="I11" />
            <blockpin signalname="XLXN_43(7)" name="I2" />
            <blockpin signalname="XLXN_43(6)" name="I3" />
            <blockpin signalname="XLXN_43(5)" name="I4" />
            <blockpin signalname="XLXN_43(4)" name="I5" />
            <blockpin signalname="XLXN_43(2)" name="I6" />
            <blockpin signalname="XLXN_43(0)" name="I7" />
            <blockpin signalname="XLXN_44(15)" name="I8" />
            <blockpin signalname="XLXN_44(14)" name="I9" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="XLXN_64" name="I" />
            <blockpin signalname="led0" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Led2">
            <wire x2="832" y1="240" y2="240" x1="768" />
        </branch>
        <instance x="208" y="240" name="XLXI_1" orien="R0" />
        <iomarker fontsize="28" x="128" y="112" name="sw1" orien="R180" />
        <instance x="208" y="384" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="160" y="272" name="sw2" orien="R180" />
        <branch name="Led(7:4)">
            <wire x2="1936" y1="592" y2="640" x1="1936" />
            <wire x2="1936" y1="640" y2="704" x1="1936" />
            <wire x2="1936" y1="704" y2="768" x1="1936" />
            <wire x2="1936" y1="768" y2="832" x1="1936" />
            <wire x2="2032" y1="592" y2="592" x1="1936" />
        </branch>
        <branch name="Led(4)">
            <wire x2="1808" y1="640" y2="640" x1="1776" />
            <wire x2="1840" y1="640" y2="640" x1="1808" />
            <wire x2="1808" y1="640" y2="928" x1="1808" />
            <wire x2="2352" y1="928" y2="928" x1="1808" />
            <wire x2="2384" y1="688" y2="688" x1="2352" />
            <wire x2="2352" y1="688" y2="928" x1="2352" />
        </branch>
        <branch name="Led(5)">
            <wire x2="1840" y1="704" y2="704" x1="1776" />
        </branch>
        <branch name="Led(6)">
            <wire x2="1824" y1="768" y2="768" x1="1776" />
            <wire x2="1840" y1="768" y2="768" x1="1824" />
            <wire x2="1824" y1="768" y2="896" x1="1824" />
            <wire x2="2384" y1="896" y2="896" x1="1824" />
            <wire x2="2384" y1="752" y2="896" x1="2384" />
        </branch>
        <branch name="Led(7)">
            <wire x2="1840" y1="832" y2="832" x1="1776" />
        </branch>
        <bustap x2="1840" y1="832" y2="832" x1="1936" />
        <bustap x2="1840" y1="768" y2="768" x1="1936" />
        <bustap x2="1840" y1="704" y2="704" x1="1936" />
        <bustap x2="1840" y1="640" y2="640" x1="1936" />
        <instance x="1392" y="1088" name="XLXI_5" orien="R0" />
        <iomarker fontsize="28" x="2032" y="592" name="Led(7:4)" orien="R0" />
        <instance x="896" y="1088" name="XLXI_8" orien="R0" />
        <instance x="352" y="1088" name="XLXI_7" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="896" y1="896" y2="896" x1="736" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1392" y1="896" y2="896" x1="1280" />
        </branch>
        <branch name="sw1">
            <wire x2="208" y1="112" y2="112" x1="128" />
        </branch>
        <iomarker fontsize="28" x="272" y="1104" name="sw1" orien="R180" />
        <branch name="sw2">
            <wire x2="192" y1="272" y2="272" x1="160" />
            <wire x2="192" y1="272" y2="352" x1="192" />
            <wire x2="208" y1="352" y2="352" x1="192" />
            <wire x2="208" y1="176" y2="176" x1="192" />
            <wire x2="192" y1="176" y2="272" x1="192" />
        </branch>
        <branch name="sw1">
            <wire x2="352" y1="1104" y2="1104" x1="272" />
            <wire x2="896" y1="1104" y2="1104" x1="352" />
            <wire x2="1392" y1="1104" y2="1104" x1="896" />
            <wire x2="352" y1="1056" y2="1104" x1="352" />
            <wire x2="896" y1="1056" y2="1104" x1="896" />
            <wire x2="1392" y1="1056" y2="1104" x1="1392" />
        </branch>
        <branch name="clk">
            <wire x2="304" y1="960" y2="960" x1="256" />
            <wire x2="304" y1="960" y2="1152" x1="304" />
            <wire x2="800" y1="1152" y2="1152" x1="304" />
            <wire x2="1344" y1="1152" y2="1152" x1="800" />
            <wire x2="352" y1="960" y2="960" x1="304" />
            <wire x2="896" y1="960" y2="960" x1="800" />
            <wire x2="800" y1="960" y2="1152" x1="800" />
            <wire x2="1392" y1="960" y2="960" x1="1344" />
            <wire x2="1344" y1="960" y2="1152" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="256" y="960" name="clk" orien="R180" />
        <iomarker fontsize="28" x="832" y="240" name="Led2" orien="R0" />
        <branch name="XLXN_43(7:0)">
            <wire x2="1328" y1="832" y2="832" x1="1280" />
            <wire x2="1328" y1="288" y2="320" x1="1328" />
            <wire x2="1328" y1="320" y2="352" x1="1328" />
            <wire x2="1328" y1="352" y2="384" x1="1328" />
            <wire x2="1328" y1="384" y2="416" x1="1328" />
            <wire x2="1328" y1="416" y2="448" x1="1328" />
            <wire x2="1328" y1="448" y2="480" x1="1328" />
            <wire x2="1328" y1="480" y2="832" x1="1328" />
        </branch>
        <branch name="XLXN_44(15:0)">
            <wire x2="784" y1="832" y2="832" x1="736" />
            <wire x2="784" y1="416" y2="464" x1="784" />
            <wire x2="784" y1="464" y2="512" x1="784" />
            <wire x2="784" y1="512" y2="560" x1="784" />
            <wire x2="784" y1="560" y2="608" x1="784" />
            <wire x2="784" y1="608" y2="832" x1="784" />
        </branch>
        <instance x="2384" y="816" name="XLXI_9" orien="R0" />
        <bustap x2="1424" y1="320" y2="320" x1="1328" />
        <bustap x2="1424" y1="352" y2="352" x1="1328" />
        <bustap x2="1424" y1="384" y2="384" x1="1328" />
        <bustap x2="1424" y1="416" y2="416" x1="1328" />
        <bustap x2="1424" y1="448" y2="448" x1="1328" />
        <bustap x2="1424" y1="480" y2="480" x1="1328" />
        <branch name="XLXN_43(7)">
            <wire x2="2208" y1="480" y2="480" x1="1424" />
            <wire x2="2208" y1="480" y2="624" x1="2208" />
            <wire x2="2384" y1="624" y2="624" x1="2208" />
        </branch>
        <branch name="XLXN_43(6)">
            <wire x2="2256" y1="448" y2="448" x1="1424" />
            <wire x2="2256" y1="448" y2="560" x1="2256" />
            <wire x2="2384" y1="560" y2="560" x1="2256" />
        </branch>
        <branch name="XLXN_43(5)">
            <wire x2="2288" y1="416" y2="416" x1="1424" />
            <wire x2="2288" y1="416" y2="496" x1="2288" />
            <wire x2="2384" y1="496" y2="496" x1="2288" />
        </branch>
        <branch name="XLXN_43(4)">
            <wire x2="2384" y1="384" y2="384" x1="1424" />
            <wire x2="2384" y1="384" y2="432" x1="2384" />
        </branch>
        <branch name="XLXN_43(2)">
            <wire x2="2384" y1="352" y2="352" x1="1424" />
            <wire x2="2384" y1="352" y2="368" x1="2384" />
        </branch>
        <branch name="XLXN_43(0)">
            <wire x2="2384" y1="320" y2="320" x1="1424" />
            <wire x2="2384" y1="304" y2="320" x1="2384" />
        </branch>
        <bustap x2="880" y1="464" y2="464" x1="784" />
        <bustap x2="880" y1="512" y2="512" x1="784" />
        <bustap x2="880" y1="560" y2="560" x1="784" />
        <bustap x2="880" y1="608" y2="608" x1="784" />
        <branch name="XLXN_44(15)">
            <wire x2="1280" y1="608" y2="608" x1="880" />
            <wire x2="2384" y1="240" y2="240" x1="1280" />
            <wire x2="1280" y1="240" y2="608" x1="1280" />
        </branch>
        <branch name="XLXN_44(14)">
            <wire x2="1216" y1="560" y2="560" x1="880" />
            <wire x2="2384" y1="176" y2="176" x1="1216" />
            <wire x2="1216" y1="176" y2="560" x1="1216" />
        </branch>
        <branch name="XLXN_44(13)">
            <wire x2="1152" y1="512" y2="512" x1="880" />
            <wire x2="1152" y1="112" y2="512" x1="1152" />
            <wire x2="2384" y1="112" y2="112" x1="1152" />
        </branch>
        <branch name="XLXN_44(8)">
            <wire x2="1072" y1="464" y2="464" x1="880" />
            <wire x2="1072" y1="48" y2="464" x1="1072" />
            <wire x2="2384" y1="48" y2="48" x1="1072" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="480" y1="352" y2="352" x1="432" />
            <wire x2="480" y1="272" y2="352" x1="480" />
            <wire x2="512" y1="272" y2="272" x1="480" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="480" y1="144" y2="144" x1="464" />
            <wire x2="480" y1="144" y2="208" x1="480" />
            <wire x2="512" y1="208" y2="208" x1="480" />
        </branch>
        <instance x="512" y="336" name="XLXI_4" orien="R0" />
        <instance x="2736" y="432" name="XLXI_11" orien="R0" />
        <branch name="led0">
            <wire x2="144" y1="896" y2="1264" x1="144" />
            <wire x2="3040" y1="1264" y2="1264" x1="144" />
            <wire x2="352" y1="896" y2="896" x1="144" />
            <wire x2="3040" y1="400" y2="400" x1="2960" />
            <wire x2="3040" y1="400" y2="1264" x1="3040" />
            <wire x2="3152" y1="400" y2="400" x1="3040" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="2736" y1="400" y2="400" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="3152" y="400" name="led0" orien="R0" />
    </sheet>
</drawing>