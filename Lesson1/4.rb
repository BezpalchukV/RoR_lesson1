array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532,
         387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220,
         107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

#узнать количество элементов в массиве
puts 'Number of array elements:'
puts array.length

#перевернуть массив
puts "\nReverse array:"
puts array.reverse

#найти наибольшее число
puts "\nMax element:"
puts array.max

#найти наименьшее число
puts "\nMin element:"
puts array.min

#отсортировать от меньшего к большему
puts "\nSorted array"
puts array.sort

#отсортировать от большего к меньшему
puts "\nReverse sorted array"
puts array.sort.reverse

#удалить все нечетные числа
puts "\nDelete all odd elements:"
puts array.select {|a| a.even?}

#оставить только те числа, которые без остатка делятся на 3
puts "\nElements divisible by 3:"
puts array.select {|a| a%3 == 0}

#удалить из массива числа, которые повторяются
puts "\nDelete all repeating elements:"
puts array.uniq

#разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
puts "\nDivide all elements on 10:"
puts array.map {|a| a/10.0}

#получить новый массив, который бы содержал в себе те буквы английского алфавита,
#порядковый номер которых есть в нашем массиве
puts "\nEnglish letters:"
letters = array.each.select {|a| (a.between?("A".ord,"Z".ord) or a.between?("a".ord,"z".ord))}
puts letters.map{|a| a.chr}

#поменять местами минимальный и максимальный элементы массива
puts "\nSwap min and max:"
max_i = array.index(array.max)
min_i = array.index(array.min)
test_array = array
test_array[min_i], test_array[max_i] = test_array[max_i],test_array[min_i]
puts test_array

#найти элементы, которые находятся перед минимальным числом в массиве
puts "\nElements located before min:"
puts array[0..array.index(array.min)-1]

#необходимо найти три наименьших элемента
puts "\n3 min elements:"
puts array.sort[0..2]