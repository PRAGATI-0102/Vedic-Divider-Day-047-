`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 11:14:06 PM
// Design Name: 
// Module Name: crumb_encoding
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


module crumb_encoding(a,b);

        input [7:0]a;
        output reg [15:0]b;
        
        always@(*)
        begin
        
         case(a[0])
             1'b0:begin
             b[0] =0;b[1]=0;
             end
              
             1'b1:begin
             b[0] = 1;b[1] = 0;
             end
         endcase
         
          case(a[1])         
             1'b0:begin
             b[2] =0;b[3]=0;
             end
             
             1'b1:begin 
             b[2] = 1;b[3] = 0;
             end
         endcase
         
           case(a[2])
             1'b0:begin 
             b[4] =0;b[5]=0 ;
             end
             
             1'b1:begin 
             b[4] = 1;b[5] = 0; 
             end
         endcase
         
           case(a[3])
             1'b0:begin
             b[6] =0;b[7]=0 ;
             end
             
             1'b1:begin
             b[6] = 1;b[7] = 0;
             end
         endcase
         
          case(a[4])
             1'b0:begin
             b[8] =0;b[9]=0 ;
             end
             
             1'b1:begin
             b[8] = 1;b[9] = 0;
             end
         endcase
         
          case(a[5])
             1'b0:begin 
             b[10] =0;b[11]=0 ;
             end
             
             1'b1:begin 
             b[10] = 1;b[11] = 0; 
             end
         endcase
         
          case(a[6])
             1'b0:begin 
             b[12] =0;b[13]=0 ;
             end
             
             1'b1:begin 
             b[12] = 1;b[13] = 0; 
             end
         endcase 
         
         case(a[7])
             1'b0:begin 
             b[14] =0;b[15]=0 ;
             end
             
             1'b1:begin 
             b[14] = 1;b[15] = 0; 
             end
         endcase
         
         end
 endmodule
