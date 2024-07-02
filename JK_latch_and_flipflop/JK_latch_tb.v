module JK_latch(input j,k,clk,reset,output reg q,output qn);
  always@(j,k)
    begin
      if(reset)
        q<=0;
      else
        case({j,k})
          2'b00:q<=q;
          2'b01:q<=1'b0;
          2'b10:q<=1'b1;
          2'b11:q<=~q;
        endcase
    end
  assign qn=~q;
endmodule