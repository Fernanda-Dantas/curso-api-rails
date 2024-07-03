class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

      #O que o contato tem
      belongs_to :kind
      has_many :phones
      has_one :address

    def attributes(*args)
      hash = super(*args)
      # pt-BT ---> hash[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank?)
      hash[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
      hash
  end
end
