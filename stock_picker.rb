def stock_picker(array)
    # Example of the main cost array
    cost_array = array

    # Variable names
    difference = 0
    best_difference = 0
    buy_day = 0
    sell_day = 0


    # Looping through to get the best difference
    cost_array.map do |first_number|
        cost_array.map do |second_number|
            difference = second_number - first_number
            # The ultimate conditioner
            if (difference > best_difference && (cost_array.find_index(second_number) > cost_array.find_index(first_number)))
                best_difference = difference
                buy_day = cost_array.find_index(first_number)
                sell_day = cost_array.find_index(second_number)
            end
        end
    end

    # Returns an array with best buy and sell days
    final_array = [buy_day, sell_day]
    p final_array
end

stock_picker([2, 4, 5, 16, 19, 1, 5, 3])

