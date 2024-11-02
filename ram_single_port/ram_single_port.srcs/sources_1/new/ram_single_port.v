`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 02:46:56 PM
// Design Name: 
// Module Name: ram_single_port
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


module ram_single_port(
    input [5:0] read_addr,write_addr,
    input we,clk,
    output reg [7:0] q,
    input [7:0] data
    );
    reg [7:0] ram[63:0];
    
    always@(posedge clk)
    begin
    if(we)
    ram[write_addr]<=data;
    q<=ram[read_addr];
    end
endmodule
