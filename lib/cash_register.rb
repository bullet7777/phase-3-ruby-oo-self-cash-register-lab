class CashRegister
    
attr_accessor :total, :discount



    def initialize(discount=nil)
        @total=0
        @discount=discount
        @items=[]
       
     
    end

    def cash_register_with_discount
        @discount

    end
    def apply_discount
        if @discount == nil
            "There is no discount to apply."
        else
        our_discount=(@total*(1-(@discount.to_f/100.0))).to_i
        @total=our_discount
        "After the discount, the total comes to $#{@total}."
        end
    end

    def add_item(title,price,quantity=1)
       count=0
       while count < quantity do 
        @items << title
        count +=1
        
       end
     
       @total += price*quantity
   
    end
    def items
     @items
    end
    def void_last_transaction
     
    end
end

