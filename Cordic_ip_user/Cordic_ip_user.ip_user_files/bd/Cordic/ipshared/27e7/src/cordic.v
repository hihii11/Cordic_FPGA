module cordic(
input          clk ,//时钟
input          finish_rst,
input  [31:0]  phas,//角度
input          rst , //复位
output [31:0]  sin , //sin函数输出
output [31:0]  cos , //cos函数输出
output reg     finish
    );
reg [31:0] pre_sin;
always@(posedge clk or posedge  finish_rst)
begin
    if(finish_rst)
        finish<=0;
    else
    begin
        if(pre_sin!=sin)
            finish<=1;
        else
            finish<=finish;
    end
    pre_sin<=sin;
end


//采用放大 2^16次方倍
parameter     o0   =  32'd2949120;   //45度角         0
parameter     o1   =  32'd1740967;   //26.56505118度角 1
parameter     o2   =  32'd919879;   //14.03624347度角  2
parameter     o3   =  32'd466945;   //7.125016度角     3
parameter     o4   =  32'd234378;   //3.576334度角     4
parameter     o5   =  32'd117303;   //1.789910度角     5
parameter     o6   =  32'd58666;   //0.8951737度角     6
parameter     o7   =  32'd29344;   //0.447614度角      7
parameter     o8   =  32'd14667;   //0.223810度角       8
parameter     o9   =  32'd7333;   //0.1119056度角      9
parameter     o10  =  32'd3666;   //0.0559528度角      10 
parameter     o11  =  32'd1833;   //0.02797645262度角  11
parameter     o12  =  32'd916;   //0.13988227度角      12
parameter     o13  =  32'd458;   //0.00699411度角      13
parameter     o14  =  32'd229;   //0.00349705度角      14
parameter     o15  =  32'd114;   //0.00174852度角      15

parameter     multip= 32'd39796 ; //初值0.6072529351

reg  signed [31:0]  x0,y0,z0,cnt0;
wire signed [31:0]  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;//x0为迭代初值 x1-x16分别为16次迭代所对应的值
wire signed [31:0]  y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16;//y0为迭代初值 y1-y16分别为16次迭代所对应的值
wire signed [31:0]  z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16;//z0为角度初值 z1-z16分别为16次迭代所对应的角度剩余值

always@ ( posedge clk or posedge rst ) begin//第一个clk进行初始化
    if(rst)
        begin
            x0<=32'd0;
            y0<=32'd0;
            z0<=32'd0;
            cnt0<=4'b0;
        end
    else
        begin
            //这里把初始值赋给x0 y0 z0
            x0<=multip;
            y0<=32'd0;
            cnt0<=4'b0;
            z0<=phas << 16;//同样的 phas也要放大2^16次方倍
        end
end

//流水线设计
//第一级流水线  0
cordic_line line0(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd0),  
            .o   (o0),//角度
            .xin (x0),//x输入
            .yin (y0),//y输入
            .zin (z0),//z输入
            .xout(x1) ,//计算后对应的数值输出
            .yout(y1) ,
            .zout(z1) 
    );
    
//第二级流水线  1
cordic_line line1(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd1)   ,
            .o   (o1),//角度
            .xin (x1),//x输入
            .yin (y1),//y输入
            .zin (z1),//z输入
            .xout(x2) ,//计算后对应的数值输出
            .yout(y2) ,
            .zout(z2) 
    );
//第三级流水线  2
cordic_line line2(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd2)   ,
            .o   (o2),//角度
            .xin (x2),//x输入
            .yin (y2),//y输入
            .zin (z2),//z输入
            .xout(x3) ,//计算后对应的数值输出
            .yout(y3) ,
            .zout(z3) 
    );
    
//第四级流水线  3
cordic_line line3(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd3)   ,
            .o   (o3),//角度
            .xin (x3),//x输入
            .yin (y3),//y输入
            .zin (z3),//z输入
            .xout(x4) ,//计算后对应的数值输出
            .yout(y4) ,
            .zout(z4)
    );
    
//第五级流水线  4
cordic_line line4(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd4)   ,
            .o   (o4),//角度
            .xin (x4),//x输入
            .yin (y4),//y输入
            .zin (z4),//z输入
            .xout(x5) ,//计算后对应的数值输出
            .yout(y5) ,
            .zout(z5)
    );

//第六级流水线  5
cordic_line line5(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd5)   ,
            .o   (o5),//角度
            .xin (x5),//x输入
            .yin (y5),//y输入
            .zin (z5),//z输入
            .xout(x6) ,//计算后对应的数值输出
            .yout(y6) ,
            .zout(z6) 
    );

//第七级流水线  6
cordic_line line6(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd6)   ,
            .o   (o6),//角度
            .xin (x6),//x输入
            .yin (y6),//y输入
            .zin (z6),//z输入
            .xout(x7) ,//计算后对应的数值输出
            .yout(y7) ,
            .zout(z7)
    );

//第八级流水线  7
cordic_line line7(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd7)   ,
            .o   (o7),//角度
            .xin (x7),//x输入
            .yin (y7),//y输入
            .zin (z7),//z输入
            .xout(x8) ,//计算后对应的数值输出
            .yout(y8) ,
            .zout(z8) 
    );

//第九级流水线  8
cordic_line line8(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd8)   ,
            .o   (o8),//角度
            .xin (x8),//x输入
            .yin (y8),//y输入
            .zin (z8),//z输入
            .xout(x9) ,//计算后对应的数值输出
            .yout(y9) ,
            .zout(z9)
    );

//第十级流水线  9
cordic_line line9(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd9)   ,
            .o   (o9),//角度
            .xin (x9),//x输入
            .yin (y9),//y输入
            .zin (z9),//z输入
            .xout(x10) ,//计算后对应的数值输出
            .yout(y10) ,
            .zout(z10) 
    );

//第十一级流水线  10
cordic_line line10(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd10)   ,
            .o   (o10),//角度
            .xin (x10),//x输入
            .yin (y10),//y输入
            .zin (z10),//z输入
            .xout(x11) ,//计算后对应的数值输出
            .yout(y11) ,
            .zout(z11) 
    );

//第十二级流水线  11
cordic_line line11(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd11)   ,
            .o   (o11),//角度
            .xin (x11),//x输入
            .yin (y11),//y输入
            .zin (z11),//z输入
            .xout(x12) ,//计算后对应的数值输出
            .yout(y12) ,
            .zout(z12) 
    );

//第十三级流水线  12
cordic_line line12(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd12)   ,
            .o   (o12),//角度
            .xin (x12),//x输入
            .yin (y12),//y输入
            .zin (z12),//z输入
            .xout(x13) ,//计算后对应的数值输出
            .yout(y13) ,
            .zout(z13) 
    );

//第十四级流水线  13
cordic_line line13(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd13)   ,
            .o   (o13),//角度
            .xin (x13),//x输入
            .yin (y13),//y输入
            .zin (z13),//z输入
            .xout(x14) ,//计算后对应的数值输出
            .yout(y14) ,
            .zout(z14) 
    );
    

//第十五级流水线  14
cordic_line line14(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd14)   ,
            .o   (o14),//角度
            .xin (x14),//x输入
            .yin (y14),//y输入
            .zin (z14),//z输入
            .xout(x15) ,//计算后对应的数值输出
            .yout(y15) ,
            .zout(z15) 
    );
   
cordic_line line15(
            .clk (clk),//时钟
            .rst (rst),//复位
            .n   (4'd15)   ,
            .o   (o15),//角度
            .xin (x15),//x输入
            .yin (y15),//y输入
            .zin (z15),//z输入
            .xout(x16) ,//计算后对应的数值输出
            .yout(y16) ,
            .zout(z16) 
    );    
assign sin = y16;
assign cos = x16;

endmodule


module cordic_line(
input                      clk ,//时钟
input                      rst ,//复位
input         [3:0 ]       n   ,//移位次数
input         [31:0]       o   ,//角度
input  signed [31:0]       xin ,//x输入
input  signed [31:0]       yin ,//y输入
input  signed [31:0]       zin ,//z输入
output reg signed [31:0]   xout ,//计算后对应的数值输出
output reg signed [31:0]   yout ,
output reg signed [31:0]   zout 
    );
    
    always @ (posedge clk or posedge rst)
    begin
        if(rst)
            begin
                xout<=32'd0;
                yout<=32'd0;
                zout<=32'd0;
            end
         else
            begin
                if(zin[31])
                begin
                    xout<=xin+(yin>>>n);
                    yout<=yin-(xin>>>n);
                    zout<=zin+o;
                end
                else
                begin
                    xout<=xin-(yin>>>n);
                    yout<=yin+(xin>>>n);
                    zout<=zin-o;
                end
            end
    end
endmodule