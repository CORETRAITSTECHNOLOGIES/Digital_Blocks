#! /usr/local/iverilog/bin/vvp
:ivl_version "11.0 (devel)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_0000000001046d90 .scope module, "AND_G" "AND_G" 2 1;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A";
    .port_info 1 /INPUT 1 "B";
    .port_info 2 /OUTPUT 1 "C";
o0000000001046fd8 .functor BUFZ 1, C4<z>; HiZ drive
o0000000001047008 .functor BUFZ 1, C4<z>; HiZ drive
L_0000000001156a80 .functor AND 1, o0000000001046fd8, o0000000001047008, C4<1>, C4<1>;
v0000000001046f20_0 .net "A", 0 0, o0000000001046fd8;  0 drivers
v0000000001156660_0 .net "B", 0 0, o0000000001047008;  0 drivers
v0000000001156d40_0 .net "C", 0 0, L_0000000001156a80;  1 drivers
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "AND_G.v";
