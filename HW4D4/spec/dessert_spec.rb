require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:donut) {Dessert.new("donut", 50)}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "takes in a type" do
        expect(donut.type).to eq('donut')
    end

    it "takes in a quantity" do
      expect(donut.quantity).to eq(50)
    end  

    it "starts with an empty array of ingredients" do
      expect(donut.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity"
      expect { Dessert.new('lettuce', 'tons', chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      donut.add_ingredient("sprinkle")
      expect(donut.ingredients).to include("sprinkle")
    end
  end  

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
