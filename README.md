# Single-Cycle-CPU
This is a 16 bit single cycle MIPS processor implemented in verilog HDL and tested on NEXYS 4 DDR ,fpga board. It is made for learning porpose and curiosity in VLSI , not intended for production.
<br>
#What is a single cycle CPU?
A single cycle CPU is one which uses one clock period per instruction,i.e, the average CPI for this processor is 1. This clock period is set by the path having the longest delay since everything is designed in accordance to the worst case scenario.<br>
Advantages:<br>
1) They have simple hardware requirements.
2) Are easy to design and implement.
Disadvantages:
1) Throughput decreases.
2) Requires long clock cycles since some instructions may execute faster and the others take full clock cycle.
