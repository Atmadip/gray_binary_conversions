`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 02:00:31 PM
// Design Name: 
// Module Name: gray_to_binary
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


module gray_to_binary #(parameter data_width = 4)(d_in, d_out);

input [data_width-1:0] d_in;
output reg [data_width-1:0] d_out;

integer i;
always @ (*) begin
    d_out[data_width-1] = d_in[data_width-1:0];
    for (i = data_width-2; i >= 0; i = i-1) begin
        d_out[i] = d_out[i+1] ^ d_in[i]; 
    end 
    end
endmodule
