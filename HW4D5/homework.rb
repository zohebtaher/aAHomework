
arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish(arr)
    sorted = false
    while !sorted
        sorted = true 
       (0...arr.length).each do |i|
         next if i + 1 == arr.length
            j = i +1
            if arr[i].length > arr[j].length 
            arr[i] , arr[j] = arr[j], arr[i]
            sorted = false
            end
    

    
        end
    end
     arr[-1]   
end

p sluggish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


def dominant(arr)
    return arr if arr.length < 2
    mid = arr.length/2

    left_d = dominant(arr.take[mid])
    right_d = dominant(arr.drop[mid])

    merges(left_d,right_d)


end

def merges(left, right)
    mer = []
    while left.emptty? || right.empty?
        if left.first.length < right.first.length
            mer << left.shift
        elsif left.first.length == right.first.length
            mer << left.first
        else  left.first.length > right.first.length
               mer << right.first
        end
    end
    new_arr = mer + left + right

    new_arr[-1]

end
p dominant(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


def clever(arr)
longest = arr[0].length
    arr.each do |ele|
        if  ele.length > longest
            ele = longest
        end
    end
    longest
end