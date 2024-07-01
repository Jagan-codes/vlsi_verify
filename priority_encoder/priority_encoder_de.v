module priority_encoder(input [7:0] d,output reg [2:0] y);
  always@(*)
    begin
      casez(d)
        8'bzzzzzzz1:y=3'h0;
        8'bzzzzzz1z:y=3'h1;
        8'bzzzzz1zz:y=3'h2;
        8'bzzzz1zzz:y=3'd3;
        8'bzzz1zzzz:y=3'd4;
        8'bzz1zzzzz:y=3'd5;
        8'bz1zzzzzz:y=3'd6;
        8'b1zzzzzzz:y=3'd7;
        default:y=3'd0;
      endcase
    end
endmodule
