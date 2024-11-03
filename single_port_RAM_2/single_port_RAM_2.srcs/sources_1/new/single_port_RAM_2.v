`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2024 08:46:53 AM
// Design Name: 
// Module Name: single_port_RAM_2
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


module single_port_RAM_2(
    input [5:0] read_addr,write_addr,
    input we,clk,
    output reg [7:0] q,
    input [7:0] data
    );
    reg [7:0] ram[63:0];
    
    always@(posedge clk)
    begin
    if(we)
    ram[write_addr]=data;
    q=ram[read_addr];
    end
endmodule
  

