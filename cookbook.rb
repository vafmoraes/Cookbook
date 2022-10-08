puts "Ola Mundo!"
def bem-vindo
  puts "Bem-vindo ao CookBook, sua rede social de receitas!"
end

def menu()
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"

  print "Escolha uma opção: "
end

ben_vindo()

receitas = []

menu()
opcao = gets.to_i()

while(opcao != 3) do
  puts "Digite o nome da receita: "
  nome = gets.chomps()

  receitas << nome
  
  puts
  puts "Receita #{nome} cadastrada com sucesso"
  puts
elsif(opcao == 2)
  puts "=========== Receitas Cadastradas ========"
  receitas.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts 
else
  puts "Opção inválida"
end

  menu()
  opcao = gets.to_i()
end

puts 'Obrigado por usar o Cookbook, até logo!'
  # aqui é o for em ruby
  # for receita in receitas do
  #   puts receita
  # end - for não é tão comum em ruby
  # outra forma de representar
  #.each do |receita|
  # puts receita
  # end
  # puts receitas #essa ultima forma também faz a mesma coisa que as outras duas
  