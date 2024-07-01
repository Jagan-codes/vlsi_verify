module encoder_tb;
  reg [0:7] d;
  wire [0:2] y;
  
  encoder dut(.d(d),.y(y));
  
  initial begin
    d=8'b1;#1;
    $monitor("time=%0t d=%b y=%b",$time,d,y);
    $dumpfile("encoder.vcd");
    $dumpvars(1);
    
    for(int i=0;i<8;i++)
      begin
        d=d<<1;#1;
      end
  end
endmodule
  
  