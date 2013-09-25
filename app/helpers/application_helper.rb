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
      current_user.id == 1 or current_user.role == "admin"
    end
  end

  def admin_user
    unless admin?
      redirect_to root_path, notice: "你没有该权限"
    end
  end

#markdown支持
  def markdown(text)
    options = {   
      :autolink => true, 
      :fenced_code_blocks => true,
      :no_intra_emphasis => true,
      :hard_wrap => true,
      :strikethrough =>true
    }
    markdown = Redcarpet::Markdown.new(HTMLwithCodeRay,options)
    nl_to_br(markdown.render(text)).html_safe
  end

  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:tab_width=>2)
    end
  end

  def nl_to_br(text)
    text.gsub("\r\n", "<br/>").gsub("\r", "<br/>").gsub("\n", "<br/>")
  end

  def safe(html)
    return "" if html.nil? or html.blank?
    html.html_safe
  end
end
