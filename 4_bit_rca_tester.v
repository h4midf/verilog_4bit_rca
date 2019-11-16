module rca_test;
    reg [3:0] A = 0 ; 
    reg [3:0] B = 0 ;
    wire [3:0] sum;
    wire cout ; 

    rca_adder_4bit uut1(.A(A) , .B(B), .sum(sum) , .cout(cout));
    // 4bit_rca uut(.A(A));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, uut1);

        #10;
        A = 1 ; 
        #10;
        B = 1 ;
        #10;
        A = 3 ;
        B = 2 ;
        #10;

        
    end


endmodule 