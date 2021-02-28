module DecoderMod(s, o);
    input [2:0] s;
    output [0:7] o;
    wire [2:0] inv_s;

    not(inv_s[2], s[2]);
    not(inv_s[1], s[1]);
    not(inv_s[0], s[0]);

    and(o[0], inv_s[2], inv_s[1], inv_s[0]);
    and(o[1], inv_s[2], inv_s[1],     s[0]);
    and(o[2], inv_s[2],     s[1], inv_s[0]);
    and(o[3], inv_s[2],     s[1],     s[0]);
    and(o[4],     s[2], inv_s[1], inv_s[0]);
    and(o[5],     s[2], inv_s[1],     s[0]);
    and(o[6],     s[2],     s[1], inv_s[0]);
    and(o[7],     s[2],     s[1],     s[0]);
endmodule