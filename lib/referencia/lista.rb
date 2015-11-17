#Clase para representar la Lista

Nodo = Struct.new(:value, :next_node, :prev_node)

class Lista
    
   attr_accessor :head, :value, :next_node, :tail, :prev_node

    def initialize
        @head = Nodo.new(nil)
        @tail = @head
    end
    
    def add_primer_nodo(nodo)
        nodo.next_node = @head
        nodo.prev_node = @tail
        @head = nodo
        @tail = nodo
    end
    
    def add_principio(nodo)
        nodo.next_node = @head
        @head.prev_node = nodo
        @head = nodo
    end

    def borrar_principio
        @head = @head.next_node
        @head.prev_node = nil
    end
    
    def borrar_final
        @tail = @tail.prev_node
        @tail.next_node = nil
    end
    
    def add_final(nodo)
        nodo.prev_node = @tail
        @tail.next_node = nodo
        @tail = nodo
    end
    
end