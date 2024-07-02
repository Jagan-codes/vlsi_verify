module JK_latch_tb;
  reg j,k,clk,reset;
  wire q,qn;
  
  JK_latch dut(j,k,clk,reset,q,qn);
  initial begin
    forever #2 clk=~clk;
  end
  initial begin
    $monitor("time=%0t j=%b k=%b clk=%b reset=%b q=%b qn=%b",$time,j,k,clk,reset,q,qn);
    $dumpfile("jk_latch.vcd");
    $dumpvars(1);
    j=0;k=0;
    clk=0;
    reset=1;
    
    j=0;k=0;#5;
    reset=0;
    j=1;k=0;#5;
    j=0;k=1;#5;
    j=1;k=1;#5;
    j=0;k=0;#5;
    
    
    $finish;
    
  end
  
endmodule
    