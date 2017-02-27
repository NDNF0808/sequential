module adder #(parameter N = 8)
             (input [N-1:0] a, b,
              output [N-1:0] y,
              input          cin,
              output         cout);
   assign {cout, y} = a + b + cin;
endmodule // adder
