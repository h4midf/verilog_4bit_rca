module rca_adder_4bit(
    output [3:0] sum , 
    output cout , 
    input [3:0] A,
    input [3:0] B 
);
    wire C1,C2,C3 ;

    full_adder adder1(.A(A[0]),.B(B[0]), .C(zero), .sum(sum[0]), .cout(C1));
    full_adder adder2(.A(A[1]),.B(B[1]), .C(C1), .sum(sum[1]), .cout(C2));
    full_adder adder3(.A(A[2]),.B(B[2]), .C(C2), .sum(sum[2]), .cout(C3));
    full_adder adder4(.A(A[3]),.B(B[3]), .C(C3), .sum(sum[3]), .cout(cout));
    wire zero;
    assign zero =0 ; 


endmodule // 4bit_rca 