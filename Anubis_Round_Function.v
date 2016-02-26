/*-------------------------------------------------------------------
 Project: ANUBIS
 Module Name: Anubis_Round_Function
 Description:
     Round Function of the ANUBIS block cipher
     It performs one round of Anubis.

 Dependencies:
           Anubis_Gamma_Function.v
           Anubis_Tau_Function.v
           Anubis_Theta_Function.v
           Anubis_Sigma_Function.v

 Language: Verilog 2001
 Author: Saied H. Khayat
 Date:   March 2011
 URL: https://github.com/saiedhk
-------------------------------------------------------------------*/

`timescale  1ns/1ps

module Anubis_Round_Function (
   input  [127:0] idat,
   input  [127:0] skey,
   output [127:0] odat
   );

   wire [127:0] loc1;
   wire [127:0] loc2;
   wire [127:0] loc3;

   Anubis_Gamma_Function gamma( idat, loc1 );
   Anubis_Tau_Function     tau( loc1, loc2 );
   Anubis_Theta_Function theta( loc2, loc3 );
   Anubis_Sigma_Function sigma( loc3, skey, odat );

endmodule
