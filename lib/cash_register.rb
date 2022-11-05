class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items =[]
    end

    def add_item(title, price, quantity=1)
        self.total=(@total+(price*quantity))
        self.last_transaction=price*quantity
        quantity.times do
            @items << title
        end

    end

    def apply_discount
        if @discount != 0
            self.total=(@total*(1 - (@discount.to_f/100)))
             "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total=(@total - self.last_transaction)
    end

end
