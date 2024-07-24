module ErrorSerializer
    def self.serializer(errors)
        return if errors.nil?

        json = {}

        new_hash = erros.to_hash.map do |k, v|
            v.map do |msg|
                { id: k, title: msg} # o id tem que colocar pois é da especificação.
            end
        end.flatten

        json[:errors] = new_hash
        json
    end
end