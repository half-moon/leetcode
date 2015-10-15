# @param {String} s
# @return {String}
#  manacher算法
def longest_palindrome(s)
    radius=Array.new(0)
    p=String.new
    mx=0
    center=0
    s.chars.each{|n| p=p+"#"+n}
    p+="#"
    p.chars.each_index do |key|
        if mx>key
            radius[key]=[mx-key,radius[2*center-key]].min
        else
            radius[key]=1
        end
        while p[key+radius[key]]==p[key-radius[key]]
            radius[key]+=1
        end
        if key+radius[key]>mx
            mx=key+radius[key]
            center=key
        end
    end
    range=radius.max
    center=radius.find_index(range)
    p p,center,range
    s[(center-range+1)/2..(center+range-3)/2]
end