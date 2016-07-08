# @param {Integer} x
# @return {Integer}
def reverse(x)
    return -1*reverse(x.abs) if x<0
    result=x.to_s.reverse.to_i
    result>=2**31 ? 0 : result
end