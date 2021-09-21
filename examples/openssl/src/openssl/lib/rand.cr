module OpenSSL
  @[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs openssl 2> /dev/null|| printf %s '-lssl -lcrypto'`")]
  lib Lib
    RAND_F_DATA_COLLECT_METHOD                 =        127
    RAND_F_DRBG_BYTES                          =        101
    RAND_F_DRBG_GET_ENTROPY                    =        105
    RAND_F_DRBG_SETUP                          =        117
    RAND_F_GET_ENTROPY                         =        106
    RAND_F_RAND_BYTES                          =        100
    RAND_F_RAND_DRBG_ENABLE_LOCKING            =        119
    RAND_F_RAND_DRBG_GENERATE                  =        107
    RAND_F_RAND_DRBG_GET_ENTROPY               =        120
    RAND_F_RAND_DRBG_GET_NONCE                 =        123
    RAND_F_RAND_DRBG_INSTANTIATE               =        108
    RAND_F_RAND_DRBG_NEW                       =        109
    RAND_F_RAND_DRBG_RESEED                    =        110
    RAND_F_RAND_DRBG_RESTART                   =        102
    RAND_F_RAND_DRBG_SET                       =        104
    RAND_F_RAND_DRBG_SET_DEFAULTS              =        121
    RAND_F_RAND_DRBG_UNINSTANTIATE             =        118
    RAND_F_RAND_LOAD_FILE                      =        111
    RAND_F_RAND_POOL_ACQUIRE_ENTROPY           =        122
    RAND_F_RAND_POOL_ADD                       =        103
    RAND_F_RAND_POOL_ADD_BEGIN                 =        113
    RAND_F_RAND_POOL_ADD_END                   =        114
    RAND_F_RAND_POOL_ATTACH                    =        124
    RAND_F_RAND_POOL_BYTES_NEEDED              =        115
    RAND_F_RAND_POOL_GROW                      =        125
    RAND_F_RAND_POOL_NEW                       =        116
    RAND_F_RAND_PSEUDO_BYTES                   =        126
    RAND_F_RAND_WRITE_FILE                     =        112
    RAND_MAX                                   = 2147483647
    RAND_R_ADDITIONAL_INPUT_TOO_LONG           =        102
    RAND_R_ALREADY_INSTANTIATED                =        103
    RAND_R_ARGUMENT_OUT_OF_RANGE               =        105
    RAND_R_CANNOT_OPEN_FILE                    =        121
    RAND_R_DRBG_ALREADY_INITIALIZED            =        129
    RAND_R_DRBG_NOT_INITIALISED                =        104
    RAND_R_ENTROPY_INPUT_TOO_LONG              =        106
    RAND_R_ENTROPY_OUT_OF_RANGE                =        124
    RAND_R_ERROR_ENTROPY_POOL_WAS_IGNORED      =        127
    RAND_R_ERROR_INITIALISING_DRBG             =        107
    RAND_R_ERROR_INSTANTIATING_DRBG            =        108
    RAND_R_ERROR_RETRIEVING_ADDITIONAL_INPUT   =        109
    RAND_R_ERROR_RETRIEVING_ENTROPY            =        110
    RAND_R_ERROR_RETRIEVING_NONCE              =        111
    RAND_R_FAILED_TO_CREATE_LOCK               =        126
    RAND_R_FUNC_NOT_IMPLEMENTED                =        101
    RAND_R_FWRITE_ERROR                        =        123
    RAND_R_GENERATE_ERROR                      =        112
    RAND_R_INTERNAL_ERROR                      =        113
    RAND_R_IN_ERROR_STATE                      =        114
    RAND_R_NOT_A_REGULAR_FILE                  =        122
    RAND_R_NOT_INSTANTIATED                    =        115
    RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED     =        128
    RAND_R_PARENT_LOCKING_NOT_ENABLED          =        130
    RAND_R_PARENT_STRENGTH_TOO_WEAK            =        131
    RAND_R_PERSONALISATION_STRING_TOO_LONG     =        116
    RAND_R_PREDICTION_RESISTANCE_NOT_SUPPORTED =        133
    RAND_R_PRNG_NOT_SEEDED                     =        100
    RAND_R_RANDOM_POOL_OVERFLOW                =        125
    RAND_R_RANDOM_POOL_UNDERFLOW               =        134
    RAND_R_REQUEST_TOO_LARGE_FOR_DRBG          =        117
    RAND_R_RESEED_ERROR                        =        118
    RAND_R_SELFTEST_FAILURE                    =        119
    RAND_R_TOO_LITTLE_NONCE_REQUESTED          =        135
    RAND_R_TOO_MUCH_NONCE_REQUESTED            =        136
    RAND_R_UNSUPPORTED_DRBG_FLAGS              =        132
    RAND_R_UNSUPPORTED_DRBG_TYPE               =        120
    fun rand_add = RAND_add(buf : Void*, num : LibC::Int, randomness : LibC::Double)
    fun rand_bytes = RAND_bytes(buf : UInt8*, num : LibC::Int) : LibC::Int
    fun rand_file_name = RAND_file_name(file : LibC::Char*, num : LibC::SizeT) : LibC::Char*
    fun rand_get_rand_method = RAND_get_rand_method : RandMethod*
    fun rand_keep_random_devices_open = RAND_keep_random_devices_open(keep : LibC::Int)
    fun rand_load_file = RAND_load_file(file : LibC::Char*, max_bytes : LibC::Long) : LibC::Int
    fun rand_open_ssl = RAND_OpenSSL : RandMethod*
    fun rand_poll = RAND_poll : LibC::Int
    fun rand_priv_bytes = RAND_priv_bytes(buf : UInt8*, num : LibC::Int) : LibC::Int
    fun rand_pseudo_bytes = RAND_pseudo_bytes(buf : UInt8*, num : LibC::Int) : LibC::Int
    fun rand_seed = RAND_seed(buf : Void*, num : LibC::Int)
    fun rand_set_rand_engine = RAND_set_rand_engine(engine : Engine) : LibC::Int
    fun rand_set_rand_method = RAND_set_rand_method(meth : RandMethod*) : LibC::Int
    fun rand_status = RAND_status : LibC::Int
    fun rand_write_file = RAND_write_file(file : LibC::Char*) : LibC::Int

    struct RandMethSt
      seed : (Void*, LibC::Int -> LibC::Int)
      bytes : (UInt8*, LibC::Int -> LibC::Int)
      cleanup : (-> Void)
      add : (Void*, LibC::Int, LibC::Double -> LibC::Int)
      pseudorand : (UInt8*, LibC::Int -> LibC::Int)
      status : (-> LibC::Int)
    end

    type Engine = Void*
    type RandMethod = RandMethSt
  end
end
