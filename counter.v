module counter(input clk, reset,
               output y);
    reg [1:0]         state, nextstate;
    
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    always @ (posedge clk, posedge reset)
      if (reset) state <= s0;
      else state <= nextstate;
    always @ (*)
      case (state)
        s0: nextstate = s1;
        s1: nextstate = s2;
        s2: nextstate = s0;
        default: nextstate = s0;
        
      endcase // case (state)
    assign y = (state == s0);
endmodule // counter

  
