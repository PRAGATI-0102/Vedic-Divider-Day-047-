`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 11:22:12 PM
// Design Name: 
// Module Name: mul
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


 module mul(x,y,z);              
                
     input [1:0]x,y;
     output [1:0]z;
     
     assign z[0] = x[0] * y[0];
     assign z[1] = (x[1]*y[0]) + (x[0] * y[1]);
     
 endmodule
