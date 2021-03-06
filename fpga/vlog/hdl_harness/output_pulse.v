// Copyright 2012 Sriram Radhakrishnan, Varun Sampath, Shilpa Sarode
// 
// This file is part of PVS.
// 
// PVS is free software: you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later
// version.
// 
// PVS is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License along with
// PVS.  If not, see <http://www.gnu.org/licenses/>.

`timescale 1 ns / 1 ns

// Widens the output signal using COUNT

// inputs: 	
// CLK
//	signal_i - input signal

// output:	
//	signal_o - output signal

// parameter: 
// COUNT - counter val for width, default 15

module output_pulse
          (
           clk,
			  signal_i,
			  signal_o
          );
			 
//////////// INPUTS & OUTPUTS ////////////	 
input clk;
input signal_i;
output signal_o;
			 
//////////// PARAMETERS ////////////
parameter COUNT = 15; // with clk of 1.5kHz corresponds to 10ms width

parameter s_idle = 1'b0;
parameter s_out = 1'b1;


//////////// SIGNALS & REGS ////////////
reg[15:0] cnt = 0;
reg state = 0;

//////////// LOGIC ////////////
always @(posedge clk) begin
		case(state)
			s_idle:
			begin
				state <= (signal_i) ? s_out : s_idle; // mantém o estado enquanto signal_i for 0
				cnt  <= 8'b0;
			end
			s_out:
			begin
				state <= (cnt >= COUNT) ? s_idle : s_out;
				cnt <= cnt + 8'b1;
			end
		endcase
end

//////////// OUTPUT ASSIGNS ////////////
assign signal_o = (state == s_out);

endmodule
