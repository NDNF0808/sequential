module test;
    reg [3:0] a;
    reg reset, clk;
    wire [3:0] y1, y2;
    
    initial
      begin
          a = 4'b1110;
          #0 clk = 0;
          #0 reset = 0;
          
          repeat(20)
            begin
                #1 clk = ~ clk;
                #3 reset = ~reset;
                
            end
      end
    initial
      begin
          #3 a = 4'b0001;
      end
    reset flipflop(.a(a),
                      .clk(clk),
                      .y1(y1),
                      .y2(y2));
    initial
      begin
          $dumpfile("flipflopreset.vcd");
          $dumpvars(0,test);
      end
endmodule