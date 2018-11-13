/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "sum.v:3" *)
module sum(clk, rst, g_input, e_input, o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  (* src = "../syn_lib/ADD.v:6" *)
  wire \ADD_.CI ;
  (* src = "../syn_lib/ADD.v:7" *)
  wire \ADD_.CO ;
  (* src = "sum.v:15" *)
  input clk;
  (* src = "sum.v:17" *)
  input e_input;
  (* src = "sum.v:16" *)
  input g_input;
  (* src = "sum.v:18" *)
  output o;
  (* src = "sum.v:15" *)
  input rst;
  XOR _05_ (
    .A(\ADD_.CI ),
    .B(g_input),
    .Z(_02_)
  );
  XNOR _06_ (
    .A(e_input),
    .B(\ADD_.CI ),
    .Z(_03_)
  );
  ANDN _07_ (
    .A(_02_),
    .B(_03_),
    .Z(_04_)
  );
  XOR _08_ (
    .A(_04_),
    .B(\ADD_.CI ),
    .Z(\ADD_.CO )
  );
  IV _09_ (
    .A(e_input),
    .Z(_00_)
  );
  XNOR _10_ (
    .A(\ADD_.CI ),
    .B(g_input),
    .Z(_01_)
  );
  XOR _11_ (
    .A(_01_),
    .B(_00_),
    .Z(o)
  );
  DFF _12_ (
    .CLK(clk),
    .D(\ADD_.CO ),
    .I(1'b0),
    .Q(\ADD_.CI ),
    .RST(rst)
  );
endmodule
