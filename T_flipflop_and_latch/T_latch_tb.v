module T_latch_tb;
  reg clk,reset,T;
  wire q,qn;
  
  T_latch dut(clk,reset,T,q,qn);
  initial begin
    forever #5 clk=~clk;
  end
  initial begin
    $monitor("Time=%0t clk=%b reset=%b T=%b q=%b qn=%b ",$time,clk,reset,T,q,qn);
    $dumpfile("T_latch.vcd");
    $dumpvars(1);
    T=0;
    clk=1;
    reset=1;
    
    #5;
    reset=0;
    
    repeat(5)
      begin
        T=$random;#1;
      end
    #15;
    $finish;
  end
endmodule