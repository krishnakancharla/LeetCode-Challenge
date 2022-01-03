class Solution:
    def findMin(self, nums: List[int]) -> int:
        res=nums[0]  #taking arbitrary res value
        l,r = 0, len(nums)-1 #initialising pointers
        
        while l <=r:
            if nums[l]<nums[r]:
                res =min(res, nums[l])
                break
            
            m=(l+r)//2
            res= min(res, nums[m])
            if nums[m]>= nums[l]:
                l=m+1
            else:
                r=m-1
        return res    
                
            
            