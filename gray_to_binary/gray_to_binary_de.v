module gray_to_binary(input [size-1:0] gray ,output [size-1:0] binary );
  parameter size=4;
  genvar i;
  generate
    for(i=0;i<size;i++)
      assign binary[i]=^(gray>>(i));
  endgenerate
endmodule
