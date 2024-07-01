module s_detector_1010_tb;
  reg clk,reset,x;
  wire z;
  
  s_detector_1010 dut(.clk(clk),.reset(reset),.x(x),.z(z));
   initial begin
     forever #2 clk = ~clk;
   end
  initial begin
    $monitor("time=%0t clk=%b reset=%b x=%b z=%b",$time,clk,reset,x,z);
    $dumpfile("s_detector.vcd");
    $dumpvars(1);
    clk=0;
    reset=1;
    x=0;
    #4; reset=0;
    #4;x=1;
    #4;x=0;
    #4;x=1;
    #4;x=0;
    #4;x=1;
    #4;x=0;
    #4;x=1;
    #4;x=0;
    #10;
  
    $finish;
  end
endmodule
    
             