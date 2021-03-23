module Roate_keyv2#(parameter par_num=10)
(
         input  A_pin,//A��
         input B_pin      ,//B��
         input SW         ,    //��ť
              
         input load       ,//�����ź�
         input [31:0] din ,//������
         input rst        ,       //��λ�ź�
        
         output reg [31:0]SW_reg,//��ť����
         output [31:0]r0  ,         //����
         output [31:0]r1  ,      //����
         output [31:0]r2  ,         //����
         output [31:0]r3  ,         //����
         output [31:0]r4  ,        //����
         output [31:0]r5  ,         //����
         output [31:0]r6  ,       //����
         output [31:0]r7  ,         //����
         output [31:0]r8  ,        //����
         output [31:0]r9         //����
);
 
wire [9:0]EN;//������������ʹ���ź�
wire dir;//�����ź�
//�����·
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
//3.��������
ABDecode AB(
       .  A_pin(A_pin),
       .  B_pin(B_pin),
       .   rst(rst),
       .   dir(dir)
);

Counter_32 C0(
              . clk(A_pin),//����ʱ��
              .dir(dir)     , //�Ӽ����� dir0 �� dir1��
              . load(load)  ,//��λ�ź�
              .EN(EN[0])    , //����ʹ��
              . din(din)    ,
              .data(r0)     ,//������
              . rst  (rst)       //��λ�ź�
);

Counter_32 C1(
              . clk(A_pin),//����ʱ��
              .dir(dir)   , //�Ӽ����� dir0 �� dir1��
              . load(load),//��λ�ź�
              .EN(EN[1])  , //����ʹ��
              . din(din)  ,
              .data(r1)   ,//������
              . rst  (rst)       //��λ�ź�
);

Counter_32 C2(
              . clk(A_pin),//����ʱ��
              .dir(dir)   , //�Ӽ����� dir0 �� dir1��
              . load(load),//��λ�ź�
              .EN(EN[2])  , //����ʹ��
              . din(din)  ,
              .data(r2)   ,//������
              . rst  (rst)       //��λ�ź�
);

Counter_32 C3(
              . clk(A_pin),//����ʱ��
              .dir(dir)   , //�Ӽ����� dir0 �� dir1��
              . load(load),//��λ�ź�
              .EN(EN[3])  , //����ʹ��
              . din(din)  ,
              .data(r3)   ,//������
              . rst  (rst)       //��λ�ź�
);
Counter_32 C4(
              . clk(A_pin)  ,//����ʱ��
              .dir(dir)     , //�Ӽ����� dir0 �� dir1��
              . load(load)  ,//��λ�ź�
              .EN(EN[4])    , //����ʹ��
              . din(din)    ,
              .data(r4)     ,//������
              . rst  (rst)       //��λ�ź�
);

Counter_32 C5(
              . clk(A_pin),//����ʱ��
              .dir(dir)     , //�Ӽ����� dir0 �� dir1��
              . load(load)  ,//��λ�ź�
              .EN(EN[5])    , //����ʹ��
              . din(din)    ,
              .data(r5)     ,//������
              . rst  (rst)       //��λ�ź�
);

Counter_32 C6(
              . clk(A_pin),//����ʱ��
              .dir(dir)   , //�Ӽ����� dir0 �� dir1��
              . load(load),//��λ�ź�
              .EN(EN[6])  , //����ʹ��
              . din(din)  ,
              .data(r6)   ,//������
              . rst  (rst)       //��λ�ź�
);

Counter_32 C7(
              . clk(A_pin),//����ʱ��
              .dir(dir)     , //�Ӽ����� dir0 �� dir1��
              . load(load)  ,//��λ�ź�
              .EN(EN[7])    , //����ʹ��
              . din(din)    ,
              .data(r7)     ,//������
              . rst  (rst)       //��λ�ź�
);

Counter_32 C8(
              . clk(A_pin),//����ʱ��
              .dir(dir)   , //�Ӽ����� dir0 �� dir1��
              . load(load),//��λ�ź�
              .EN(EN[8])  , //����ʹ��
              . din(din)  ,
              .data(r8)   ,//������
              . rst  (rst)       //��λ�ź�
);

Counter_32 C9(
              . clk(A_pin),//����ʱ��
              .dir(dir)   , //�Ӽ����� dir0 �� dir1��
              . load(load),//��λ�ź�
              .EN(EN[9])  , //����ʹ��
              . din(din)  ,
              .data(r9)   ,//������
              . rst  (rst)       //��λ�ź�
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
          dir <= B_pin;//D������
end
endmodule


module Counter_32(
              input  clk,//����ʱ��
              input  dir, //�Ӽ����� dir0 �� dir1��
              input load,//��λ�ź�
              input  EN, //����ʹ��
              input  [31:0] din,
              output reg [31:0]data,//������
              input rst         //��λ�ź�
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
