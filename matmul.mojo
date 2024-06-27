from tensor import Tensor
import benchmark
from benchmark.compiler import keep
from testing import assert_raises
import time

import numojo
from numojo.core.ndarray import NDArray
import numojo.math.linalg.matmul as matmul

# Run with
# mojo run -I "../NuMojo" ndarray.mojo
# fn main() raises:
    # var arr = DTypePointer[DType.int32].alloc(10)
    # memset_zero(arr, 10)
    # var p = arr.offset(1)
    # print(arr)
    # print(p)
    # var ts = Tensor[DType.int32](2, p)
    # print(ts)

# fn main() raises:
#     var arr1 = NDArray[DType.int32](List[Int32](1,2,3,4,5,6), shape=List[Int](2,3))
#     print(arr1)
#     print(arr1.row(1))
#     print(arr1.col(2))
fn main() raises:
    get(1000, 1000 ,100)
    # var arr = numojo.core.random.rand[i8](4,5)
    # print(arr)
    # var arrshape = NDArrayShape(shape=List[Int](2,3,4,5))
    # print(arrshape._size)
    # var arrstride = NDArrayStrides(shape=arrshape, ndim=4, offset=0)
    # print(arrstride._stride[0],
    # arrstride._stride[1],
    # arrstride._stride[2],
    # arrstride._stride[3],
    # arrstride._stride[4])  # Overflow

fn get(m:Int, n:Int, times:Int) raises:
    # Initialize an ND arrays
    var t0 = time.now()
    print(t0)
    var raw = List[Float64]()
    for _i in range(m*n):
        raw.append(random.randn_float64())
    print(str("Initialize an ND arrays"))
    # var Ac = NDArray[DType.int32](data=List[Int32](1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32,17,18,19,20), shape=List[Int](4,5), order="C")
    # var Af = NDArray[DType.int32](data=List[Int32](1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32,17,18,19,20), shape=List[Int](4,5), order="F")
    # var Bc = NDArray[DType.int32](data=List[Int32](1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32,17,18,19,20), shape=List[Int](5,4), order="C")
    # var Bf = NDArray[DType.int32](data=List[Int32](1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32,17,18,19,20), shape=List[Int](5,4), order="F")
    # var Ac = NDArray[DType.int32](data=raw, shape=List[Int](200,100), order="C")
    # var Af = NDArray[DType.int32](data=raw, shape=List[Int](200,100), order="F")
    # var Bc = NDArray[DType.int32](data=raw, shape=List[Int](100,200), order="C")
    # var Bf = NDArray[DType.int32](data=raw, shape=List[Int](100,200), order="F")
    var Ac = NDArray[DType.float64](data=raw, shape=List[Int](m,n), order="C")
    var Af = NDArray[DType.float64](data=raw, shape=List[Int](m,n), order="F")
    var Bc = NDArray[DType.float64](data=raw, shape=List[Int](m,n), order="C")
    var Bf = NDArray[DType.float64](data=raw, shape=List[Int](m,n), order="F")
    # print(Ac)
    # print(Bc)
    print(Ac[0,1])
    print(Ac[0:1,:])
    print(Ac[0:1,0:1])
    print(str("=") * 50)

    # # matmul naive
    # print(str("Matmul naive CxC"))
    # t0 = time.now()
    # var arr1 = NDArray[numojo.f32]()
    # for _i in range(times):
    #     arr1 = matmul.matmul_naive(Ac, Bc)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr1)
    # print(str("=") * 50)

    # # matmul
    # print(str("Matmul naive CxF"))
    # t0 = time.now()
    # var arr2 = NDArray[numojo.f32]()
    # for _i in range(times):
    #     arr2 = matmul.matmul_naive(Ac, Bf)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr2)
    # print(str("=") * 50)

    # # matmul
    # print(str("Matmul naive FxF"))
    # t0 = time.now()
    # var arr3 = NDArray[numojo.f32]()
    # for _i in range(times):
    #     arr3 = matmul.matmul_naive(Af, Bf)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr3)
    # print(str("=") * 50)

    # # matmul paralelled
    # print(str("Matmul paralelled CxC"))
    # var arr8 = NDArray[numojo.f64]()
    # t0 = time.now()
    # for _i in range(times):
    #     arr8 = matmul.matmul_parallelized(Ac, Bc)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr8)
    # print(str("=") * 50)
    
    # # matmul paralelled
    # print(str("Matmul paralelled CxF"))
    # var arr9 = NDArray[numojo.f64]()
    # t0 = time.now()
    # for _i in range(times):
    #     arr9 = matmul.matmul_parallelized(Ac, Bf)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr9)
    # print(str("=") * 50)

    # # matmul paralelled
    # print(str("Matmul paralelled FxF"))
    # var arr10 = NDArray[numojo.f64]()
    # t0 = time.now()
    # for _i in range(times):
    #     arr10 = matmul.matmul_parallelized(Af, Bf)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr10)
    # print(str("=") * 50)


    # # matmul paralelled 2
    # print(str("Matmul paralelled 2 CxC"))
    # t0 = time.now()
    # for _i in range(times):
    #     arr8 = matmul.matmul_parallelized_nelts(Ac, Bc)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr8)
    # print(str("=") * 50)
    
    # # matmul paralelled 2
    # print(str("Matmul paralelled 2 CxF"))
    # t0 = time.now()
    # for _i in range(times):
    #     arr9 = matmul.matmul_parallelized_nelts(Ac, Bf)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr9)
    # print(str("=") * 50)

    # # matmul paralelled 2
    # print(str("Matmul paralelled 2 FxF"))
    # t0 = time.now()
    # for _i in range(times):
    #     arr10 = matmul.matmul_parallelized_nelts(Af, Bf)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr10)
    # print(str("=") * 50)

    # # matmul paralelled tiled unrolling
    # print(str("Matmul paralelled tiled unrolling CxC"))
    # t0 = time.now()
    # for _i in range(times):
    #     arr8 = matmul.matmul_tiled_unrolled_parallelized(Ac, Bc)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr8)
    # print(str("=") * 50)
    
    # # matmul paralelled tiled unrolling
    # print(str("Matmul paralelled tiled unrolling CxF"))
    # t0 = time.now()
    # for _i in range(times):
    #     arr9 = matmul.matmul_tiled_unrolled_parallelized(Ac, Bf)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr9)
    # print(str("=") * 50)

    # # matmul paralelled tiled unrolling
    # print(str("Matmul paralelled tiled unrolling FxF"))
    # t0 = time.now()
    # for _i in range(times):
    #     arr10 = matmul.matmul_tiled_unrolled_parallelized(Af, Bf)
    # print((time.now()-t0)/1e9/times, "s")
    # print(arr10)
    # print(str("=") * 50)
