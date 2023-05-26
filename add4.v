`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 11:27:50 PM
// Design Name: 
// Module Name: add4
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


module add4(v1111,v1112,v1113,v1114,v1115);

        input [1:0]v1111,v1112,v1113,v1114;
        output [1:0] v1115;
        
        assign v1115 = v1111+v1112+v1113+v1114;
        
endmodule
