// Abs03.tst
// This covers 'Unintended usage: These tests are designed to try and break your code.'
load      Abs.vm,
output-file Abs03.out,
compare-to  Abs03.cmp,
output-list sp%D1.6.1    local%D1.6.1    argument%D1.8.1    this%D1.6.1    that%D1.6.1
             RAM[16]%D1.6.1 RAM[17]%D1.6.1 RAM[18]%D1.6.1
             local[0]%D1.8.1 local[1]%D1.8.1 local[2]%D1.8.1
             argument[0]%D1.11.1 argument[1]%D1.11.1 argument[2]%D1.11.1;

set sp        13,       // nonstandard SP base
set local     111,      // nonstandard local base
set argument  222,      // nonstandard argument base
set this      3333,     // nonstandard this base
set that      4444,     // nonstandard that base

set RAM[16]  -3,
set RAM[17]  123,
set RAM[18]  987,

set local[0]  5,
set local[1] -6,
set local[2]  7,

set argument[0] -8,
set argument[1]  9,
set argument[2] -10;

repeat 13 {
  vmstep;
}
output;
