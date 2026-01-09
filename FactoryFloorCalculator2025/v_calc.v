//////////////////////////////////////////////////////////////////////////////////
// Circuito para a exibição de um número de quatro casas decimais
//////////////////////////////////////////////////////////////////////////////////
module v_calc 	(			input 								clk,
								input						[7:0]		sw,
								input						[4:0]		btn,
								output 					[0:6]		seg,
								output 		 			[0:3]		an			);
wire		[13:0]		wX;
wire		[6:0]			A, B, C;

v_disp_sw			u1	(	.clk(clk),
								.sw(wX),
								.seg(seg),
								.an(an)				);

assign A			= 	(sw[7]==1'b0) ? sw[6:0]: A;
assign B			= 	(sw[7]==1'b1) ? sw[6:0]: B;
assign C			= 	(B>A) ? (B-A): (A-B);

assign wX			= 	(btn==5'b00000) ? A:	    
							(btn==5'b00001) ? B:	   
							(btn==5'b00010) ? A+B:	   
							(btn==5'b00100) ? A*B:	
							(btn==5'b00100) ? C:
							(btn==5'b00011) ? A%B:
							(btn==5'b10000) ? A/B:A;
endmodule
