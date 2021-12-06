class Print
  def self.printing(database)
    
    database.each do |data| 
      index = data[0]
      item = data[1]
      category = data[2]
      done = data[3]

      if done == 1
        done = "Finalizado"
      else
        done ="Não Finzalizado"
      end
    

    puts <<~PRINT
           ----------------------------------------------------
             Numero: #{index} Item: #{item} Categoria: #{category} Situação:#{done}
           ----------------------------------------------------
         PRINT
    end
    finish = gets
  end

end