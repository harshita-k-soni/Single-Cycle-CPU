// Verilog code for instruction memory
 module instr_mem          // a synthesisable rom implementation  
 (  
      input     [15:0]     pc,  
      output wire     [15:0]          instruction  
 );  
      wire [3 : 0] rom_addr = pc[4 : 1];  
    
      reg [15:0] rom[15:0];  
      initial  
      begin  
                rom[0] = 16'b1110000100001001;  
                rom[1] = 16'b1010110100000111;  
                rom[2] = 16'b1110000100000101;  
                rom[3] = 16'b1000111010000111;  
                rom[4] = 16'b0100000000001111;  
                rom[5] = 16'b1100000001111010; 
                rom[6] = 16'b0000000000000000;  
                rom[7] = 16'b0000000000000000;  
                rom[8] = 16'b0000000000000000;  
                rom[9] = 16'b0000000000000000;  
                rom[10] = 16'b0000000000000000;  
                rom[11] = 16'b0000000000000000;  
                rom[12] = 16'b0000000000000000;  
                rom[13] = 16'b0000000000000000;  
                rom[14] = 16'b0000000000000000;  
                rom[15] = 16'b1100000001110000;  
      end  
      assign instruction = (pc[15:0] < 32 )? rom[rom_addr[3:0]]: 16'd0;  
 endmodule   