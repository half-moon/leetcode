# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  x.to_s.reverse==x.to_s
end


=begin
	
	def is_palindrome(x)
	    s_is_palindrome x.to_s
	end

	def s_is_palindrome(s)
	    return true if s.size==0 or s.size==1
	    if s.slice!(0)==s.slice!(s.size-1)
	        s_is_palindrome(s)
	    else
	        return false
	    end
	end

=end

