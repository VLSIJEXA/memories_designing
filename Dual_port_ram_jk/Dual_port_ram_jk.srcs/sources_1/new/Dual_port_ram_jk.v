`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2024 10:21:05 PM
// Design Name: 
// Module Name: Dual_port_ram_jk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Dual_port_ram_jk(
    output reg [7:0] q_a,q_b,
    input [7:0] data_a,data_b,
    input [5:0] addr_a,addr_b,
    input we_a,we_b,clk
    );
    reg [7:0] ram[63:0];
    //port a
    always@(posedge clk)
    if(we_a)
    begin
    ram[addr_a]<=data_a;
   q_a<=data_a;
    end
    else
     q_a<=ram[addr_a];
     
     // port b
      always@(posedge clk)
    if(we_b)
    begin
    ram[addr_b]<=data_b;
   q_b<=data_b;
    end
    else
     q_b<=ram[addr_b];
     
     
endmodule
