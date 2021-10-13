# BLAS functions for benchmarking on the AJIT processor

This repo contains level-1 BLAS (basic linear algebra sub-programs) functions to be benchmarked on the AJIT processor FPGA model.
Each of the functions would print the number of clock cycles used for execution in both vectorized and non-vectorized implementation. These values will be used to show the improvement in performance due to AJIT vector instructions. 

Each program (except isamax) would execute both vector and non-vector implementations for the following data-types:
+ *u8 - 8 bit unsigned int*
+ *u16 - 16 bit unsigned int*
+ *u32 - 32 bit unsigned int*
+ *s - single precision foating point*
