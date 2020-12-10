
class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        @discount = discount #discount by default is zero unless given upon creation 
        @total = 0
        @items = [] 
    end 

    #potentially add a total method that calls on itself to find the total after some instnace method (discount) has done work on it 

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)   #takes in price and then updates total.. calls self as it is changing the total of this current total that has other instance methods doing work on it 
        quantity.times do 
            @items << title
        end
        self.last_transaction = price * quantity
    end 


    def apply_discount

        if @discount == 0 
            "There is no discount to apply."
        else
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        discount_message = "After the discount, the total comes to $#{self.total}."
        end 
    end 

    def void_last_transaction 
        self.total = self.total - self.last_transaction
    end 




end 