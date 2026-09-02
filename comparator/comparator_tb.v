module comparator_tb;
reg a;
reg b;
wire gret;
wire eq;
wire les;

comparator uut(
.a(a),
.b(b),
.gret(gret),
.eq(eq),
.les(les)
);

initial begin 
$monitor(" Time=%0t , a=%b , b=%b ,  gret=%b , eq=%b , les=%b ", $time,a,b,gret,eq,les);
a = 0; b = 0;
#10;a = 0; b = 1;
#10;
a = 1; b = 0;
#10;
a = 1; b = 1;
#10;
$finish;
end
endmodule
