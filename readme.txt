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
8. dont forget the authenticity_token

9. usersController is not found copy 




install bootstrap
gem 'bootstrap-sass', '~> 3.3.5.1'
app>stylesheets>
	newfile bootstrap-config.scss
		@import "bootstrap";
		/* @import "bootstrap-responsive";*/

config>initializers
	assets.rb
	Rails.application.config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)


