class API
    #make calls to API

    def self.jobs
        url = "https://jobs.github.com/positions.json?description=python&location=new+york"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        list_jobs=hash[jobs]


        list_jobs.each do |job_hash|
           #initialize new drink
           job_instance = Jobs.new
           # assign attributes
            job_instance.id = job_hash["id"]
            job_instance.title = job_hash ["title"]
            job_instance.location = job_hash ["location"]
            job_instance.type = job_hash["type"]
            job_instance.description = job_hash["description"]

        end
       

        
        
       
        
    end
end