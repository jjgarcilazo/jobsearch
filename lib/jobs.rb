
 class Jobs
    #attributes and jobs

    attr_accessor :name, :location, :full_time, :jobs
    @@all = []

    def initialize
        @@all <<self
    end

    def self.all
    end
end
