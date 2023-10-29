`timescale 1ns/1ps
module Clock_Gen(enable, clk);
  input enable;
  output reg clk;
  parameter CLK_FREQ = 10000;
  parameter PHASE = 0;
  parameter DUTY = 50;

  localparam real clk_pd = (1 / (CLK_FREQ * 1e3)) * 1e9;
  // 1e9 represents nanoseconds

  real clk_on = (DUTY / 100.00) * clk_pd;
  real clk_off = ((100.00 - DUTY) / 100) * clk_pd;
  localparam real quater = clk_pd / 4;
  real start_dly = (quater * PHASE) / 90;
  reg start_clk;

  initial begin
    $display("FREQ = %0d", CLK_FREQ);
    $display("PHASE = %0d", PHASE);
    $display("DUTY = %0d %%", DUTY);
  end

  initial begin
    clk <= 0;
    start_clk <= 0;
  end

  always @(posedge enable or negedge enable) begin
    if (enable) begin
      #(start_dly) start_clk = 1;
    end else begin
      #(start_dly) start_clk = 0;
    end
  end

  always @(posedge start_clk) begin
    if (start_clk) begin
      clk = 1;
      while (start_clk) begin
        #(clk_on) clk = 0;
        #(clk_off) clk = 1;
      end
      clk = 0;
    end
  end
endmodule