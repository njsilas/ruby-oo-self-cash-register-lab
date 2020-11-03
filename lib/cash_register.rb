class CashRegister
attr_accessor :total, :title, :price, :quantity, :items, :discount, :last_transaction
    
def initialize(discount = 0)
   @total = 0
    @title = title
    @price = price
    @quantity = quantity
    @items = []
    @discount = discount
    end
    def add_item(title, price, quantity = 1)
        count = 0
            @total += price*quantity
            while count < quantity 
                @items << title
                count += 1
            end
        @last_transaction = price*quantity
    end
    
    def apply_discount
        
       if @discount == 0
        "There is no discount to apply."
       else
        @total *= 0.8
         "After the discount, the total comes to $#{@total.to_i}."
       
       end
         
    end
    def items
        @items
    end
    def void_last_transaction
        @total -= @last_transaction
    end

end
