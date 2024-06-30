module ripple_carry_adder_tb;
  reg [3:0] a,b;
  reg cin;
  wire [3:0] sum,cout;
  
  ripple_carry_adder uut (a,b,cin,sum,cout);
  initial begin
    $monitor("time=%0t a=%b b=%b cin=%b sum=%d cout=%d",$time,a,b,cin,sum,cout);
    $dumpfile("ripple_carry_adder.vcd");
    $dumpvars(1);
    
    a=4;b=5;cin=9;#10;
    a=6;b=3;cin=7;#10;
    a=4'hf;b=4'hc;cin=3;#10;
    a=5;b=4'hb;cin=6;#10;
    $finish;
  end
endmodule