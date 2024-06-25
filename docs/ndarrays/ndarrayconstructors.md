## NDArray

<!-- WRITE ALL THE CONSTUCTORS HERE AND DEFINE THEIR SYNTAX TOO -->

An array object represents a multidimensional, homogeneous array of fixed-size items. It is accompanied by intrinsic information such as shape, stride, datatype etc (Check [attributes](./attributes.md) for more information) that defines the characteristics of the array and its elements.

When creating arrays, it is recommended to use functions like zeros, ones, identity etc (Look at [Array creation routines](../routines/array_creation_routines.md)). The parameters provided here pertain to a lower-level method (ndarray(…)) for array instantiation. Below are the available constructors:

## Constructor Methods: 
1) **`numojo.ndarray[dtype](data, shape)`**

### Inputs

| **Parameter** | **Description** | **Type** |
| --- | --- | --- |
| `dtype` | Datatype of the array elements | DType |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `data` | Elements of the array to be filled with | List of Ints |
| `shape` | Shape of the array | List of Ints |

### Example
```python
var arr = nj.NDArray[nj.f32](data=List[Int](1,2,3,4,5,6), shape=List[Int](2,3))
```

---
<br>

2) **`numojo.ndarray[dtype](*shape, random)`**

### Inputs

| **Parameter** | **Description** | **Type** |
| --- | --- | --- |
| `dtype` | Datatype of the array elements | DType |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `shape` | Shape of the array | variadic integer arguments |
| `random` | initialize with random values | Bool (optional) |

### Example
```python
var arr = nj.NDArray[nj.f32](3, 4, 5, 6, random=True)
```

---
<br>

3) **`numojo.ndarray[dtype](*shape, fill_value)`**

### Inputs

| **Parameter** | **Description** | **Type** |
| --- | --- | --- |
| `dtype` | Datatype of the array elements | Datatype (DType) |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `shape` | Shape of the array | variadic integer arguments |
| `fill_value` | value to be splatted in array | Scalar[dtype]|

### Example
```python
var arr = nj.NDArray[nj.f32](3, 4, 5, 6, fill_value=0.0)
```

---
<br>

4) **`numojo.ndarray[dtype](shape, random, val)`**

### Inputs

| **Parameter** | **Description** | **Type** |
| --- | --- | --- |
| `dtype` | Datatype of the array elements | Datatype (DType) |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `shape` | Shape of the array | Variadic list of integers |
| `random` | Initialize with random values | Bool (Optional) |
| `val` | value to be splatted in array | Scalar[dtype]|

### Example
```python
var arr = nj.NDArray[nj.f32](VariadicList[Int](2,3,4), val=10.0)
var arr1 = nj.NDArray[nj.f32](VariadicList[Int](2,3,4), random=True)
```

---
<br>

5) **`numojo.ndarray[dtype](shape, random)`**

### Inputs

| **Parameter** | **Description** | **Type** |
| --- | --- | --- |
| `dtype` | Datatype of the array elements | Datatype (DType) |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `shape` | Shape of the array | List of integers |
| `random` | Initialize with random values | Bool (Optional) |

### Example
```python
var arr = nj.NDArray[nj.f32](List[Int](2,3,4), random=True)
```

---
<br>

6) **`numojo.ndarray[dtype](shape, random)`**

### Inputs

| **Parameter** | **Description** | **Type** |
| --- | --- | --- |
| `dtype` | Datatype of the array elements | Datatype (DType) |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `shape` | Shape of the array | NDArrayShape |
| `random` | Initialize with random values | Bool (Optional) |

### Example
```python
var arr = nj.NDArray[nj.f32](NDArrayShape(2,3,4), random=True)
```

---
<br>

7) **`numojo.ndarray[dtype](ndim, offset, size, shape, strides, coefficients)`**

### Inputs

| **Parameter** | **Description** | **Type** |
| --- | --- | --- |
| `dtype` | Datatype of the array elements | Datatype (DType) |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `ndim` | Dimensions of the array | Int |
| `offset` | First index of the array if sliced| Int |
| `size` | Total number of elements in the array | Int |
| `shape` | Shape of the array | List[Int] |
| `strides` | steps to traverse each dimension of the array | List[Int] |
| `coefficients` | steps to traverse the array if sliced | List[Int] |

### Example
```python
var arr = nj.NDArray[nj.f32](ndim=3, offset=0, size=27, shape=List[Int](3, 3, 3), strides=List[Int](9, 3, 1), coefficients=List[Int]())
```





