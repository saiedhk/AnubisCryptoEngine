/*-------------------------------------------------------------------
 Project: ANUBIS
 Module Name: Anubis_RowMultiply
 Description:
     Row Multiply Function of the ANUBIS block cipher

 Dependencies:
           none
           
 Language: Verilog 2001
 Author: Saied H. Khayat
 Date:   March 2011
 URL: https://github.com/saiedhk
-------------------------------------------------------------------*/

`timescale  1ns/1ps

module Anubis_RowMultiply (
   input  [7:0] a0, a1, a2, a3,
   output reg [7:0] b0, b1, b2, b3
   );

   reg [7:0] r0, r1, r2, r3;

   always @*
   begin
      r0 = xtime( a1 ^ a3 );
      r1 = xtime( a0 ^ a2 );
      r2 = xtime( xtime( a2 ^ a3 ) );
      r3 = xtime( xtime( a0 ^ a1 ) );
      b0 = a0 ^ r0 ^ r2;
      b1 = a1 ^ r1 ^ r2;
      b2 = a2 ^ r0 ^ r3;
      b3 = a3 ^ r1 ^ r3;
   end

// Multiplies a number by x in GF(2^8)
function [7:0] xtime ( input [7:0] idat );
   begin
      case(idat)
         8'h00: xtime = 8'h00;
         8'h01: xtime = 8'h02;
         8'h02: xtime = 8'h04;
         8'h03: xtime = 8'h06;
         8'h04: xtime = 8'h08;
         8'h05: xtime = 8'h0a;
         8'h06: xtime = 8'h0c;
         8'h07: xtime = 8'h0e;
         8'h08: xtime = 8'h10;
         8'h09: xtime = 8'h12;
         8'h0a: xtime = 8'h14;
         8'h0b: xtime = 8'h16;
         8'h0c: xtime = 8'h18;
         8'h0d: xtime = 8'h1a;
         8'h0e: xtime = 8'h1c;
         8'h0f: xtime = 8'h1e;

         8'h10: xtime = 8'h20;
         8'h11: xtime = 8'h22;
         8'h12: xtime = 8'h24;
         8'h13: xtime = 8'h26;
         8'h14: xtime = 8'h28;
         8'h15: xtime = 8'h2a;
         8'h16: xtime = 8'h2c;
         8'h17: xtime = 8'h2e;
         8'h18: xtime = 8'h30;
         8'h19: xtime = 8'h32;
         8'h1a: xtime = 8'h34;
         8'h1b: xtime = 8'h36;
         8'h1c: xtime = 8'h38;
         8'h1d: xtime = 8'h3a;
         8'h1e: xtime = 8'h3c;
         8'h1f: xtime = 8'h3e;

         8'h20: xtime = 8'h40;
         8'h21: xtime = 8'h42;
         8'h22: xtime = 8'h44;
         8'h23: xtime = 8'h46;
         8'h24: xtime = 8'h48;
         8'h25: xtime = 8'h4a;
         8'h26: xtime = 8'h4c;
         8'h27: xtime = 8'h4e;
         8'h28: xtime = 8'h50;
         8'h29: xtime = 8'h52;
         8'h2a: xtime = 8'h54;
         8'h2b: xtime = 8'h56;
         8'h2c: xtime = 8'h58;
         8'h2d: xtime = 8'h5a;
         8'h2e: xtime = 8'h5c;
         8'h2f: xtime = 8'h5e;

         8'h30: xtime = 8'h60;
         8'h31: xtime = 8'h62;
         8'h32: xtime = 8'h64;
         8'h33: xtime = 8'h66;
         8'h34: xtime = 8'h68;
         8'h35: xtime = 8'h6a;
         8'h36: xtime = 8'h6c;
         8'h37: xtime = 8'h6e;
         8'h38: xtime = 8'h70;
         8'h39: xtime = 8'h72;
         8'h3a: xtime = 8'h74;
         8'h3b: xtime = 8'h76;
         8'h3c: xtime = 8'h78;
         8'h3d: xtime = 8'h7a;
         8'h3e: xtime = 8'h7c;
         8'h3f: xtime = 8'h7e;

         8'h40: xtime = 8'h80;
         8'h41: xtime = 8'h82;
         8'h42: xtime = 8'h84;
         8'h43: xtime = 8'h86;
         8'h44: xtime = 8'h88;
         8'h45: xtime = 8'h8a;
         8'h46: xtime = 8'h8c;
         8'h47: xtime = 8'h8e;
         8'h48: xtime = 8'h90;
         8'h49: xtime = 8'h92;
         8'h4a: xtime = 8'h94;
         8'h4b: xtime = 8'h96;
         8'h4c: xtime = 8'h98;
         8'h4d: xtime = 8'h9a;
         8'h4e: xtime = 8'h9c;
         8'h4f: xtime = 8'h9e;

         8'h50: xtime = 8'ha0;
         8'h51: xtime = 8'ha2;
         8'h52: xtime = 8'ha4;
         8'h53: xtime = 8'ha6;
         8'h54: xtime = 8'ha8;
         8'h55: xtime = 8'haa;
         8'h56: xtime = 8'hac;
         8'h57: xtime = 8'hae;
         8'h58: xtime = 8'hb0;
         8'h59: xtime = 8'hb2;
         8'h5a: xtime = 8'hb4;
         8'h5b: xtime = 8'hb6;
         8'h5c: xtime = 8'hb8;
         8'h5d: xtime = 8'hba;
         8'h5e: xtime = 8'hbc;
         8'h5f: xtime = 8'hbe;

         8'h60: xtime = 8'hc0;
         8'h61: xtime = 8'hc2;
         8'h62: xtime = 8'hc4;
         8'h63: xtime = 8'hc6;
         8'h64: xtime = 8'hc8;
         8'h65: xtime = 8'hca;
         8'h66: xtime = 8'hcc;
         8'h67: xtime = 8'hce;
         8'h68: xtime = 8'hd0;
         8'h69: xtime = 8'hd2;
         8'h6a: xtime = 8'hd4;
         8'h6b: xtime = 8'hd6;
         8'h6c: xtime = 8'hd8;
         8'h6d: xtime = 8'hda;
         8'h6e: xtime = 8'hdc;
         8'h6f: xtime = 8'hde;

         8'h70: xtime = 8'he0;
         8'h71: xtime = 8'he2;
         8'h72: xtime = 8'he4;
         8'h73: xtime = 8'he6;
         8'h74: xtime = 8'he8;
         8'h75: xtime = 8'hea;
         8'h76: xtime = 8'hec;
         8'h77: xtime = 8'hee;
         8'h78: xtime = 8'hf0;
         8'h79: xtime = 8'hf2;
         8'h7a: xtime = 8'hf4;
         8'h7b: xtime = 8'hf6;
         8'h7c: xtime = 8'hf8;
         8'h7d: xtime = 8'hfa;
         8'h7e: xtime = 8'hfc;
         8'h7f: xtime = 8'hfe;

         8'h80: xtime = 8'h1d;
         8'h81: xtime = 8'h1f;
         8'h82: xtime = 8'h19;
         8'h83: xtime = 8'h1b;
         8'h84: xtime = 8'h15;
         8'h85: xtime = 8'h17;
         8'h86: xtime = 8'h11;
         8'h87: xtime = 8'h13;
         8'h88: xtime = 8'h0d;
         8'h89: xtime = 8'h0f;
         8'h8a: xtime = 8'h09;
         8'h8b: xtime = 8'h0b;
         8'h8c: xtime = 8'h05;
         8'h8d: xtime = 8'h07;
         8'h8e: xtime = 8'h01;
         8'h8f: xtime = 8'h03;

         8'h90: xtime = 8'h3d;
         8'h91: xtime = 8'h3f;
         8'h92: xtime = 8'h39;
         8'h93: xtime = 8'h3b;
         8'h94: xtime = 8'h35;
         8'h95: xtime = 8'h37;
         8'h96: xtime = 8'h31;
         8'h97: xtime = 8'h33;
         8'h98: xtime = 8'h2d;
         8'h99: xtime = 8'h2f;
         8'h9a: xtime = 8'h29;
         8'h9b: xtime = 8'h2b;
         8'h9c: xtime = 8'h25;
         8'h9d: xtime = 8'h27;
         8'h9e: xtime = 8'h21;
         8'h9f: xtime = 8'h23;

         8'ha0: xtime = 8'h5d;
         8'ha1: xtime = 8'h5f;
         8'ha2: xtime = 8'h59;
         8'ha3: xtime = 8'h5b;
         8'ha4: xtime = 8'h55;
         8'ha5: xtime = 8'h57;
         8'ha6: xtime = 8'h51;
         8'ha7: xtime = 8'h53;
         8'ha8: xtime = 8'h4d;
         8'ha9: xtime = 8'h4f;
         8'haa: xtime = 8'h49;
         8'hab: xtime = 8'h4b;
         8'hac: xtime = 8'h45;
         8'had: xtime = 8'h47;
         8'hae: xtime = 8'h41;
         8'haf: xtime = 8'h43;

         8'hb0: xtime = 8'h7d;
         8'hb1: xtime = 8'h7f;
         8'hb2: xtime = 8'h79;
         8'hb3: xtime = 8'h7b;
         8'hb4: xtime = 8'h75;
         8'hb5: xtime = 8'h77;
         8'hb6: xtime = 8'h71;
         8'hb7: xtime = 8'h73;
         8'hb8: xtime = 8'h6d;
         8'hb9: xtime = 8'h6f;
         8'hba: xtime = 8'h69;
         8'hbb: xtime = 8'h6b;
         8'hbc: xtime = 8'h65;
         8'hbd: xtime = 8'h67;
         8'hbe: xtime = 8'h61;
         8'hbf: xtime = 8'h63;

         8'hc0: xtime = 8'h9d;
         8'hc1: xtime = 8'h9f;
         8'hc2: xtime = 8'h99;
         8'hc3: xtime = 8'h9b;
         8'hc4: xtime = 8'h95;
         8'hc5: xtime = 8'h97;
         8'hc6: xtime = 8'h91;
         8'hc7: xtime = 8'h93;
         8'hc8: xtime = 8'h8d;
         8'hc9: xtime = 8'h8f;
         8'hca: xtime = 8'h89;
         8'hcb: xtime = 8'h8b;
         8'hcc: xtime = 8'h85;
         8'hcd: xtime = 8'h87;
         8'hce: xtime = 8'h81;
         8'hcf: xtime = 8'h83;

         8'hd0: xtime = 8'hbd;
         8'hd1: xtime = 8'hbf;
         8'hd2: xtime = 8'hb9;
         8'hd3: xtime = 8'hbb;
         8'hd4: xtime = 8'hb5;
         8'hd5: xtime = 8'hb7;
         8'hd6: xtime = 8'hb1;
         8'hd7: xtime = 8'hb3;
         8'hd8: xtime = 8'had;
         8'hd9: xtime = 8'haf;
         8'hda: xtime = 8'ha9;
         8'hdb: xtime = 8'hab;
         8'hdc: xtime = 8'ha5;
         8'hdd: xtime = 8'ha7;
         8'hde: xtime = 8'ha1;
         8'hdf: xtime = 8'ha3;

         8'he0: xtime = 8'hdd;
         8'he1: xtime = 8'hdf;
         8'he2: xtime = 8'hd9;
         8'he3: xtime = 8'hdb;
         8'he4: xtime = 8'hd5;
         8'he5: xtime = 8'hd7;
         8'he6: xtime = 8'hd1;
         8'he7: xtime = 8'hd3;
         8'he8: xtime = 8'hcd;
         8'he9: xtime = 8'hcf;
         8'hea: xtime = 8'hc9;
         8'heb: xtime = 8'hcb;
         8'hec: xtime = 8'hc5;
         8'hed: xtime = 8'hc7;
         8'hee: xtime = 8'hc1;
         8'hef: xtime = 8'hc3;

         8'hf0: xtime = 8'hfd;
         8'hf1: xtime = 8'hff;
         8'hf2: xtime = 8'hf9;
         8'hf3: xtime = 8'hfb;
         8'hf4: xtime = 8'hf5;
         8'hf5: xtime = 8'hf7;
         8'hf6: xtime = 8'hf1;
         8'hf7: xtime = 8'hf3;
         8'hf8: xtime = 8'hed;
         8'hf9: xtime = 8'hef;
         8'hfa: xtime = 8'he9;
         8'hfb: xtime = 8'heb;
         8'hfc: xtime = 8'he5;
         8'hfd: xtime = 8'he7;
         8'hfe: xtime = 8'he1;
         8'hff: xtime = 8'he3;
      endcase
   end
endfunction

endmodule