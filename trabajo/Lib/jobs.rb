
#CLI Controller

  class Jobs
    #attributes and jobs


    attr_accessor :id, :location, :type, :url, :title, :company

    @@all = []
    # Your code goes here...
    # Here we initilize our all variable relating to displaying all jobs 
    def initialize=(title)
      @title = title 
    
    end
    def title=(title)
      @title = title
      @@all << self

    end
    def title
      @title
    end

    def self.all
      @@all
    end 
    
    def self.find_by_name(name)
    @@all.detect do |jobs|
     jobs.name == name
     end
    end

    def self.find_or_create_by_name(name)
     self.find_by_name(name) || self.create(name)
    end
  end
  

