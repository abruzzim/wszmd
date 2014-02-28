require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with pipe character" do
#       expect(helper.concat_strings("this","that")).to eq("this | that")
#     end
#   end
# end

describe ApplicationHelper do
  describe "#full_title" do

    let(:base_title)      { 'Wendy Ziecheck, M.D.' }
    let(:home_page_title) { 'Internal Medicine' }

    it "returns the page's full title" do
      expect(full_title("Test")).to eq("#{base_title} | Test")
    end

    it "includes the base title" do
      expect(full_title("Test")).to include("#{base_title}")
    end

    it "excludes the home page title for non-home page" do
      expect(full_title("Test")).to_not include("#{home_page_title}")
    end

    it "includes the home page title for the home page" do
      expect(full_title("")).to include("#{home_page_title}")
    end

  end
end
