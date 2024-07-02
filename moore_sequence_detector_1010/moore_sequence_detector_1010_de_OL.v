//moore sequencedetector 1010( OVERLAPPING)
module s_detector(input clk,reset,x,output z);
  reg [3:0] state,next_state;
  parameter a=4'h1,b=4'h2,c=4'h3,d=4'h4,e=4'h5;
  always@(posedge clk,posedge reset)
    begin
      if(reset)
        begin
          state<=a;
        end
      else
        begin
          state<=next_state;
        end
    end
  
  always@(state,x)
    begin
      case(state)
        a:next_state<=x?b:a;
        b:next_state<=x?b:c;
        c:next_state<=x?d:a;
        d:next_state<=x?b:e;
        e:next_state<=x?d:a;
        default:next_state<=a;
      endcase;
    end
  assign z=(state==e)?1:0;
endmodule
          