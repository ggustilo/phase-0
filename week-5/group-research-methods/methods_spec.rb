require_relative "my_solution"

# PERSON 2: MODIFY EXISTING DATA
describe 'PERSON 2: my_array_modification_method!' do
  let(:i_want_pets) {["I", "want", 3, "pets", "but", "only", "have", 2 ]}

  it "adds one to any integer in the array" do
    expect(my_array_modification_method!(i_want_pets, 1)).to eq ["I", "want", 4, "pets", "but", "only", "have", 3 ]
  end

  it "operates destructively by altering the original array" do
     expect(my_array_modification_method!(i_want_pets, 1).object_id).to eq(i_want_pets.object_id)
  end

end

describe 'PERSON 2: my_hash_modification_method!' do

  let(:my_family_pets_ages) {{"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}}

  it "adds a specified number of years to any integer in the hash" do
    expect(my_hash_modification_method!(my_family_pets_ages, 2)).to eq({"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5})
  end

  it "operates destructively by altering the original hash" do
     expect(my_hash_modification_method!(my_family_pets_ages, 2).object_id).to eq(my_family_pets_ages.object_id)
  end

end
