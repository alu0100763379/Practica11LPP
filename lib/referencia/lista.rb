#Clase para representar la Lista

Nodo = Struct.new(:value, :next_node, :prev_node)

class Lista
    
   include Enumerable

   attr_accessor :head, :value, :next_node, :tail, :prev_node

    def initialize
        @head = Nodo.new(nil)
        @head = nil
        @tail = Nodo.new(nil)
        @tail = nil
    end
  
    def add_principio(nodo)
        aux = Nodo.new(nodo, nil, nil)
        if (@head == nil && @tail == nil)
            @head = aux
            @tail = aux
        else
            aux.next_node = @head
            @head.prev_node = aux
            @head = aux
        end
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
        aux = Nodo.new(nodo, nil, nil)
        aux.prev_node = @tail
        @tail.next_node = aux
        @tail = aux
    end
    
    def each
        i = @head
        while (i != nil) 
            yield i.value
            i = i.next_node
        end
    end

    def add_muchos(nodo)
        nodo.each do |num| 
            self.add_principio(num)
        end
    end
    
end