module OpenSSL
  @[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs openssl 2> /dev/null|| printf %s '-lssl -lcrypto'`")]
  lib Lib
    RAND_F_RAND_GET_RAND_METHOD      =        101
    RAND_F_RAND_INIT_FIPS            =        102
    RAND_F_SSLEAY_RAND_BYTES         =        100
    RAND_MAX                         = 2147483647
    RAND_R_DUAL_EC_DRBG_DISABLED     =        104
    RAND_R_ERROR_INITIALISING_DRBG   =        102
    RAND_R_ERROR_INSTANTIATING_DRBG  =        103
    RAND_R_NO_FIPS_RANDOM_METHOD_SET =        101
    RAND_R_PRNG_NOT_SEEDED           =        100
    fun rand_add = RAND_add(buf : Void*, num : LibC::Int, entropy : LibC::Double)
    fun rand_bytes = RAND_bytes(buf : UInt8*, num : LibC::Int) : LibC::Int
    fun rand_cleanup = RAND_cleanup
    fun rand_egd = RAND_egd(path : LibC::Char*) : LibC::Int
    fun rand_egd_bytes = RAND_egd_bytes(path : LibC::Char*, bytes : LibC::Int) : LibC::Int
    fun rand_file_name = RAND_file_name(file : LibC::Char*, num : LibC::SizeT) : LibC::Char*
    fun rand_get_rand_method = RAND_get_rand_method : RandMethod*
    fun rand_load_file = RAND_load_file(file : LibC::Char*, max_bytes : LibC::Long) : LibC::Int
    fun rand_poll = RAND_poll : LibC::Int
    fun rand_pseudo_bytes = RAND_pseudo_bytes(buf : UInt8*, num : LibC::Int) : LibC::Int
    fun rand_query_egd_bytes = RAND_query_egd_bytes(path : LibC::Char*, buf : UInt8*, bytes : LibC::Int) : LibC::Int
    fun rand_seed = RAND_seed(buf : Void*, num : LibC::Int)
    fun rand_set_rand_engine = RAND_set_rand_engine(engine : Engine) : LibC::Int
    fun rand_set_rand_method = RAND_set_rand_method(meth : RandMethod*) : LibC::Int
    fun rand_ss_leay = RAND_SSLeay : RandMethod*
    fun rand_status = RAND_status : LibC::Int
    fun rand_write_file = RAND_write_file(file : LibC::Char*) : LibC::Int

    struct RandMethSt
      seed : (Void*, LibC::Int -> Void)
      bytes : (UInt8*, LibC::Int -> LibC::Int)
      cleanup : (-> Void)
      add : (Void*, LibC::Int, LibC::Double -> Void)
      pseudorand : (UInt8*, LibC::Int -> LibC::Int)
      status : (-> LibC::Int)
    end

    type Engine = Void*
    type RandMethod = RandMethSt
  end
end
