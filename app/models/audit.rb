class Audit < ActiveRecord::Base

  def generate
    @parsed_html = Nokogiri::HTML(set_raw_html)
    set_metrics
    self.save
  end

  private

  def set_metrics
    self.title = @parsed_html.title
  end

  def set_raw_html
    self.raw_html = HTTParty.get(self.url)
  end
end
