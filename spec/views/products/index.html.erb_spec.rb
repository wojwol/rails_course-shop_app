require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!( { name: 'Sneakers', price: 49.99, quantity: 4 } ),
      Product.create!( { name: 'Shirt', price: 25, quantity: 48 } )
    ])
  end

  it "renders a list of products" do
    render

    expect(rendered).to match /Sneakers/
    expect(rendered).to match /Shirt/
    expect(rendered).to match /49.99/
  end
end
