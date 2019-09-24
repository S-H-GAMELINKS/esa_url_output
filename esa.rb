
file = File.open('articles.md','a')

dir = Dir.glob("日報/**/**/*.md")

dir.each{|d|
    File.open(d){|f|
        f.each_line{|line|
            if f.gets.to_s[/\[.+\]\(.+\)/, 0]
                file.puts f.gets.to_s[/\[.+\]\(.+\)/, 0]
            end
        }
    }
}
