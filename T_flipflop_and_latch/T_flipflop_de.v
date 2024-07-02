module T_flipflop(input clk,reset, T,output reg q,output qn);
  always@(posedge clk)
    begin
      if(reset)
        q<=0;
      else 
        q<=T?~q:q;
    end
  assign qn=~q;
endmodule
        