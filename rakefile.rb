
task :default => [:concat] 

task :concat do
	f = File.new('jquery.wmd.js','w')
	FileList['wmd.js','showdown.js','prettify.js'].each do |src|
		f.puts File.read(src)
	end
	f.close
end
