class Contact < ApplicationRecord
    belongs_to :kind


    def to_br
      {
        name: self.name, 
        email: self.email,
        birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?) 
      }
    end
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
