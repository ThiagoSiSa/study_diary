class Register
    attr_accessor :title, :category

    def initialize(title='Geral',category='Geral')
        @title=title
        @category=category
    end
end