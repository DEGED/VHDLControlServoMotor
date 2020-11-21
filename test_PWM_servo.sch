<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RS232_DCE_RXD" />
        <signal name="CLK_50MHZ" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="IO8" />
        <signal name="IO7" />
        <signal name="LED(7:0)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <port polarity="Input" name="RS232_DCE_RXD" />
        <port polarity="Input" name="CLK_50MHZ" />
        <port polarity="Output" name="IO8" />
        <port polarity="Output" name="IO7" />
        <port polarity="Output" name="LED(7:0)" />
        <blockdef name="test_receiver">
            <timestamp>2012-3-30T5:28:0</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="clock_divider">
            <timestamp>2012-3-30T5:30:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PWM_motor8b">
            <timestamp>2012-3-30T5:30:24</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="test_receiver" name="XLXI_1">
            <blockpin signalname="RS232_DCE_RXD" name="RS232_DCE_RXD" />
            <blockpin signalname="CLK_50MHZ" name="CLK_50MHZ" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
        </block>
        <block symbolname="clock_divider" name="XLXI_2">
            <blockpin signalname="CLK_50MHZ" name="clk" />
            <blockpin signalname="XLXN_5" name="clk_10us" />
        </block>
        <block symbolname="PWM_motor8b" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="clk_10us" />
            <blockpin signalname="LED(7:0)" name="cmpPwm(7:0)" />
            <blockpin signalname="IO8" name="pwm_out" />
            <blockpin signalname="IO7" name="pwm_Led" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RS232_DCE_RXD">
            <wire x2="752" y1="1264" y2="1264" x1="672" />
        </branch>
        <branch name="CLK_50MHZ">
            <wire x2="704" y1="1328" y2="1328" x1="672" />
            <wire x2="752" y1="1328" y2="1328" x1="704" />
            <wire x2="768" y1="1056" y2="1056" x1="704" />
            <wire x2="704" y1="1056" y2="1328" x1="704" />
        </branch>
        <instance x="768" y="1088" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="672" y="1264" name="RS232_DCE_RXD" orien="R180" />
        <iomarker fontsize="28" x="672" y="1328" name="CLK_50MHZ" orien="R180" />
        <branch name="IO8">
            <wire x2="1680" y1="1200" y2="1200" x1="1664" />
            <wire x2="1696" y1="1200" y2="1200" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1696" y="1200" name="IO8" orien="R0" />
        <branch name="IO7">
            <wire x2="1680" y1="1264" y2="1264" x1="1664" />
            <wire x2="1696" y1="1264" y2="1264" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1696" y="1264" name="IO7" orien="R0" />
        <branch name="LED(7:0)">
            <wire x2="1216" y1="1264" y2="1264" x1="1184" />
            <wire x2="1280" y1="1264" y2="1264" x1="1216" />
            <wire x2="1216" y1="1264" y2="1424" x1="1216" />
            <wire x2="1648" y1="1424" y2="1424" x1="1216" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1168" y1="1056" y2="1056" x1="1152" />
            <wire x2="1216" y1="1056" y2="1056" x1="1168" />
            <wire x2="1216" y1="1056" y2="1200" x1="1216" />
            <wire x2="1280" y1="1200" y2="1200" x1="1216" />
        </branch>
        <instance x="1280" y="1296" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1648" y="1424" name="LED(7:0)" orien="R0" />
        <instance x="752" y="1360" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>