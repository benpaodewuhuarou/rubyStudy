module ApplicationHelper
	def login_helper style=' '
	    if current_user.is_a?(GuestUser) 
        (link_to 'login',new_user_session_path, class: style)+
          (link_to 'register', new_user_registration_path, class: style )
        else 
         
          link_to 'logout', destroy_user_session_path, class: style, method: :delete 
        end 
      end

    def source_helper(kk)
    	if session[:source]
    		content_tag(:p,'Thanks for visiting me from #{session[:source]}',class:"source-greeting")

    	end
    	a = '44'
    	content_tag(:p,"Thanks for visiting me from #{kk}",class:"source-greeting")
    end
    def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: porfolios_path,
        title: 'Portfolio'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

end
