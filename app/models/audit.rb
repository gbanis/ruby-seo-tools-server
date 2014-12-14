class Audit < ActiveRecord::Base
  include Analyzer

  def generate
    @parsed_html = Nokogiri::HTML(set_raw_html)
    set_data
    analyze
    save
  end

  private

  def set_data
    self.title = @parsed_html.title
    self.meta_description = @parsed_html.xpath("//meta[@name='description']/@content").first.value
  end

  def set_raw_html
    self.raw_html = HTTParty.get(self.url)
  end
end
