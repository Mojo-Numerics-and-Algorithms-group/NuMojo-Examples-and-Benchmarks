## NDArray

<!-- WRITE ALL THE CONSTUCTORS HERE AND DEFINE THEIR SYNTAX TOO -->

An array object represents a multidimensional, homogeneous array of fixed-size items. It is accompanied by intrinsic information such as shape, stride, datatype etc (Check [attributes](./attributes.md) for more information) that defines the characteristics of the array and its elements.

When creating arrays, it is recommended to use functions like zeros, ones, identity etc (Look at [Array creation routines](../routines/array_creation_routines.md)). The parameters provided here pertain to a lower-level method (ndarray(…)) for array instantiation. Below are the available constructors:

## Constructor Methods:

1. **`numojo.ndarray[dtype](*shape, random, order)`**

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`       | Datatype of the array elements | DType    |

| **Args** | **Description**                                             | **Type**                   |
| -------- | ----------------------------------------------------------- | -------------------------- |
| `shape`  | Shape of the array                                          | variadic integer arguments |
| `random` | Initialize with random values (default: False)              | Bool (optional)            |
| `order`  | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional)          |

### Example

```python
var arr = nj.NDArray[nj.f32](3, 4, 5, 6, random = True, order = "C")
```
---
<br>

2. **`numojo.ndarray[dtype](shape, random, order)`**

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`       | Datatype of the array elements | DType    |

| **Args** | **Description**                                             | **Type**          |
| -------- | ----------------------------------------------------------- | ----------------- |
| `shape`  | Shape of the array                                          | List of integers  |
| `random` | Initialize with random values (default: False)              | Bool (optional)   |
| `order`  | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional) |

### Example

```python
var arr = nj.NDArray[nj.f32](shape=List[Int](2, 3, 4), random = True, order = "C")
```
---
<br>

3. **`numojo.ndarray[dtype](shape, random, order)`**

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`       | Datatype of the array elements | DType    |

| **Args** | **Description**                                             | **Type**                  |
| -------- | ----------------------------------------------------------- | ------------------------- |
| `shape`  | Shape of the array                                          | Variadic List of integers |
| `random` | Initialize with random values (default: False)              | Bool (optional)           |
| `order`  | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional)         |

### Example

```python
var arr = nj.NDArray[nj.f32](shape=VariadicList[Int](2, 3, 4), random = True, order = "C")
```
---
<br>

4. **`numojo.ndarray[dtype](shape, fill, order)`**

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`       | Datatype of the array elements | DType    |

| **Args** | **Description**                                             | **Type**          |
| -------- | ----------------------------------------------------------- | ----------------- |
| `shape`  | Shape of the array                                          | Variadic integer arguments     |
| `fill`   | Value to be splatted across the array                       | Scalar[dtype]     |
| `order`  | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional) |

### Example

```python
var arr = nj.NDArray[nj.f32](3, 3, 4, fill=10.0, order="C")
```
---
<br>

5. **`numojo.ndarray[dtype](shape, fill, order)`**

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`       | Datatype of the array elements | DType    |

| **Args** | **Description**                                             | **Type**          |
| -------- | ----------------------------------------------------------- | ----------------- |
| `shape`  | Shape of the array                                          | List of Ints      |
| `fill`   | Value to be splatted across the array                       | Scalar[dtype]     |
| `order`  | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional) |

### Example

```python
var arr = nj.NDArray[nj.f32](shape=List[Int](3, 3, 4), fill=16.0, order="C")
```
---
<br>

6. **`numojo.ndarray[dtype](shape, fill, order)`**

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`       | Datatype of the array elements | DType    |

| **Args** | **Description**                                             | **Type**          |
| -------- | ----------------------------------------------------------- | ----------------- |
| `shape`  | Shape of the array                                          | Variadic list of Ints      |
| `fill`   | Value to be splatted across the array                       | Scalar[dtype]     |
| `order`  | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional) |

### Example

```python
var arr = nj.NDArray[nj.f32](shape=VariadicList[Int](3, 3, 4), fill=3.0, order="C")
```
---
<br>

7. **`numojo.ndarray[dtype](shape, random, order)`**

### Inputs

| **Parameter** | **Description**                | **Type**         |
| ------------- | ------------------------------ | ---------------- |
| `dtype`       | Datatype of the array elements | Datatype (DType) |

| **Args**     | **Description**               | **Type**                   |
| ------------ | ----------------------------- | -------------------------- |
| `shape`      | Shape of the array            | NDArrayShape |
| `random` | Initialize with random values (default: False)  | Bool (optional)              |
| `order`      | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional) |

### Example

```python
var shape = NDArrayShape(2, 3, 5)
var arr = nj.NDArray[nj.f16](shape, random=True, order="F")
```
---
<br>

8. **`numojo.ndarray[dtype](shape, fill, order)`**

### Inputs

| **Parameter** | **Description**                | **Type**         |
| ------------- | ------------------------------ | ---------------- |
| `dtype`       | Datatype of the array elements | Datatype (DType) |

| **Args**     | **Description** | **Type**                   |
| ------------ | ----------------------------- | -------------------------- |
| `shape`      | Shape of the array            | NDArrayShape |
| `fill` | Value to be splatted across the array| Scalar[dtype] |
| `order`      | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional) |

### Example

```python
var shape = NDArrayShape(2, 3, 5)
var arr = nj.NDArray[nj.f16](shape, random=True, order="F")
```
---
<br>

9. **`numojo.ndarray[dtype](data, shape, order)`**

### Inputs

| **Parameter** | **Description**                | **Type**         |
| ------------- | ------------------------------ | ---------------- |
| `dtype`       | Datatype of the array elements | Datatype (DType) |

| **Args** | **Description**               | **Type**                  |
| -------- | ----------------------------- | ------------------------- |
| `data`  | List of elements to be filled in the array            | List[SIMD[dtype, 1]] |
| `shape` | Shape of the array   | List[Int]          |
| `order`    | Defines Row `C` or Columns major `F` ndarray (default: "C") | String (optional)             |

### Example

```python
var arr = nj.NDArray[nj.i32](data = List[SIMD[nj.i32, 1]](1, 2, 3, 4, 5, 6), shape = List[Int](2, 3), order = "F")
```
---
<br>

10. **`numojo.ndarray[dtype](ndim, offset, size, shape, strides, coefficients)`**

### Inputs

| **Parameter** | **Description**                | **Type**         |
| ------------- | ------------------------------ | ---------------- |
| `dtype`       | Datatype of the array elements | Datatype (DType) |

| **Args**       | **Description**                               | **Type**  |
| -------------- | --------------------------------------------- | --------- |
| `ndim`         | Dimensions of the array                       | Int       |
| `offset`       | First index of the array if sliced            | Int       |
| `size`         | Total number of elements in the array         | Int       |
| `shape`        | Shape of the array                            | List[Int] |
| `strides`      | steps to traverse each dimension of the array | List[Int] |
| `coefficients` | steps to traverse the array if sliced         | List[Int] |

### Example

```python
var arr = nj.NDArray[nj.f32](ndim=3, offset=0, size=27, shape=List[Int](3, 3, 3), strides=List[Int](9, 3, 1), coefficients=List[Int]())
```
