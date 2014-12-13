module Analyzer
  require 'uri'

  def analyze
    path_contains_keyword!
    title_good_length!
    title_contains_keyword!
    meta_description_good_length!
    meta_description_contains_keyword!
  end

  def path_contains_keyword!
    path = URI(self.url).path
    self.path_contains_keyword = path.gsub(/\W/, " ").downcase.include? self.keyword.downcase
  end

  def title_good_length!
    length = self.title.length
    self.title_good_length = length > 40 && length < 70
  end

  def title_contains_keyword!
    self.title_contains_keyword = self.title.downcase.include? self.keyword.downcase
  end

  def meta_description_good_length!
    length = self.meta_description.length
    self.meta_description_good_length = length > 150 && length < 160
  end

  def meta_description_contains_keyword!
     self.meta_description_contains_keyword = self.meta_description.downcase.include? self.keyword.downcase
  end
end
