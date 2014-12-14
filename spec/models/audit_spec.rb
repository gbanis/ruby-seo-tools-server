require 'rails_helper'

RSpec.describe Audit, type: :model do

  context "optimized blog post" do
    before(:all) do
      @audit = FactoryGirl.build(:espresso_audit)
    end

    describe "#generate" do
      before(:all) do
        @audit.generate
      end

      context "#set_data" do
        it "receives and sets raw_html" do
          expect(@audit.raw_html).not_to be nil
        end
        it "sets the correct title" do
          expect(@audit.title).to eq "How To Make Espresso At Home The Inexpensive Way"
        end
        it "sets the correct meta_description" do
          expect(@audit.meta_description).to eq "Everybody wants to know how to make espresso at home. Especially now that it has become quite expensive to buy coffee on the road ..."
        end
        it "sets the correct meta_description" do
          expect(@audit.meta_description).to eq "Everybody wants to know how to make espresso at home. Especially now that it has become quite expensive to buy coffee on the road ..."
        end
      end

      context "#analyze" do
        it "sets the correct path_contains_keyword" do
          expect(@audit.path_contains_keyword).to be_truthy
        end
        it "sets the correct path_no_underscores" do
          expect(@audit.path_no_underscores).to be_truthy
        end
        it "sets the correct title_good_length" do
          expect(@audit.title_good_length).to be_truthy
        end
        it "sets the correct title_contains_keyword" do
          expect(@audit.title_contains_keyword).to be_truthy
        end
        it "sets the correct meta_description_good_length" do
          expect(@audit.meta_description_good_length).to be_truthy
        end
        it "sets the correct meta_description_contains_keyword" do
          expect(@audit.meta_description_contains_keyword).to be_truthy
        end
      end

    end
  end
end
