/**********************************************************************

   Project: Anubis Crypto Engine in Verilog

   Language: Verilog 2001
   Author: Saied H. Khayat
   Date:   March 2011
   URL: https://github.com/saiedhk
   
   Copyright Notice: Free use of this library is permitted under the
   guidelines and in accordance with the MIT License (MIT).
   http://opensource.org/licenses/MIT

   The MIT License (MIT)

   Copyright (c) 2016 Saied Hosseini Khayat
   
   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:
   
   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.
   
   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.

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

This implements a hardware crypto engine for the ANUBIS block cipher written 
in synthesizable Verilog.
