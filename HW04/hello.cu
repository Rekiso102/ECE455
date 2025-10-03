#include <stdio.h>

__global__ void hello_kernel() {
    int tid = blockIdx.x * blockDim.x + threadIdx.x;
    printf("Hello from thread %d\n", tid);
}

int main() {
    // Two Blocks, 4 Threads = 8 total
    hello_kernel<<<2, 4>>>();
    cudaDeviceSynchronize();
    return 0;
}