class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
       @@no_of_customers += 1
   end
   
   def toString()
     puts (@cust_addr)
     puts (@@no_of_customers)
   end
   
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust1.toString();
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")


cust2.toString();