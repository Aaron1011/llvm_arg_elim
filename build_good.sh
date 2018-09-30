rm -f a.out
rm -f return_test.ll
rm -f return_test.bc
rm -f return_test.o
rm -f return_test_opt.bc
rm -f return_test_opt.o

~/repos/llvm-build/bin/clang -g -fsanitize-coverage=trace-pc-guard return_test.c -c -emit-llvm
~/repos/rust/build/x86_64-unknown-linux-gnu/llvm/bin/opt -O0 return_test.bc -o return_test_opt.bc -debug
~/repos/rust/build/x86_64-unknown-linux-gnu/llvm/bin/llc -filetype=obj return_test_opt.bc
~/repos/llvm-build/bin/clang return_test_opt.o cov_runtime.c 
