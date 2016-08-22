require_relative "livro"
require_relative "estoque"


def imprime_nota_fiscal(livros)
  livros.each do |livro|
    puts "Titulo: #{livro.titulo} - R$#{livro.preco}"
  end
end

def livro_para_newsletter(livro)
	if livro.ano_lancamento<1999
		puts "Newsletter/Liquidação"
		puts livro.titulo
		puts livro.preco		
	end
end

agile = Livro.new("Agile Web Development with Rails", 70, 2011, true)
livro_ruby = Livro.new("Programming Ruby 1.9", 60, 2010, true)
algoritmos = Livro.new("Algoritmos", 100, 1998, true)
#livro_para_newsletter algoritmos

livros = [agile, livro_ruby, algoritmos]

#imprime_nota_fiscal livros

estoque = Estoque.new

estoque.livros<<agile <<algoritmos<<livro_ruby
estoque.livros << Livro.new("The Pragmatic Programmer", 100, 1999, true)
estoque.livros << Livro.new("Programming Ruby", 100, 2004, true)
#estoque.livros << nil


estoque.exporta_csv
puts estoque.total
baratos = estoque.mais_barato_que 80
baratos.each do |livro|
	puts livro.titulo
end
