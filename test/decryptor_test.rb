require 'minitest/autorun'
require 'minitest/pride'
require './lib/decryptor'

class DecryptorTest < Minitest::Test

  def test_decrypt_method_outputs_original_message
    dencryptor = Decryptor.new(KeyGenerator.new("12345"), OffsetCalculator.new("081995"), "yo, u figured it out fam :)")
    decrypted_message = dencryptor.decrypt(" .9i .rir5d531aiud7z6d7qm9")

    assert_equal "yo, you figured it out fam", decrypted_message
  end

  def test_able_to_decrypt_instructor_message
    decryptor = Decryptor.new(KeyGenerator.new("99373"), OffsetCalculator.new("050416"), "5xji26ava7ag2to.9xpjetg.zaau5tad5pub08hsdmwi2aady2avdtaj.mwi2mpfd7dh2mdo1mzb.8abvrkb.vh,vulo1mlod8uv08lp.7abemjjewxcvsruvrrnv7obdwadf6uj09ov mvmy7k.z0rcv7obdwany7wfcmvmy7k.d3xs0tat9pviv4up7tfuv7obdwaf.vlnymvmy7k.2,wf.7lp.mgbdwava4hs0pvfv9qe26vd,6h.0wdsyrwfc7ae,8an1mb,22g,w")

    decrypted_message = decryptor.decrypt("5xji26ava7ag2to.9xpjetg.zaau5tad5pub08hsdmwi2aady2avdtaj.mwi2mpfd7dh2mdo1mzb.8abvrkb.vh,vulo1mlod8uv08lp.7abemjjewxcvsruvrrnv7obdwadf6uj09ov mvmy7k.z0rcv7obdwany7wfcmvmy7k.d3xs0tat9pviv4up7tfuv7obdwaf.vlnymvmy7k.2,wf.7lp.mgbdwava4hs0pvfv9qe26vd,6h.0wdsyrwfc7ae,8an1mb,22g,w")

    assert_equal nil, decrypted_message
  end
end
