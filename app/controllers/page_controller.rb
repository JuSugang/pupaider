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

	def email_send
		email = params[:email]
		title = params[:title]
		content =params[:content]
		
		myemail = "tnrkd7679@ajou.ac.kr"
		mypasswd = "awefgyuk1!"
		gmail = Gmail.connect(myemail,mypasswd)
		gmail.deliver do
			to myemail
			subject title
			text_part do
				body "from: " +email+"
━━━━━━━━━━━━━━━━
" +content
			end
		end

		gmail.logout
		redirect_to "/page/contact"
			
	end
end
