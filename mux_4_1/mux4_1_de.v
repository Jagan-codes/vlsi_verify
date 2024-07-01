module mux4_1(input [1:0] sel ,input i0,i1,i2,i3,output reg y);
  always@(*)
    begin
      case(sel)
        2'b00:y=i0;
        2'b01:y=i1;
        2'b10:y=i2;
        2'b11:y=i3;
      endcase
    end
  
  
  
  /*module mux_2_1(input sel,i0,i1,output y);
  assign y=sel?i1:i0;//dataflow model
endmodule
module mux4_1(input [1:0] sel ,input i0,i1,i2,i3,output reg y);
  wire y0,y1;
  mux_2_1 m1(sel[1],i2,i3,y1);
  mux_2_1 m2(sel[1],i0,i1,y0);
  mux_2_1 m3(sel[0],y0,y1,y);*/
endmodule;
  