require 'spec_helper'

describe OligoUpController do

  describe "GET 'oligo_up'" do
    it "returns http success" do
      get 'oligo_up'
      response.should be_success
    end
  end

end
