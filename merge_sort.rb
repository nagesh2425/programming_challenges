def merge_sort(array)
	if array.count == 1
		return array
    end

   mid = array.count/2
   part_a =  merge_sort(array.slice(0, mid))
   part_b = merge_sort(array.slice(mid, array.count-1))	
   
   array = []
   offset_a = 0
   offset_b = 0

   while offset_a < part_a.count && offset_b < part_b.count
     a = part_a[offset_a]
     b = part_b[offset_b]
     if a <= b
     	array << a
     	offset_a+=1
     else
        array << b
        offset_b+=1
     end
   end


   while offset_a < part_a.count
   	  array << part_a[offset_a]
   	  offset_a+=1
   end
   while offset_b < part_b.count
   	  array << part_b[offset_b]
   	  offset_b+=1
   end

   return array
 end
 
 p   merge_sort([4,3,5,6,7,1])
