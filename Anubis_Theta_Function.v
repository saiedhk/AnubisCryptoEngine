/*-------------------------------------------------------------------
 Project: ANUBIS
 Module Name: Anubis_Theta_Function
 Description:
     Theta Function of the ANUBIS block cipher
     It performs xor-ing of the state and a subkey.

 Dependencies:
           Anubis_RowMultiply.v

 Language: Verilog 2001
 Author: Saied H. Khayat
 Date:   March 2011
 URL: https://github.com/saiedhk
-------------------------------------------------------------------*/

`timescale  1ns/1ps

module Anubis_Theta_Function (
   input  [127:0] idat,
   output [127:0] odat
   );

   Anubis_RowMultiply row0(idat[7:0], idat[15:8], idat[23:16], idat[31:24],
                           odat[7:0], odat[15:8], odat[23:16], odat[31:24]);

   Anubis_RowMultiply row1(idat[39:32], idat[47:40], idat[55:48], idat[63:56],
                           odat[39:32], odat[47:40], odat[55:48], odat[63:56]);

   Anubis_RowMultiply row2(idat[71:64], idat[79:72], idat[87:80], idat[95:88],
                           odat[71:64], odat[79:72], odat[87:80], odat[95:88]);

   Anubis_RowMultiply row3(idat[103:96], idat[111:104], idat[119:112], idat[127:120],
                           odat[103:96], odat[111:104], odat[119:112], odat[127:120]);

endmodule
