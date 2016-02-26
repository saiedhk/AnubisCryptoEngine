/*-------------------------------------------------------------------
 Project: ANUBIS
 Module Name: Anubis_Top
 Description:
     The ANUBIS block cipher (pipelined archiecture)
     It performs the entire Anubis encrypt/decrypt function.
     Refer to http://en.wikipedia.org/wiki/Anubis_(cipher) for more information.

 Dependencies:
           Anubis_Round_Function.v
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

module Anubis_Top (
   input clk,
   input subkeyload,
   input [127:0] subkey,
   input [127:0] idat,
   output reg [127:0] odat
   );

   reg [127:0] subkey0;
   reg [127:0] subkey1;
   reg [127:0] subkey2;
   reg [127:0] subkey3;
   reg [127:0] subkey4;
   reg [127:0] subkey5;
   reg [127:0] subkey6;
   reg [127:0] subkey7;
   reg [127:0] subkey8;
   reg [127:0] subkey9;
   reg [127:0] subkey10;
   reg [127:0] subkey11;
   reg [127:0] subkey12;

   reg [127:0] loc0_reg;
   reg [127:0] loc1_reg;
   reg [127:0] loc2_reg;
   reg [127:0] loc3_reg;
   reg [127:0] loc4_reg;
   reg [127:0] loc5_reg;
   reg [127:0] loc6_reg;
   reg [127:0] loc7_reg;
   reg [127:0] loc8_reg;
   reg [127:0] loc9_reg;
   reg [127:0] loc10_reg;
   reg [127:0] loc11_reg;

   wire [127:0] loc0;
   wire [127:0] loc1;
   wire [127:0] loc2;
   wire [127:0] loc3;
   wire [127:0] loc4;
   wire [127:0] loc5;
   wire [127:0] loc6;
   wire [127:0] loc7;
   wire [127:0] loc8;
   wire [127:0] loc9;
   wire [127:0] loc10;
   wire [127:0] loc11;
   wire [127:0] loc12;
   wire [127:0] loc13;
   wire [127:0] loc14;

   // Data path
   Anubis_Sigma_Function sigma1( .idat( idat     ), .skey( subkey0 ), .odat( loc0 ) );
   Anubis_Round_Function round1( .idat( loc0_reg ), .skey( subkey1 ), .odat( loc1 ) );
   Anubis_Round_Function round2( .idat( loc1_reg ), .skey( subkey2 ), .odat( loc2 ) );
   Anubis_Round_Function round3( .idat( loc2_reg ), .skey( subkey3 ), .odat( loc3 ) );
   Anubis_Round_Function round4( .idat( loc3_reg ), .skey( subkey4 ), .odat( loc4 ) );
   Anubis_Round_Function round5( .idat( loc4_reg ), .skey( subkey5 ), .odat( loc5 ) );
   Anubis_Round_Function round6( .idat( loc5_reg ), .skey( subkey6 ), .odat( loc6 ) );
   Anubis_Round_Function round7( .idat( loc6_reg ), .skey( subkey7 ), .odat( loc7 ) );
   Anubis_Round_Function round8( .idat( loc7_reg ), .skey( subkey8 ), .odat( loc8 ) );
   Anubis_Round_Function round9( .idat( loc8_reg ), .skey( subkey9 ), .odat( loc9 ) );
   Anubis_Round_Function round10( .idat( loc9_reg  ), .skey( subkey10 ), .odat( loc10 ) );
   Anubis_Round_Function round11( .idat( loc10_reg ), .skey( subkey11 ), .odat( loc11 ) );
   Anubis_Gamma_Function gamma  ( .idat( loc11_reg ), .odat( loc12 ) );
   Anubis_Tau_Function tau( .idat( loc12 ), .odat( loc13 ) );
   Anubis_Sigma_Function sigma2( .idat( loc13 ), .skey( subkey12 ) , .odat( loc14 ) );


   // shift subkey input into subkey registers
   always @(posedge clk)
   begin
      if (subkeyload)
      begin
         subkey0 <= subkey1;
         subkey1 <= subkey2;
         subkey2 <= subkey3;
         subkey3 <= subkey4;
         subkey4 <= subkey5;
         subkey5 <= subkey6;
         subkey6 <= subkey7;
         subkey7 <= subkey8;
         subkey8 <= subkey9;
         subkey9 <= subkey10;
         subkey10 <= subkey11;
         subkey11 <= subkey12;
         subkey12 <= subkey;
      end
   end

   always @(posedge clk)
   begin
      loc0_reg  <= loc0;
      loc1_reg  <= loc1;
      loc2_reg  <= loc2;
      loc3_reg  <= loc3;
      loc4_reg  <= loc4;
      loc5_reg  <= loc5;
      loc6_reg  <= loc6;
      loc7_reg  <= loc7;
      loc8_reg  <= loc8;
      loc9_reg  <= loc9;
      loc10_reg <= loc10;
      loc11_reg <= loc11;
      odat      <= loc14;
   end

endmodule
