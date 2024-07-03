module universal_shift_register(input clk,reset,right_s_in,left_s_in,input [1:0] select,input [3:0] pin,output reg [3:0] pout,output s_left,s_right);
  always@(posedge clk)
    begin
      if(reset)
        pout<=4'b0000;
      else
        case(select)
          2'h1:pout<={right_s_in,pin[3:1]};//right shift
          2'h2:pout<={pin[2:0],left_s_in};//left shift
          2'h3:pout<=pin;//parallel in - parallel out
          default : pout<=pout;
        endcase
    end
  
  assign s_left=pout[0];
  assign s_right=pout[3];
  
endmodule
