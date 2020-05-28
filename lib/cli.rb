class CLI

    def start
        puts "Welcome To Github Job search CLI"
        API.jobs
        self.menu
    end

    def menu
        puts " Do you want to search for full time jobs?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "please Wait while we search full time jobs"
            display_full_time_jobs
        else 
            puts "what about part time jobs? "
        end
    end  

    def display_full_time_jobs
       jobs.all.each do |jobs|
        puts "#{jobs.name}"

       end
    end

end

