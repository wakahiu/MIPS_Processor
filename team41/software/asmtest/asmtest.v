module asmtest(input clk, input rst, input [29:0] addr, output reg [31:0] inst);
reg [29:0] addr_r;
always @(posedge clk)
begin
addr_r <= (rst) ? (30'b0) : (addr);
end
always @(*)
begin
case(addr_r)
30'h00000000: inst = 32'h3c104000;
30'h00000001: inst = 32'h3c114000;
30'h00000002: inst = 32'h36100014;
30'h00000003: inst = 32'h0800000c;
30'h00000004: inst = 32'h2611001c;
30'h00000005: inst = 32'h24020010;
30'h00000006: inst = 32'h3443ff00;
30'h00000007: inst = 32'h00031fc2;
30'h00000008: inst = 32'h3443ff00;
30'h00000009: inst = 32'h3c04abff;
30'h0000000a: inst = 32'h00831825;
30'h0000000b: inst = 32'h00031c03;
30'h0000000c: inst = 32'h3c03c000;
30'h0000000d: inst = 32'h12110006;
30'h0000000e: inst = 32'h00000000;
30'h0000000f: inst = 32'h8e020000;
30'h00000010: inst = 32'h26100004;
30'h00000011: inst = 32'hac620000;
30'h00000012: inst = 32'h0800000d;
30'h00000013: inst = 32'h24630004;
30'h00000014: inst = 32'h3c04c000;
30'h00000015: inst = 32'h0080f809;
30'h00000016: inst = 32'h00000000;
default:      inst = 32'h00000000;
endcase
end
endmodule
