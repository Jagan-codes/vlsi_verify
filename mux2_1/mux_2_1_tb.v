module mux_2_1_tb;
  reg sel,i0,i1;
  wire y;
  
  mux_2_1 dut(.sel(sel),.i0(i0),.i1(i1),.y(y));
  initial begin
    $monitor("time=%0t i0=%b i1=%b sel=%b y=%b",$time,i0,i1,sel,y);
    $dumpfile("mux_2_1.vcd");
    $dumpvars(1);
    
    //initialize
    i0=0;i1=1;
    sel=0;
    #10;
    sel=1;
    #10;
    $finish;
  end
endmodule