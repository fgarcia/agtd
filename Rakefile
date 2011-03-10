require 'rake/clean'

CLEAN.include( 'agtd.vba' )

COMPONENTS = 
    "doc/agtd.txt" ,
    "ftplugin/agtd.vim",
    "plugin/agtd.vim",
    "syntax/agtd.vim"

desc "Get AGTD files from VIM folder"
task :get do
    VIMDIR = (ENV['VIMRUNTIME'] || ENV['HOME'] + "/.vim")
    abort if not File.directory? VIMDIR
    COMPONENTS.each do |fi|
        copy VIMDIR + fi, fi
    end
end

desc "Pack all files into a VBA file (release)"
task :vba => :clean do
    abort("ERROR Temporal file already exists!") if File.exist? 'f.tmp' 
    File.open('f.tmp', 'w') do |out|  
      out.puts COMPONENTS
    end  
    sh %{VIM -s build.vim}
    #rm f.tmp
end

