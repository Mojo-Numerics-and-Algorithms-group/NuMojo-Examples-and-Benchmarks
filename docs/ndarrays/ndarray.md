# N-dimensional array (NDArray)

[← Back to README](../README.md)

**Welcome to the NDArray API documentation!**

An N-dimensional array (NDArray) is a fundamental data structure that allows you to store and manipulate multi-dimensional data efficiently. In this documentation, you will learn how to effectively work with N-dimensional arrays in our library.

### Example
Creating a Float32 type row major 2D array of size 2x3 with given List of elements:

```python
    >>> import numojo as nj
    >>> var arr = nj.NDArray[nj.f32](data=List[Float32](1,2,3,4,5,6), shape=List[Int](2,3)) # creates a 2x3 array filled with given data elements
    >>> arr.shape
    > Shape: [2,3]
    >>> arr.dtype
    > DType: Float32
```

The array can be indexed using numpy syntax,

```python
    >>> arr[1,2] # selects element from 1st row, 2nd column
    > 6
```

One can also slice similar to numpy (Currently it returns a new array instead of view, this behaviour will change in later versions),

```python
    >>> var sliced = arr[:,0:1] # selects all the rows from first column
    >>> sliced
    > [1.0, 4.0]
    > Shape: [1,2] DType:Float32
    >>> sliced[0] = 20.0
    >>> sliced
    > [20.0, 4.0]
    > Shape: [1,2] DType:Float32
```

## Constructing NDArrays

NuMojo offers multiple methods for creating NDArrays. You can create new arrays using the functions outlined in the Array creation routines, as well as by utilizing the [ndarray](./ndarrayconstructors.md) constructors.

## NDArray Attributes

NDArrays come with several intrinsic attributes that provide valuable information about the array structure and allow for manipulation. Here's a comprehensive list of these attributes:

| Attributes | Description| 
| -------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| [**NDArray.ndim**](./attributes.md#ndim)                 | Number of dimensions in the array.                                                                         |
| [**NDArray.ndshape**](./attributes.md#nshape)            | Shape and size of the array.                                                                               |
| [**NDArray.stride**](./attributes.md#stride)             | Stride to step through each dimension of the array when traversing.                                        |
| [**NDArray.coefficient**](./attributes.md#coefficient) | Information about strides required to create the array after slicing - only for arrays created by slicing. |
| [**NDArray.data**](./attributes.md#data)                 | DTypePointer object pointing to the start of the array data stored in heap.                                |
| [**NDArray.datatype**](./attributes.md#datatype)         | Information about the datatype of array elements.                                                          |
| [**NDArray.order**](./attributes.md#order)               | Denotes whether the array is C-style (row-major) or Fortran-style (column-major).                          |

These attributes not only provide information about the array but also allow you to modify certain properties to change the array structure.

## NDArray Methods

NDArrays come with a variety of methods for array manipulation, mathematical operations, and more. Here are some categories of methods available:

- Element-wise operations (add, subtract, multiply, divide, etc.)
- Statistical operations (mean, median, standard deviation, etc.)
- Array reshaping and resizing
- Array concatenation and splitting
- Linear algebra operations

For a complete list of available methods, please refer to the specific method documentation.

## NDArray Conversion Methods

NuMojo provides several methods to convert NDArrays to other formats or modify their contents:

| Method                      | Description                                               |
| --------------------------- | --------------------------------------------------------- |
| [**NDArray.to_numpy()**](./ndarray_utils.md#to_numpy)  | Returns a numpy array equivalent of the NDArray.          |
<!-- | [**NDArray.to_tensor()**](./ndarray_utils.md#to_tensor) | Returns the Mojo stdlib Tensor equivalent of the NDArray. | -->

These conversion methods allow for seamless integration with other libraries and provide flexibility in data manipulation.
