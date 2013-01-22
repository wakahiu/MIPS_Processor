module echo(input clk, input rst, input [29:0] addr, output reg [31:0] inst);
reg [29:0] addr_r;
always @(posedge clk)
begin
addr_r <= (rst) ? (30'b0) : (addr);
end
always @(*)
begin
case(addr_r)
30'h00000000: inst = 32'h3c1d1000;
30'h00000001: inst = 32'h0c000003;
30'h00000002: inst = 32'h37bd1000;
30'h00000003: inst = 32'h27bdffe8;
30'h00000004: inst = 32'hafa00010;
30'h00000005: inst = 32'h3c028000;
30'h00000006: inst = 32'h34420004;
30'h00000007: inst = 32'h8c420000;
30'h00000008: inst = 32'h00000000;
30'h00000009: inst = 32'h30420001;
30'h0000000a: inst = 32'h1040fffa;
30'h0000000b: inst = 32'h00000000;
30'h0000000c: inst = 32'h3c028000;
30'h0000000d: inst = 32'h3442000c;
30'h0000000e: inst = 32'h8c420000;
30'h0000000f: inst = 32'h00000000;
30'h00000010: inst = 32'ha3a20014;
30'h00000011: inst = 32'h3c028000;
30'h00000012: inst = 32'h34420000;
30'h00000013: inst = 32'h8c420000;
30'h00000014: inst = 32'h00000000;
30'h00000015: inst = 32'h30420001;
30'h00000016: inst = 32'h1040fffa;
30'h00000017: inst = 32'h00000000;
30'h00000018: inst = 32'h3c028000;
30'h00000019: inst = 32'h83a30014;
30'h0000001a: inst = 32'h00000000;
30'h0000001b: inst = 32'h34420008;
30'h0000001c: inst = 32'hac430000;
30'h0000001d: inst = 32'h08000005;
30'h0000001e: inst = 32'h00000000;
default:      inst = 32'h00000000;
endcase
end
endmodule
