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
    @lista.add_primer_nodo(@n1)
  	expect(@lista.head).to eq(@n1)
  	expect(@lista.tail).to eq(@n1)
  end

  it "Debe poderse insertar un elemento en la lista por el principio" do
    @lista.add_primer_nodo(@n1)
    @lista.add_principio(@n2)
    expect(@lista.head).to eq(@n2)
    expect(@n2.value).to eq(@r2)
  end
  
  it "Debe poderse insertar un elemento en la lista por el final" do
    @lista.add_primer_nodo(@n1)
    @lista.add_final(@n3)
    expect(@lista.tail).to eq(@n3)
    expect(@n3.value).to eq(@r3)
  end
  
  it "Se extrae el primer elemento de la lista." do
    @lista.add_primer_nodo(@n1)
    @lista.add_principio(@n2)
    @lista.borrar_principio
    expect(@lista.head).to eq(@n1)
    expect(@n1.value).to eq(@r1)
  end
  
  it "Se extrae el ultimo elemento de la lista." do
    @lista.add_primer_nodo(@n1)
    @lista.add_final(@n3)
    @lista.borrar_final
    expect(@lista.head).to eq(@n1)
    expect(@n1.value).to eq(@r1)
  end
  
  it "Expectativa de herencia" do
    expect(@r2.is_a?Bibliografia).to eq(true)
  end
  
  it "Instancia" do
    expect(@r3.instance_of?Electronico).to eq(true)
  end
end
