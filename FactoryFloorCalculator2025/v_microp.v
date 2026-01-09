
//////////////////////////////////////////////////////////////////////////////////
// 	MICROCONTROLADOR MICROP 
//////////////////////////////////////////////////////////////////////////////////
module v_microp 	(		input 								clk,
								input						[7:0]		sw,
								input						[4:0]		btn,
								output 					[0:6]		seg,
								output 					[7:0]		led,
								output 		 			[0:3]		an			);

microp mcs_0 (
  .Clk(clk), // input Clk
  .Reset(btn[0]), // input Reset
  .GPO1(led), // output [7 : 0] GPO1
  .GPO2(seg), // output [6 : 0] GPO2
  .GPO3(an), // output [3 : 0] GPO3
  .GPI1(sw), // input [7 : 0] GPI1
  .GPI2(btn[4:1]) // input [3 : 0] GPI2
);

endmodule
