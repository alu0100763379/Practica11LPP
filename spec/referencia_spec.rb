require 'spec_helper'

describe Referencia do
  

  before :each do
    
        @lista = Lista.new()
        
        @r1 = Bibliografia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide", "The Facets of Ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013",["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
        @r2 = Bibliografia.new(["Scott Chacon"], "Pro Git 2009th Edition", "Pro", "Apress", "2009 edition", "August 27, 2009", ["ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
        @r3 = Bibliografia.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "Serie", "O’Reilly Media", " 1 edition", "February 4, 2008", ["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
        @r4 = Bibliografia.new(["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010", ["ISBN-10: 1934356379", "ISBN-13: 978-1934356371",])
        @r5 = Bibliografia.new(["Richard E. Silverman"], "Git Pocket Guide", "Serie", "O’Reilly Media", "1 edition",  "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])    
        
        @n1 = Nodo.new(@r1)
        @n2 = Nodo.new(@r2)
        @n3 = Nodo.new(@r3)
        @n4 = Nodo.new(@r4)
        @n5 = Nodo.new(@r5)
        
  end

  it "Debe existir una Lista con su cabeza" do
  	@lista.add(@n1)
  	expect(@lista.head).to eq(@n1)
  end

end
