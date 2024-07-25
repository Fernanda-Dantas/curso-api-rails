require 'rails_helper'

class Hash 
    def json(parts) # recebe os dados
        ary = parts.split(">") # separa os dois elementos
        ary.reduce(self) do |memo, key| # memoriza o anterior para fazer o fetch
            memo.fetch(key.to_s.strip) if memo # o strip transforma a chave em string. Retira o espaço entre os dados.
        end
    end
end

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

    it 'GET v1/contacts/:id' do
        contact = Contact.first
        request.accept = 'application/vnd.api+json'
        get :show, params: {id: contact.id}

        response_body = JSON.parse(response.body)

        expect(response_body.json('data > id')).to eq(contact.id.to_s)
        expect(response_body.json('data > type')).to eq('contacts')
        expect(response_body.json('data > attributes > name')).to eq(contact.name)
    end

end