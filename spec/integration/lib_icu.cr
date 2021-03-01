require "../spec_helper"
require "../../examples/icu/src/lib_icu"

describe "LibICU" do
  describe "ucsdet" do
    it "detects encoding" do
      text = File.read(File.join(__DIR__, "..", "..", "LICENSE"))

      ustatus = LibICU::UErrorCode::UZeroError

      csdet = LibICU.ucsdet_open(pointerof(ustatus))
      begin
        LibICU.ucsdet_set_text(csdet, text, text.size, pointerof(ustatus))
        csmatch = LibICU.ucsdet_detect(csdet, pointerof(ustatus))

        ustatus.should eq(LibICU::UErrorCode::UZeroError)
        String.new(LibICU.ucsdet_get_name(csmatch, pointerof(ustatus))).should eq("ISO-8859-1")
        String.new(LibICU.ucsdet_get_language(csmatch, pointerof(ustatus))).should eq("en")
        LibICU.ucsdet_get_confidence(csmatch, pointerof(ustatus)).should eq(76)
      ensure
        LibICU.ucsdet_close(csdet)
      end
    end
  end
end
