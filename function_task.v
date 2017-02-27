module functi0n_task(input signed [3:0] a, b,
                     output reg  m,
                     output  reg signed [3:0] n
                     );
    wire [3:0]                            c;
    reg [3:0]                             d, e;
    
    function signed [3:0] fun1(input signed [3:0] a, b);
        begin
            fun1 = a + b;
        end
    endfunction // fun1
    task tas1(input signed [3:0] a, b,
              output signed  [3:0] c,d);
     begin
         c = a + b;
         d = a - b;
     end
        
    endtask // tas1
    assign c = fun1( a, b);
always @ (*)
begin
    tas1 (a, b,d, e) ;
    if (c == d)
      m  = 1'b1;
    else
      m = 1'b0;
    n = e * fun1(a, b);
end
endmodule // functi0n_task

    