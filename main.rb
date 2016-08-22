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

algoritmos = Livro.new("Algoritmos", 100, 1998, true)
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70, 2011, true)
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true)
ruby = Livro.new("Programming Ruby", 100, 2004, true)

estoque = Estoque.new
estoque <<  algoritmos
puts estoque.livros.maximo_necessario
estoque <<  arquitetura
puts estoque.livros.maximo_necessario

estoque <<  programmer << ruby
puts estoque.livros.maximo_necessario

estoque.remove algoritmos
puts estoque.livros.maximo_necessario
