# @param {String} str
# @return {Integer}
def my_atoi(str)
  str.strip!
	return 0 unless /^[-+]?\d+/=~str
	str.delete!("+")
  str.scan(/^[-\d]\d*/)  do |n|
    return 2**31-1 if n.to_i>=2**31
    return -2**31 if n.to_i<=-2**31
  	return n.to_i 
  end
end