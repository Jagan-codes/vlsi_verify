module gray_to_binary_tb;
  reg [3:0]gray;
  wire[3:0] binary;
  
  gray_to_binary uut(gray,binary);
  
  initial begin
    $monitor("time=%0t grey=%b binary=%b ",$time,gray,binary);
    $dumpfile("gray_to_binary.vcd");
    $dumpvars(1);
    
    gray=4'b0000; #1;
    gray=4'b0001;#1;
    gray=4'b0010;#1;
    gray=4'b0011;#1;
    gray=4'b0100;#1;
    gray=4'b0101;#1;
    gray=4'b0110;#1;
    gray=4'b0111;#1;
    gray=4'b1000;#1;
    gray=4'b1001;#1;
    gray=4'b1010;#1;
    gray=4'b1011;#1;
    gray=4'b1100;#1;
    gray=4'b1101;#1;
    gray=4'b1110;#1;
    gray=4'b1111;#1;
    $finish;
  end
endmodule