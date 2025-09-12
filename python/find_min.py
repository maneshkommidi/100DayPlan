def find_min(nums):
    min_num = nums[0]
    for num in nums[1:]:
        if num < min_num:
            min_num = num
    return min_num

find_min([1,2,3,4])