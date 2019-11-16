module full_adder(
    input A ,B, C ,
    output sum, cout 
);
    wire ha1_cout;
    wire ha1_sum;

    wire ha2_cout;  
    half_adder h1 (.A(A) , .B(B) , .sum(ha1_sum), .cout(ha1_cout));
    half_adder h2 (.A(ha1_sum) ,.B(C) , .sum(sum) , .cout(ha2_cout));

    assign cout = ha1_cout | ha2_cout ; 

endmodule // 