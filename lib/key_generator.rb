class KeyGenerator

  def initialize(intial_key)
    @intial_key = initial_key
  end

  def key
    if key == 0
       key = []
       5.times do
         key << Random.rand(0..9)
     else
       key = key
     end

  def initial_key_separator
    key = []
    

end
