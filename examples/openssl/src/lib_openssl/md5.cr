@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs openssl || printf %s '-lssl -lcrypto'`")]
lib LibOpenSSL
  MD5_CBLOCK        = 64
  MD5_DIGEST_LENGTH = 16
  fun md5 = MD5(d : UInt8*, n : LibC::SizeT, md : UInt8*) : UInt8*
  fun md5_final = MD5_Final(md : UInt8*, c : MD5Ctx*) : LibC::Int
  fun md5_init = MD5_Init(c : MD5Ctx*) : LibC::Int
  fun md5_transform = MD5_Transform(c : MD5Ctx*, b : UInt8*)
  fun md5_update = MD5_Update(c : MD5Ctx*, data : Void*, len : LibC::SizeT) : LibC::Int

  struct MD5stateSt
    a : LibC::UInt
    b : LibC::UInt
    c : LibC::UInt
    d : LibC::UInt
    nl : LibC::UInt
    nh : LibC::UInt
    data : LibC::UInt[16]
    num : LibC::UInt
  end

  type MD5Ctx = MD5stateSt
end
