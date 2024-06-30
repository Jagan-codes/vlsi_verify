module full_adder(input a,b,cin,output sum,cout);
  assign {sum,cout}={a^b^cin,(a&b)|(b&cin)|(a&cin)};
endmodule

module ripple_carry_adder #(parameter size=4)(input [size-1:0]a,b,input cin,output [size-1:0] sum,cout);
  
 
  genvar i;
  full_adder ins1(a[0],b[0],cin,sum[0],cout[0]);
  generate
    for(i=1;i<size;i++) begin
      full_adder ins2(a[i],b[i],cout[i-1],sum[i],cout[i]);
    end
  endgenerate
  
endmodule