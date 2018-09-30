#include <stdio.h>

void __sanitizer_cov_trace_pc_guard_init(unsigned long *start, unsigned long *stop) {
    printf("Init start: %p Stop: %p\n", start, stop);
}

void __sanitizer_cov_trace_pc_guard(unsigned long *guard) {
    printf("Cov guard: %p\n", guard);
}
