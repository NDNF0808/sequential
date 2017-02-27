module flipflop(input [3:0] a,
                input        clk,
                output reg [3:0] y);
    always @ (posedge clk    )   //
      begin
          y <= a;
      end
endmodule // flipflop
  //  sequential logic always is nonblocking assign <= ff 