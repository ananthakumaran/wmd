
task :default => [:minify] 

task :concat do
	f = File.new('jquery.wmd.js','w')
	FileList['wmd.js','showdown.js','prettify.js'].each do |src|
		f.puts File.read(src)
	end
	f.close
end

task :minify => [:concat] do
	system("java -jar build/compiler.jar --js jquery.wmd.js --js_output_file jquery.wmd.min.js")
end
