class Hero 
  attr_reader :name, :power, :biography
  
  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @biography = details[:biography]
  end
end