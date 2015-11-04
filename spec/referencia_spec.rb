require 'spec_helper'
require 'referencia'

describe Referencia do
  

      before :each do
        autores = [ 'Dave Thomas', 'Andy Hunt', 'Chad Fowler' ]
        titulo = 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide'
        serie = '(The Facets of Ruby)'
        editorial = 'Pragmatic Bookshelf'
        edicion = '4 edition'
        fecha_publicacion = 'July 7, 2013'
        isbn = [ 'ISBN-13: 978-1937785499', 'ISBN-10: 1937785491']
        #@referencia = Bibliografia.new("[Hector]","La sala de informatica","443","Alpachino","Primera","2015","20")
        @r1 = Bibliografia.new(autores, titulo, serie, editorial, edicion, fecha_publicacion, isbn)
      end

  #describe 'Autor' do
   # it "Constructor" do
      #expect(@referencia).to eq("Hector","La sala de informatica","443","Alpachino","Primera","2015","20")
      #(@referencia.autor).should eql("Hector")
      #@referencia.should be_an_instance_of Bibliografia
  #  end
 # end
  
  describe "# Almacenamiento correcto de los atributos" do
    it "Debe existir uno o más autores" do
      @r1.get_autores.length.should_not be 0
    end
  end
  
  describe "# Existen los métodos de obtención de los atributos" do
    it "Existe un método para obtener el listado de autores" do
      @r1.respond_to?(:get_autores).should be true
    end
  end
  it "Existe un método para obtener el título" do
      @r1.respond_to?(:get_titulo).should be true
  end
end
