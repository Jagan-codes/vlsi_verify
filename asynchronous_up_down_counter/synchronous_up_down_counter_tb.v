module synchronous_updown_counter_tb;
  reg up,clk,reset;
  wire [3:0] count;
  
  synchronous_updown_counter dut(up,clk,reset,count);
  initial begin
    forever #5 clk=~clk;
  end
    
  initial begin
    $monitor("time=%0t clk=%b reset=%b up=%b count=%b",$time,clk,reset,up,count);
    $dumpfile("synchronous_counter.vcd");
    $dumpvars(1);
    
    clk=0;
    reset=1;
    up=1;
    #3;
    reset=0;
    #40;
    up=0;
    #30;
    $finish;
  end
endmodule
    
    
    
             