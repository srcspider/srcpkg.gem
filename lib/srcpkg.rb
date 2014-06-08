require 'yaml'

class Srcpkg

	VERSION = '0.1.0'

#### Commands ##################################################################

	def version(args)
		puts "  #{Srcpkg::VERSION}"
	end#def

	def install(args)
		msg "This tool is under development. Please check back later.\n"

		thing = YAML.load_file('src.go.yml')
		puts thing.inspect

		msg "fin"
	end#def

#### Helpers ###################################################################

	def readable_time(time)
		hours = (time / 3600).to_i
		minutes = ((time - hours) / 60).to_i
		seconds = time - hours * 3600 - minutes * 60
		if hours != 0
			return ('%02d' % hours) + ':' + ('%02d' % minutes) + ':' + ('%02d' % seconds)
		else
			return ('%02d' % minutes) + ':' + ('%02d' % seconds)
		end
	end#def

	def err(msg)
		puts "  Err: #{msg}"
		exit
	end#def

	def msg(msg)
		puts "  #{msg}"
	end#def

end#class
