
class Description < ActiveRecord::Base
  def self.get_descriptions
    {
      path_contains_keyword: "URL slug contains keyword",
      path_no_underscores: "URL slug contains underscores",
      title_good_length: "Title is between 40 and 60 characters",
      title_contains_keyword: "Title contains keyword",
      meta_description_good_length: "Meta description is between 130 and 160 characters",
      meta_description_contains_keyword: "Meta description contains keyword",
      body_text_flesch_score_good: "Flesch reading ease score is over 60",
      body_text_num_words_good: "Your content is more than 350 words long",
      body_text_num_keyword_occurences_good: "You used the keyword more than 5 times",
      body_text_keyword_density_good: "The keyword density is between 1% and 6%"
    }
  end
end
