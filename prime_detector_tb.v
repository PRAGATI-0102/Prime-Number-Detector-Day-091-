`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2023 09:14:16 PM
// Design Name: 
// Module Name: prime_detector_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module prime_detector_tb();
    
    reg clk;
    reg [7:0] number;
    wire is_prime;
    
    prime_detector dut(
        .clk(clk),
        .number(number),
        .is_prime(is_prime)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        number = 8'b10110101;
        #10;
        number = 8'b10101111;
        #10;
        number = 8'b00001101;
        #10;
        number = 8'b00000000;
        #10;
        $finish;
    end
    
endmodule
