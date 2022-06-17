def stock_picker(array)
    buying_price = 0
    selling_price = 0
    best_sale = 0
    best_days = []

    array.each_with_index do |stock_1, index1|
        array.each_with_index do |stock_2, index2|
            if (stock_2 - stock_1 > best_sale) && index2 > index1
                best_sale = stock_2 - stock_1
                best_days = [index1, index2]
            end
        end
    end
    p best_days
end
stock_picker([17,3,6,9,15,8,6,1,10])
# =>  [1, 4]
stock_picker([5, 4, 2, 23, 6, 40, 1, 37, 10, 26])
#=> [2, 5]