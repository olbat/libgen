require "../spec_helper"
require "../../examples/openssl/src/openssl/lib"

describe "OpenSSL::Lib" do
  describe "sha1" do
    it "calculates SHA1 hash" do
      text = "test"
      hash = Slice(UInt8).new(OpenSSL::Lib::SHA_DIGEST_LENGTH)
      OpenSSL::Lib.sha1(text, text.size, hash)
      hash.hexstring.should eq("a94a8fe5ccb19ba61c4c0873d391e987982fbbd3")
    end
  end

  describe "md5" do
    it "calculates MD5 hash" do
      text = "test"
      hash = Slice(UInt8).new(OpenSSL::Lib::MD5_DIGEST_LENGTH)
      OpenSSL::Lib.md5(text, text.size, hash)
      hash.hexstring.should eq("098f6bcd4621d373cade4e832627b4f6")
    end
  end

  describe "random_bytes" do
    it "returns random bytes" do
      buff = Slice(UInt8).new(1024)
      basebuff = buff.clone
      OpenSSL::Lib.rand_bytes(buff, buff.size)
      buff.should_not eq(basebuff)
    end
  end
end
