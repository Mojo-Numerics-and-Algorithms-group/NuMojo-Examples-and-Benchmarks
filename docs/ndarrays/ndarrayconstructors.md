## NDArray

<!-- WRITE ALL THE CONSTUCTORS HERE AND DEFINE THEIR SYNTAX TOO -->

An array object represents a multidimensional, homogeneous array of fixed-size items. An associated data-type object describes the format of each element in the array (its byte-order, how many bytes it occupies in memory, whether it is an integer, a floating point number, or something else, etc.)

Arrays should be constructed using array, zeros or empty (refer to the See Also section below). The parameters given here refer to a low-level method (ndarray(…)) for instantiating an array. Following are the available constructors:

## Constructor Methods: 
1) **`numojo.ndarray[dtype](data, shape)`**

### Inputs

| **Parameter** | **Description** | **Type** |
| --- | --- | --- |
| `dtype` | Datatype of the array elements | DType |
| | |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `data` | Elements of the array to be filled with | List of Ints |
| `shape` | Shape of the array | List of Ints |
| | |

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
| | |

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
| | |

| **Args** | **Description** | **Type** |
| --- | --- | --- |
| `shape` | Shape of the array | variadic integer arguments |
| `fill_value` | value to be splatted in array | Scalar[dtype]|

### Example
```python
var arr = nj.NDArray[nj.f32](3, 4, 5, 6, fill_value=0.0)
```


