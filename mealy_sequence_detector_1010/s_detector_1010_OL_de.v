//sequence detector 1010 overlapping
module s_detector_1010(input clk,reset,x,output z);
  reg [1:0] state,next_state;
  parameter a=2'd0,b=2'd1,c=2'd2,d=2'd3;
  
  always@(posedge clk or posedge reset)
    begin
      if(reset)
        state<=a;
      else
        state<=next_state;
    end
  
  always@(state,x)
    begin
      case(state)
        a:next_state<=x?b:a;
        b:next_state<=x?b:c;
        c:next_state<=x?d:a;
        d:next_state<=x?b:c;
        default:next_state<=a;
      endcase
    end
  
  assign z=(state==d)&&(x==0)?1:0;
endmodule
  
  