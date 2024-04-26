`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2024 11:58:17 PM
// Design Name: 
// Module Name: gray_to_binary_tb
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


module gray_to_binary_tb;
parameter data_width = 4;

reg [data_width-1:0] d_in;
wire [data_width-1:0] d_out;

gray_to_binary UUT(.d_in(d_in), .d_out(d_out));

initial begin

d_in = 4'b 1011;
#30;
d_in = 4'b 0000;
#30;
$finish;
end 
endmodule
