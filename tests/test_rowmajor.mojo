from tensor import Tensor
import benchmark
from benchmark.compiler import keep
from testing import assert_raises

from numojo import *

import time

fn main() raises:
    ## ND arrays
    ## CONSTRUCTORS
    # var arr1 = NDArray[flt16](3,2,random=True)
    # print()
    # print(arr1.info.ndim, arr1.info.offset, arr1.info.size)
    # print(arr1.info.shape[0],  arr1.info.shape[1], "\n",
    # arr1.info.strides[0], arr1.info.strides[1])
    # print(arr1.info.coefficients[0], arr1.info.coefficients[1])
    # print()
    # print(arr1)

    # var arr2 = NDArray[flt16](VariadicList[Int](3,3,4), random=True)
    # print()
    # print(arr2.info.ndim, arr2.info.offset, arr2.info.size)
    # print(arr2.info.shape[0],  arr2.info.shape[1], arr2.info.shape[2], "\n",
    # arr2.info.strides[0], arr2.info.strides[1])
    # print(arr2.info.coefficients[0], arr2.info.coefficients[1])
    # print()
    # print(arr2)

    # var arr3 = NDArray[flt16](VariadicList[Int](3,3,4), value=10.0)
    # print()
    # print(arr3.info.ndim, arr3.info.offset, arr3.info.size)
    # print(arr3.info.shape[0],  arr3.info.shape[1], arr3.info.shape[2], "\n",
    # arr3.info.strides[0], arr3.info.strides[1])
    # print(arr3.info.coefficients[0], arr3.info.coefficients[1])
    # print()
    # print(arr3)

    # var arr4 = NDArray[flt16](data=List[Float16](2.,3.,4.,5.,6.,7.,8.,9.), shape=List[Int](2,4))
    # print()
    # print(arr4.info.ndim, arr4.info.offset, arr4.info.size)
    # print(arr4.info.shape[0],  arr4.info.shape[1], "\n",
    # arr4.info.strides[0], arr4.info.strides[1])
    # print(arr4.info.coefficients[0], arr4.info.coefficients[1])
    # print()
    # print(arr4)  

    var arr4 = NDArray[flt16](shape=List[Int](2,4,2), random=True)
    print()
    print(arr4.info.ndim, arr4.info.offset, arr4.info.size)
    print(arr4.info.shape[0],  arr4.info.shape[1], "\n",
    arr4.info.strides[0], arr4.info.strides[1])
    print(arr4.info.coefficients[0], arr4.info.coefficients[1])
    print()
    print(arr4)  









    # # * ROW MAJOR INDEXING
    # var arr = NDArray[DType.int32](VariadicList[Int](2, 2, 2, 2), random=True)
    # print("2x2x2x2 array row major")
    # print(arr)
    # print()
    # # slicing doesn't support single integer index for now, therefore [:,:,2] 
    # # should be written as [:,:,2:3] -> both select 2x3 array out of 2x3x3 array
    # # * Following are exmaples of slicing operations that can be compared. 

    # var sliced = arr[:,:,2:3] # selects 2 x 3 x 1 array out of  2 x 3 x 3
    # print("2x3 ARRAY - arr[:,:,2:3]")
    # print(sliced)
    # print()

    # var sliced1 = arr[:, ::2, 0:1]
    # print("2x2 ARRAY - arr[:, ::2, 0:1]")
    # print(sliced1)
    # print()

    # var sliced2 = arr[:,:,::2]
    # print("2x3x2 ARRAY - arr[:,:,::2]")
    # print(sliced2)
    # print()

    # var sliced3 = arr[:, ::2, ::2]
    # print("2x2x2 ARRAY - arr[:, ::2, ::2]")
    # print(sliced3)
    # print()

    # var t0 = time.now()
    # var new = NDArray[DType.int8](List[Int8](1,2,3,4,5,6), shape=List[Int](2,3))
    # print(new)

    # var orig = NDArray[DType.float32](VariadicList[Int](100, 100), random=True)
    # var narr = NDArray[DType.float32](VariadicList[Int](100, 100), random=True)
    # # var index = List[Int](0, 0)
    # # numojo.ndarray._traverse_iterative[DType.float16](orig, narr, orig._arrayInfo.dims, orig._arrayInfo.weights, 0, index, 0)
    # var _temp = orig.mdot(narr)
    # print(_temp)
    # print((time.now()-t0)/10e9, "seconds")