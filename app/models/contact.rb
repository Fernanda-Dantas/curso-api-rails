class Contact < ApplicationRecord
    def author
        "Fernanda dos Santos"
    end

    def as_json(options={}) 
        super(methods: :author, root:true)
    end
end
