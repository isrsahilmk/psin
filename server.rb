require 'sinatra'

put '/upload' do
  File.open('/home/isrsahilmk/test/pratik/file', 'w+') do |file|
    file.write(request.body.read)
  end
end
