load Abs.vm,
output-file Abs01.out,
compare-to Abs01.cmp,
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
// checking 'normal' cases such as having a positive number or a negative number
// this covers 'Normal usage: These tests are designed to test if the program performs as expected under normal usage.'
set RAM[16] 5,  // static 0
set RAM[17] -10,  // static 1
set RAM[18] -15,  // static 2

// these dont need to change because we arent using local variables
set local[0] -10,
set local[1] -20,
set local[2] -30,

// these dont need to change either because we have no arguments in our Abs.vm
set argument[0] -100,
set argument[1] -200,
set argument[2] -300;

repeat 13 {        // Change this number to cover the number of instructions in the VM test file
  vmstep;
}
output;
