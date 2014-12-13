class Audit < ActiveRecord::Base
  include Analyzer

  def generate
    @parsed_html = Nokogiri::HTML(set_raw_html)
    set_metrics
    run_analysis
    save
  end

  private

  def run_analysis
    analyze
  end

  def set_metrics
    self.title = @parsed_html.title
    self.meta_description = @parsed_html.xpath("//meta[@name='description']/@content").first.value
  end

  def set_raw_html
    self.raw_html = HTTParty.get(self.url)
  end
end
