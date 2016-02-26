/*-------------------------------------------------------------------
 Project: ANUBIS
 Module Name: Anubis_QBox
 Description:
     Q Box of the ANUBIS block cipher

 Dependencies:  none

 Language: Verilog 2001
 Author: Saied H. Khayat
 Date:   March 2011
 URL: https://github.com/saiedhk

 Copyright Notice: Free use of this library is permitted under the
 guidelines and in accordance with the MIT License (MIT).
 http://opensource.org/licenses/MIT
-------------------------------------------------------------------*/

`timescale  1ns/1ps

// Q mini-box in Anubis cipher
module Anubis_QBox (
   input [3:0] idat,
   output reg [3:0] odat
   );

    always @*
    begin
        case(idat)
            4'h0: odat = 4'h9;
            4'h1: odat = 4'he;
            4'h2: odat = 4'h5;
            4'h3: odat = 4'h6;
            4'h4: odat = 4'ha;
            4'h5: odat = 4'h2;
            4'h6: odat = 4'h3;
            4'h7: odat = 4'hc;
            4'h8: odat = 4'hf;
            4'h9: odat = 4'h0;
            4'ha: odat = 4'h4;
            4'hb: odat = 4'hd;
            4'hc: odat = 4'h7;
            4'hd: odat = 4'hb;
            4'he: odat = 4'h1;
            4'hf: odat = 4'h8;
        endcase
    end
endmodule
