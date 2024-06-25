# NDArray Attributes 
[← Back to NDArray](./ndarray.md)

In this section, we provide information on the various intrinsic attributes associated with N-dimensional arrays (NDArrays) in the NuMojo library. These attributes provide essential information about the structure and properties of NDArrays, enabling efficient data manipulation and analysis. Understanding these attributes is crucial for effectively working with NDArrays, as they allow you to access and modify key aspects of the array, such as its dimensions, shape, stride, and more.

Let's dive into the details of each attribute and see how they can be utilized in your data processing tasks.
## ndim
`NDArray.ndim`

Defines the total number of dimensions in an NDArray.
### Example
```python
    >>> import numojo as nj
    >>> var arr = nj.NDArray[nj.f32](3, 4, 5, 6, random=True) # creates a 3x4x5x6 array filled with random float32 values
    >>> arr.ndim
    > 4
```


## ndshape
`NDArray.ndshape`

Defines the shape and size (total number of elements) of an NDArray. It is an instance of the NDArrayShape struct.

### Example
```python
    >>> import numojo as nj
    >>> var arr = nj.NDArray[nj.f32](3, 4, 5, 6, random=True) # creates a 3x4x5x6 array filled with random float32 values
    >>> arr.nshape
    > Shape: [3, 4, 5, 6]
    >>> arr.ndshape._size
    > 360 # total number of elements in the array
```

## stride
`NDArray.stride`

Defines the List of stride values that is need to traverse the dimensions of the array and the offset value of the array (First index to which the pointer points to). It is an instance of the NDArrayStride struct.

### Example
```python
    >>> import numojo as nj
    >>> var arr = nj.NDArray[nj.f32](3, 4, 5, 6, random=True) # creates a 3x4x5x6 array filled with random float32 values
    >>> arr.stride
    > Stride: [120, 30, 6, 1]
    >>> arr.ndshape._size
    > 360 # total number of elements in the array
    >>> arr.stride._offset
    > 0
```

## coefficients
`NDArray.coefficients`

Defines the List of stride values that is need to traverse the dimensions of a sliced array and the offset value of the array (First index to which the pointer points to). It is an instance of the NDArrayStride struct. This is for internal use to calculate sliced arrays. If the array is a parent array (i.e not created by slicing, it's value is same as stride).

### Example
```python
    >>> import numojo as nj
    >>> var arr = nj.NDArray[nj.f32](3, 4, 5, 6, random=True) # creates a 3x4x5x6 array filled with random float32 values
    >>> print(arr.coefficients, arr.stride)
    > Stride: [120, 30, 6, 1]  Stride: [120, 30, 6, 1]
    >>> var sliced = arr[:,:,0:1,:]
    >>> print(sliced.coefficients, sliced.stride)
    > Stride: [24, 6, 1]  Stride: [120, 30, 1] 
    >>> sliced.ndshape._size
    >  72 # total number of elements in the array
    >>> sliced.stride._offset
    > 0
```

## data
`NDArray.data`

It is an instance of DTypePointer[dtype] where dtype is the datatype of the array elements. DTypePointer points to the allocates memory for array in the heap. 

```python
    >>> import numojo as nj
    >>> var arr = nj.NDArray[nj.f32](data=List[Int](1,2,3,4,5,6), shape=List[Int](2,3)) # creates a 2x3 array filled with given data elements
    >>> print(arr.data[0]) # dereferences and returns the first value
    > 1.0
    >>> print(arr.data) #
    > 0x14c1cec00 # prints the address of the data it's pointing to
```

##  datatype
`NDArray.datatype`


## order
`NDArray.order`
