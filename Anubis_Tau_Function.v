/*-------------------------------------------------------------------
 Project: ANUBIS
 Module Name: Anubis_Tau_Function
 Description:
     Tau Function of the ANUBIS block cipher
     It performs transposition of the state.

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

module Anubis_Tau_Function (
   input  [127:0] idat,
   output [127:0] odat
   );

   assign odat[  7:  0] = idat[  7:  0];
   assign odat[ 15:  8] = idat[ 39: 32];
   assign odat[ 23: 16] = idat[ 71: 64];
   assign odat[ 31: 24] = idat[103: 96];
   assign odat[ 39: 32] = idat[ 15:  8];
   assign odat[ 47: 40] = idat[ 47: 40];
   assign odat[ 55: 48] = idat[ 79: 72];
   assign odat[ 63: 56] = idat[111:104];
   assign odat[ 71: 64] = idat[ 23: 16];
   assign odat[ 79: 72] = idat[ 55: 48];
   assign odat[ 87: 80] = idat[ 87: 80];
   assign odat[ 95: 88] = idat[119:112];
   assign odat[103: 96] = idat[ 31: 24];
   assign odat[111:104] = idat[ 63: 56];
   assign odat[119:112] = idat[ 95: 88];
   assign odat[127:120] = idat[127:120];

endmodule
