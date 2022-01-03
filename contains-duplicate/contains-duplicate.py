class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        arr={}
        for num in nums:
            if num in arr:
                arr[num] += 1
            else:
                arr[num] = 1
      
        if max(arr.values()) > 1:
            return True
        else:
            return False