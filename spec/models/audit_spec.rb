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

      it "receives and sets raw_html" do
        expect(@audit.raw_html).not_to be nil
      end

      it "sets the correct title" do
        expect(@audit.title).to eq "How To Make Espresso At Home The Inexpensive Way"
      end

      it "sets the correct meta_description" do
        expect(@audit.meta_description).to eq "Everybody wants to know how to make espresso at home. Especially now that it has become quite expensive to buy coffee on the road ..."
      end

    end
  end
end
