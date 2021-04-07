Passenger.delete_all
Booking.delete_all
Flight.delete_all
Airport.delete_all

jfk = Airport.create(name: 'John F. Kennedy International', code: 'JFK')
bos = Airport.create(name: 'Logan International', code: 'BOS')
lax = Airport.create(name: 'Los Angeles International', code: 'LAX')
hnd = Airport.create(name: 'Tokyo Haneda', code: 'HND')
iag = Airport.create(name: 'Niagara Falls International Airport', code: 'iag')

f1 = Flight.create(origin_id: jfk.id, destination_id: bos.id, date: '2021-09-08', duration: '80')
f2 = Flight.create(origin_id: lax.id, destination_id: jfk.id, date: '2021-09-08', duration: '500')
f3 = Flight.create(origin_id: jfk.id, destination_id: hnd.id, date: '2021-07-08', duration: '1000')
f4 = Flight.create(origin_id: iag.id, destination_id: hnd.id, date: '2021-08-05', duration: '700')
f5 = Flight.create(origin_id: iag.id, destination_id: jfk.id, date: '2021-08-05', duration: '50')
f6 = Flight.create(origin_id: hnd.id, destination_id: jfk.id, date: '2021-08-05', duration: '1900')
f7 = Flight.create(origin_id: bos.id, destination_id: jfk.id, date: '2021-08-05', duration: '80')
