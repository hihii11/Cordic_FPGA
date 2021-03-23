module key_shake #(parameter clk_delay=1000000)
(
    input  clk,
    input  key,
    input  rst,
    output key_out
    );
    reg [29:0] cnt;
    reg clk_fen;
    reg [2:0] key_delay;
    assign key_out = key_delay[0]|key_delay[1]|key_delay[2];
    always @ (posedge clk or negedge rst)
    begin
        if(~rst)
            cnt <= 30'b0;
        else
        begin
            if(cnt == clk_delay)
                cnt<=30'b0;
            else
                cnt <= cnt+30'b1;
        end
    end
    
    always @ (posedge clk or negedge rst)
    begin
        if(~rst)
            clk_fen <= 0;
        else
        begin
            if(cnt <= clk_delay/2)
                clk_fen <= 1'b1;
            else
                clk_fen <= 1'b0;
        end
    end
    
    always @ (posedge clk_fen or negedge rst)
    begin
        if(rst==0)
        begin
            key_delay <= 3'b1;
        end
        else
        begin
            key_delay[0] <= key;
            key_delay[1] <= key_delay[0];
            key_delay[2] <= key_delay[1];
        end
    end    
    
endmodule
