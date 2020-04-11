def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  # take in string name and a array of hashes 
  # should return the entire hash item or nil 
  
  collection.each do |item|
    if item[:item] == name
      return item 
    end
  end
  return nil 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  # cart = array of hashes 
  # returns new array of hashes, but with each item containing a quantity 
  new_array = []
  
  cart.each do |item|
    new_array_contains_item_index = new_array.find_index do |new_item|
      new_item[:item] == item[:item]
    end
    if new_array_contains_item_index
      new_array[new_array_contains_item_index][:count] += 1
    else 
      new_array << {
        :item => item[:item],
        :price => item[:price],
        :clearance => item[:clearance],
        :count => 1 
      }
    end
  end # end of cart.each 
  new_array
end




  