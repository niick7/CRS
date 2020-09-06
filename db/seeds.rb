# Create initial data

if Admin.count == 0
  # Admins
  Admin.create(email: 'dnvo@miu.edu', password: '12345678')
  Admin.create(email: 'tnnguyen@miu.edu', password: '12345678')
  Admin.create(email: 'vhbnguyen@miu.edu', password: '12345678')

  # Renters
  Renter.create!(email: 'renter1@miu.edu', password: '12345678',
    firstName: 'Renter 1',
    lastName: 'CR1',
    phoneNumber: '641xxxxx1',
    address_attributes: {
      street: '1000N 4th St',
      city: 'Fairfield',
      state: 'IOWA',
      zip: '52557'
    }
  )
  Renter.create!(email: 'renter2@miu.edu', password: '12345678',
    firstName: 'Renter 2',
    lastName: 'CR2',
    phoneNumber: '641xxxxx2',
    address_attributes: {
      street: '900N 4th St',
      city: 'Fairfield',
      state: 'IOWA',
      zip: '52558'
    }
  )
  Renter.create!(email: 'renter3@miu.edu', password: '12345678',
    firstName: 'Renter 3',
    lastName: 'CR3',
    phoneNumber: '641xxxxx3',
    address_attributes: {
      street: '800N 4th St',
      city: 'Fairfield',
      state: 'IOWA',
      zip: '52559'
    }
  )

  # Cars
  Car.create(make: 'Honda', model: 'Civic', year: 2015, color: 'White', numOfSeats: 5, licensePlate: '9244', rentPrice: 500.00)
  Car.create(make: 'Honda', model: 'Accord', year: 2018, color: 'Blue', numOfSeats: 5, licensePlate: '7253', rentPrice: 550.00)
  Car.create(make: 'Toyota', model: 'Siena', year: 2015, color: 'Gold', numOfSeats: 5, licensePlate: '1452', rentPrice: 600.00)
  Car.create(make: 'Toyota', model: 'Camry', year: 2017, color: 'Grey', numOfSeats: 5, licensePlate: '7364', rentPrice: 550.00)
end