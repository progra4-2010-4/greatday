require 'sinatra'

get('/'){send_file "indice.html"}

eval %w[/libros /photoalbum /song].collect{|idea| "get('#{idea}'){send_file '#{idea[1..-1]}.html'}"}.join("; ")
