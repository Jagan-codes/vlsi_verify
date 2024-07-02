module T_latch(input clk,reset, T,output reg q,output qn);
  always@(T)
    begin
      if(reset)
        q<=0;
      else 
        q<=T?~q:q;
    end
  assign qn=~q;
endmodule
        