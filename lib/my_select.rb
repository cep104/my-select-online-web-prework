collection = [1, 2, 3, 4, 5]

def my_select(array)
  i = 0
  select = []
  while i < array.length
    if yield(array[i+=1])
      select << array[i+=1]
    end
    
  end
  select
end

my_select(collection) { | num | num.even? }