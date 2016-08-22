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

algoritmos = Livro.new("Algoritmos", 100, 1998, true, "", "livro")
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70, 2011, true, "", "livro")
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true, "", "livro")
ruby = Livro.new("Programming Ruby", 100, 2004, true, "", "livro")

revistona = Livro.new("Revista de Ruby", 10, 2012, true, "Revistas", "revista")

estoque = Estoque.new
estoque <<revistona <<revistona <<revistona <<  algoritmos <<algoritmos <<ruby <<programmer <<arquitetura <<ruby <<ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende ruby
estoque.vende revistona

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo