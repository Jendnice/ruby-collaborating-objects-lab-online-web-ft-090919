class EmailAddressParser
  attr_accessor :emails 
  
  def initialize(emails)
    @emails = emails 
  end 
  
  def parse 
     @emails.split(",").join(" ").split(" ").uniq 
      # breakdown of above line:
      #    array = @emails.split(",")
      #    new_string = array.join(" ")
      #    list = new_string.split(" ")
      #    list.uniq 
    end 
    
   
end 
