# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    hash=Hash.new()
    hash["firstchar"]=0
    i=0
    array=Array.new()
    s.chars.map do |char|
        if hash[char]!=nil and hash[char]>=hash["firstchar"]
            array<<(i-hash["firstchar"])
            hash["firstchar"]=hash[char]+1
        end
        hash[char]=i
        i+=1
    end
    array<<(i-hash["firstchar"])
    array.sort.last
end
p [1,2,3][2..2]