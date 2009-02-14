#!/usr/bin/env ruby
# vim: noet

def relative_require(str)
	if m = caller[0].match(/^(.+):(\d+)/)
		
		caller_dir = File.dirname(File.expand_path(m.captures[0]))
		require File.expand_path(caller_dir + "/" + str)
		
	else
		raise ArgumentError
	end
end
