class InitialPage
  require "./exit"
  require "./register"
  require"./see_all"

  REGISTER = 1
  SEEALL = 2
  SEARCH = 3
  FINISH = 4
  EXIT = 5

  while true
    puts <<~MENU
           -----------------------------------
           [1] Cadastrar um item para estudar 
           [2] Ver todos os itens cadastrados
           [3] Buscar um item de estudo 
           [4] Marcar um item como concluído
           [5] Sair 
           ------------------------------------
         MENU

    print "Escolha uma opção: "
    num = gets.chomp.to_i

    if num == REGISTER
      puts "Digite um titulo para materia que deseja cadastrar"
      title = gets.chomp()
      puts "Digite uma categoria para esse item de estudo"
      category = gets.chomp()
      Register.create(title, category)
    elsif num == SEEALL
      SeeAll.show()
    elsif num == SEARCH
      Search.new
    elsif num == FINISH
      Done.new
    elsif num == EXIT
      Exit.exiting()
      break
    else
      puts "Digite um numero válido"
      InitialPage.new
    end
  end
end
