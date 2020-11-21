<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_13" />
        <signal name="RS232_DCE_RXD" />
        <signal name="CLK_50MHZ" />
        <signal name="SW0" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66(7:0)" />
        <signal name="LED(7:0)" />
        <port polarity="Input" name="RS232_DCE_RXD" />
        <port polarity="Input" name="CLK_50MHZ" />
        <port polarity="Output" name="LED(7:0)" />
        <blockdef name="rs232_receiver">
            <timestamp>2012-3-23T2:34:19</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
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
        <blockdef name="test_receiver_ctrl">
            <timestamp>2012-3-23T5:18:23</timestamp>
            <rect width="464" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="592" y1="-160" y2="-160" x1="528" />
            <rect width="64" x="528" y="-44" height="24" />
            <line x2="592" y1="-32" y2="-32" x1="528" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_13" name="G" />
        </block>
        <block symbolname="rs232_receiver" name="XLXI_1">
            <blockpin signalname="SW0" name="ack_i" />
            <blockpin signalname="CLK_50MHZ" name="clk_i" />
            <blockpin signalname="XLXN_13" name="rst_i" />
            <blockpin signalname="RS232_DCE_RXD" name="rx" />
            <blockpin signalname="XLXN_65" name="stb_o" />
            <blockpin signalname="XLXN_66(7:0)" name="dat_o(7:0)" />
        </block>
        <block symbolname="test_receiver_ctrl" name="XLXI_27">
            <blockpin signalname="CLK_50MHZ" name="clk_50mhz" />
            <blockpin signalname="XLXN_65" name="rs232_receiver_stb" />
            <blockpin signalname="XLXN_66(7:0)" name="rs232_receiver_dat(7:0)" />
            <blockpin signalname="SW0" name="rs232_receiver_ack" />
            <blockpin signalname="LED(7:0)" name="led(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="480" y="1312" name="CLK_50MHZ" orien="R180" />
        <instance x="528" y="1536" name="XLXI_5" orien="R0" />
        <branch name="RS232_DCE_RXD">
            <wire x2="720" y1="1568" y2="1568" x1="528" />
            <wire x2="736" y1="1440" y2="1440" x1="720" />
            <wire x2="720" y1="1440" y2="1568" x1="720" />
        </branch>
        <branch name="CLK_50MHZ">
            <wire x2="624" y1="1312" y2="1312" x1="480" />
            <wire x2="736" y1="1312" y2="1312" x1="624" />
            <wire x2="1248" y1="1088" y2="1088" x1="624" />
            <wire x2="1248" y1="1088" y2="1264" x1="1248" />
            <wire x2="1360" y1="1264" y2="1264" x1="1248" />
            <wire x2="624" y1="1088" y2="1312" x1="624" />
        </branch>
        <branch name="SW0">
            <wire x2="1968" y1="976" y2="976" x1="656" />
            <wire x2="1968" y1="976" y2="1264" x1="1968" />
            <wire x2="656" y1="976" y2="1248" x1="656" />
            <wire x2="736" y1="1248" y2="1248" x1="656" />
            <wire x2="1968" y1="1264" y2="1264" x1="1952" />
        </branch>
        <branch name="XLXN_66(7:0)">
            <wire x2="1344" y1="1440" y2="1440" x1="1120" />
            <wire x2="1360" y1="1392" y2="1392" x1="1344" />
            <wire x2="1344" y1="1392" y2="1440" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1392" name="LED(7:0)" orien="R0" />
        <branch name="LED(7:0)">
            <wire x2="1984" y1="1392" y2="1392" x1="1952" />
        </branch>
        <instance x="1360" y="1424" name="XLXI_27" orien="R0">
        </instance>
        <branch name="XLXN_65">
            <wire x2="1152" y1="1248" y2="1248" x1="1120" />
            <wire x2="1152" y1="1248" y2="1328" x1="1152" />
            <wire x2="1360" y1="1328" y2="1328" x1="1152" />
        </branch>
        <instance x="736" y="1472" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_13">
            <wire x2="736" y1="1376" y2="1376" x1="592" />
            <wire x2="592" y1="1376" y2="1408" x1="592" />
        </branch>
        <iomarker fontsize="28" x="528" y="1568" name="RS232_DCE_RXD" orien="R180" />
    </sheet>
</drawing>