from numojo import *
import numojo
# import benchmark
from benchmark import benchmark
from benchmark.compiler import keep
from numojo.core._math_funcs import Vectorized, Naive, Parallelized, VectorizedParallelized
alias backend = Vectorized

import time

fn main() raises:
    var size:List[Int] = List[Int](16, 256, 512, 1024, 2048)
    var times:List[Float64] = List[Float64]()
    alias type:DType = DType.float64
    # measure_time[type](size, times)
    measure_time[DType.float32](List[Int](500), times)


fn measure_time[dtype:DType](size:List[Int], inout times:List[Float64]) raises:
    for i in range(size.__len__()):
        var arr1 = NDArray[dtype](size[i], size[i], random=True)
        var arr2 = NDArray[dtype](size[i], size[i], random=True)

        var arr3 = NDArray[dtype](size[i], size[i])
        alias M: Int = 500
        alias N: Int = 500
        alias K: Int = 500

        for _ in range(10):
            _= matmul_parallelized[dtype,M,N,K](arr3, arr1, arr2)
            # _= matmul_tiled_unrolled_parallelized[dtype](arr1, arr2)
    
        var t0 = time.now()
        for _ in range(100):
            # var arr5 = matmul_tiled_unrolled_parallelized[dtype](arr1, arr2)
            # var arr5 = mul[dtype, Vectorized](arr1, arr2)
            # var arr5 = matmul[dtype](arr1, arr2)

            var arr5 = matmul_parallelized[dtype,M,N,K](arr3, arr1, arr2)
            # var arr5 = matmul_naive[dtype](arr1, arr2)
            keep(arr5.unsafe_ptr())
        times.append(((time.now()-t0)/1e9)/100)

    for i in range(size.__len__()):
        print(times[i])