//Testbench
module decoder_2to4_tb();
  reg a_tb,b_tb;
  wire y0_tb,y1_tb,y2_tb,y3_tb;
 integer i;
  decoder_2to4 DUT(a_tb,b_tb,y0_tb,y1_tb,y2_tb,y3_tb);
 initial
 begin
   for(i=0;i<4;i=i+1)
   begin
     {a_tb,b_tb} =i;
     #10;
   end
  end
 initial
    $monitor("Input1=%b,Input2=%b,Output1=%b,Output2=%b,Output3=%b,Output4=%b",a_tb,b_tb,y0_tb,y1_tb,y2_tb,y3_tb);
initial
 #200 $finish;
endmodule 