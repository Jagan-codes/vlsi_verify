module half_adder(input a, b,output sum,cout);
  /*assign sum=a^b;
  assign cout=a&b;*/
  //behaviour modeling
  /*reg sum,cout;
  always@(*)
    begin
      sum=a^b;
      cout=a&b;
    end*/
  //gate modeling
  xor(sum,a,b);
  and(cout,a,b);
endmodule