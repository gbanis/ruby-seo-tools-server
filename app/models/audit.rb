class Audit < ActiveRecord::Base

  def generate
    get_html
    self.save
  end

  private
  def get_html
    self.page_content = HTTParty.get(self.url)
  end
end
