class Solution:
    def maxProduct(self, nums: List[int]) -> int:
        res=max(nums)
        currprod=1
        currmin, currmax=1,1
        for n in nums:
            if n==0:
                currmin, currmax=1,1
                continue
            tmp=currmax*n    
            currmax=max(n*currmax, n*currmin, n)    
            currmin=min(tmp, n*currmin, n)
            res=max(res, currmax)
        return res