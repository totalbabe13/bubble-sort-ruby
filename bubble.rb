number_arr = [5,2,8,1,4,6,0,11,55,23,0]

def bubble_sort(arr)
 big_counter = 0
 while big_counter < arr.length
  x = 0
  y = 1
  counter = 0
    while counter < arr.length-1
        if arr[x] > arr[y]
          holder = []
          holder << arr[x]
          arr[x] = arr[y]
        arr[y]= holder[0]
        end 
      x += 1
      y += 1
      counter += 1   
    end 
  big_counter += 1
  end
  arr
end

bubble_sort(number_arr)

def bubble_sort_by(arr) 
 final_arr = []
 big_counter = 0
 while big_counter < arr.length
  x = 0
  y = 1
  counter = 0
    while counter < arr.length-1 
        if yield(arr[x],arr[y]) > 0
          holder = []
          holder << arr[x]
          arr[x] = arr[y]
          arr[y]= holder[0]
          
        end
      
      x += 1
      y += 1
      counter += 1   
    end 
  big_counter += 1
  end 
  p arr
end

array = ['hill','he','hug']

bubble_sort_by(array) do |left,right|
   left.length - right.length
 end