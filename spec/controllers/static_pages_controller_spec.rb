require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe 'GET #home' do
    it 'responds successfully with an HTTP 200 status code and renders home template' do
      get :home
      expect(response).to have_http_status(200)
      expect(response).to be_success
      expect(response).to render_template('home')
    end
  end
end
