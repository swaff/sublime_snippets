# Copies the snippets from the current directory
# to .config/sublime-text-3/Packages/User

require 'fileutils'

def should_copy(filename)
  File.directory? filename and !filename.start_with?('.')
end

def copy(filename)
  FileUtils.cp_r(filename, File.expand_path('~/.config/sublime-text-3/Packages/User'))
end

Dir.foreach(".") { |filename| copy(filename) if should_copy(filename) }
