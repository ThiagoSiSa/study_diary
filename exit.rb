class Exit
  def self.exiting()
    puts <<~END
           ----------------------------------------------------
           Obrigado por utilizar meu Software,
           para esclarecer qualquer duvida entre em contato.
           cel: (11)973243010
           e-mail: santos.auto@hotmail.com
           https://www.linkedin.com/in/thiago-santos-33455572/
           https://github.com/ThiagoSiSa/study_diary
           ----------------------------------------------------
         END
    finish = gets
  end
end
