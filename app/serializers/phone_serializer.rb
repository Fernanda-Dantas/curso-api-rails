class PhoneSerializer < ActiveModel::Serializer
    attributes :id, :number

        #O telefone belongs a um contato
        belongs_to :contact do
          link(:related) { contact_phones_url(object.contact.id) }
        end
  end
  