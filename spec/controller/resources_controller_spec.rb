require 'rspec'
require 'rails_helper'

RSpec.describe ResourcesController, :type => :controller do
  describe 'Responds successfully' do
    it 'returns the right HTTP response codes' do
      get :index
      expect(response.status).to eq 200
      get :show, params: {format: :json, id: 1}
      expect(response.status).to eq 200
      post :create, params: {format: :html}
      expect(response.status). to eq 204
    end
  end

  describe 'model filter method is called upon GET request' do
    it 'calls the model method that performs the database filtering' do
      params = ActionController::Parameters.new(  {types: "Events,Mentoring"} )
      params.permit!
      expect(Resource).to receive(:filter).with(params)
      get :index, params: {:types => 'Events,Mentoring', :sort_by => 'title'}
    end
  end

  describe "POST create" do
    it 'calls the correct model method' do
      params = ActionController::Parameters.new({title: "something", url: "something.com" ,contact_email: "something@gmail.com", location: "someplace", types: 'scholarship,funding', audiences: 'grad,undergrad', desc: "descriptions", approval_status: 0})
      params.permit!
      expect(Resource).to receive(:create_resource).with(params)
      post :create, params: {title: "something", url: "something.com" ,contact_email: "something@gmail.com", location: "someplace", types: 'scholarship,funding', audiences: 'grad,undergrad', desc: "descriptions"}
    end
  end
end