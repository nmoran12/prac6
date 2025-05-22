load Abs.vm,
output-file Abs02.out,
compare-to Abs02.cmp,
output-list sp%D1.6.1 local%D1.6.1 argument%D1.8.1 this%D1.6.1 that%D1.6.1
            RAM[16]%D1.6.1 RAM[17]%D1.6.1 RAM[18]%D1.6.1
            local[0]%D1.8.1 local[1]%D1.8.1 local[2]%D1.8.1
            argument[0]%D1.11.1 argument[1]%D1.11.1 argument[2]%D1.11.1;

set sp 256,        // stack pointer
set local 300,     // base address of the local segment
set argument 400,  // base address of the argument segment
set this 3000,     // base address of the this segment
set that 3010,     // base address of the that segment

// only change these
// checking edge cases
// this covers 'Edge cases: These tests are specifically aimed at values where the behaviour of your system can change.'
set RAM[16] 0,  // static 0
set RAM[17] -1,  // static 1
set RAM[18] 1,  // static 2

// these dont need to change because we arent using local variables
set local[0] -10,  // local 0
set local[1] -20,  // local 1
set local[2] -30,  // local 2

// these dont need to change either because we have no arguments in our Abs.vm
set argument[0] -100,  // argument 0
set argument[1] -200,  // argument 1
set argument[2] -300;  // argument 2

repeat 13 {        // Change this number to cover the number of instructions in the VM test file
  vmstep;
}
output;
