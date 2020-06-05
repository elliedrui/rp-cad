Member.create(username: 'wayne', admin_level: 1, password: "password")
Member.create(username: 'illender', admin_level: 2, password: "password")
Member.create(username: 'leafy', admin_level: 0, password: "password")
Member.create(username: 'steven', admin_level: 3, password: "password")
# Persona.create(first_name: '', last_name: '', member_id: 2, has_agency: true, agency_id: 3)
# agency list: 
# 1 -LSSD
# 2 - LSPD
# 3 - SAHP
# 4 - LSFD
# 5 - SAMR

# illender's personas
Persona.create(first_name: 'Alec', last_name: 'Simms', member_id: 2, has_agency: true, agency_id: 3)
Persona.create(first_name: 'Jesse', last_name: 'Trueno', member_id: 2, has_agency: true, agency_id: 1)
Persona.create(first_name: 'Wallace', last_name: 'Jenkins', member_id: 2, has_agency: true, agency_id: 1)
Persona.create(first_name: 'Lance', last_name: 'Ferel', member_id: 2, has_agency: false, agency_id: )


