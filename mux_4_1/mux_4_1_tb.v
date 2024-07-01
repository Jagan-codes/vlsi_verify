module mux4_1_tb;
  reg [1:0] sel;
  reg i0,i1,i2,i3;
  wire y;
  
  mux4_1 dut(.sel(sel),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.y(y));
  initial begin
    $monitor("time=%0t i0=%b i1=%b i2=%b i3=%b sel=%b y=%b",$time,i0,i1,i2,i3,sel,y);
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    //initialize
    {i3,i2,i1,i0}=4'h5;
    repeat(6)
      begin
        sel=$random;#5;
      end
    
    
    $finish;
  end
endmodule