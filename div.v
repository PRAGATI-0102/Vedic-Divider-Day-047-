`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2023 11:11:05 PM
// Design Name: 
// Module Name: div
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


module div(dividend,divisor,quotient,rc1,rc2,rc0,remainder,dvs_cb2,dvd_c2,dvd_c1,dvd_c0,b,c,dvs_cb1,dvs_cb0,dvd_c6,dvd_c5,dvd_c4,dvd_c3,dvd_c7,qc0,qc1,qc2,qc3,qc4,dvs_c2,dvs_c1,dvs_c0);
       
        input [7:0]dividend;
        input [3:0]divisor;
        
        output [4:0] quotient;
        output [2:0] remainder;
        
        wire [15:0]divdc; 
        wire [15:0]divc;
        wire [1:0] p1m2,p1m1,p1m0,p2m2,p2m1,p2m0,p3m2,p3m1,p4m2,a1out,a2out,a3out,a4out,a5out,a6out,a7out,p4m1,p4m0,p5m2,p5m1,p5m0;
        inout [4:0]b;
        inout [4:0]c;
        inout [1:0] dvs_cb2,dvs_cb1,dvs_cb0,dvd_c6,dvd_c5,dvd_c4,dvd_c3,dvd_c7,dvd_c2,dvd_c1,dvd_c0,qc0,qc1,qc2,qc3,qc4,dvs_c2,dvs_c1,dvs_c0,rc2,rc1,rc0;

        
        crumb_encoding e1(dividend,divdc);
        crumb_encoding e2({1'b0,1'b0,1'b0,1'b0,divisor},divc);
        assign dvs_c2 = divc[5:4];
        assign dvs_c1 = divc[3:2];
        assign dvs_c0 = divc[1:0];
        
        exor a1(dvs_c2,dvs_cb2);
        exor a2(dvs_c1,dvs_cb1);
        exor a3(dvs_c0,dvs_cb0);
        
        
        assign dvd_c7 = divdc[15:14]; 
        
        assign dvd_c6 = divdc[13:12]; 
        assign dvd_c5 = divdc[11:10]; 
        
        assign dvd_c4 = divdc[9:8]; 
        
        assign dvd_c3 = divdc[7:6]; 
        
        assign dvd_c2 = divdc[5:4]; 
        assign dvd_c1 = divdc[3:2]; 
        assign dvd_c0 = divdc[1:0]; 
        
        
        mul s1(dvs_cb2,dvd_c7,p1m2);
        
        mul s2(dvs_cb1,dvd_c7,p1m1);
        
        mul s3(dvs_cb0,dvd_c7,p1m0);
        
        add1 ad1(p1m2,dvd_c6,a1out);
        
        assign qc4 = dvd_c7;
        assign qc3 = a1out;
        
        mul s4(dvs_cb2,qc3,p2m2);
        
        mul s5(dvs_cb1,qc3,p2m1);
        
        mul s6(dvs_cb0,qc3,p2m0);
        
        
        add2 ad2(p1m1,p2m2,dvd_c5,a2out);
        
        assign qc2 = a2out;
        
        mul s9(dvs_cb2,qc2,p3m2);
        mul s7(dvs_cb1,qc2,p3m1);
        
        mul s8(dvs_cb0,qc2,p3m0);
        
        
        
        add3 adn3(p1m0,p2m1,p3m2,dvd_c4,a3out);
        
        assign qc1 = a3out;
        
        ////////////////////////////////////////////////////
        mul s99(dvs_cb2,qc1,p4m2);
        mul s98(dvs_cb1,qc1,p4m1);
        mul s97(dvs_cb0,qc1,p4m0);
        
        
        add4 ad4(p4m2,p3m1,p2m0,dvd_c3,a4out);
        
        assign qc0 = a4out;
        
        mul s9n(dvs_cb2,qc0,p5m2);
        mul sb(dvs_cb1,qc0,p5m1);
        mul sx7(dvs_cb0,qc0,p5m0);
        
        assign rc2 = p5m2+p4m1+dvd_c2+p3m0;
        //add3 ad5(p5m2,p4m1,p3m0,dvd_c2,a5out);
        //assign rc2 = a5out;
        
        assign rc1 = p5m1+p4m0+dvd_c1;
        //add2 ad6(p5m1,p4m0,dvd_c1,a6out);
        //assign rc1 = a6out;
        assign rc0 = p5m0+dvd_c0;
        //add1 ads(p5m0,dvd_c0,a7out);
        //assign rc0 = a7out;
        
        assign b[4]= qc4[1];
        assign b[3]= qc3[1];
        assign b[2]= qc2[1];
        assign b[1]= qc1[1];
        assign b[0]= qc0[1];
        
        assign c[4] = qc4[0] ^ qc4[1] ;
        assign c[3] = qc3[0] ^ qc3[1] ;
        assign c[2] = qc2[0] ^ qc2[1] ;
        assign c[1] = qc1[0] ^ qc1[1] ;
        assign c[0] = qc0[0] ^ qc0[1] ;
        
        assign quotient = c - b;
        assign remainder[2] = rc2[0] ^ rc2[1] ;
        assign remainder[1] = rc1[0] ^ rc1[1] ;
        assign remainder[0] = rc0[0] ^ rc0[1] ;
    
    
endmodule

