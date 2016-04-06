require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test
  def test_chop_message_to_appropriate_length
    crack = Crack.new("=E1FsEU")
    encrypted, decrypted = crack.simplify

    assert_equal "=E1F".chars, encrypted
    assert_equal "..en".chars, decrypted
  end

  def test_crack_outputs_decrypted_message
    crack = Crack.new("=E1FsEU")
    crack.decrypt_message

    assert "..end.."
  end
end
