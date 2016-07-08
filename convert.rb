# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return result=s if num_rows==1
  result=Array.new(num_rows,"")
  s.chars.each_with_index do |val,key|
    if key% (2*num_rows-2)<num_rows
      result[key% (2*num_rows-2)]+=val
    else
      result[2*num_rows-key% (2*num_rows-2)-2]+=val
    end
  end
  result.join
end