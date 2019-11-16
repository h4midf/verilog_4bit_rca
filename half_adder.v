module half_adder(
    input A,B,
    output sum,cout
);

    assign sum = A ^ B ;
    assign cout = A & B ;

endmodule // half_adder