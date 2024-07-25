require 'rails_helper'

describe V1::ContactsController, type: :controller do

    it '406: Envio sem Accept (header) - NOT ACCEPTABLE' do
        get :index
        expect(response).to have_http_status(:not_acceptable)
    end

    it 'request index and return 200 - OK' do
        request.accept = 'application/vnd.api+json'
        get :index
        expect(response).to have_http_status(:ok)
    end
end