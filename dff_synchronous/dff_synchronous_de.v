module dff_synchronous(input clk,reset,d,output reg q,output qn);//depends on clk
  always@(posedge clk)
    begin
      if(reset)
        q<=0;
      else
        q<=d;
    end
  assign qn=~q;
endmodule
    