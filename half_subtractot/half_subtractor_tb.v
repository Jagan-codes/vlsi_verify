module half_subtractor_tb;
   reg a,b;
   wire diff,bout;
  half_subtractor gut(.a(a),.b(b),.diff(diff),.bout(bout));
  initial begin
    $monitor("time=%0t a=%b b=%b diff=%b bout= %b",$time,a,b,diff,bout);
    $dumpfile("halfsubtractor.vcd");
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

    
             
           