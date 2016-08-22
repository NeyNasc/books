class Livro
	attr_reader :titulo, :preco,:ano_lancamento
	
	def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
		@titulo = titulo
		@preco = calcula_preco preco
		@ano_lancamento = ano_lancamento
		@possui_reimpressao = possui_reimpressao
	end

	def possui_reimpressao?
		@possui_reimpressao		
	end

private
	def calcula_preco(base)
		if @ano_lancamento<2000
			base *0.7
		else
			base
		end
	end

end

