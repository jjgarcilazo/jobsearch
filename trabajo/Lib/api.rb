class API
    #make calls to API
  #define methods that will grab api url
  #change url to uri using the following.
    def self.jobs
        url = "https://jobs.github.com/positions.json?description=ruby&page=1"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        list_jobs = JSON.parse(response)

        #refer to uri respnse to be parsed 
        #defind below method to link to cli file

        list_jobs.each do |job_hash|
           #list job instances to generate 
           # list of jobs while refering to 
           #  jobs.rb attributes
           job_instance = Jobs.new
           
            job_instance.id = job_hash["id"]
            job_instance.title = job_hash ["title"]
            job_instance.location = job_hash ["location"]
            job_instance.type = job_hash["type"]
            job_instance.url = job_hash["url"]

        end

        
    
       

        
        
       
        
    end
end

