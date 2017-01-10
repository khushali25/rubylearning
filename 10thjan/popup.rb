def demo_method(path)
popupdemo = {}
File.foreach(path) do |line|
name,url = line.split(': ')
popupdemo[name] = url
end
popupdemo
end

popupdemo = demo_method('/home/khushali1/Documents/rubylearning/10thjan/popupdemo.txt')

require 'popup'
popup.goto "http://bing.com"
