module decoder_tb;
  reg [2:0] d;
  wire [7:0] y;
  
  decoder dut(.d(d),.y(y));
  initial begin
    $monitor("time=%0t d=%b y=%b",$time,d,y);
    $dumpfile("dump.vcd");
    $dumpvars(1);

    repeat(10)
      begin
          d=$random;#1;
      end
  end
endmodule
  