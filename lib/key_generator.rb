class KeyGenerator
  attr_accessor :key

  def initialize(key=generate_key)
    @key = key
  end

  def generate_key
    key = []
    5.times do
      key << Random.rand(0..9)
    end
    @key = key.join("")
  end

  def a_key
    @key[0..1].to_i
  end

  def b_key
    @key[1..2].to_i
  end

  def c_key
    @key[2..3].to_i
  end

  def d_key
    @key[3..4].to_i
  end
end
