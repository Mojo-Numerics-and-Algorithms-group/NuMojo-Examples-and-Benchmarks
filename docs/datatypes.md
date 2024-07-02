# Data types
[← Back to NuMojo docs](../README.md)

This section details the available data types in NuMojo and their associated functionalities. NuMojo implements all Mojo `DType` in Rust style.   

## Available data types:
1.  `i8` = DType.int8
2.  `i16` = DType.int16
3.  `i32` = DType.int32
4.  `i64` = DType.int64
5.  `u8` = DType.uint8
6.  `u16` = DType.uint16
7.  `u32` = DType.uint32
8.  `u64` = DType.uint64
9.  `f16` = DType.float16
10. `f32` = DType.float32
11. `f64` = DType.float64

These data types can be accessed from `NuMojo` in the following ways,

```python
import numojo as nj
var a: SIMD[nj.i32] = 32
```
or,
```python
from numojo import *
var a: SIMD[i32] = 32
```


1. **`numojo.cvtdtype[in_dtype: DType, out_dtype: DType, width: Int = 1](value: SIMD[in_dtype, width]) -> SIMD[out_dtype, width]:`**

Converts a SIMD vector of type `in_dtype` to SIMD vector of type `out_dtype`.

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `in_dtype`       | Datatype of the input SIMD vector | DType    |
| `out_dtype`       | Datatype of the output SIMD vector | DType    |
| `width`       | Width of the SIMD vector | Int  |

| **Args** | **Description**                                             | **Type**                   |
| -------- | ----------------------------------------------------------- | -------------------------- |
| `value` | Input SIMD vector of size `width` | SIMD[in_dtype, width] |

### Example

```python
from numojo import *
var a: SIMD[f32, 1] = 10.0 
var b: SIMD[f64, 1] = nj.cvtdtype[f32, f64](a)
```

---

<br>


2. **`numojo.cvtdtype[in_dtype: DType, out_dtype: DType width: Int = 1, value: SIMD[in_dtype, width] = SIMD[in_dtype]()]() -> SIMD[out_dtype, width]:`**

Converts a SIMD vector of type `in_dtype` to SIMD vector of type `out_dtype` with an input compile time value. 

### Inputs

| **Parameter** | **Description**                | **Type** |
| ------------- | ------------------------------ | -------- |
| `in_dtype`       | Datatype of the input SIMD vector | DType    |
| `out_dtype`       | Datatype of the output SIMD vector | DType    |
| `width`       | Width of the SIMD vector | Int  |
| `value`       | Input SIMD vector of size `width` | SIMD[in_dtype, width]|

### Example

```python
from numojo import *
alias a: SIMD[f32, 1] = 10.0 
alias b: SIMD[f64, 1] = nj.cvtdtype[f32, f64, width=1, value = a]()
```

---

<br>