module Roate_keyv2#(parameter par_num=10)
(
         input  A_pin,//A相
         input B_pin      ,//B相
         input SW         ,    //按钮
              
         input load       ,//置数信号
         input [31:0] din ,//置数端
         input rst        ,       //复位信号
        
         output reg [31:0]SW_reg,//按钮次数
         output [31:0]r0  ,         //参数
         output [31:0]r1  ,      //参数
         output [31:0]r2  ,         //参数
         output [31:0]r3  ,         //参数
         output [31:0]r4  ,        //参数
         output [31:0]r5  ,         //参数
         output [31:0]r6  ,       //参数
         output [31:0]r7  ,         //参数
         output [31:0]r8  ,        //参数
         output [31:0]r9         //参数
);
 
wire [9:0]EN;//各个计数器的使能信号
wire dir;//解码信号
//译码电路
assign EN[0] = (SW_reg==32'd0)? 1:0;
assign EN[1] = (SW_reg==32'd1)? 1:0;
assign EN[2] = (SW_reg==32'd2)? 1:0;
assign EN[3] = (SW_reg==32'd3)? 1:0;
assign EN[4] = (SW_reg==32'd4)? 1:0;
assign EN[5] = (SW_reg==32'd5)? 1:0;
assign EN[6] = (SW_reg==32'd6)? 1:0;
assign EN[7] = (SW_reg==32'd7)? 1:0;
assign EN[8] = (SW_reg==32'd8)? 1:0;
assign EN[9] = (SW_reg==32'd9)? 1:0;

always @ (negedge SW or posedge rst )
begin
      if( rst )
            SW_reg <= 32'b0;
      else
             if(SW_reg==par_num)
                 SW_reg <= 32'b0;
             else
                SW_reg <= SW_reg+32'b1;
end
//3.正交解码
ABDecode AB(
       .  A_pin(A_pin),
       .  B_pin(B_pin),
       .   rst(rst),
       .   dir(dir)
);

Counter_32 C0(
              . clk(A_pin),//触发时钟
              .dir(dir)     , //加减方向 dir0 加 dir1减
              . load(load)  ,//置位信号
              .EN(EN[0])    , //计数使能
              . din(din)    ,
              .data(r0)     ,//计数器
              . rst  (rst)       //复位信号
);

Counter_32 C1(
              . clk(A_pin),//触发时钟
              .dir(dir)   , //加减方向 dir0 加 dir1减
              . load(load),//置位信号
              .EN(EN[1])  , //计数使能
              . din(din)  ,
              .data(r1)   ,//计数器
              . rst  (rst)       //复位信号
);

Counter_32 C2(
              . clk(A_pin),//触发时钟
              .dir(dir)   , //加减方向 dir0 加 dir1减
              . load(load),//置位信号
              .EN(EN[2])  , //计数使能
              . din(din)  ,
              .data(r2)   ,//计数器
              . rst  (rst)       //复位信号
);

Counter_32 C3(
              . clk(A_pin),//触发时钟
              .dir(dir)   , //加减方向 dir0 加 dir1减
              . load(load),//置位信号
              .EN(EN[3])  , //计数使能
              . din(din)  ,
              .data(r3)   ,//计数器
              . rst  (rst)       //复位信号
);
Counter_32 C4(
              . clk(A_pin)  ,//触发时钟
              .dir(dir)     , //加减方向 dir0 加 dir1减
              . load(load)  ,//置位信号
              .EN(EN[4])    , //计数使能
              . din(din)    ,
              .data(r4)     ,//计数器
              . rst  (rst)       //复位信号
);

Counter_32 C5(
              . clk(A_pin),//触发时钟
              .dir(dir)     , //加减方向 dir0 加 dir1减
              . load(load)  ,//置位信号
              .EN(EN[5])    , //计数使能
              . din(din)    ,
              .data(r5)     ,//计数器
              . rst  (rst)       //复位信号
);

Counter_32 C6(
              . clk(A_pin),//触发时钟
              .dir(dir)   , //加减方向 dir0 加 dir1减
              . load(load),//置位信号
              .EN(EN[6])  , //计数使能
              . din(din)  ,
              .data(r6)   ,//计数器
              . rst  (rst)       //复位信号
);

Counter_32 C7(
              . clk(A_pin),//触发时钟
              .dir(dir)     , //加减方向 dir0 加 dir1减
              . load(load)  ,//置位信号
              .EN(EN[7])    , //计数使能
              . din(din)    ,
              .data(r7)     ,//计数器
              . rst  (rst)       //复位信号
);

Counter_32 C8(
              . clk(A_pin),//触发时钟
              .dir(dir)   , //加减方向 dir0 加 dir1减
              . load(load),//置位信号
              .EN(EN[8])  , //计数使能
              . din(din)  ,
              .data(r8)   ,//计数器
              . rst  (rst)       //复位信号
);

Counter_32 C9(
              . clk(A_pin),//触发时钟
              .dir(dir)   , //加减方向 dir0 加 dir1减
              . load(load),//置位信号
              .EN(EN[9])  , //计数使能
              . din(din)  ,
              .data(r9)   ,//计数器
              . rst  (rst)       //复位信号
);
endmodule



module ABDecode(
       input   A_pin,
       input   B_pin,
       input   rst,
       output reg dir
);
  
  
always @ (negedge A_pin or posedge rst)
begin  
      if(rst)
          dir <= 1'b1;
     else
          dir <= B_pin;//D触发器
end
endmodule


module Counter_32(
              input  clk,//触发时钟
              input  dir, //加减方向 dir0 加 dir1减
              input load,//置位信号
              input  EN, //计数使能
              input  [31:0] din,
              output reg [31:0]data,//计数器
              input rst         //复位信号
);
 
always @(negedge clk or posedge rst or posedge load )
begin
    if(rst)
          data<=32'b0;
    else
    begin
           if(load)
               data <=din;
           else
            begin
                  if(EN)   
                  begin
                      if(dir)
                        data<=data+32'b1;
                      else
                        data<=data-32'b1;
                  end
                  else      data<=data;
           end
    end
 end
endmodule
