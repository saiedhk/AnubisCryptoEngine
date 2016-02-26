/*-------------------------------------------------------------------
 Project: ANUBIS
 Module Name: Anubis_Gamma_Function
 Description:
     Gamma Function of the ANUBIS block cipher

 Language: Verilog 2001
 Revision: 1.0

 Designer: Saied H. Khayat
 Contact:  saied.h.khayat@outlook.com

 Dependencies:  none

 Remark: none
-------------------------------------------------------------------*/

`timescale  1ns/1ps

module Anubis_Gamma_Function (
   input  [127:0] idat,
   output [127:0] odat
   );

   Anubis_SBox sbox0(  .idat( idat[  7:  0] ), .odat( odat[  7:  0] ) );
   Anubis_SBox sbox1(  .idat( idat[ 15:  8] ), .odat( odat[ 15:  8] ) );
   Anubis_SBox sbox2(  .idat( idat[ 23: 16] ), .odat( odat[ 23: 16] ) );
   Anubis_SBox sbox3(  .idat( idat[ 31: 24] ), .odat( odat[ 31: 24] ) );
   Anubis_SBox sbox4(  .idat( idat[ 39: 32] ), .odat( odat[ 39: 32] ) );
   Anubis_SBox sbox5(  .idat( idat[ 47: 40] ), .odat( odat[ 47: 40] ) );
   Anubis_SBox sbox6(  .idat( idat[ 55: 48] ), .odat( odat[ 55: 48] ) );
   Anubis_SBox sbox7(  .idat( idat[ 63: 56] ), .odat( odat[ 63: 56] ) );
   Anubis_SBox sbox8(  .idat( idat[ 71: 64] ), .odat( odat[ 71: 64] ) );
   Anubis_SBox sbox9(  .idat( idat[ 79: 72] ), .odat( odat[ 79: 72] ) );
   Anubis_SBox sbox10( .idat( idat[ 87: 80] ), .odat( odat[ 87: 80] ) );
   Anubis_SBox sbox11( .idat( idat[ 95: 88] ), .odat( odat[ 95: 88] ) );
   Anubis_SBox sbox12( .idat( idat[103: 96] ), .odat( odat[103: 96] ) );
   Anubis_SBox sbox13( .idat( idat[111:104] ), .odat( odat[111:104] ) );
   Anubis_SBox sbox14( .idat( idat[119:112] ), .odat( odat[119:112] ) );
   Anubis_SBox sbox15( .idat( idat[127:120] ), .odat( odat[127:120] ) );

endmodule
