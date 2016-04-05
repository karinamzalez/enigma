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

  def a_rotation
    @key[0..1]
  end

  def b_rotation
    @key[1..2]
  end

  def c_rotation
    @key[2..3]
  end

  def d_rotation
    @key[3..4]
  end
end
