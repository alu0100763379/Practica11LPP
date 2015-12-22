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
    
    def autores(autor)
        @autor = []
        @autor << autor
    end
    
end

class Libro < Bibliografia
    
    attr_accessor :serie, :editorial, :edicion, :isbn
    
    def initialize (titulo, &bloque)
        super(titulo)
        instance_eval &bloque if block_given?
    end
    def nombre_serie(serie)
        @serie = serie
    end
 
    def nombre_editorial(editorial)
        @editorial = editorial
    end
 
    def numero_edicion(edicion)
        @edicion = edicion
    end
    
    def identificador(isbn)
        @isbn = isbn
    end
end

class Revista < Bibliografia
    
    attr_accessor :issn
    
    def initialize (titulo, &bloque)
        super(titulo)
        instance_eval &bloque if block_given?
    end
    
    def identificador(issn)
        @issn = issn
    end
end

class Electronico < Bibliografia
    
    attr_accessor :url
    
    def initialize(autor, titulo, fecha, url)
        super(autor, titulo, fecha)
        @url = url
    end
end