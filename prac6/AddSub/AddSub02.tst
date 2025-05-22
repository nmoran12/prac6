// Test 02: a=10, b=20, x=4, = (10+20)−4 = 26
load      AddSub.vm,
output-file AddSub02.out,
compare-to  AddSub02.cmp,
output-list sp%D1.6.1    local%D1.6.1    argument%D1.8.1    this%D1.6.1    that%D1.6.1
             RAM[16]%D1.6.1 RAM[17]%D1.6.1 RAM[18]%D1.6.1
             local[0]%D1.8.1 local[1]%D1.8.1 local[2]%D1.8.1
             argument[0]%D1.11.1 argument[1]%D1.11.1 argument[2]%D1.11.1;

set sp       256,
set local    300,
set argument 400,
set this     3000,
set that     3010,

// static 0,1,2
set RAM[16]  4,
set RAM[17]  8,
set RAM[18]  16,

// locals
set local[0] 10,
set local[1] 20,
set local[2] 30,

// arguments
set argument[0] 7,
set argument[1] 14,
set argument[2] 21;

repeat 6 {
  vmstep;
}
output;
