note for the ruby black belt opt E

1. rails new optE_ruby_black_belt_playlist
2. cd optE_ruby_black_belt_playlist 
3. vim Gemfile change bcrypt and hirb and start server
	rails s -p5001
4. rails g controller Users index edit show new
	controller plurial and uppercase

5. rails g model User first_name:string last_name:string email:string password:digest
6. rake db:migrate

7. inplement the views>index.html.erb
	dont worry about flash just write the form
	type='submit' value='Register now'


