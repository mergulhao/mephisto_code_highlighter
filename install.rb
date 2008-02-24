require 'fileutils'
source = File.dirname(__FILE__) + '/assets/.'
destination = RAILS_ROOT + '/public'
FileUtils.cp_r(source, destination)

