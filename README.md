Steps to reproduce issue https://github.com/rust-lang/rust/issues/53945 :

1. Edit	build_good.sh and build_bad.sh with the paths to your `clang`, `opt`, and `llc` executeables.
Note that these should be built from the same version of LLVM that Rust uses.
2. Run `./build_good.sh`, and try running the produced `a,out` executeable
2. Run `./build_bad.sh`, and note that linking fails with the `__sancov_guards` error message.
