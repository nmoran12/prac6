// this covers: Normal usage: These tests are designed to test if the program performs as expected under normal usage.
load Mult.vm,
output-file Mult01.out,
compare-to Mult01.cmp,
output-list sp%D1.6.1 local%D1.6.1 argument%D1.8.1 this%D1.6.1 that%D1.6.1
            RAM[16]%D1.6.1 RAM[17]%D1.6.1 RAM[18]%D1.6.1
            local[0]%D1.8.1 local[1]%D1.8.1 local[2]%D1.8.1
            argument[0]%D1.11.1 argument[1]%D1.11.1 argument[2]%D1.11.1;

set sp 256,
set local 300,
set argument 400,
set this 3000,
set that 3010,

set RAM[16] 2, // x
set RAM[17] 5, // y
set RAM[18] 0,

set local[0] 1,
set local[1] 2,
set local[2] 3,

set argument[0] 100,
set argument[1] 200,
set argument[2] 300;

repeat 23 {
  vmstep;
}
output;
