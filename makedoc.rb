#! /usr/bin/ruby

system("rm -rf doc")

File::open("kyotocabinet-doc.rb") { |ifile|
  File::open("kyotocabinet.rb", "w") { |ofile|
    ifile.each { |line|
      line = line.chomp
      line = line.sub(/# +@param +(\w+) +/, '# - <strong>@param <var>\\1</var></strong> ')
      line = line.sub(/# +@(\w+) +/, '# - <strong>@\\1</strong> ')
      ofile.printf("%s\n", line)
    }
  }
}

system('rdoc --title "Kyoto Cabinet" -o doc kyotocabinet.rb')

IO::popen("find doc") { |list|
  list.each { |path|
    path = path.chomp
    if path =~ /\.html$/
      File::open(path) { |ifile|
        tmppath = path + ".tmp"
        File::open(tmppath, "w") { |ofile|
          ifile.each { |line|
            line = line.chomp
            next if line =~ /\[Validate\]<\/a>/
            ofile.printf("%s\n", line)
          }
        }
        File::unlink(path)
        File::rename(tmppath, path)
      }
    end
  }
}

File::open("doc/rdoc-style.css", "a") { |file|
  file.printf("\n")
  file.printf("pre { background: none #ddddee; border: solid 1px #dddddd; }\n")
  file.printf("#methods ul { margin: -0.8ex 0ex 1ex 2ex; padding: 0px; color: #222222; }\n")
  file.printf("#methods ul li { list-style-type: none; }\n")
}

system("rm -f kyotocabinet.rb")
