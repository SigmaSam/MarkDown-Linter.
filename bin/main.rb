require_relative '../lib/mb_scaner.rb'

scaner = Scaner.new

Dir.glob('../docs/*').each do |filename|
  next if File.directory?(filename)

  File.open(filename, 'r') do |file|
    scaner.scan_line(file)
  end
end
