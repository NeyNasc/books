require_relative "livro"


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

agile = Livro.new("Agile Web Development with Rails", 70, 2011)
livro_ruby = Livro.new("Programming Ruby 1.9", 60, 2010)
algoritmos = Livro.new("Algoritmos", 100, 1998, true)
livro_para_newsletter algoritmos

livros = [agile, livro_ruby, algoritmos]

#imprime_nota_fiscal livros


