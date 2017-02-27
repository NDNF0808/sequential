`include "./function_task.v"
module test;
    reg signed [3:0] a,b;
    wire             m;
    wire signed [3:0] n;
    reg               clk;
    
    initial
      begin
          clk = 1'b0;
          repeat (20)
            #1 clk = ~clk;
      end
    initial 
      begin
          a = 4'b1011;
          b = 4'b0010;
      end
    always @ (posedge clk)
      begin
          a = $random % 2;
          b = $random % 2;
      end
    functi0n_task functi0n_task(a,b, m, n);
    initial
      begin
          $dumpfile ("function_task.vcd");
          $dumpvars (0, test);
      end
endmodule // test
