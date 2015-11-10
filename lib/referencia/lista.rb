#Clase para representar la Lista

Nodo = Struct.new(:value, :next_node)

class Lista
    
   attr_accessor :head, :value, :next_node

    def initialize
        @head = Nodo.new(nil)
    end

    def add(nodo)
        nodo.next_node = @head
        @head = nodo
    end

    def remove
        @head = @head.next_node
    end 

end