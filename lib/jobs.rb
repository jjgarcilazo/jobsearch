class Job
    #attributes and jobs

    attr_accessor :job, :location, :full_time
    @@all = []

    def initialize
        @@all <<self
    end
end
