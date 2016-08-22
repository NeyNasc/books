require_relative "livro"
require_relative "revista"
require_relative "ebook"
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

algoritmos = Livro.new("Algoritmos", 100, 1998, true, "", true)
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70, 2011, true, "", false)
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true, "", false)
online_arquiterua = EBook.new("Introdução À Arquitetura e Design de Software", 10, 2012, "")
ruby = Livro.new("Programming Ruby", 100, 2004, true, "", false)

revistona = Revista.new("Programando Ruby", 10, 2012, true, "Revistas", 3)

estoque = Estoque.new
estoque <<revistona <<online_arquiterua <<revistona <<revistona <<  algoritmos <<algoritmos <<ruby <<programmer <<arquitetura <<ruby <<ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende ruby
estoque.vende revistona
estoque.vende online_arquiterua

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo

puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo) 