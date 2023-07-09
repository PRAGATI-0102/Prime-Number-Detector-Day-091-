`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2023 09:11:46 PM
// Design Name: 
// Module Name: prime_detector
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


module prime_detector(
    input clk,
    input [7:0] number,
    output reg is_prime
);

    reg [7:0] divisor;
    reg is_divisible;
    
    always @(*) 
    begin
        is_divisible = 0;
        for (divisor = 2; divisor < number; divisor = divisor + 1) 
        begin
            if (number % divisor == 0) 
            begin
                is_divisible = 1;
            end
        end
    end
    
    always @(posedge clk) 
    begin
        if (number <= 1)
            is_prime <= 0;
        else if (is_divisible)
            is_prime <= 0;
        else
            is_prime <= 1;
    end

endmodule
