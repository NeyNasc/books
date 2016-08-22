require_relative "produto"

class Revista

	include Produto
  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, numero, editora)
    @titulo = titulo
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco(preco)
    @numero = numero
    @possui_reimpressao = possui_reimpressao
    @editora = editora
  end


  def possui_reimpressao?
    @possui_reimpressao
  end

	def matches?(query)
		["revista", "impresso"].include?(query)
	end

end