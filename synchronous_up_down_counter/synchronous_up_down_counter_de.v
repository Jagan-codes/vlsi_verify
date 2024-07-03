module synchronous_updown_counter(input up,clk,reset,output reg [3:0] count);
  always@(posedge clk )
    begin
      if(reset)
        count<=4'b0000;
      else if(up)
        count<=count+1;
      else
        count<=count-1;
    end
endmodule