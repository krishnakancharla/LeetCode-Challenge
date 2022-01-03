class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        maxprof=0
        minprice=float('inf')     
        for i in range(len(prices)):
            if prices[i]<minprice:
                minprice=prices[i]
            elif (prices[i] - minprice)>maxprof:
                maxprof= prices[i]-minprice
                
        return maxprof