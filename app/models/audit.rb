class Audit < ActiveRecord::Base


  def get_html(url)
    self.page_content = HTTParty.get(url)
  end
end
