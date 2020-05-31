
#CLI Controller

  class Jobs
    #attributes and jobs

    attr_accessor :id, :location, :type, :description, :title, :company
    @@all = []
    
    def initialize
        @@all << self
    end

    def self.all
      @@all
    end
    
  end

  # Your code goes here...

