module binary_to_gray_tb;
  reg [3:0] binary;wire [3:0]gray;
  
  binary_to_gray uut(binary,gray);
  
  initial begin
    $monitor("time=%0t binary=%b grey=%b",$time,binary,gray);
    $dumpfile("binary_to_grey.vcd");
    $dumpvars(1);
   
    binary=4'b0000; #1;
    binary=4'b0001;#1;
    binary=4'b0010;#1;
    binary=4'b0011;#1;
    binary=4'b0100;#1;
    binary=4'b0101;#1;
    binary=4'b0110;#1;
    binary=4'b0111;#1;
    binary=4'b1000;#1;
    binary=4'b1001;#1;
    binary=4'b1010;#1;
    binary=4'b1011;#1;
    binary=4'b1100;#1;
    binary=4'b1101;#1;
    binary=4'b1110;#1;
    binary=4'b1111;#1;
    $finish;
  end
endmodule