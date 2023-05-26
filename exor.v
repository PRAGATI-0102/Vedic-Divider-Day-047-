`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 11:23:24 PM
// Design Name: 
// Module Name: exor
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


module exor(q,r);

    input [1:0]q;
    output [1:0] r;
    
    assign r[0] = q[0];
    assign r[1] = (q[0] ^ q[1]);
    
endmodule
