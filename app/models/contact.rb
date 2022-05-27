class Contact < ApplicationRecord
    belongs_to :kind, optional: true

    def author
        "Mueller Viana"
    end

    # def kind_description
    #     self.kind. description
    # end

    def as_json(options={})
      super(
        root: true,
        methods: :author # [:kind_description, :author ]        
      )
    end
end
