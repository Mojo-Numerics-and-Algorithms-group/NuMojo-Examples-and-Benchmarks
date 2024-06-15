from tensor import Tensor
import benchmark
from benchmark.compiler import keep
from testing import assert_raises
import time

import numojo as nm
from numojo.ndarray import NDArray

# Run with
# mojo run -I "../NuMojo" ndarray.mojo

fn main() raises:
    # Initialize an ND arrays
    var t0 = time.now()
    print(str("Initialize an ND arrays"))
    var arr1 = NDArray[DType.int8](List[Int8](1,2,3,4,5,6), shape=List[Int](2,3))
    print(arr1)
    print((time.now()-t0)/10e3, "μs")
    print(str("=") * 50)

    # Matrix dot
    t0 = time.now()
    print(str("Matrix dot"))
    var arr2 = NDArray[DType.int8](List[Int8](6,5,4,3,2,1), shape=List[Int](3,2))
    var arr3 = arr1.mdot(arr2)
    print(arr3)
    print((time.now()-t0)/10e3, "μs")
    print(str("=") * 50)

    # Slicing
    t0 = time.now()
    print(str("Slicing"))
    var arr = NDArray[DType.int8](VariadicList[Int](2, 3, 4, 5), random=True)
    print("2x3x4x5 row-major array")
    print(arr)
    print(str("-") * 50)
    # # slicing doesn't support single integer index for now, therefore [:,:,2] 
    # # should be written as [:,:,2:3] -> both select 2x3 array out of 2x3x3 array
    # # * Following are exmaples of slicing operations that can be compared. 

    var sliced = arr[:,:,2:3,2:3] # selects 2 x 3 x 1 array out of  2 x 3 x 3
    print("2x3 ARRAY - arr[:,:,2:3,2:3]")
    print(sliced)
    print(str("-") * 50)

    var sliced1 = arr[:, ::2, 0:1, 1:3]
    print("2x2x2 ARRAY - arr[:, ::2, 0:1, 1:3]")
    print(sliced1)
    print(str("-") * 50)

    var sliced2 = arr[:,:,:,::2]
    print("2x3x4x3 ARRAY - arr[:,:,:,::2]")
    print(sliced2)
    print(str("-") * 50)

    var sliced3 = arr[:, :, ::2, ::2]
    print("2x3x2x3 ARRAY - arr[:, :, ::2, ::2]")
    print(sliced3)
    print(str("=") * 50)