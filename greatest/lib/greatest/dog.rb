class Greatest::Dog
attr_accessor :name, :info

@@all = []
def initialize (name ,info)
 
  @name = name
  @info = info
   @@all << self
end

def self.all
  @@all 
end

def self.num_of_dogs
  @@all.size
end

def self.german_dogs
   result = Greatest::Dog.all.select do |dog_with_german_name|
   dog_with_german_name.include?("german") 
  end
   puts" #{result}"
end
end