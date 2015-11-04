class Bibliografia
    
    attr_accessor :autor, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
    
    def initialize(autor, titulo, serie, editorial, edicion, fecha, isbn)
        @autor = autor
        @titulo = titulo
        @serie = serie
        @editorial = editorial
        @edicion = edicion
        @fecha = fecha
        @isbn = isbn
    end
    
    def to_s
        "(#{@autor},#{@titulo},#{@serie},#{@editorial},#{@edicion},#{@fecha},#{@isbn})"
    end
    
    def get_autores
      # Devuelve el listado de autores
      @autor
  end
  
  def get_titulo
      # Devuelve el título
      @titulo
  end
  
  def get_serie
      # Devuelve la serie
      @serie
  end
  
  def get_editorial
      # Devuelve la editorial
      @editorial
  end
  
  def get_numero_edicion
      # Devuelve el número de edición
      @edicion
  end
  
  def get_fecha_publicacion
      # Devuelve la fecha de publicación
      @fecha
  end
  
  def get_isbn
      # Devuelve el listado de números ISBN
      @isbn
  end
end
    
