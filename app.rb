require 'sinatra'

get('/'){erb :indice}
get('/libros'){erb :libros}
get('/photoalbum'){erb:photoalbum}
get('/song'){erb:song}
