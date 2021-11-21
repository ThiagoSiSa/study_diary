class InitialPage 
    require './exit'
    require './register'

    while true do
        puts("\n
        [1] Cadastrar um item para estudar \n
        [2] Ver todos os itens cadastrados \n
        [3] Buscar um item de estudo \n
        [4] Sair \n
        Escolha uma opção:")

        num =gets.strip
            if num == '1' 
                puts 'Digite um titulo para materia que deseja cadastrar'
                title=gets.chomp()
                puts 'Digite uma categoria para esse item de estudo'
                category = gets.chomp()
                Register.new(category, title)
                
            elsif num == '2'
                SeeAll.new
            elsif num == '3'
                Search.new
            elsif num == '4'
                ex=Exit.new
                puts ex.exiting()
                break
            else
                puts "Digite um numero válido"
                InitialPage.new
                
            end
    end         
end
