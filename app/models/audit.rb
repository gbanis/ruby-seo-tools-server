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
    set_title
    set_meta_description
    self.body_text = @parsed_html.css('body').text
  end

  def set_raw_html
    self.raw_html = HTTParty.get(self.url)
  end

  def set_title
    self.title = @parsed_html.title || ""
  end

  def set_meta_description
    meta_descr = @parsed_html.xpath("//meta[@name='description']/@content").first
    self.meta_description = meta_descr ? meta_descr.value : ""
  end
end
