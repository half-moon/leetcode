# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  regexp=Regexp.new(p)
  return false if s.empty? and not regexp=~s
  s.sub(regexp,"").empty?
end