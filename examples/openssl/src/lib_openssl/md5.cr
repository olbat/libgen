@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs openssl 2> /dev/null|| printf %s '-lssl -lcrypto'`")]
lib LibOpenSSL
  MD5_CBLOCK        = 64
  MD5_DIGEST_LENGTH = 16
  fun md5 = MD5(d : UInt8*, n : LibC::SizeT, md : UInt8*) : UInt8*
  fun md5_final = MD5_Final(md : UInt8*, c : Md5Ctx*) : LibC::Int
  fun md5_init = MD5_Init(c : Md5Ctx*) : LibC::Int
  fun md5_transform = MD5_Transform(c : Md5Ctx*, b : UInt8*)
  fun md5_update = MD5_Update(c : Md5Ctx*, data : Void*, len : LibC::SizeT) : LibC::Int

  struct Md5stateSt
    a : LibC::UInt
    b : LibC::UInt
    c : LibC::UInt
    d : LibC::UInt
    nl : LibC::UInt
    nh : LibC::UInt
    data : LibC::UInt[16]
    num : LibC::UInt
  end

  type Md5Ctx = Md5stateSt
end
