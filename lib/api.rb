class API
    #make calls to API

    def self.jobs
        url = "https://jobs.github.com/positions.json?description=python&location=new+york"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_jobs = hash ["jobs"]
        array_of_jobs.each do |jobs|
        end    
    
    end
end