module half_adder_tb;
   reg a,b;
   wire sum,cout;
  half_adder gut(.a(a),.b(b),.sum(sum),.cout(cout));
  initial begin
    $monitor("time=%0t a=%b b=%b sum=%b cout= %b",$time,a,b,sum,cout);
    $dumpfile("halfadder.vcd");
    $dumpvars(1);
    a=0;b=0;
    #10;
    a=1;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=1;
    #10;
    $finish;
  end
endmodule

    
             
           