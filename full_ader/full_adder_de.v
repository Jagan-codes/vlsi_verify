module full_adder(input a,b,cin,output sum,cout);
  assign sum=a^b^cin;
  assign cout=(a&b)|(a&cin)|(b&cin);
  /*using halfadder
  module half_adder(input a,b,output s,c)
       assign s=a^b;
       assign c=a&b;
    wire s1,c1,s2;
       
  half_adder(a,b,s1,c1)
  half_adder(s,cin,sum,c2)
  assign cout=c1|c2;
  */
endmodule