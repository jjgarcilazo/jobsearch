
#CLI Controller

  class Jobs
    #attributes and jobs

    attr_accessor :id, :location, :type, :url, :title, :company
    @@all = []
    # Your code goes here...
    # Here we initilize our all variable relating to displaying all jobs 
    def initialize
        @@all << self
    end

    def self.all
      @@all
    end
    
  end

  

