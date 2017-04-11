require "../spec_helper"
require "../../examples/gmp/src/lib_gmp"

describe "LibGMP" do
  describe "" do
    it "creates a bignum" do
      num = 123456789
      # TODO: use MpzT once it has been fixed
      bigint = uninitialized LibGMP::X__MpzStruct
      LibGMP.__gmpz_init(pointerof(bigint))
      LibGMP.__gmpz_set_str(pointerof(bigint), num.to_s, 10)
      LibGMP.__gmpz_get_si(pointerof(bigint)).should eq(num)
    end
  end
end
