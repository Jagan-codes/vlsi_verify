module dff_asynchronous_tb;
  reg clk,reset,d;
  wire q,qn;
  
  dff_asynchronous dut(.clk(clk),.reset(reset),.d(d),.q(q),.qn(qn));
  initial begin
    forever #5 clk=~clk;
  end
  
  initial begin
    $monitor("time=%0t clk=%b reset=%b d=%b q=%b qn=%b",$time,clk,reset,d,q,qn);
    $dumpfile(" dff_asynchronous.vcd");
    $dumpvars(1);
    
    //initialize
    clk=0;
    reset=1;
    d=0;
    #5;
    reset=0;
    d=1;
    #5;
    d=0;
    #5;
    d=1;
    #15;
    $finish;
  end
endmodule
    
    
    
    