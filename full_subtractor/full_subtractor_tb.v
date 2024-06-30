module fullsubtractor_tb;
  reg a,b,bin;
  wire diff,bout;
  
  full_subtractor uut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
  initial begin
    $monitor("time=%0t a=%b b=%b bin= %b diff= %b bout=%b",$time,a,b,bin,diff,bout);
    $dumpfile("fulsubtractor.vcd");
    $dumpvars(1);
    
    {a,b,bin}=3'b000;#10;
    {a,b,bin}=3'b001;#10;
    {a,b,bin}=3'b010;#10;
    {a,b,bin}=3'b011;#10;
    {a,b,bin}=3'b100;#10;
    {a,b,bin}=3'b101;#10;
    {a,b,bin}=3'b110;#10;
    {a,b,bin}=3'b111;#10;
    $finish;
  end
endmodule
  
    