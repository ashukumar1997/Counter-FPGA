`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2021 22:16:06
// Design Name: 
// Module Name: counter_4bit
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
module counter_4b(clk,rst,count); // Port Information
input clk,rst;  //Input Ports
output reg [3:0] count;  //Output Ports
reg [25:0]temp;   //Temporary variables
reg clk_div;

always@(posedge clk)
begin
if(!rst)
begin
temp=0;
clk_div<='d0;
count <= 'd0;
end
else
begin

temp<=temp+26'd1;
clk_div<=temp[20];
end
end

always@(posedge clk_div)
begin
if(!rst)
count<=4'd0;
else
   count<=count+4'd1;
end


endmodule
