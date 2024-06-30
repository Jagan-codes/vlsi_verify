module binary_to_gray(input [size-1:0] binary ,output [size-1:0] gray);
  parameter size=4;
  genvar i;
  generate
    for(i=0;i<size-1;i++)
      assign gray[i]=binary[i]^binary[i+1];
  endgenerate
  assign gray[size-1]=binary[size-1];
endmodule
