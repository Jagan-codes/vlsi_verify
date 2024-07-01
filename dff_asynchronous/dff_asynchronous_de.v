module dff_asynchronous(input clk,reset,d,output reg q,output qn);//active low reset
  always@(posedge clk,posedge reset)
    begin
      if(reset)
        q<=0;
      else
        q<=d;
    end
  assign qn=~q;
endmodule
    