module Contador
  def << (livro)
    push (livro)
    if @maximo_necessario.nil? || @maximo_necessario < size
      @maximo_necessario = size
    end
    self
  end

  def maximo_necessario
    @maximo_necessario  
  end
end

class Estoque
	attr_reader :livros
	@livros.extend Contador

	def initialize
		@livros = []
	end

	def exporta_csv
		@livros.each do |livro|
			puts livro.to_csv
		end	
	end

	def mais_barato_que(valor)
		@livros.select do |livro|
			livro.preco <= valor
		end	
	end

	def total
		@livros.size		
	end

	def << (livro)
    @livros << livro if livro
    self
	  end

	  def remove(livro)
	    @livros.delete livro
	  end

	  def maximo_necessario
	    @livros.maximo_necessario
	  end
end