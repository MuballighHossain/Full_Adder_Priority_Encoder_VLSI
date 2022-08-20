module as2(D,RS,Q,clk);

input [3:0]D;
input RS,clk;
output reg [3:0]Q;
always @(posedge clk)
begin
	Q=D;

 if (RS)
	begin 
	
	//right shift
	Q<=D;
	end

 else 
	begin

//left shift
Q[3]<=Q[0];
Q[2]<=Q[3];
Q[1]<=Q[2];
Q[0]<=Q[1];

	end
end
endmodule 