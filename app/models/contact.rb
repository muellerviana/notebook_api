class Contact < ApplicationRecord
    belongs_to :kind
    def author
        "Mueller Viana"
    end

    def as_json(options={})
      super(
        root: true,
        methods: :author, 
        include: {kind: {only: :description}}
      )
    end
end
