require 'spec_helper'

describe StaticPagesController do

  describe "GET 'main'" do
    it "returns an http success" do
      get 'main'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns an http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'practice'" do
    it "returns an http success" do
      get 'practice'
      response.should be_success
    end
  end

  describe "GET 'services'" do
    it "returns an http success" do
      get 'services'
      response.should be_success
    end
  end

  describe "GET 'insurance'" do
    it "returns an http success" do
      get 'insurance'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns an http success" do
      get 'contact'
      response.should be_success
    end
  end

end
