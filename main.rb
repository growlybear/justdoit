require 'sinatra'
require 'slim'

get '/' do
  slim :index
end

__END__

@@layout
doctype html
html
  head
    meta charset="utf-8"
    title Just Do It - Sample Sinatra application
    link rel="stylesheet" media="screen, projection" href="/styles.css"
    /[if lt IE 9]
      script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"
  body
    h1 Just Do It, Mike!

    == yield

@@index
h2 My Tasks
ul.tasks
  li Get Milk
  li Build Sinatra To-Do list
