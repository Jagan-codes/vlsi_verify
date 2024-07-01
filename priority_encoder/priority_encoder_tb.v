module priority_encoder_tb;
  reg [7:0] d;
  wire [2:0] y;
  
  priority_encoder dut(.d(d),.y(y));
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
    