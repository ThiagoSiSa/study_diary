class Register
    attr_accessor :title, :category
    require 'json'

    def initialize(title='Geral',category='Geral')
        @title=title
        @category=category

        file = File.read('/home/thiago/challenge/data.json')
        reg = JSON.parse(file)
        
        reg["data"].push({"category" => category, "title" => title})

        File.open("/home/thiago/challenge/data.json","w") do |f|
            f.write(reg.to_json)
          end
        InitialPage.new
    end
end