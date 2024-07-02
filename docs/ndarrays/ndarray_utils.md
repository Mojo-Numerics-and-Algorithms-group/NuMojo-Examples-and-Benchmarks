# NDArray Utilities
[← Back to NDArray](./ndarray.md)

## to_numpy
**`to_numpy(array: NDArray) -> PythonObject`**

Converts a NDArray into a numpy array. 

### Inputs
| **Args** | **Description**                                             | **Type**                   |
| -------- | ----------------------------------------------------------- | -------------------------- |
| `array` | NDArray to be converted | NDArray |

### Example

```python
import numojo as nj
var arr = nj.NDArray(3, 2, random=True)
var numpy_arr = nj.to_numpy(arr)
```

---

<br>

<!-- ## to_tensor
`NDArray.to_tensor()` -->
