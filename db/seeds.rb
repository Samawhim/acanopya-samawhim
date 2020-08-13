Geocoder.configure(timeout: 60, lookup: :ban_data_gouv_fr)
Trip.destroy_all
Flat.destroy_all
Restaurant.destroy_all
Activity.destroy_all
BookingRestaurant.destroy_all
BookingFlat.destroy_all
BookingActivity.destroy_all
RestaurantReview.destroy_all
FlatReview.destroy_all
ActivityReview.destroy_all
puts 'trip destroyed'

User.destroy_all
puts 'user destroyed'

User.create!(
  email: "astrid@mail.com",
  password: "123456",
  first_name: "Louise",
  last_name: "dc",
  admin: false
)
User.create!(
  email: "harold@mail.com",
  password: "123456",
  first_name: "Diego",
  last_name: "ngano",
  admin: false
)
User.create!(
  email: "emmanuelle@mail.com",
  password: "123456",
  first_name: "Emma",
  last_name: "cavarle",
  admin: false
)
User.create!(
  email: "wila@mail.com",
  password: "123456",
  first_name: "Marc",
  last_name: "dc",
  admin: false
)
User.create!(
  email: "admin@mail.com",
  password: "123456",
  first_name: "Justine",
  last_name: "admin",
  admin: true
)
puts 'user created'

Trip.create!(
  user: User.all.sample,
  number_of_travellers: 2
)

  r1 = Restaurant.create!(
  name: "Maman Sardine",
  address: "7 quai de Rive Neuve, 13001 Marseille",
  description: "La délice des Sardines à Marseille. Poissons grillés, fruits de mer, tartares d'algues... de quoi ravir vos papilles avec des produits frais de la pêche du matin.",
  category: 'Poisson',
  price: 25
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262131/photo-1567452839976-5d4fdcb08bed_hakkdl.jpg')
  r1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262101/photo-1529059997568-3d847b1154f0_rzyj0f.jpg')
  r1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591103575/icohioh7-epE0YntPetKPGkI1Pg8Ff9S1UxKfl0p1lFri79UBQssc6q-P_AmZVYYPtsis65qByjacgYyZDWHi3mEcPe40SNt1cMkA3HQlq6qCW4rLRFHPv2cQZd2YQOiZR5sKIVW7g3lj-ml1l3RLi0Tvxi7V8ICw5JytmaIq7ob_q6e5px.jpg')
  r1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591103549/mr-fr_13_1435_px1ho1.jpg')
  r1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262131/photo-1567452839976-5d4fdcb08bed_hakkdl.jpg')
  r1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

puts 'ok1'

  r2 = Restaurant.create!(
  name: "Divine Pita",
  description: "Pour les amoureux de produits frais",
  category: 'Du monde',
  price: 15,
  address: "16 rue Neuve, 13001 Marseille"
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262777/photo-1555396273-367ea4eb4db5_wcwg1d.jpg')
  r2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591103307/0017cb_db2f8bfbc3004b61b761e572984e1af1_vmufxw.webp')
  r2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591103345/images_mjgopw.jpg')
  r2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262835/photo-1569760142069-bc6838de16c1_bknfnp.jpg')
  r2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262777/photo-1555396273-367ea4eb4db5_wcwg1d.jpg')
  r2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  r3 = Restaurant.create!(
  name: "Boulangerie Boudouard",
  description: "Vincent et Céline vous proposent du pain artisanal fabriqué à partir de farine locale, issue de la région. Outre leur farine, la majorité des produits utilisés sont de provenance locale et bios. Leurs créations en pâtisserie sont également à ne pas manquer, en particulier leurs cupcakes fait maison, dont c'est une des spécialités.",
  category: 'Française',
  price: 12,
  address: "7 rue sainte, 13001 Marseille"
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262212/photo-1546195643-70f48f9c5b87_dpajdk.jpg')
  r3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262185/photo-1485182708500-e8f1f318ba72_tbwwba.jpg')
  r3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591103058/photo-1589918072595-0546b0a4fd0b_yl8rsp.jpg')
  r3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262247/photo-1493770348161-369560ae357d_ohlrtw.jpg')
  r3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591103014/photo-1470192642743-245ea12f0164_hw5sl1.jpg')
  r3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  r4 = Restaurant.create!(
  name: "Chez Camille",
  description: "La meilleure bouillabaisse de Marseille, fait avec des produits issus de circuits courts",
  category: 'Poisson',
  price: 25,
  address: "56 Rue Mazenod, 13002 Marseille"
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591263210/photo-1589384114070-84dbfba76b18_ilpsrh.jpg')
  r4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591263272/photo-1565394642825-0db68c75b36f_opzb9s.jpg')
  r4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591263320/photo-1493147380900-672b878fe69e_jnd4s5.jpg')
  r4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591263368/photo-1469533778471-92a68acc3633_vurg4n.jpg')
  r4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591263210/photo-1589384114070-84dbfba76b18_ilpsrh.jpg')
  r4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')


   r6 = Restaurant.create!(
   name: "Mozz Art Pizza",
   description: "Comme en Italie mais 100% bio",
   category: 'Italienne',
   price: 15,
   address: "18 rue d'Italie, 13006 Marseille"
   )
  file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262972/photo-1554118811-1e0d58224f24_botcrh.jpg')
    r6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591263066/photo-1513104890138-7c749659a591_d7qszi.jpg')
    r6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591263113/photo-1574969903809-3f7a1668ceb0_c7mrhx.jpg')
    r6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591263164/photo-1586040456399-50595fb77ecd_g7h6yh.jpg')
    r6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262972/photo-1554118811-1e0d58224f24_botcrh.jpg')
    r6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  r7 = Restaurant.create!(
  name: "Le Saint-Jacques",
  address: '40, rue Sainte, 13001 Marseille',
  description: 'Les délices des Saint-Jacques à Marseille, un restarurant engagé envers une pêche sélective de façon à ne pas capturer des espèces non désirées qui seront rejetées à la mer',
  category: 'Poisson',
  price: 25
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590675294/photo-1559339352-11d035aa65de_t4dgsd.jpg')
  r7.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262279/photo-1414235077428-338989a2e8c0_xgynnw.jpg')
  r7.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262312/photo-1543969082-e79e8d52340a_f5l3p2.jpg')
  r7.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590675294/photo-1559339352-11d035aa65de_t4dgsd.jpg')
  r7.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591101444/233339646_wzjmvn.jpg')
  r7.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  r8 = Restaurant.create!(
  name: "Le gourmet",
  address: "58 rue d'Italie, 13006 Marseille",
  description: "La meilleure cuisine française à Marseille. Nous travaillons à l'anti-gaspillage alimentaire",
  category: 'Française',
  price: 35
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262873/photo-1517248135467-4c7edcad34c4_rvxqxu.jpg')
  r8.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591105784/photo-1428515613728-6b4607e44363_iztlvt.jpg')
  r8.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591105962/photo-1533777857889-4be7c70b33f7_tj2ul0.jpg')
  r8.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262909/photo-1481819167214-0427aac02394_noode5.jpg')
  r8.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262873/photo-1517248135467-4c7edcad34c4_rvxqxu.jpg')
  r8.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  r9 = Restaurant.create!(
  name: "Le Sud",
  address: '20 rue Paradis, 13001 Marseille',
  description: "La meilleure cuisine française 100% bio à Saint Raphaël",
  category: 'Française',
  price: 25
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262443/photo-1551632436-cbf8dd35adfa_lylzbb.jpg')
  r9.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262479/photo-1498654896293-37aacf113fd9_nly9qn.jpg')
  r9.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262515/photo-1543339318-b43dc53e19b3_yk29y2.jpg')
  r9.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262549/photo-1468218620578-e8d78dcda7b1_jyjvqp.jpg')
  r9.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591262443/photo-1551632436-cbf8dd35adfa_lylzbb.jpg')
  r9.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  f1 = Flat.create!( # f5pret
  name: "Sea View",
  address: '5 rue Malmousque, 13007 Marseille',
  description: "Sublimes chambres avec vue sur mer. Nous vous assurons l'utilisation de produits ménagers respecteux de l'environnement",
  capacity: 4,
  price: 100,
  label: 'ATR',
  availability: true
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591093694/70289606_fenxtg.jpg')
  f1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590674073/photo-1503174971373-b1f69850bded_yqulje.jpg')
  f1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591094532/233339487_rn0sir.jpg')
  f1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591094564/233342145_lppzuz.jpg')
  f1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591094591/233339328_oqugex.jpg')
  f1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  f2 = Flat.create!(
  name: "Residhotel vert",
  address: '2 quai du port, 13002 Marseille',
  description: "Chez Residhotel, la piscine est traitée sans produits chimiques",
  capacity: 4,
  price: 90,
  label: 'ATR',
  availability: true
  )
file = URI.open('https://res.cloudinary.com/djwsxwjql/image/upload/v1597323438/acanopya/photo-1527142879-95b61a0b8226_ejupk0_bq0mf4.jpg')
  f2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590673098/photo-1499916078039-922301b0eb9b_m75ibp.jpg')
  f2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590674176/photo-1531835551805-16d864c8d311_gryqvy.jpg')
  f2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591095640/253921093_il8sqp.jpg')
  f2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590674450/photo-1509481799743-a6a536be8100_yvx8dc.jpg')
  f2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  f3 = Flat.create!(  # f5pret
  name: "Golden Tulip Villa Massallia",
  address: '17 Place Louis Bonnefon, 13008 Marseille',
  description: "Car la beauté et la durabilité peuvent être ensemble, venez decouvrir toutes nos actions pour protéger l'environnement",
  capacity: 30,
  price: 75,
  label: 'ATR',
  availability: true
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591095611/168749215_b34xnu.jpg')
  f3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591095640/253921093_il8sqp.jpg')
  f3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591095667/253920885_dr8f4j.jpg')
  f3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591095685/253920874_z6a4my.jpg')
  f3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591095702/253920873_fszpkt.jpg')
  f3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  f4 = Flat.create!(# f5pret
  name: "Hotel Le Grand Prado vert",
  address: '7 Square des Frères Ambrogiani, 13008 Marseille',
  description: "En plus des comoditée des chambres, l'hôtel vous propose dans chaque chambre des gels douches et des shampoings certifiés écocert",
  capacity: 12,
  price: 75,
  label: 'ATES',
  availability: true
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590674198/photo-1540518614846-7eded433c457_o62hpf.jpg')
  f4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591096337/243951309_kfnxan.jpg')
  f4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591096362/243951302_bbl1su.jpg')
  f4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591096382/243951282_mmuo1l.jpg')
  f4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591096408/243951280_rlmptj.jpg')
  f4.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  f5 = Flat.create!( # f5pret
  name: "Hôtel Kyriad Marseille",
  address: '4 Rue Emile Duclaux, 13004 Marseille',
  description: "Pour nous il est important de réduire les émissions de gaz à effets de serre. C’est la raison pour laquelle, les livraisons de blanchisserie pour l’Hôtel et le bar-restaurant sont regroupées le même jour à la même heure.",
  capacity: 12,
  price: 65,
  label: 'ATES',
  availability: true
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590674073/photo-1503174971373-b1f69850bded_yqulje.jpg')
  f5.photos.attach(io: file, filename: 'f5-1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591093938/76374880_ruxhmk.jpg')
  f5.photos.attach(io: file, filename: 'f5-2.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591093981/76375233_x3ai2u.jpg')
  f5.photos.attach(io: file, filename: 'f5-3.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591094008/102973145_fknsvw.jpg')
  f5.photos.attach(io: file, filename: 'f5-4.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591094395/76375502_l5kdvy.jpg')
  f5.photos.attach(io: file, filename: 'f5-5.png', content_type: 'image/png')

  f6 = Flat.create!( # f5pret
  name: "Domaine de l'Esterel",
  address: '12 rue de Ruffi, 13002 Marseille',
  description: "Idéal pour votre voyage en famille, nous mettons à votre disposition un petit déjeuner écolo tous les matins de 7h00 à 11h00",
  capacity: 6,
  price: 120,
  label: 'ATES',
  availability: true
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591100560/163754846_chnqle.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591100619/71562904_ulginz.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591100642/71562914_avlzdm.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591100661/71562898_cns4hu.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  f6 = Flat.create!( # f5pret
  name: "Chez Lili",
  address: '18 rue Lulli, 13001 Marseille',
  description: "L'hôtel se situe près de la gare. Idéal pour votre voyage en famille, nous mettons à votre disposition un petit déjeuner écolo tous les matins de 7h00 à 11h00",
  capacity: 6,
  price: 70,
  label: 'ATES',
  availability: true
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591261418/photo-1496417263034-38ec4f0b665a_oxaxhk.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591101112/145323996_homg4o.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591101131/96901323_mlav3g.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591101145/96901381_nkv1hd.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591101158/96901358_e8tssc.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591101112/145323996_homg4o.jpg')
  f6.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

puts 'flats finis'

  a1 = Activity.create!(
  name: "Balade en bateau",
  address: 'quai du port, 13002 Marseille',
  description: "Balade guidée en mer pour vivre le lever du soleil. Nous partirons en voilier pour un impact zéro carbone",
  category: 'Mer',
  price: 40
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591106335/photo-1474917518260-23f84bd71c75_hwurwa.jpg')
  a1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591106347/photo-1529178232277-053c3432b4f9_mwhm9m.jpg')
  a1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591113269/photo-1552353617-3bfd679b3bdd_jn1fk7.jpg')
  a1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591113350/photo-1555934903-7ea439de2f44_tmft5m.jpg')
  a1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591106335/photo-1474917518260-23f84bd71c75_hwurwa.jpg')
  a1.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')


  a2 = Activity.create!(
  name: "L'atelier de la mer",
  address: "Avenue d'Odessa, 13008 Marseille",
  description: "Plonger avec nous c’est plonger dans un centre responsable et impliqué en matière de préservation durable du milieu marin, de son patrimoine naturel, paysager et de sa biodiversité.",
  category: 'Mer',
  price: 80
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591104865/photo-1544551763-46a013bb70d5_qjobqm.jpg')
  a2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591104865/photo-1544551763-46a013bb70d5_qjobqm.jpg')
  a2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591104888/photo-1544551763-92ab472cad5d_wnwk0d.jpg')
  a2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591104865/photo-1544551763-46a013bb70d5_qjobqm.jpg')
  a2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591104888/photo-1544551763-92ab472cad5d_wnwk0d.jpg')
  a2.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

puts 'activities en cours'

  a3 = Activity.create!(
  name: "Découvrez Marseille",
  address: "45 rue d'Italie, 13006 Marseille",
  description: "Si vous voulez appuyer l'économie locale, je vous propose une balade dans le village et vous accompagne dans la découverte des commerçants locaux",
  category: 'Randonée',
  price: 12
  )
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1590669571/photo-1535106356142-e3169a8b17d2_jjafj0.jpg')
  a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591106123/littoral_gmazco.jpg')
  a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591106140/restaurant-cafe-barriere-casino-barriere-saint-raphael-vue-sur-le-port-de-st-raphael-fa327_kibgqo.jpg')
  a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591106180/32358030e_l2ewws.jpg')
  a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591106204/DSC07608JPG_5a6074324d969_nhtvip.jpg')
  a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  # a4 = Activity.create!(
  #   name: "Le Château d'If",
  #   address: "45 rue d'Italie, 13006 Marseille",
  #   description: "Le château d'If est une forteresse française édifiée sur les ordres du roi François Iᵉʳ, entre 1527 et 1529 sur l'îlot d'If de l'archipel du Frioul, proche des îles de Ratonneau et Pomègues au centre de la rade de Marseille. C'est une construction carrée de trois étages mesurant 28 mètres sur chaque côté, flanquée de trois tours, percées de larges embrasures. Le reste de l'île, dont la dimension est seulement 3 hectares, est fortement défendu ; de hauts remparts avec des plates-formes d'artillerie surmontent les falaises. Il a essentiellement servi de prison pendant ses 400 ans d'utilisation officielle. Rendu célèbre par le roman d'Alexandre Dumas, Le Comte de Monte-Cristo, il est l'un des sites les plus visités de la ville de Marseille. Il a été classé monument historique le 7 juillet 1926.",
  #   category: 'Randonée',
  #   price: 23
  #   )
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591189796/303spvL_rojz2p.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591189832/2UmmQFh_jvfxvb.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591189883/3eMiDCl_rgqscu.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591189906/36TQczN_y5exdi.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591190649/caption_qeuzbz.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  #   puts 'activities en cours'

  #   a5 = Activity.create!(
  #   name: "Les Docks Village",
  #   address: "15 rue d'Italie, 13006 Marseille",
  #   description: "Ce bâtiment flambant neuf vient d’être élu officiellement lauréat dans la catégorie meilleur centre commercial à l’occasion de la cérémonie des MIPIM Awards 2016 qui s’est déroulée le 17 mars dernier à Cannes. C’est en quelques sortes le championnat du monde de l’immobilier qui se déroule chaque année sur la croisette. Soutenez les Docks pour le Prix du public, en votant ici.",
  #   category: 'Shopping',
  #   price: 40
  #   )
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591190556/2MCMfWZ_jha9vs.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591196242/Christian-Bizzari-Photographie-2_gpqitw.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591196317/marseille-les-docks-village-france-mars-fa_C3_A7ade-de-construction-moderne-_E2_80_9Cde-_E2_80_9C-un-centre-commercial-en-provence-143548365_wi8hzm.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591196403/20151010_180620_HDR_swieba.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  # file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591190991/37584_kiktkp.jpg')
  #   a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

  #   a6 = Activity.create!(
  #     name: "Randonnée dans les Calanques",
  #     address: "5 rue d'Italie, 13006 Marseille",
  #     description: "Vous serez accompagné d'un guide accompagnateur local qui vous fera découvrir les richesses de ce patrimoine classé Parc National et Patrimoine Mondial de l'Humanité. Situé aux portes de la ville, on y trouve une zone naturelle préservée de falaises calcaires abruptes, de plages, de forêts et maquis typiques de la méditerranée.",
  #     category: 'Randonnée',
  #     price: 20
  #     )
  #   file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591190556/2MCMfWZ_jha9vs.jpg')
  #     a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  #   file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591196444/830x532_parc-national-calanques-marseille_wp41bu.jpg')
  #     a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  #   file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591196479/calanques1_ymtfa1.jpg')
  #     a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  #   file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591196572/calanches-piana_poicve.jpg')
  #     a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')
  #   file = URI.open('https://res.cloudinary.com/doprhpcd8/image/upload/v1591196606/PA1_des-calanques-de-marseille-a-la-cote-bleue_prsery.jpg')
  #     a3.photos.attach(io: file, filename: 'nes1.png', content_type: 'image/png')

      puts 'activities fini'

Flat.all.each do |flat|
  BookingFlat.create!(
    trip: Trip.first,
    flat: flat
  )
end

Restaurant.all.each do |restaurant|
  BookingRestaurant.create!(
    trip: Trip.first,
    restaurant: restaurant
  )
end

Activity.all.each do |activity|
  BookingActivity.create!(
    trip: Trip.first,
    activity: activity
)
end

content_flat = ["Superbe lieu très bien situé et très central. L'accueil a été sur-mesure pour accueillir nos enfants très jeunes. J'ai adoré le petit déjeuner à base de produits locaux, faits maison.",
 "A découvrir! Nous avons été charmé par le cadre et la décoration. Leur engagement écologique est total. Promesse tenue! Merci Wila de nous l'avoir fait découvrir",
"Ce lieu est magique. J'ai même pu acheter des petits souvenirs régionaux dans leur boutique",
"Allez-y les yeux fermés. Ce lieu est le meilleur que j'ai trouvé dans la région, idéal pour les vacances familiales",
"Engagement éco-responsable incroyable. Cet hôtel est à la pointe de la technologie et en total respect de l'environnement",
"Acceuil, petit-déjeuner, tout est parfait pour un week-end en amoureux!"]

BookingFlat.all.each do |booking_flat|
  2.times do
    FlatReview.create!(
    booking_flat: booking_flat,
    user: booking_flat.trip.user,
    content: content_flat.sample,
    rating: rand(4..5)
  )
  end
end

content_restaurant = ["Vos papilles vont adorer! N'hésitez pas à prendre un dessert!",
"Top restaurant, super accueil, excellent service. Ils ont même pris le temps de nous expliquer les recettes locales",
"Jamais découvert un restaurant aussi dingue. Des spécialités locales réalisées par le chef Miguel",
"Restaurant incroyable!",
"J'ai adoré leurs spécialités! Mes enfants aussi",
"Testez le menu entrée, plat, dessert, les produits sont frais et savoureux"]

BookingRestaurant.all.each do |booking_restaurant|
2.times do
  RestaurantReview.create!(
  booking_restaurant: booking_restaurant,
  user: booking_restaurant.trip.user,
  content: content_restaurant.sample,
  rating: rand(4..5)
  )
  end
end

content_activity = ["Tellement dépaysant. J'ai eu l'impression de vivre au rythme de la nature!",
"Superbe excursion. En couple ou en famille, nous on a tous adoré",
"Des paysages superbes. C'était fou. Hâte d'y retourner",
"On nous a montré des petits coins préservés de tout, c'était incroyable!"]

BookingActivity.all.each do |booking_activity|
2.times do
  ActivityReview.create!(
  booking_activity: booking_activity,
  user: booking_activity.trip.user,
  content: content_activity.sample,
  rating: rand(4..5)
  )
  end
end

puts 'fini'

