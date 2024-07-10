class AddressSerializer < ActiveModel::Serializer
    attributes :id, :street, :city

    #O endereço belongs a um contato
    belongs_to :contact do
      link(:related) { contact_address_url(object.contact.id) }
    end
  end
