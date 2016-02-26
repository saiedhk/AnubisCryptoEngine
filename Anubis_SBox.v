/*-------------------------------------------------------------------
 Project: ANUBIS
 Module Name: Anubis_SBox
 Description:
     S Box of the ANUBIS block cipher

 Dependencies:
            Anubis_PBox.v
            Anubis_QBox.v

 Language: Verilog 2001
 Author: Saied H. Khayat
 Date:   March 2011
 URL: https://github.com/saiedhk

 Copyright Notice: Free use of this library is permitted under the
 guidelines and in accordance with the MIT License (MIT).
 http://opensource.org/licenses/MIT
-------------------------------------------------------------------*/

`timescale  1ns/1ps

module Anubis_SBox (
   input  [7:0] idat,
   output [7:0] odat
   );

   wire [7:0] a,b,c,d;

   // layer 1
   Anubis_PBox pbox1( .idat( idat[7:4] ), .odat( a[7:4] ) );
   Anubis_QBox qbox1( .idat( idat[3:0] ), .odat( a[3:0] ) );

   // 2-bit shuffle
   assign b[3:0] = { a[5:4] , a[1:0] };
   assign b[7:4] = { a[7:6] , a[3:2] };

   // layer 2
   Anubis_QBox qbox2( .idat( b[7:4] ), .odat( c[7:4] ) );
   Anubis_PBox pbox2( .idat( b[3:0] ), .odat( c[3:0] ) );

   // 2-bit shuffle
   assign d[3:0] = { c[5:4] , c[1:0] };
   assign d[7:4] = { c[7:6] , c[3:2] };

   // layer 3
   Anubis_PBox pbox3( .idat( d[7:4] ), .odat( odat[7:4] ) );
   Anubis_QBox qbox3( .idat( d[3:0] ), .odat( odat[7:4] ) );

endmodule
