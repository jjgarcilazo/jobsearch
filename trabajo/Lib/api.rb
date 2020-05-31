class API
    #make calls to API

    def self.jobs
        url = "https://jobs.github.com/positions.json?description=python&location=new+york"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        list_jobs = JSON.parse(response)

       

        list_jobs.each do |job_hash|
           
           job_instance = Jobs.new
           
            job_instance.id = job_hash["id"]
            job_instance.title = job_hash ["title"]
            job_instance.location = job_hash ["location"]
            job_instance.type = job_hash["type"]
            job_instance.description = job_hash["description"]

        end
    
       

        
        
       
        
    end
end