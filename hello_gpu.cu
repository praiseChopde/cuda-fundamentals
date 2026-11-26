#include <cstdio>

__global__ void hello() {
  printf("Hello from GPU thread %d\n", threadIdx.x);
}

int main() {
  hello<<<2, 4>>>(); //launch 1 block of 4 threads on the GPU
  cudaDeviceSynchronize(); //wait for the GPU to finish
  return 0;
}
