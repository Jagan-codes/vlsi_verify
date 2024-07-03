module demux2_1_tb;
  reg i,sel;
  wire y0,y1;
  
  demux2_1 dut(i,sel,y0,y1);
 
  initial begin
    $monitor("time=%0t i=%b sel=%b y0=%b y1=%b",$time,i,sel,y0,y1);
    $dumpfile("demux2_1.vcd");
    $dumpvars(1);
    sel=0;i=1;#5;
    sel=1;i=1;#5;
    sel=0;i=0;#5;
    sel=1;i=0;
    $finish;
  end
endmodule
   