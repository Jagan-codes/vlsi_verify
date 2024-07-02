module s_detector_tb;
  reg clk,reset,x;
  wire z;
  
  s_detector dut(clk,reset,x,z);
  initial clk=0;
    always #2 clk=~clk;
  initial begin
    $monitor("time=%0t clk=%d reset=%d x=%d z=%d",$time,clk,reset,x,z);
    $dumpfile("s_detector.vcd");
    $dumpvars(1);  
       x = 0;
    #1 reset = 1;
    #2 reset = 0;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #10; 
    $finish;
  end
endmodule
    
    
       
