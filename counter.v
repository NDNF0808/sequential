module counter
  # (parameter N = 8)
    
    (input clk, reset,
     output reg  [N-1:0] y);
    always @ (posedge clk, posedge reset)
      if (reset) y <= 0;
      else y <= y + 1;
endmodule // counter
