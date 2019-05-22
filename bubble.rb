def bubble_sort(arr)
    return arr if arr.size <= 1

    loop do
        swapped = false
        0.upto(arr.size - 2) do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swapped = true
            end
        end
        break unless swapped
    end

    puts arr
end

bubble_sort([1, 34, 5, 2, 0, 100])

def bubble_sort_by(arr)
    swapped = true
    while swapped
        swapped = false
        0.upto(arr.size - 2) do |i|
            if yield(arr[i], arr[i+1]) > 0
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swapped = true
            end
        end
    end
    puts arr
end

bubble_sort_by(["hi", "hello", "gutentag", "aloha"]) do |left, right|
    left.length <=> right.length
end

