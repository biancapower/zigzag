require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/lists", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # List. As you add validations to List, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      List.create! valid_attributes
      get lists_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      list = List.create! valid_attributes
      get list_url(list)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_list_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      list = List.create! valid_attributes
      get edit_list_url(list)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new List" do
        expect {
          post lists_url, params: { list: valid_attributes }
        }.to change(List, :count).by(1)
      end

      it "redirects to the created list" do
        post lists_url, params: { list: valid_attributes }
        expect(response).to redirect_to(list_url(List.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new List" do
        expect {
          post lists_url, params: { list: invalid_attributes }
        }.to change(List, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post lists_url, params: { list: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested list" do
        list = List.create! valid_attributes
        patch list_url(list), params: { list: new_attributes }
        list.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the list" do
        list = List.create! valid_attributes
        patch list_url(list), params: { list: new_attributes }
        list.reload
        expect(response).to redirect_to(list_url(list))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        list = List.create! valid_attributes
        patch list_url(list), params: { list: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested list" do
      list = List.create! valid_attributes
      expect {
        delete list_url(list)
      }.to change(List, :count).by(-1)
    end

    it "redirects to the lists list" do
      list = List.create! valid_attributes
      delete list_url(list)
      expect(response).to redirect_to(lists_url)
    end
  end
end
