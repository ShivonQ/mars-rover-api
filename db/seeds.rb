# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }  { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke'  movie: movies.first)
rov1 = RoverManifest.create(name:'Spirit', landing_date:'2004-01-04',  launch_date:'2003-06-10',  max_date:'2010-03-21', portrait:'spirit.jpg',miniPortrait:'mini-spirit.png', status:'complete',  total_photos:124550, max_sol:1500)
rov2 = RoverManifest.create(name:'Opportunity', landing_date:'2004-01-25', launch_date:'2003-07-07', max_date:'2017-02-22', portrait:'opportunity.jpg',miniPortrait:'mini-opportunity.png',status:'active', total_photos:187093 , max_sol:1500)
rov3 = RoverManifest.create(name:'Curiosity', landing_date:'2012-08-06', launch_date:'2011-11-26', max_date:'2017-03-12', portrait:'curiosity.jpg',miniPortrait:'mini-curiosity.png',status:'active', total_photos:308239 , max_sol:1500)

user1 = User.create(name:'malcolm123', password:'badpassword1')
user2 = User.create(name:'leehan456', password:'worsepassword2')

fave_img1 = FaveImg.create(rover: 'opportunity', cam_name:'Panoramic Camera', image_date:'2012-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/p/2881/1P383951934EFFBR43P2550L6M2-BR.JPG', user: user1)
fave_img2 = FaveImg.create(rover: 'opportunity', cam_name:'Panoramic Camera',image_date:'2012-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/p/2881/1P383951934EFFBR43P2550L6M2-BR.JPG', user: user2)
fave_img3 = FaveImg.create(rover: 'opportunity', cam_name:'Navigation Camera',image_date:'2012-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/n/2881/1N383943589EDNBR43P1588R0M1-BR.JPG', user: user2)
fave_img4 = FaveImg.create(rover: 'opportunity', cam_name:'Navigation Camera',image_date:'2012-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/n/2881/1N383943522EDNBR43P1588R0M1-BR.JPG', user: user2)
fave_img3 = FaveImg.create(rover: 'opportunity', cam_name:'Navigation Camera',image_date:'2012-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/n/2881/1N383943633EDNBR43P1588R0M1-BR.JPG', user: user1)
fave_img3 = FaveImg.create(rover: 'opportunity', cam_name:'Navigation Camera',image_date:'2012-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/n/2881/1N383943545EDNBR43P1588R0M1-BR.JPG', user: user2)

cam1 = Camera.create(name: 'NAVCAM', fullName:'Navigation Camera', rover_manifest:rov1)
cam2 = Camera.create(name: 'NAVCAM', fullName:'Navigation Camera', rover_manifest:rov2)
cam3 = Camera.create(name: 'NAVCAM', fullName:'Navigation Camera', rover_manifest:rov3)
cam4 = Camera.create(name: 'FHAZ', fullName:'Front Hazard Avoidance Camera', rover_manifest:rov1)
cam5 = Camera.create(name: 'FHAZ', fullName:'Front Hazard Avoidance Camera', rover_manifest:rov2)
cam6 = Camera.create(name: 'FHAZ', fullName:'Front Hazard Avoidance Camera', rover_manifest:rov3)

img1 = Image.create(rover_manifest:rov1, camera:cam1, date:'12-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/n/2881/1N383943522EDNBR43P1588R0M1-BR.JPG')
img2 = Image.create(rover_manifest:rov1, camera:cam1, date:'12-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/n/2881/1N383943522EDNBR43P1588R0M1-BR.JPG')
img3 = Image.create(rover_manifest:rov1, camera:cam1, date:'12-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/n/2881/1N383943522EDNBR43P1588R0M1-BR.JPG')
img4 = Image.create(rover_manifest:rov1, camera:cam1, date:'12-03-03', url:'http://mars.nasa.gov/mer/gallery/all/1/n/2881/1N383943522EDNBR43P1588R0M1-BR.JPG')