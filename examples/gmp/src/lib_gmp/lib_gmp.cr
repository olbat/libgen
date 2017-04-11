@[Link(ldflags: "-lgmp")]
lib LibGMP
  alias GmpRandstateT = X__GmpRandstateStruct[1]
  alias MpBitcntT = LibC::ULong
  alias MpExpT = LibC::Long
  alias MpLimbT = LibC::ULong
  alias MpSizeT = LibC::Long
  alias MpfSrcptr = X__MpfStruct*
  alias MpqSrcptr = X__MpqStruct*
  alias MpzPtr = X__MpzStruct*
  alias MpzSrcptr = X__MpzStruct*
  alias MpzT = X__MpzStruct[1]
  enum GmpRandalgT
    GmpRandAlgDefault = 0
    GmpRandAlgLc      = 0
  end
  fun __gmpz_2fac_ui(x0 : MpzPtr, x1 : LibC::ULong)
  fun __gmpz_abs(__gmp_w : MpzPtr, __gmp_u : MpzSrcptr)
  fun __gmpz_abs(x0 : MpzPtr, x1 : MpzSrcptr)
  fun __gmpz_add(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_add_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_addmul(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_addmul_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_and(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_array_init(x0 : MpzPtr, x1 : MpSizeT, x2 : MpSizeT)
  fun __gmpz_bin_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_bin_uiui(x0 : MpzPtr, x1 : LibC::ULong, x2 : LibC::ULong)
  fun __gmpz_cdiv_q(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_cdiv_q_2exp(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpBitcntT)
  fun __gmpz_cdiv_q_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong) : LibC::ULong
  fun __gmpz_cdiv_qr(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzSrcptr, x3 : MpzSrcptr)
  fun __gmpz_cdiv_qr_ui(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzSrcptr, x3 : LibC::ULong) : LibC::ULong
  fun __gmpz_cdiv_r(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_cdiv_r_2exp(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpBitcntT)
  fun __gmpz_cdiv_r_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong) : LibC::ULong
  fun __gmpz_cdiv_ui(x0 : MpzSrcptr, x1 : LibC::ULong) : LibC::ULong
  fun __gmpz_clear(x0 : MpzPtr)
  fun __gmpz_clears(x0 : MpzPtr, ...)
  fun __gmpz_clrbit(x0 : MpzPtr, x1 : MpBitcntT)
  fun __gmpz_cmp(x0 : MpzSrcptr, x1 : MpzSrcptr) : LibC::Int
  fun __gmpz_cmp_d(x0 : MpzSrcptr, x1 : LibC::Double) : LibC::Int
  fun __gmpz_cmp_si(x0 : MpzSrcptr, x1 : LibC::Long) : LibC::Int
  fun __gmpz_cmp_ui(x0 : MpzSrcptr, x1 : LibC::ULong) : LibC::Int
  fun __gmpz_cmpabs(x0 : MpzSrcptr, x1 : MpzSrcptr) : LibC::Int
  fun __gmpz_cmpabs_d(x0 : MpzSrcptr, x1 : LibC::Double) : LibC::Int
  fun __gmpz_cmpabs_ui(x0 : MpzSrcptr, x1 : LibC::ULong) : LibC::Int
  fun __gmpz_com(x0 : MpzPtr, x1 : MpzSrcptr)
  fun __gmpz_combit(x0 : MpzPtr, x1 : MpBitcntT)
  fun __gmpz_congruent_2exp_p(x0 : MpzSrcptr, x1 : MpzSrcptr, x2 : MpBitcntT) : LibC::Int
  fun __gmpz_congruent_p(x0 : MpzSrcptr, x1 : MpzSrcptr, x2 : MpzSrcptr) : LibC::Int
  fun __gmpz_congruent_ui_p(x0 : MpzSrcptr, x1 : LibC::ULong, x2 : LibC::ULong) : LibC::Int
  fun __gmpz_divexact(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_divexact_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_divisible_2exp_p(x0 : MpzSrcptr, x1 : MpBitcntT) : LibC::Int
  fun __gmpz_divisible_p(x0 : MpzSrcptr, x1 : MpzSrcptr) : LibC::Int
  fun __gmpz_divisible_ui_p(x0 : MpzSrcptr, x1 : LibC::ULong) : LibC::Int
  fun __gmpz_dump(x0 : MpzSrcptr)
  fun __gmpz_export(x0 : Void*, x1 : LibC::SizeT*, x2 : LibC::Int, x3 : LibC::SizeT, x4 : LibC::Int, x5 : LibC::SizeT, x6 : MpzSrcptr) : Void*
  fun __gmpz_fac_ui(x0 : MpzPtr, x1 : LibC::ULong)
  fun __gmpz_fdiv_q(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_fdiv_q_2exp(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpBitcntT)
  fun __gmpz_fdiv_q_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong) : LibC::ULong
  fun __gmpz_fdiv_qr(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzSrcptr, x3 : MpzSrcptr)
  fun __gmpz_fdiv_qr_ui(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzSrcptr, x3 : LibC::ULong) : LibC::ULong
  fun __gmpz_fdiv_r(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_fdiv_r_2exp(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpBitcntT)
  fun __gmpz_fdiv_r_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong) : LibC::ULong
  fun __gmpz_fdiv_ui(x0 : MpzSrcptr, x1 : LibC::ULong) : LibC::ULong
  fun __gmpz_fib2_ui(x0 : MpzPtr, x1 : MpzPtr, x2 : LibC::ULong)
  fun __gmpz_fib_ui(x0 : MpzPtr, x1 : LibC::ULong)
  fun __gmpz_fits_sint_p(x0 : MpzSrcptr) : LibC::Int
  fun __gmpz_fits_slong_p(x0 : MpzSrcptr) : LibC::Int
  fun __gmpz_fits_sshort_p(x0 : MpzSrcptr) : LibC::Int
  fun __gmpz_fits_uint_p(__gmp_z : MpzSrcptr) : LibC::Int
  fun __gmpz_fits_uint_p(x0 : MpzSrcptr) : LibC::Int
  fun __gmpz_fits_ulong_p(__gmp_z : MpzSrcptr) : LibC::Int
  fun __gmpz_fits_ulong_p(x0 : MpzSrcptr) : LibC::Int
  fun __gmpz_fits_ushort_p(__gmp_z : MpzSrcptr) : LibC::Int
  fun __gmpz_fits_ushort_p(x0 : MpzSrcptr) : LibC::Int
  fun __gmpz_gcd(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_gcd_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong) : LibC::ULong
  fun __gmpz_gcdext(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzPtr, x3 : MpzSrcptr, x4 : MpzSrcptr)
  fun __gmpz_get_d(x0 : MpzSrcptr) : LibC::Double
  fun __gmpz_get_d_2exp(x0 : LibC::Long*, x1 : MpzSrcptr) : LibC::Double
  fun __gmpz_get_si(x0 : MpzSrcptr) : LibC::Long
  fun __gmpz_get_str(x0 : LibC::Char*, x1 : LibC::Int, x2 : MpzSrcptr) : LibC::Char*
  fun __gmpz_get_ui(__gmp_z : MpzSrcptr) : LibC::ULong
  fun __gmpz_get_ui(x0 : MpzSrcptr) : LibC::ULong
  fun __gmpz_getlimbn(__gmp_z : MpzSrcptr, __gmp_n : MpSizeT) : MpLimbT
  fun __gmpz_getlimbn(x0 : MpzSrcptr, x1 : MpSizeT) : MpLimbT
  fun __gmpz_hamdist(x0 : MpzSrcptr, x1 : MpzSrcptr) : MpBitcntT
  fun __gmpz_import(x0 : MpzPtr, x1 : LibC::SizeT, x2 : LibC::Int, x3 : LibC::SizeT, x4 : LibC::Int, x5 : LibC::SizeT, x6 : Void*)
  fun __gmpz_init(x0 : MpzPtr)
  fun __gmpz_init2(x0 : MpzPtr, x1 : MpBitcntT)
  fun __gmpz_init_set(x0 : MpzPtr, x1 : MpzSrcptr)
  fun __gmpz_init_set_d(x0 : MpzPtr, x1 : LibC::Double)
  fun __gmpz_init_set_si(x0 : MpzPtr, x1 : LibC::Long)
  fun __gmpz_init_set_str(x0 : MpzPtr, x1 : LibC::Char*, x2 : LibC::Int) : LibC::Int
  fun __gmpz_init_set_ui(x0 : MpzPtr, x1 : LibC::ULong)
  fun __gmpz_inits(x0 : MpzPtr, ...)
  fun __gmpz_invert(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr) : LibC::Int
  fun __gmpz_ior(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_jacobi(x0 : MpzSrcptr, x1 : MpzSrcptr) : LibC::Int
  fun __gmpz_kronecker_si(x0 : MpzSrcptr, x1 : LibC::Long) : LibC::Int
  fun __gmpz_kronecker_ui(x0 : MpzSrcptr, x1 : LibC::ULong) : LibC::Int
  fun __gmpz_lcm(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_lcm_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_lucnum2_ui(x0 : MpzPtr, x1 : MpzPtr, x2 : LibC::ULong)
  fun __gmpz_lucnum_ui(x0 : MpzPtr, x1 : LibC::ULong)
  fun __gmpz_mfac_uiui(x0 : MpzPtr, x1 : LibC::ULong, x2 : LibC::ULong)
  fun __gmpz_millerrabin(x0 : MpzSrcptr, x1 : LibC::Int) : LibC::Int
  fun __gmpz_mod(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_mul(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_mul_2exp(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpBitcntT)
  fun __gmpz_mul_si(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::Long)
  fun __gmpz_mul_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_neg(__gmp_w : MpzPtr, __gmp_u : MpzSrcptr)
  fun __gmpz_neg(x0 : MpzPtr, x1 : MpzSrcptr)
  fun __gmpz_nextprime(x0 : MpzPtr, x1 : MpzSrcptr)
  fun __gmpz_perfect_power_p(x0 : MpzSrcptr) : LibC::Int
  fun __gmpz_perfect_square_p(__gmp_a : MpzSrcptr) : LibC::Int
  fun __gmpz_perfect_square_p(x0 : MpzSrcptr) : LibC::Int
  fun __gmpz_popcount(__gmp_u : MpzSrcptr) : MpBitcntT
  fun __gmpz_popcount(x0 : MpzSrcptr) : MpBitcntT
  fun __gmpz_pow_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_powm(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr, x3 : MpzSrcptr)
  fun __gmpz_powm_sec(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr, x3 : MpzSrcptr)
  fun __gmpz_powm_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong, x3 : MpzSrcptr)
  fun __gmpz_primorial_ui(x0 : MpzPtr, x1 : LibC::ULong)
  fun __gmpz_probab_prime_p(x0 : MpzSrcptr, x1 : LibC::Int) : LibC::Int
  fun __gmpz_random(x0 : MpzPtr, x1 : MpSizeT)
  fun __gmpz_random2(x0 : MpzPtr, x1 : MpSizeT)
  fun __gmpz_realloc(x0 : MpzPtr, x1 : MpSizeT) : Void*
  fun __gmpz_realloc2(x0 : MpzPtr, x1 : MpBitcntT)
  fun __gmpz_remove(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr) : MpBitcntT
  fun __gmpz_root(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong) : LibC::Int
  fun __gmpz_rootrem(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzSrcptr, x3 : LibC::ULong)
  fun __gmpz_rrandomb(x0 : MpzPtr, x1 : GmpRandstateT, x2 : MpBitcntT)
  fun __gmpz_scan0(x0 : MpzSrcptr, x1 : MpBitcntT) : MpBitcntT
  fun __gmpz_scan1(x0 : MpzSrcptr, x1 : MpBitcntT) : MpBitcntT
  fun __gmpz_set(x0 : MpzPtr, x1 : MpzSrcptr)
  fun __gmpz_set_d(x0 : MpzPtr, x1 : LibC::Double)
  fun __gmpz_set_f(x0 : MpzPtr, x1 : MpfSrcptr)
  fun __gmpz_set_q(__gmp_w : MpzPtr, __gmp_u : MpqSrcptr)
  fun __gmpz_set_q(x0 : MpzPtr, x1 : MpqSrcptr)
  fun __gmpz_set_si(x0 : MpzPtr, x1 : LibC::Long)
  fun __gmpz_set_str(x0 : MpzPtr, x1 : LibC::Char*, x2 : LibC::Int) : LibC::Int
  fun __gmpz_set_ui(x0 : MpzPtr, x1 : LibC::ULong)
  fun __gmpz_setbit(x0 : MpzPtr, x1 : MpBitcntT)
  fun __gmpz_si_kronecker(x0 : LibC::Long, x1 : MpzSrcptr) : LibC::Int
  fun __gmpz_size(__gmp_z : MpzSrcptr) : LibC::SizeT
  fun __gmpz_size(x0 : MpzSrcptr) : LibC::SizeT
  fun __gmpz_sizeinbase(x0 : MpzSrcptr, x1 : LibC::Int) : LibC::SizeT
  fun __gmpz_sqrt(x0 : MpzPtr, x1 : MpzSrcptr)
  fun __gmpz_sqrtrem(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzSrcptr)
  fun __gmpz_sub(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_sub_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_submul(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_submul_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong)
  fun __gmpz_swap(x0 : MpzPtr, x1 : MpzPtr)
  fun __gmpz_tdiv_q(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_tdiv_q_2exp(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpBitcntT)
  fun __gmpz_tdiv_q_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong) : LibC::ULong
  fun __gmpz_tdiv_qr(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzSrcptr, x3 : MpzSrcptr)
  fun __gmpz_tdiv_qr_ui(x0 : MpzPtr, x1 : MpzPtr, x2 : MpzSrcptr, x3 : LibC::ULong) : LibC::ULong
  fun __gmpz_tdiv_r(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)
  fun __gmpz_tdiv_r_2exp(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpBitcntT)
  fun __gmpz_tdiv_r_ui(x0 : MpzPtr, x1 : MpzSrcptr, x2 : LibC::ULong) : LibC::ULong
  fun __gmpz_tdiv_ui(x0 : MpzSrcptr, x1 : LibC::ULong) : LibC::ULong
  fun __gmpz_tstbit(x0 : MpzSrcptr, x1 : MpBitcntT) : LibC::Int
  fun __gmpz_ui_kronecker(x0 : LibC::ULong, x1 : MpzSrcptr) : LibC::Int
  fun __gmpz_ui_pow_ui(x0 : MpzPtr, x1 : LibC::ULong, x2 : LibC::ULong)
  fun __gmpz_ui_sub(x0 : MpzPtr, x1 : LibC::ULong, x2 : MpzSrcptr)
  fun __gmpz_urandomb(x0 : MpzPtr, x1 : GmpRandstateT, x2 : MpBitcntT)
  fun __gmpz_urandomm(x0 : MpzPtr, x1 : GmpRandstateT, x2 : MpzSrcptr)
  fun __gmpz_xor(x0 : MpzPtr, x1 : MpzSrcptr, x2 : MpzSrcptr)

  struct X__GmpRandstateStruct
    _mp_seed : MpzT
    _mp_alg : GmpRandalgT
    _mp_algdata : X__GmpRandstateStructMpAlgdata
  end

  struct X__MpfStruct
    _mp_prec : LibC::Int
    _mp_size : LibC::Int
    _mp_exp : MpExpT
    _mp_d : MpLimbT*
  end

  struct X__MpqStruct
    _mp_num : X__MpzStruct
    _mp_den : X__MpzStruct
  end

  struct X__MpzStruct
    _mp_alloc : LibC::Int
    _mp_size : LibC::Int
    _mp_d : MpLimbT*
  end

  union X__GmpRandstateStructMpAlgdata
    _mp_lc : Void*
  end
end
