Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'page#index'	
	get '/page/changhyun'=>'page#changhyun'
	get '/page/sugang'=>'page#sugang'
	get '/page/aboutus'=>'page#aboutus'
	get '/page/contact'=>'page#contact'
	resources :signups
end
