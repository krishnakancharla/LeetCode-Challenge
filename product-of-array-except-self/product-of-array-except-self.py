class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        res=[1] * (len(nums)) #creating array of 1s
        prefix=1              # initialising prefix
        for i in range(len(nums)):
            res[i]=prefix       #res is now prefix array
            prefix*=nums[i]  
        postfix=1               # initialising postfix
        for i in range(len(nums) -1, -1,-1):
            res[i]*=postfix     
            postfix *=nums[i]
            
        return res    
        