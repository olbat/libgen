@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs openssl 2> /dev/null|| printf %s '-lssl -lcrypto'`")]
lib LibOpenSSL
  SHA224_DIGEST_LENGTH = 28
  SHA256_DIGEST_LENGTH = 32
  SHA384_DIGEST_LENGTH = 48
  SHA512_DIGEST_LENGTH = 64
  SHA_DIGEST_LENGTH    = 20
  SHA_LBLOCK           = 16
  fun sha1 = SHA1(d : UInt8*, n : LibC::SizeT, md : UInt8*) : UInt8*
  fun sha1_final = SHA1_Final(md : UInt8*, c : ShaCtx*) : LibC::Int
  fun sha1_init = SHA1_Init(c : ShaCtx*) : LibC::Int
  fun sha1_transform = SHA1_Transform(c : ShaCtx*, data : UInt8*)
  fun sha1_update = SHA1_Update(c : ShaCtx*, data : Void*, len : LibC::SizeT) : LibC::Int
  fun sha224 = SHA224(d : UInt8*, n : LibC::SizeT, md : UInt8*) : UInt8*
  fun sha224_final = SHA224_Final(md : UInt8*, c : ShA256Ctx*) : LibC::Int
  fun sha224_init = SHA224_Init(c : ShA256Ctx*) : LibC::Int
  fun sha224_update = SHA224_Update(c : ShA256Ctx*, data : Void*, len : LibC::SizeT) : LibC::Int
  fun sha256 = SHA256(d : UInt8*, n : LibC::SizeT, md : UInt8*) : UInt8*
  fun sha256_final = SHA256_Final(md : UInt8*, c : ShA256Ctx*) : LibC::Int
  fun sha256_init = SHA256_Init(c : ShA256Ctx*) : LibC::Int
  fun sha256_transform = SHA256_Transform(c : ShA256Ctx*, data : UInt8*)
  fun sha256_update = SHA256_Update(c : ShA256Ctx*, data : Void*, len : LibC::SizeT) : LibC::Int
  fun sha384 = SHA384(d : UInt8*, n : LibC::SizeT, md : UInt8*) : UInt8*
  fun sha384_final = SHA384_Final(md : UInt8*, c : ShA512Ctx*) : LibC::Int
  fun sha384_init = SHA384_Init(c : ShA512Ctx*) : LibC::Int
  fun sha384_update = SHA384_Update(c : ShA512Ctx*, data : Void*, len : LibC::SizeT) : LibC::Int
  fun sha512 = SHA512(d : UInt8*, n : LibC::SizeT, md : UInt8*) : UInt8*
  fun sha512_final = SHA512_Final(md : UInt8*, c : ShA512Ctx*) : LibC::Int
  fun sha512_init = SHA512_Init(c : ShA512Ctx*) : LibC::Int
  fun sha512_transform = SHA512_Transform(c : ShA512Ctx*, data : UInt8*)
  fun sha512_update = SHA512_Update(c : ShA512Ctx*, data : Void*, len : LibC::SizeT) : LibC::Int
  fun sha = SHA(d : UInt8*, n : LibC::SizeT, md : UInt8*) : UInt8*
  fun sha_final = SHA_Final(md : UInt8*, c : ShaCtx*) : LibC::Int
  fun sha_init = SHA_Init(c : ShaCtx*) : LibC::Int
  fun sha_transform = SHA_Transform(c : ShaCtx*, data : UInt8*)
  fun sha_update = SHA_Update(c : ShaCtx*, data : Void*, len : LibC::SizeT) : LibC::Int

  struct ShA256stateSt
    h : LibC::UInt[8]
    nl : LibC::UInt
    nh : LibC::UInt
    data : LibC::UInt[16]
    num : LibC::UInt
    md_len : LibC::UInt
  end

  struct ShA512stateSt
    h : LibC::ULongLong[8]
    nl : LibC::ULongLong
    nh : LibC::ULongLong
    u : ShA512stateStU
    num : LibC::UInt
    md_len : LibC::UInt
  end

  struct ShAstateSt
    h0 : LibC::UInt
    h1 : LibC::UInt
    h2 : LibC::UInt
    h3 : LibC::UInt
    h4 : LibC::UInt
    nl : LibC::UInt
    nh : LibC::UInt
    data : LibC::UInt[16]
    num : LibC::UInt
  end

  type ShA256Ctx = ShA256stateSt
  type ShA512Ctx = ShA512stateSt
  type ShaCtx = ShAstateSt

  union ShA512stateStU
    d : LibC::ULongLong[16]
    p : UInt8[128]
  end
end
