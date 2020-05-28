class API
    #make calls to API

    def self.jobs
        url = "https://jobs.github.com/positions.json?description=python&full_time=true&location=sf"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
       
        
    end
end