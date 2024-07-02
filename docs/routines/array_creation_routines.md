# NDArray creation routines
[← Back to NuMojo docs](../README.md)


This section details the available `NDArray` creation routines that makes it easy to create arrays.

1. **`numojo.arange[in_dtype, out_dtype: DType = DType.float64](
start: SIMD[in_dtype, 1], stop: SIMD[in_dtype, 1], step: SIMD[in_dtype, 1]) -> NDArray[out_dtype]`**

Generates an array of evenly spaced values, beginning from `start`, up to but not including `stop`, with a specified `step` interval.

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `in_dtype`       | Datatype of the input elements | DType    |
| `out_dtype`       | Datatype of the output elements | DType    |

| **Args** | **Description**                                             | **Type**                   |
| -------- | ----------------------------------------------------------- | -------------------------- |
| `start` | Starting value of the sequence | SIMD[in_dtype, 1] |
| `stop`  | Ending value of the sequence    | SIMD[in_dtype, 1] |
| `step`  | step size of the sequence (Default: 1) | SIMD[in_dtype, 1] |

### Example

```python
import numojo as nj
var arr = nj.arange[nj.i16, nj.f64](start = 0, stop = 10, step = 2)
```

---

<br>

2. **`numojo.linspace[in_dtype, out_dtype: DType = DType.float64](
start: SIMD[in_dtype, 1],
stop: SIMD[in_dtype, 1],
num: Int = 50,
endpoint: Bool = True,
parallel: Bool = False) -> NDArray[out_dtype]`**

Generates an array of `num` evenly spaced values in the interval [`start`, `stop`] including the endpoint by default (can be excluded optionally).

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `in_dtype`    | Datatype of the input elements  | DType    |
| `out_dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `start`      | Starting value of the sequence | SIMD[in_dtype, 1] |
| `stop`       | Ending value of the sequence | SIMD[in_dtype, 1] |
| `num`        | Number of elements in the sequence to generate (Default: 50) | Int |
| `endpoint`   | If True, `stop` is the last sample (Default: True)          | Bool              |
| `parallel`   | If True, computation is parallelized (Default: False)       | Bool              |

### Example

```python
var arr = nj.linspace[nj.i16, nj.f64](start = 0, stop = 10, num = 10, endpoint = False, parallel = True)
```

---

<br>

3. **`numojo.logspace[in_dtype, out_dtype: DType = DType.float64](
start: SIMD[in_dtype, 1],
stop: SIMD[in_dtype, 1],
num: Int = 50,
endpoint: Bool = True,
base: SIMD[in_dtype, 1] = 10.0,
parallel: Bool = False) -> NDArray[out_dtype]`**

Generates an array of `num` evenly log spaced values in the interval [`start`, `stop`] including the endpoint by default (can be excluded optionally).

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `in_dtype`    | Datatype of the input elements  | DType    |
| `out_dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `start`      | Starting value of the sequence | SIMD[in_dtype, 1] |
| `stop`       | Ending value of the sequence | SIMD[in_dtype, 1] |
| `num`        | Number of elements in the sequence to generate (Default: 50) | Int |
| `endpoint`   | If True, `stop` is the last sample (Default: True)          | Bool              |
| `base`       | The base value of log (Default: 10) | SIMD[in_dtype, 1] |
| `parallel`   | If True, computation is parallelized (Default: False)       | Bool              |

### Example

```python
var arr = nj.logspace[nj.i16, nj.f64](start = -3, stop = 0, num = 10, endpoint = True, base=10, parallel = False) # creates a sequence from 10^-3 to 10^0 with 10 elements including endpoint.
```

---

<br>

4. **`numojo.geomspace[in_dtype, out_dtype: DType = DType.float64](
start: SIMD[in_dtype, 1],
stop: SIMD[in_dtype, 1],
num: Int,
endpoint: Bool = True) -> NDArray[out_dtype]`**

Generates an array of `num` geometric spaced values in the interval [`start`, `stop`] including the endpoint by default (can be excluded optionally).

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `in_dtype`    | Datatype of the input elements  | DType    |
| `out_dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `start`      | Starting value of the sequence | SIMD[in_dtype, 1] |
| `stop`       | Ending value of the sequence | SIMD[in_dtype, 1] |
| `num`        | Number of elements in the sequence to generate (Default: 50) | Int |
| `endpoint`   | If True, `stop` is the last sample (Default: True)          | Bool              |
| `parallel`   | If True, computation is parallelized (Default: False)       | Bool              |

### Example

```python
var arr = nj.geomspace[nj.i16, nj.f64](start = 0, stop = 100, num = 10, endpoint = True)
```

---

<br>


5. **`numojo.empty[dtype](*shape: Int) -> NDArray[dtype]`**

Generates an empty array of given shape.

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`    | Datatype of the array elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `shape`      | Shape of the array | Variadic integer (`Int`) arguments |

### Example

```python
var arr = nj.empty[nj.i16](2, 3, 4) # creates a 2x3x4 array filled with zeros
```

### Note
Note that it currently it returns an array filled with `0` (same behaviour as `zeros`) and not a truly empty array, This behaviour will change in future.

---

<br>


6. **`numojo.zeros[dtype](*shape: Int) -> NDArray[dtype]`**

Generates an array of given shape filled with zero. 

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `shape`      | Shape of the array| Variadic integer (`Int`) arguments  |

### Example

```python
var arr = nj.zeros[nj.i32](4) # creates an int32 array of length 4 filled with 0.
```

---

<br>


7. **`numojo.eye[dtype](N: Int, M: Int) -> NDArray[dtype]`**

Generates an array of shape NxM filled with value `1` in the diagonal defined by the `min(N, M)`.

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `N`      | Row size of the 2D array |`Int`  |
| `M`      | Column size of the 2D array| `Int` |


### Example

```python
var arr = nj.eye[nj.i32](4, 6) # creates an int32 array of length 4 filled with 1 along the diagonal defined by min(N, M) = 4
```

---

<br>


8. **`numojo.identity[dtype](N: Int) -> NDArray[dtype]`**

Generates an array of shape NxN filled with value `1` in the diagonal.

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `N`      | Defines the size of NxN array |`Int`  |


### Example

```python
var arr = nj.identity[nj.i32](3) # creates an int32 array of shape 4x4 filled with 1 along the diagonal.
```

---

<br>


9. **`numojo.ones[dtype](*shape: Int) -> NDArray[dtype]`**

Generates an array of given shape filled with value `1`.

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `shape`      | Shape of the array| Variadic integer (`Int`) arguments  |


### Example

```python
var arr = nj.ones[nj.i32](3, 5, 7) # creates an int32 array of shape 3x5x7 filled with 1.
```

---

<br>


10. **`numojo.full[dtype](*shape: Int, fill_value: Scalar[dtype]) -> NDArray[dtype]`**

Generates an array of given shape filled with the given `fill_value`.

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `shape`      | Shape of the array| Variadic integer (`Int`) arguments  |
| `fill_value` | Value to be splatted over the array | Scalar[dtype] |


### Example

```python
var arr = nj.full[nj.f32](3, 5, 7, fill_value = 16.0) # creates an int32 array of shape 3x5x7 filled with 1.
```

---

<br>

11. **`numojo.full[dtype](shape: VariadicList[Int], fill_value: Scalar[dtype]) -> NDArray[dtype]`**

Generates an array of given shape filled with the given `fill_value`.

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `shape`      | Shape of the array| VariadicList[Int] |
| `fill_value` | Value to be splatted over the array | Scalar[dtype] |


### Example

```python
var arr = nj.full[nj.f32](shape=VariadicList[Int](3, 5, 7), fill_value = 16.0) # creates an int32 array of shape 3x5x7 filled with 1.
```

---

<br>


### Example

```python
var arr = nj.full[nj.f32](3, 5, 7, fill_value = 16.0) # creates an int32 array of shape 3x5x7 filled with 1.
```

---

<br>

12. **`numojo.rand[[dtype: DType](*shape: Int) -> NDArray[dtype]`**

Generates a NDArray with given shape filled with random values. 

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `dtype`   | Datatype of the output elements | DType    |

| **Args**     | **Description**                                             | **Type**          |
| ------------ | ----------------------------------------------------------- | ----------------- |
| `shape`      | Shape of the array| VariadicList[Int] |

### Example

```python
var arr = nj.rand(3, 5, 7) # creates an int32 array of shape 3x5x7 filled with random values.
```

---

<br>