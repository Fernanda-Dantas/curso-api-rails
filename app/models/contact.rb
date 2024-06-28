class Contact < ApplicationRecord

    #Associations
    belongs_to :kind
    has_many :phones

    accepts_nested_attributes_for :phones

    def as_json(options={})
    hash = super(options)
    hash[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    hash
end

    # def to_br
    #   {
    #     name: self.name, 
    #     email: self.email,
    #     birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?) 
    #   }
    # end
    # def author
    #    "Fernanda dos Santos"
   # end

  #  def kind_description
    #    self.kind.description
    #end

   # def as_json(options={}) 
   #     super(
   #         root:true,
   #         methods: [:kind_description, :author]
   #         )
   # end 


end
