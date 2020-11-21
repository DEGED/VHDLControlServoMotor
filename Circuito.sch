<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PWM_o" />
        <signal name="PWM_led" />
        <signal name="BTN_WEST" />
        <signal name="BTN_NORTH" />
        <signal name="BTN_EAST" />
        <signal name="XLXN_7" />
        <signal name="clk" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <port polarity="Output" name="PWM_o" />
        <port polarity="Output" name="PWM_led" />
        <port polarity="Input" name="BTN_WEST" />
        <port polarity="Input" name="BTN_NORTH" />
        <port polarity="Input" name="BTN_EAST" />
        <port polarity="Input" name="clk" />
        <blockdef name="debounce">
            <timestamp>2020-11-5T21:14:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="PWM_test">
            <timestamp>2020-11-5T22:6:15</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="debounce" name="XLXI_1">
            <blockpin signalname="BTN_WEST" name="D_IN" />
            <blockpin signalname="clk" name="clock" />
            <blockpin signalname="XLXN_7" name="reset" />
            <blockpin signalname="XLXN_17" name="Q_OUT" />
        </block>
        <block symbolname="debounce" name="XLXI_2">
            <blockpin signalname="BTN_NORTH" name="D_IN" />
            <blockpin signalname="clk" name="clock" />
            <blockpin signalname="XLXN_7" name="reset" />
            <blockpin signalname="XLXN_16" name="Q_OUT" />
        </block>
        <block symbolname="debounce" name="XLXI_3">
            <blockpin signalname="BTN_EAST" name="D_IN" />
            <blockpin signalname="clk" name="clock" />
            <blockpin signalname="XLXN_7" name="reset" />
            <blockpin signalname="XLXN_18" name="Q_OUT" />
        </block>
        <block symbolname="PWM_test" name="XLXI_9">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_18" name="RIGHT" />
            <blockpin signalname="XLXN_16" name="MIDDLE" />
            <blockpin signalname="XLXN_17" name="LEFT" />
            <blockpin signalname="PWM_o" name="PWM_o" />
            <blockpin signalname="PWM_led" name="PWM_led" />
        </block>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="XLXN_7" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="PWM_o">
            <wire x2="2208" y1="928" y2="928" x1="2016" />
            <wire x2="2240" y1="880" y2="880" x1="2208" />
            <wire x2="2208" y1="880" y2="928" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="880" name="PWM_o" orien="R0" />
        <branch name="PWM_led">
            <wire x2="2272" y1="1120" y2="1120" x1="2016" />
            <wire x2="2288" y1="1120" y2="1120" x1="2272" />
        </branch>
        <instance x="1632" y="1152" name="XLXI_9" orien="R0">
        </instance>
        <instance x="960" y="1552" name="XLXI_3" orien="R0">
        </instance>
        <branch name="BTN_WEST">
            <wire x2="944" y1="688" y2="688" x1="896" />
            <wire x2="944" y1="688" y2="704" x1="944" />
            <wire x2="960" y1="704" y2="704" x1="944" />
        </branch>
        <branch name="BTN_NORTH">
            <wire x2="960" y1="1024" y2="1024" x1="912" />
        </branch>
        <branch name="BTN_EAST">
            <wire x2="960" y1="1392" y2="1392" x1="880" />
        </branch>
        <iomarker fontsize="28" x="880" y="1392" name="BTN_EAST" orien="R180" />
        <iomarker fontsize="28" x="912" y="1024" name="BTN_NORTH" orien="R180" />
        <instance x="848" y="1744" name="XLXI_10" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="912" y1="1152" y2="1168" x1="912" />
            <wire x2="912" y1="1168" y2="1520" x1="912" />
            <wire x2="912" y1="1520" y2="1616" x1="912" />
            <wire x2="960" y1="1520" y2="1520" x1="912" />
            <wire x2="928" y1="1168" y2="1168" x1="912" />
            <wire x2="960" y1="1152" y2="1152" x1="912" />
            <wire x2="928" y1="832" y2="1168" x1="928" />
            <wire x2="960" y1="832" y2="832" x1="928" />
        </branch>
        <instance x="960" y="864" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="560" y1="1456" y2="1456" x1="448" />
            <wire x2="960" y1="1456" y2="1456" x1="560" />
            <wire x2="960" y1="768" y2="768" x1="560" />
            <wire x2="560" y1="768" y2="912" x1="560" />
            <wire x2="560" y1="912" y2="1088" x1="560" />
            <wire x2="960" y1="1088" y2="1088" x1="560" />
            <wire x2="560" y1="1088" y2="1456" x1="560" />
            <wire x2="1424" y1="912" y2="912" x1="560" />
            <wire x2="1424" y1="912" y2="928" x1="1424" />
            <wire x2="1632" y1="928" y2="928" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="448" y="1456" name="clk" orien="R180" />
        <instance x="960" y="1184" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2288" y="1120" name="PWM_led" orien="R0" />
        <iomarker fontsize="28" x="896" y="688" name="BTN_WEST" orien="R180" />
        <branch name="XLXN_16">
            <wire x2="1360" y1="1024" y2="1024" x1="1344" />
            <wire x2="1488" y1="1024" y2="1024" x1="1360" />
            <wire x2="1488" y1="1024" y2="1056" x1="1488" />
            <wire x2="1632" y1="1056" y2="1056" x1="1488" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1360" y1="704" y2="704" x1="1344" />
            <wire x2="1456" y1="704" y2="704" x1="1360" />
            <wire x2="1456" y1="704" y2="1120" x1="1456" />
            <wire x2="1632" y1="1120" y2="1120" x1="1456" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1360" y1="1392" y2="1392" x1="1344" />
            <wire x2="1472" y1="1392" y2="1392" x1="1360" />
            <wire x2="1472" y1="992" y2="1392" x1="1472" />
            <wire x2="1632" y1="992" y2="992" x1="1472" />
        </branch>
    </sheet>
</drawing>