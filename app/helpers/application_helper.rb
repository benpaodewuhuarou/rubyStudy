module ApplicationHelper
	def login_helper
	    if current_user.is_a?(GuestUser) 
        (link_to 'login',new_user_session_path )+' <br>'.html_safe+
          (link_to 'register', new_user_registration_path )
        else 
         
          link_to 'logout', destroy_user_session_path, method: :delete 
        end 
      end

    def source_helper(kk)
    	if session[:source]
    		content_tag(:p,'Thanks for visiting me from #{session[:source]}',class:"source-greeting")

    	end
    	a = '44'
    	content_tag(:p,"Thanks for visiting me from #{kk}",class:"source-greeting")
    end

end
