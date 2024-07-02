module SR_flipflop_tb;
  reg s,r,clk,reset;
  wire q,qn;
  
  SR_flipflop dut(s,r,clk,reset,q,qn);
  initial begin
    forever #2 clk=~clk;
  end
  initial begin
    $monitor("time=%0t s=%b r=%b clk=%b reset=%b q=%b qn=%b",$time,s,r,clk,reset,q,qn);
    $dumpfile("SR_flipflops.vcd");
    $dumpvars(1);
    s=0;r=0;
    clk=0;
    reset=1;
    
    s=0;r=0;#5;
    reset=0;
    s=1;r=0;#5;
    s=0;r=1;#5;
    s=1;r=1;#5;
    s=0;r=0;#5;
    
    
    $finish;
    
  end
  
endmodule
    