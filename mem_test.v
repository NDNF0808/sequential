`include "./mem.v"
module test;
    reg [1:0] addr;
    reg [2:0] cin;
    reg       clk, we;
    wire [2:0] cout;
    initial
      begin
          we = 1;
          addr = 2'b01;
          cin = 3'b110;
      end
    initial
      begin
          #0 clk = 0;
          repeat(20)
            #1 clk = ~clk;
          
      end
    mem #(2,3) mem( .addr(addr),
                   .cin(cin),
                   .clk(clk),
                   .we(we),
                   .cout(cout)
                   );
    initial
      begin
          $dumpfile("mem.vcd");
          $dumpvars(0,test);
      end
endmodule // test

    