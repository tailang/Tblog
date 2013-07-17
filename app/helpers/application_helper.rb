#encoding: utf-8
module ApplicationHelper
	def full_title(page_title)
		base_title = 'Tblog'
		if page_title.empty?
			base_title
		else
			page_title
		end
	end
  
 
  def admin?
    if user_signed_in?
      current_user.id == 1  
    end
  end

  def admin_user
    unless admin?
      redirect_to root_path, notice: "你没有该权限"
    end
  end

  def markdown(text)
    options = {   
      :autolink => true, 
      :space_after_headers => true,
      :fenced_code_blocks => true,
      :no_intra_emphasis => true,
      :hard_wrap => true,
      :strikethrough =>true
    }
    markdown = Redcarpet::Markdown.new(HTMLwithCodeRay,options)
    markdown.render(text).html_safe
  end

  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:tab_width=>2)
    end
  end

end
