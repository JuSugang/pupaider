class PageController < ApplicationController
	def changhyun
		@posts=Postch.all			
	end
	def sugang
		@posts=Postsg.all	
	end
	def aboutus
	end
	def	contact
	end
end
