require "pry"

class CashRegister

    attr_accessor :total, :discount

    def initialize(discount=0, total=0)
        @total= total
        @discount= discount
        @items = []
    end

    def add_item(title, price, option=1)
        @total= @total + price*option
        @price = price*option                   # make price available elsewhere

        # Add items here
        option.times do 
            @items << title
        end
    end

    def apply_discount
        @total= @total*(100-@discount)/100
        if discount == 0
            "There is no discount to apply."
        else
        "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @price
    end
end


binding.pry