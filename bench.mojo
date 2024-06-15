from numojo import *
import numojo
import benchmark
from benchmark.compiler import keep
from numojo._math_funcs import Vectorized, Naive, Parallelized, VectorizedParallelized
alias backend = Vectorized
fn main():
    var tens1:Tensor[DType.float32] = Tensor[DType.float32](100,100)
    var tens2:Tensor[DType.float32] = Tensor[DType.float32](100,100)
    var tens3:Tensor[DType.float32] = Tensor[DType.float32](100,100)
    for i in range(10_000):
        tens1[i]= SIMD[DType.float32,1](3.141592/4)
        tens2[i]= SIMD[DType.float32,1](3.141592)
        tens3[i] = SIMD[DType.float32,1](3.141592/2)
    # var res:Tensor[DType.float32]
    fn test_fma()capturing:
        try:
            var res = fma[DType.float32,backend=backend](tens1, tens2, tens3)
            keep(res.unsafe_ptr())
        except:
            print('fma: Failed shape error')
    var report_fma = benchmark.run[test_fma]()
    print('fma f32 100x100')
    report_fma.print()
    fn test_mod()capturing:
        try:
            var res = mod[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('mod: Failed shape error')
    var report_mod = benchmark.run[test_mod]()
    print('mod f32 100x100')
    report_mod.print()
    fn test_mul()capturing:
        try:
            var res = mul[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('mul: Failed shape error')
    var report_mul = benchmark.run[test_mul]()
    print('mul f32 100x100')
    report_mul.print()
    fn test_sub()capturing:
        try:
            var res = sub[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('sub: Failed shape error')
    var report_sub = benchmark.run[test_sub]()
    print('sub f32 100x100')
    report_sub.print()
    fn test_add()capturing:
        try:
            var res = add[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('add: Failed shape error')
    var report_add = benchmark.run[test_add]()
    print('add f32 100x100')
    report_add.print()
    fn test_div()capturing:
        try:
            var res = div[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('div: Failed shape error')
    var report_div = benchmark.run[test_div]()
    print('div f32 100x100')
    report_div.print()
    fn test_copysign()capturing:
        try:
            var res = copysign[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('copysign: Failed shape error')
    var report_copysign = benchmark.run[test_copysign]()
    print('copysign f32 100x100')
    report_copysign.print()
    fn test_atan2()capturing:
        try:
            var res = atan2[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('atan2: Failed shape error')
    var report_atan2 = benchmark.run[test_atan2]()
    print('atan2 f32 100x100')
    report_atan2.print()
    fn test_hypot()capturing:
        try:
            var res = hypot[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('hypot: Failed shape error')
    var report_hypot = benchmark.run[test_hypot]()
    print('hypot f32 100x100')
    report_hypot.print()
    fn test_hypot_fma()capturing:
        try:
            var res = hypot_fma[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('hypot: Failed shape error')
    var report_hypot_fma = benchmark.run[test_hypot_fma]()
    print('hypot_fma f32 100x100')
    report_hypot_fma.print()
    fn test_nextafter()capturing:
        try:
            var res = nextafter[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('nextafter: Failed shape error')
    var report_nextafter = benchmark.run[test_nextafter]()
    print('nextafter f32 100x100')
    report_nextafter.print()
    fn test_scalb()capturing:
        try:
            var res = scalb[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('scalb: Failed shape error')
    var report_scalb = benchmark.run[test_scalb]()
    print('scalb f32 100x100')
    report_scalb.print()
    fn test_remainder()capturing:
        try:
            var res = remainder[DType.float32,backend=backend](tens1, tens2)
            keep(res.unsafe_ptr())
        except:
            print('remainder: Failed shape error')
    var report_remainder = benchmark.run[test_remainder]()
    print('remainder f32 100x100')
    report_remainder.print()
    var tens:Tensor[DType.float32] = Tensor[DType.float32](100,100)
    for i in range(10_000):
        tens[i]= SIMD[DType.float32,1](3.141592/4)
    fn test_abs()capturing:
        var res = tabs[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_abs = benchmark.run[test_abs]()
    print('abs f32 100x100')
    report_abs.print()
    fn test_floor()capturing:
        var res = tfloor[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_floor = benchmark.run[test_floor]()
    print('floor f32 100x100')
    report_floor.print()
    fn test_ceil()capturing:
        var res = tceil[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_ceil = benchmark.run[test_ceil]()
    print('ceil f32 100x100')
    report_ceil.print()
    fn test_trunc()capturing:
        var res = ttrunc[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_trunc = benchmark.run[test_trunc]()
    print('trunc f32 100x100')
    report_trunc.print()
    fn test_round()capturing:
        var res = tround[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_round = benchmark.run[test_round]()
    print('round f32 100x100')
    report_round.print()
    fn test_roundeven()capturing:
        var res = roundeven[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_roundeven = benchmark.run[test_roundeven]()
    print('roundeven f32 100x100')
    report_roundeven.print()
    # fn test_round_half_down()capturing:
    #     var res = round_half_down[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_round_half_down = benchmark.run[test_round_half_down]()
    # print('round_half_down f32 100x100')
    # report_round_half_down.print()
    # fn test_round_half_up()capturing:
    #     var res = round_half_up[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_round_half_up = benchmark.run[test_round_half_up]()
    # print('round_half_up f32 100x100')
    # report_round_half_up.print()
    fn test_rsqrt()capturing:
        var res = rsqrt[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_rsqrt = benchmark.run[test_rsqrt]()
    print('rsqrt f32 100x100')
    report_rsqrt.print()
    fn test_sqrt()capturing:
        var res = sqrt[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_sqrt = benchmark.run[test_sqrt]()
    print('sqrt f32 100x100')
    report_sqrt.print()
    fn test_exp2()capturing:
        var res = exp2[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_exp2 = benchmark.run[test_exp2]()
    print('exp2 f32 100x100')
    report_exp2.print()
    fn test_exp()capturing:
        var res = exp[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_exp = benchmark.run[test_exp]()
    print('exp f32 100x100')
    report_exp.print()
    fn test_log()capturing:
        var res = log[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_log = benchmark.run[test_log]()
    print('log f32 100x100')
    report_log.print()
    fn test_log2()capturing:
        var res = log2[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_log2 = benchmark.run[test_log2]()
    print('log2 f32 100x100')
    report_log2.print()
    # fn test_erf()capturing:
    #     var res = erf[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_erf = benchmark.run[test_erf]()
    # print('erf f32 100x100')
    # report_erf.print()
    fn test_tanh()capturing:
        var res = tanh[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_tanh = benchmark.run[test_tanh]()
    print('tanh f32 100x100')
    report_tanh.print()
    # fn test_reciprocal()capturing:
    #     var res = reciprocal[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_reciprocal = benchmark.run[test_reciprocal]()
    # print('reciprocal f32 100x100')
    # report_reciprocal.print()
    # fn test_identity()capturing:
    #     var res = identity[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_identity = benchmark.run[test_identity]()
    # print('identity f32 100x100')
    # report_identity.print()
    fn test_acos()capturing:
        var res = acos[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_acos = benchmark.run[test_acos]()
    print('acos f32 100x100')
    report_acos.print()
    fn test_asin()capturing:
        var res = asin[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_asin = benchmark.run[test_asin]()
    print('asin f32 100x100')
    report_asin.print()
    fn test_atan()capturing:
        var res = atan[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_atan = benchmark.run[test_atan]()
    print('atan f32 100x100')
    report_atan.print()
    fn test_cos()capturing:
        var res = cos[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_cos = benchmark.run[test_cos]()
    print('cos f32 100x100')
    report_cos.print()
    fn test_sin()capturing:
        var res = sin[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_sin = benchmark.run[test_sin]()
    print('sin f32 100x100')
    report_sin.print()
    fn test_tan()capturing:
        var res = tan[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_tan = benchmark.run[test_tan]()
    print('tan f32 100x100')
    report_tan.print()
    fn test_acosh()capturing:
        var res = acosh[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_acosh = benchmark.run[test_acosh]()
    print('acosh f32 100x100')
    report_acosh.print()
    fn test_asinh()capturing:
        var res = asinh[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_asinh = benchmark.run[test_asinh]()
    print('asinh f32 100x100')
    report_asinh.print()
    fn test_atanh()capturing:
        var res = atanh[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_atanh = benchmark.run[test_atanh]()
    print('atanh f32 100x100')
    report_atanh.print()
    fn test_cosh()capturing:
        var res = cosh[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_cosh = benchmark.run[test_cosh]()
    print('cosh f32 100x100')
    report_cosh.print()
    fn test_sinh()capturing:
        var res = sinh[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_sinh = benchmark.run[test_sinh]()
    print('sinh f32 100x100')
    report_sinh.print()
    fn test_expm1()capturing:
        var res = expm1[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_expm1 = benchmark.run[test_expm1]()
    print('expm1 f32 100x100')
    report_expm1.print()
    fn test_log10()capturing:
        var res = log10[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_log10 = benchmark.run[test_log10]()
    print('log10 f32 100x100')
    report_log10.print()
    fn test_log1p()capturing:
        var res = log1p[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_log1p = benchmark.run[test_log1p]()
    print('log1p f32 100x100')
    report_log1p.print()
    fn test_cbrt()capturing:
        var res = cbrt[DType.float32,backend=backend](tens)
        keep(res.unsafe_ptr())
    var report_cbrt = benchmark.run[test_cbrt]()
    print('cbrt f32 100x100')
    report_cbrt.print()
    # fn test_erfc()capturing:
    #     var res = erfc[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_erfc = benchmark.run[test_erfc]()
    # print('erfc f32 100x100')
    # report_erfc.print()
    # fn test_lgamma()capturing:
    #     var res = lgamma[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_lgamma = benchmark.run[test_lgamma]()
    # print('lgamma f32 100x100')
    # report_lgamma.print()
    # fn test_tgamma()capturing:
    #     var res = tgamma[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_tgamma = benchmark.run[test_tgamma]()
    # print('tgamma f32 100x100')
    # report_tgamma.print()
    # fn test_nearbyint()capturing:
    #     var res = nearbyint[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_nearbyint = benchmark.run[test_nearbyint]()
    # print('nearbyint f32 100x100')
    # report_nearbyint.print()
    # fn test_rint()capturing:
    #     var res = rint[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_rint = benchmark.run[test_rint]()
    # print('rint f32 100x100')
    # report_rint.print()
    # fn test_j0()capturing:
    #     var res = j0[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_j0 = benchmark.run[test_j0]()
    # print('j0 f32 100x100')
    # report_j0.print()
    # fn test_j1()capturing:
    #     var res = j1[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_j1 = benchmark.run[test_j1]()
    # print('j1 f32 100x100')
    # report_j1.print()
    # fn test_y0()capturing:
    #     var res = y0[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_y0 = benchmark.run[test_y0]()
    # print('y0 f32 100x100')
    # report_y0.print()
    # fn test_y1()capturing:
    #     var res = y1[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_y1 = benchmark.run[test_y1]()
    # print('y1 f32 100x100')
    # report_y1.print()
    # fn test_ulp()capturing:
    #     var res = ulp[DType.float32,backend=backend](tens)
    #     keep(res.unsafe_ptr())
    # var report_ulp = benchmark.run[test_ulp]()
    # print('ulp f32 100x100')
    # report_ulp.print()

