require 'spec_helper'
#require 'referencia'

describe Referencia do
  

  before :each do
    @referencia = Bibliografia.new(["Hector","Alejandro"],"La sala de informatica","443","Alpachino","Primera","2015","20")
  end

  describe 'Definicion de espectativas y pruebas' do
    it "Constructor: se ha creado el objeto" do
      @referencia.should be_an_instance_of Bibliografia
    end
    
    it "Debe existir uno o mas autores" do
      expect(@referencia.autor.length).not_to be 0
    end
    
    it "Debe existir un titulo" do
      expect(@referencia.titulo).to eq("La sala de informatica")
    end
    
    it "Debe existir una serie" do
      expect(@referencia.serie).to eq("443")
    end
    
    it "Debe existir una editorial" do
      expect(@referencia.editorial).to eq("Alpachino")
    end
    it "Debe existir un numero de edicion" do
      expect(@referencia.edicion).to eq("Primera")
    end
    it "Debe existir una fecha de publicacion" do
      expect(@referencia.fecha).to eq("2015")
    end
    it "Debe existir uno o mas numeros isnb" do
       expect(@referencia.isbn.length).not_to be 0
    end
    
    it "Existe un método para obtener el listado de autores" do
      @referencia.respond_to?(:autor).should be true
    end
    
    it "Existe un método para obtener el título" do
      @referencia.respond_to?(:titulo).should be true
    end
    
    it "Existe un método para obtener la serie" do
      @referencia.respond_to?(:serie).should be true
    end
    
    it "Existe un método para obtener la editorial" do
      @referencia.respond_to?(:editorial).should be true
    end
    
    it "Existe un método para obtener la edición" do
      @referencia.respond_to?(:edicion).should be true
    end
    
    it "Existe un método para obtener la fecha" do
      @referencia.respond_to?(:fecha).should be true
    end
    
    it "Existe un método para obtener la isbn" do
      @referencia.respond_to?(:isbn).should be true
    end
    
    it "Existe un método para obtener la referencia formateada" do
      @referencia.respond_to?(:to_s).should be true
    end
  end

end
