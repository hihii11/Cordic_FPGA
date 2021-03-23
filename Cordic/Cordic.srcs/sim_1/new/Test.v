`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/22 17:59:29
// Design Name: 
// Module Name: Test
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


module Test(

    );
   
reg         clk ;//ʱ��               
reg [31:0]  phas;//�Ƕ�               
reg         rst ; //��λ
reg         finish_rst;              
wire[31:0]  sin ; //sin�������         
wire[31:0]  cos ; //cos�������
reg [31:0] i;
wire finish;

initial begin
    clk=0;
    for(i=0;i<18888;i=i+1)
    begin
        #1 clk=~clk;
    end    
end

initial begin
i=32'd0;
phas=32'd0;
#1 rst=1;
#1 rst=0;

#1 finish_rst=1;
#1 finish_rst=0;
#34 phas=32'd0;

#1 finish_rst=1;
#1 finish_rst=0;
#34 phas=32'd30;
#1 finish_rst=1;
#1 finish_rst=0;
#34 phas=32'd45;
#1 finish_rst=1;
#1 finish_rst=0;
#34 phas=32'd70;
#1 finish_rst=1;
#1 finish_rst=0;
#34 phas=32'd74;
#1 finish_rst=1;
#1 finish_rst=0;
#34 phas=32'd80;
#1 finish_rst=1;
#1 finish_rst=0;
/*
#1 finish_rst=1;
#1 finish_rst=0;
#20 phas=32'd45;
#1 finish_rst=1;
#1 finish_rst=0;
#20 phas=32'd60;
#1 finish_rst=1;
#1 finish_rst=0;
#20 phas=32'd15;
#1 finish_rst=1;
#1 finish_rst=0;*/
end

cordic U1(                
.clk (clk ),//ʱ��       
.phas(phas),//�Ƕ�       
.rst (rst ), //��λ      
.sin (sin ), //sin������� 
.cos (cos ),  //cos�������
.finish(finish),
.finish_rst(finish_rst)
);
endmodule
