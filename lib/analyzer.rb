module Analyzer
  require 'uri'

  def analyze
    path_contains_keyword!
    path_no_underscores!
    title_good_length!
    title_contains_keyword!
    meta_description_good_length!
    meta_description_contains_keyword!
    body_text_flesch_score!
    body_text_flesch_score_good!
    body_text_num_words!
    body_text_num_keyword_occurences!
    body_text_keyword_density!
  end

  def path_contains_keyword!
    path = URI(self.url).path
    self.path_contains_keyword = path.gsub(/\W/, " ").downcase.include? self.keyword.downcase
  end

  def path_no_underscores!
    path = URI(self.url).path
    self.path_no_underscores = !(path.include? "_")
  end

  def title_good_length!
    length = self.title.length
    self.title_good_length = length > 40 && length < 60
  end

  def title_contains_keyword!
    self.title_contains_keyword = self.title.downcase.include? self.keyword.downcase
  end

  def meta_description_good_length!
    length = self.meta_description.length
    self.meta_description_good_length = length > 130 && length < 160
  end

  def meta_description_contains_keyword!
     self.meta_description_contains_keyword = self.meta_description.downcase.include? self.keyword.downcase
  end

  def body_text_flesch_score!
    self.body_text_flesch_score = Lingua::EN::Readability.new(self.body_text).flesch.round(2)
  end

  def body_text_flesch_score_good!
    self.body_text_flesch_score_good = self.body_text_flesch_score > 60
  end

  def body_text_num_words!
    self.body_text_num_words = Lingua::EN::Readability.new(self.body_text).num_words
  end

  def body_text_num_keyword_occurences!
    self.body_text_num_keyword_occurences = self.body_text.downcase.scan(self.keyword.downcase).length
  end

  def body_text_keyword_density!
    density = self.body_text_num_keyword_occurences / self.body_text_num_words.to_f
    self.body_text_keyword_density = density.round(4)
  end

end
