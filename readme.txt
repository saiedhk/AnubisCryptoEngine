/**********************************************************************

   Project: Anubis Crypto Engine in Verilog

   Language: Verilog 2001
   Author: Saied H. Khayat
   Date:   March 2011
   URL: https://github.com/saiedhk
   
   Copyright Notice: Free use of this library is permitted under the
   guidelines and in accordance with the MIT License (MIT).
   http://opensource.org/licenses/MIT

**********************************************************************/

Project Description

ANUBIS is a block cipher designed by Vincent Rijmen and Paulo S. L. M. Barreto
(2000). Its structure bears large similarity to Rijnadael (AES) and, to this
date (2013), it still remains a very strong cipher. An important advantage of
Anubis is its involutionary property, meaning that it decryption algorithm is
identical to its encryption algorithm. ANUBIS is an iterated 128-bit block
cipher with variable-length keys (128 bits to 320 bits, in steps of 32 bits).
The cipher is not patented and has been released by the designers for free
public use. The interested reader is referred to
http://en.wikipedia.org/wiki/Anubis_(cipher) for more information. A URL to the
complete definition of ANUBIS is also found in that page.

This CodePlex project presents a hardware crypto engine for the ANUBIS block
cipher written in Verilog.

Developing testbench is work to be done.
