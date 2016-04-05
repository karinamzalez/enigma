class KeyGenerator
  attr_reader :key

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

  def key_variable_rotations
    variable_rotations = []
    variable_rotations << @key[0..1].to_i
    variable_rotations << @key[1..2].to_i
    variable_rotations << @key[2..3].to_i
    variable_rotations << @key[3..4].to_i
  end


end
