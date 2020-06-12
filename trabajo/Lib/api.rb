class API
    #make calls to API
  #define methods that will grab api url
  #change url to uri using the following.
    def self.jobs
        url = "https://jobs.github.com/positions.json?description=ruby&page=1"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        list_jobs = JSON.parse(response)
        detail_ft = JSON.parse(response)
        #refer to uri respnse to be parsed 
        #defind below method to link to cli file

        #list_jobs.each do |work|
           #list job instances to generate 
           # list of jobs while refering to 
           #  jobs.rb attributes
          # job_instance = Jobs.new
           

       # end

         detail_ft.each do |detail|
            #list job instances to generate 
            # list of jobs while refering to 
            #  jobs.rb attributes
                detail_ft = Jobs.new
             detail_ft.company =detail["company"]
             detail_ft.id = detail["id"]
             detail_ft.title = detail ["title"]
             detail_ft.location = detail ["location"]
             detail_ft.type = detail["type"]
             detail_ft.url = detail["url"]
             
             
 
         end

          
            
 
             
         
         
        

        

        
    
       

        
        
       
        
    end
end

