from tensor import Tensor
import benchmark
from benchmark.compiler import keep
from testing import assert_raises
import time

import numojo as no
from numojo.core.ndarray import NDArray
import numojo.math.linalg.matmul as matmul

fn main() raises:
    get(5, 5 ,1000)

fn get(m:Int, n:Int, times:Int) raises:
    # Initialize an ND arrays
    var t0 = time.now()
    var raw = List[Int32]()
    for _i in range(m*n):
        raw.append(random.randn_float64() * 10)
    print(str("Initialize an ND arrays"))
    var Ac = NDArray(data=raw, shape=List[Int](m,n), order="C")
    print(Ac.data[])
    print(str("=") * 50)

    # # mean
    # t0 = time.now()
    # print(no.math.statistics.stats.prod(Ac, axis=0))
    # print((time.now()-t0)/1e9/times, "s")
    # print(str("=") * 50)
