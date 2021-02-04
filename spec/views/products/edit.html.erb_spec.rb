require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!( { name: 'Sneakers', price: 49.99, quantity: 4 } ) )
  end

  it "renders the edit product form" do
    render

    expect(rendered).to match /Sneakers/
    expect(rendered).to match /49.99/
    expect(rendered).to match /product/
    expect(rendered).to match /name/
    expect(rendered).to match /price/
    expect(rendered).to match /quantity/
    expect(rendered).to match /submit/
  end
end
