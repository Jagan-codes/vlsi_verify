module universal_shift_register_tb;
  reg clk,reset,right_s_in,left_s_in;
  reg [1:0] select;
  reg [3:0] pin;
  wire [3:0] pout;
  wire s_left,s_right;
  
  universal_shift_register dut(clk,reset,right_s_in,left_s_in,select,pin,pout,s_left,s_right);
  initial begin
        forever #2 clk=~clk;
  end
  
  initial begin
    $monitor("time=%0t clk=%b reset=%b right_s_in=%b left_s_in=%b select=%b pin=%b pout=%b s_left=%b  s_right=%b",$time,clk,reset,right_s_in,left_s_in,select,pin,pout,s_left,s_right);
    $dumpfile("universal_shift_register.vcd");
    $dumpvars(1);
    
    clk=0;
    reset=1;
    #3;
    reset=0;
    pin=4'b1010;
    right_s_in=1'b0;
    left_s_in=1'b1;
    select=2'h3;#10;
    select=2'h2;#10;
    pin=4'b1101;
    select=2'h1;#10;
    select=2'h2;#10;
    select=2'h3;
    #10;
    $finish;
    
  end
endmodule
    
   
    
    