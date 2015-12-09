require 'spec_helper'

describe Referencia do
  

  before :each do
    
        @lista = Lista.new()
        
        @r1 = Libro.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide", "The Facets of Ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013",["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @r2 = Revista.new(["Scott Chacon"], "Pro Git 2009th Edition", "August 27, 2009", ["ISSN-13: 978-1430218333", "ISSN-10: 1430218339"])
        @r3 = Electronico.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "February 4, 2008", "http://0596516177IS978_0596516178")
              
        @n1 = Nodo.new(@r1)
        @n2 = Nodo.new(@r2)
        @n3 = Nodo.new(@r3)
        
  end

  it "La lista debe tener su cabeza y su cola" do
    @lista.add_principio(@r1)
  	expect(@lista.head).to eq(@n1)
  	expect(@lista.tail).to eq(@n1)
  end

  it "Debe poderse insertar un elemento en la lista por el principio" do
    @lista.add_principio(@r1)
    @lista.add_principio(@r2)
    expect(@lista.head.value).to eq(@r2)
  end
  
  it "Debe poderse insertar un elemento en la lista por el final" do
    @lista.add_principio(@r1)
    @lista.add_final(@r3)
    expect(@lista.tail.value).to eq(@r3)
  end
  
  it "Se extrae el primer elemento de la lista." do
    @lista.add_principio(@r1)
    @lista.add_principio(@r2)
    @lista.borrar_principio
    expect(@lista.head.value).to eq(@r1)
  end
  
  it "Se extrae el ultimo elemento de la lista." do
    @lista.add_principio(@r1)
    @lista.add_final(@r3)
    @lista.borrar_final
    expect(@lista.head.value).to eq(@r1)
  end
  
  it "Expectativa de herencia" do
    expect(@r2.is_a?Bibliografia).to eq(true)
  end
  
  it "Instancia" do
    expect(@r3.instance_of?Electronico).to eq(true)
  end

  context "Lista enumerable" do
    before :each do
       @r1 = Revista.new(["Scott Chacon"], "Pro Git 2009th Edition", "August 27, 2009", ["ISSN-13: 978-1430218333", "ISSN-10: 1430218339"])
       @r2 = Electronico.new(["David Flanagan"], "The Ruby Programming Language", "February 4, 2008", "http://0596516177IS978_0596516178")
       @r3 = Libro.new(["David Flanagan"], "Git Pocket Guide", "Serie", "Reilly Media", "1 edition",  "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])
      @lista2 = Lista.new()
      @lista2.add_muchos([@r1,@r2,@r3])
    end
    
    it "Comprobando que se han insertado bien todos los elementos en la lista" do
      expect(@lista2.all?).to eq(true)
    end
    
    it "Comprobando que se ha insertado bien al menos un elemento en la lista" do
      expect(@lista2.any?).to eq(true)
    end
    
    it "Comprobando el elemento maximo de la lista" do
      expect(@lista2.max).to eq(@r1)
    end
    
    it "Comprobando el elemento minimo de la lista" do
      expect(@lista2.min).to eq(@r3)
    end
    
    it "Contando elementos de la lista" do
      expect(@lista2.count).to eq(3)
    end
    
    it "Ordenando elementos de la lista" do
      expect(@lista2.sort).to eq([@r3,@r2,@r1])
    end
    
  end
  
  context "Referencia Comparable" do
    before :each do
        @r1 = Revista.new(["Scott Chacon"], "Pro Git 2009th Edition", "August 27, 2009", ["ISSN-13: 978-1430218333", "ISSN-10: 1430218339"])
        @r2 = Electronico.new(["David Flanagan"], "The Ruby Programming Language", "February 4, 2008", "http://0596516177IS978_0596516178")
        @r3 = Libro.new(["David Flanagan"], "Git Pocket Guide", "Serie", "Reilly Media", "1 edition",  "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])    
   
    end
    
    it "La Referencia del Autor Scott Chacon es mayor que la de David Flanagan" do
      expect(@r1 > @r2).to eq(true)
    end
    
    it "La referencia tres de David Flanagan es menor que la su referencia dos" do
      expect(@r3 < @r2).to eq(true)
    end
    
    it "La Referencia del Autor Scott Chacon es mayor que la de David Flanagan" do
      expect(@r1 < @r2).to eq(false)
    end
    
    #El que esta mas cerca de la A es el mas pequeño.
    #Si las letras coinciden mira las siguientes.
    #Si el autor es el mismo emplea la misma tactica con el titulo.
    
  end

  describe 'APA' do
    
    before :each do
        @r1 = APA.new(["Scott Chacon"], "Pro Git 2009th Edition", "August 27, 2009", ["ISSN-13: 978-1430218333", "ISSN-10: 1430218339"])
        @r2 = Electronico.new(["David Flanagan"], "The Ruby Programming Language", "February 4, 2008", "http://0596516177IS978_0596516178")
        @r3 = Libro.new(["David Flanagan"], "Git Pocket Guide", "Serie", "Reilly Media", "1 edition",  "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])    
   
    end

	end
end

	
