module mem
  # (parameter N = 3, M = 6)
    (input [N-1 : 0] addr,
     input [M-1 : 0] cin,
     input           clk,
     input           we,
     output [M-1: 0] cout);
  reg [M-1:0]  mem [2**N-1: 0];
    
    always @ (posedge clk)
      if (we) 
mem[addr] = cin;
    assign cout = mem[addr];
endmodule // mem
