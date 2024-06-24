# from tensor import Tensor, TensorShape
from numojo import *
import time
# from numojo.core._math_funcs import *
import benchmark
from benchmark.compiler import keep
from numojo.linalg.matmul import *
# alias backend = Vectorized

fn measure_time(rows_a:Int, cols_a:Int, cols_b:Int) raises -> None:
    var a = NDArray[f16](VariadicList[Int](rows_a, cols_a), random=True)
#     # var b = NDArray[flt32](VariadicList[Int](cols_a, cols_b), random=True)
    var b = NDArray[f16](VariadicList[Int](rows_a, cols_a), random=True)

    for _ in range(10):
        # _ = matmul_tiled_unrolled_parallelized[f64](a,b)
        _ = matmul[f16](a,b)
        
    # var r = NDArray[DType.float32](VariadicList[Int](rows_a, cols_b), 0.0)
    # var r:NDArray[flt32] = NDArray[flt32](rows_a, cols_b)
    var t0 = time.now()
    for _ in range(10):
        # var c = matmul_tiled_unrolled_parallelized[f64](a,b)
        var c = matmul_parallelized[f16](a,b)
        # var c = add[f16](a,b)
        # print(c[0], c[200], c[499])
        keep(c.unsafe_ptr())
    var tf = time.now()
    print((tf-t0)/1e9/10, "seconds")

    # var t0 = time.now()
    # matmul_naive[flt32](r,a,b)
    # for _ in range(100):
    #     _ = mul[flt32, Vectorized](a, b)
    # var tf = time.now()
    # print((tf-t0)/100/1e9, "seconds")
    # print(r.shape())

fn main() raises:
    measure_time(500,500,500)

