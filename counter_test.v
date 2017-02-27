`include "./counter.v"
module test;
    reg clk, reset;
    wire y;
    initial
      begin
          #0 clk = 0;
          repeat (30)
            #1 clk = ~clk;
      end
    initial begin
        #0 reset = 0;
        repeat (20)
          #7777777 reset = ~reset;
    end
    counter counter(.clk(clk),
                    .reset(reset),
                    .y(y));
    initial
      begin
          $dumpfile("counter.vcd");
          $dumpvars(0,test);
      end
endmodule // test
