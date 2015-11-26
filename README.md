# sinatra-intro

## install
```
gem install 'sinatra'
gem install 'activerecord'
```
```ruby
#main.rb
require 'sinatra'

get '/' do
 'hello world'
end
```
WEBrick起動後、localhost:$PORTアクセスで画面確認可能
