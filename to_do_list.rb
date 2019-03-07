class ToDo
  def initialize
    @task_list = [
      "Hola",
      "Soy",
      "Una",
      "",
      "Lista",
      "Rara"
    ]
  end

  def list
    #PAULO
    #Lista elementos de @task_list
    @task_list.each_with_index do |task , id|
      puts "#{id + 1} - #{task}" if task != ""
    end
  end

  def add(task)
    #DIEGO
    #Agrega elementos a @task_list
    @task_list << task
  end

  def delete(pos)
    #CESAR
    #Reemplaza un elemento de @task_list con ""
    # todo_del = task_list.gsub(/@borrado/,"")
    # todo
    @task_list[pos] = ""
    list
  end
end

def input(user_input)
  #LIAN
  #Retorna un arreglo ["acccion", "argumento"]
  if !!(user_input =~ /^t$/) 
    return ["list",""]
  elsif !!(user_input =~ /^t\s[a-zA-Z0-9]+/)
    user_input[0..1] = ""
    return ["add",user_input]
  elsif !!(user_input =~ /^t\s-d\s\d+/)
    user_input[0..4] = ""
    return ["delete",user_input.to_i]
  elsif !!(user_input =~ /^q$/)
    exit 
  else
    return "Error: Unexpected input"
  end
end 




task = ToDo.new()
a = gets.chomp 
puts input(a)
