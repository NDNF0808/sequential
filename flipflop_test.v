//`include "./flipflop.v "
module test;
    reg [3:0] a;
    reg       clk;
    wire [3:0]     y;
    
    initial
      begin
          a = 4'b1110;
          #0 clk = 0;
          repeat(20)
            begin
                #1 clk = ~ clk;
            end
      end
    initial
      begin
          #10 a = 4'b0001;
      end
    flipflop flipflop(.a(a),
                      .clk(clk),
                      .y(y));
    initial
      begin
          $dumpfile("flipflop.vcd");
          $dumpvars(0,test);
      end
    endmodule