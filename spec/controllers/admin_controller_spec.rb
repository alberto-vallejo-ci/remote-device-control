require 'spec_helper'

describe AdminController do
  describe '#index' do
    it 'should sent to index'do
      get :index
      expect(response).to be_success
    end
  end
end
