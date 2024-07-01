module mux_2_1(input sel,i0,i1,output y);
  assign y=sel?i0:i1;//dataflow model
  /*behaviour modeling
  always@(*)
    begin
      case(sel)
         1'b0: y=i0;
         1'b1: y=i1;
      endcase
    end*/
endmodule