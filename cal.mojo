from tensor import Tensor
import benchmark
from benchmark.compiler import keep
from testing import assert_raises
import time

import numojo as no
from numojo.core.ndarray import NDArray
import numojo.math.linalg.matmul as matmul

fn main() raises:
    get(1, 4 ,1000)

fn get(m:Int, n:Int, times:Int) raises:
    # Initialize an ND arrays
    var t0 = time.now()
    var raw = List[Int32]()
    for _i in range(m*n):
        raw.append(random.randn_float64() * 10)
    print(str("Initialize an ND arrays"))
    var Ac = NDArray(data=raw, shape=List[Int](m,n), order="C")
    # var Ac = NDArray(List[Int](4,4), random=True)
    print(Ac)
    # print(Ac[0,1])
    # print(Ac[0:1,:])
    # print(Ac[0:1,0:1])
    # print(no.stats.sum(no.stats.sum(Ac)))
    print(no.stats.sumall(Ac))
    print(no.stats.prodall(Ac))
    print(str("=") * 50)

    # # # mean
    # t0 = time.now()
    # var _arr = no.sum(Ac, axis=0)
    # # for _i in range(times):
    # #     _arr = no.sum(no.sum(Ac, axis=0), axis=1)
    # print(_arr)
    # print((time.now()-t0)/1e9/times, "s")
    # print(str("=") * 50)

    # # # mean
    # t0 = time.now()
    # _arr = no.sum(Ac)
    # # for _i in range(times):
    # #     _arr = no.sum(no.sum(Ac))
    # print(_arr)
    # print((time.now()-t0)/1e9/times, "s")
    # print(str("=") * 50)
