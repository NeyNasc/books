class Estoque
	attr_accessor :livros

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

	def adiciona(livro)
		@livros<<livro if livro		
	end
end