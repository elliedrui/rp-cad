
Agency.create(name: 'Los Santos Sheriff\'s Department', acronym: 'LSSD', type: 'LEO') #1
Agency.create(name: 'Los Santos Police Department', acronym: 'LSPD', type: 'LEO') #2
Agency.create(name: 'San Andreas Highway Patrol', acronym: 'SAHP', type: 'LEO') #3
Agency.create(name: 'Los Santos Fire Department', acronym: 'LSFD', type: 'FIRE') #4
Agency.create(name: 'San Andreas Medical Response', acronym: 'SAMR', type: 'EMS') #5

AdminLevel.create(admin_level: 'Community Director')
AdminLevel.create(admin_level: 'Deputy Director')
AdminLevel.create(admin_level: 'Advanced Roleplay Team')

#####

Member.create(username: 'wayne', admin_level: 1, password: "password")
Member.create(username: 'illender', admin_level: 2, password: "password")
Member.create(username: 'larry', admin_level: 0, password: "password")
Member.create(username: 'wallace', admin_level: 3, password: "password")

# Persona.create(first_name: '', last_name: '', member_id: , has_agency: true, agency_id: )
# Vehicle.create(plate_number: '', persona_id: 1, type_description: '', color: '')
# Gun.create(serial_num: '', type_description: '', persona_id: )
# Address.create(address: '', persona_id: , description: '', has_interior: )



# illender's personas
Persona.create(first_name: 'Alec', last_name: 'Simms', member_id: 2, has_agency: true, agency_id: 3)
Persona.create(first_name: 'Jesse', last_name: 'Trueno', member_id: 2, has_agency: true, agency_id: 1)
Persona.create(first_name: 'Wallace', last_name: 'Jenkins', member_id: 2, has_agency: true, agency_id: 1)
Persona.create(first_name: 'Lance', last_name: 'Ferel', member_id: 2, has_agency: false, agency_id: )

# illender's vehicles
Vehicle.create(plate_number: '831-TRF', persona_id: 1, type_description: 'Chevy Silverado', color: 'blue')
Vehicle.create(plate_number: 'Sheriff1', persona_id: 2, type_description: 'Unmarked Charger', color: 'black')
Vehicle.create(plate_number: 'pullover1', persona_id: 3, type_description: 'cop car', color: 'green')
Vehicle.create(plate_number: 'Crime1', persona_id: 4, type_description: 'custom motorcycle', color: 'red')

#illender's guns
Gun.create(serial_num: '123abc', type_description: 'combat pistol', persona_id: 1)
Gun.create(serial_num: '123abd', type_description: 'sns pistol', persona_id: 1)
Gun.create(serial_num: '223abc', type_description: 'combat pistol', persona_id: 2)
Gun.create(serial_num: '223abd', type_description: 'sns pistol', persona_id: 2)
Gun.create(serial_num: '323abc', type_description: 'combat pistol', persona_id: 3)
Gun.create(serial_num: '323abd', type_description: 'sns pistol', persona_id: 3)

# illender's addresses
Address.create(address: '123 fake st 11111', persona_id: 1, description: 'apt', has_interior: true)
Address.create(address: '123 paleto st 22222', persona_id: 2, description: 'house', has_interior: false)
Address.create(address: '123 street st 33333', persona_id: 3, description: 'apt', has_interior: true)
Address.create(address: '12333 road ave 44444', persona_id: 4, description: 'apt', has_interior: false)

###

# wayne's personas
Persona.create(first_name: 'John', last_name: 'Smith', member_id: 1, has_agency: true, agency_id: 3) # id5
Persona.create(first_name: 'Angry', last_name: 'Dude', member_id: 1, has_agency: false, agency_id: ) #id6


# wayne's vehicles
Vehicle.create(plate_number: 'sdsad21', persona_id: 5, type_description: 'car', color: 'blue')
Vehicle.create(plate_number: '343fs', persona_id: 6, type_description: 'car', color: 'green')


#wayne's guns
Gun.create(serial_num: '1234455', type_description: 'combat pistol', persona_id: 5)
Gun.create(serial_num: '13gf34', type_description: 'sns pistol', persona_id: 5)


# wayne's addresses
Address.create(address: '123 fake pl 55555', persona_id: 5, description: 'apt', has_interior: true)
Address.create(address: '22345 dert st 66666', persona_id: 6, description: 'house', has_interior: false)

###

# larry's personas
Persona.create(first_name: 'guy', last_name: 'fella', member_id: 3, has_agency: true, agency_id: 4) #id7

# larry's vehicles
Vehicle.create(plate_number: '32354g', persona_id: 7, type_description: 'truck', color: 'white')

#larry's guns
#none

# larry's addresses
Address.create(address: '223 reed pl 12434', persona_id: 7, description: 'house', has_interior: false)


###