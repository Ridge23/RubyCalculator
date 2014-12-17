require 'rails_helper'

RSpec.describe CalculatorController, :type => :controller do
  describe "POST #sum" do
    #test for sum ajax action
    it "with valid params do" do
      #sending params to sum action with xhr
      xhr :post, :sum, :first_value => 10, :second_value => 20
      #checking response
      expect(response).to be_success
      expect(response).to have_http_status(200)
      #checking calculation result
      expect(response.body.to_f).to eq(30.0)
    end
  end

  describe "POST #subtraction" do
    it "with valid params do" do
      #sending params to subtraction action with xhr
      xhr :post, :subtraction, :first_value => 10, :second_value => 20
      #checking response
      expect(response).to be_success
      expect(response).to have_http_status(200)
      #checking calculation result
      expect(response.body.to_f).to eq(-10.0)
    end
  end

  describe "POST #division" do
    it "with valid params do" do
      #sending params to division action with xhr
      xhr :post, :division, :first_value => 30, :second_value => 3
      #checking response
      expect(response).to be_success
      expect(response).to have_http_status(200)
      #checking calculation result
      expect(response.body.to_f).to eq(10.0)
    end
  end

  describe "POST #square_root" do
    it "with valid params do" do
      #sending params to division action with xhr
      xhr :post, :square_root, :first_value => 9
      #checking response
      expect(response).to be_success
      expect(response).to have_http_status(200)
      #checking calculation result
      expect(response.body.to_f).to eq(3)
    end
  end

  describe "POST #cube_root" do
    it "with valid params do" do
      #sending params to division action with xhr
      xhr :post, :cube_root, :first_value => 27
      #checking response
      expect(response).to be_success
      expect(response).to have_http_status(200)
      #checking calculation result
      expect(response.body.to_f).to eq(3)
    end
  end

  describe "POST #sinus" do
    it "with valid params do" do
      #sending params to division action with xhr
      xhr :post, :sinus, :first_value => 0
      #checking response
      expect(response).to be_success
      expect(response).to have_http_status(200)
      #checking calculation result
      expect(response.body.to_f).to eq(0)
    end
  end

  describe "POST #cosinus" do
    it "with valid params do" do
      #sending params to division action with xhr
      xhr :post, :cosinus, :first_value => 0
      #checking response
      expect(response).to be_success
      expect(response).to have_http_status(200)
      #checking calculation result
      expect(response.body.to_f).to eq(1)
    end
  end

end