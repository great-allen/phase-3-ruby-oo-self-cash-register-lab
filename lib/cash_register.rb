
class CashRegister
    attr_accessor :total,:discount, :items,:last_transaction
    
    def initialize (discount=0)
        @total=0
        @discount=discount
        @items=[]
    end

    def add_item(title,price,quantity=1)
        @last_transaction=price * quantity
        @total +=@last_transaction
        #@items.fill(title,@items.size,quantity)
        @items+=[title]*quantity
    end

    def apply_discount
       if @discount != 0
        #discount_rate=1.0-@discount.to_f/100
       # @total=(@total*discount_rate).to_i
       @total-=@total*@discount/100
        "After the discount, the total comes to $#{@total}."
       else
        "There is no discount to apply."
       end 
    end

    def void_last_transaction
        if @items !=[]
        @total -= @last_transaction
        else
            @total=0.0
        end
      end
end

