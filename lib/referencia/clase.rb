class Bibliografia
    
    attr_accessor :autor, :titulo, :fecha
    
    def initialize(autor, titulo, fecha)
        @autor = autor
        @titulo = titulo
        @fecha = fecha
    end

end

class Libro < Bibliografia
    
    attr_accessor :serie, :editorial, :edicion, :isbn
    
    def initialize(serie, editorial, edicion, isbn)
        @serie = serie
        @editorial = editorial
        @edicion = edicion
        @isbn = isbn
    end
end

class Revista < Bibliografia
    
    attr_accessor :isnn
    
    def initialize(isnn)
        @isnn = issn
    end
end

class Electronico < Bibliografia
    
    attr_accessor :url
    
    def initialize(url)
        @url = url
    end
end
    
