require_relative "contador"

class Estoque
	attr_reader :livros
	
	def initialize
		@livros = []
		@vendas = []
		@livros.extend Contador
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

	  def vende(livro)
	    @livros.delete livro
	    @vendas << livro
	  end

	  def maximo_necessario
	    @livros.maximo_necessario
	  end
end