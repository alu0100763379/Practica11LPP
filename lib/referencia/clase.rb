class Bibliografia
    
    include Comparable
    
    attr_accessor :autor, :titulo, :fecha
    
    def initialize(titulo, &bloque)
        self.titulo = titulo
        instance_eval &bloque if block_given?
    end
    
    def <=> (other)
        if @autor == other.autor
            @titulo <=> other.titulo
        else
            @autor <=> other.autor
        end
    end
    
    def fecha_publicacion(fecha)
        @fecha = fecha
    end
    
end

class Libro < Bibliografia
    
    attr_accessor :serie, :editorial, :edicion, :isbn
    
    def initialize(autor, titulo, fecha, serie, editorial, edicion, isbn)
        super(autor, titulo, fecha)
        @serie = serie
        @editorial = editorial
        @edicion = edicion
        @isbn = isbn
    end
end

class Revista < Bibliografia
    
    attr_accessor :issn
    
    def initialize(autor, titulo, fecha, isnn)
        super(autor, titulo, fecha)
        @isnn = issn
    end
end

class Electronico < Bibliografia
    
    attr_accessor :url
    
    def initialize(autor, titulo, fecha, url)
        super(autor, titulo, fecha)
        @url = url
    end
end