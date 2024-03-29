require_relative("../models/continent.rb")
require_relative("../models/country.rb")
require_relative("../models/city.rb")
require_relative("../models/sight.rb")
require("pry-byebug")

Sight.delete_all()
City.delete_all()
Country.delete_all()
Continent.delete_all()

continent1 = Continent.new({
  "name" => "Africa"
  })

continent2 = Continent.new({
  "name" => "Europe"
  })

continent3 = Continent.new({
  "name" => "Asia"
  })

continent4 = Continent.new({
  "name" => "North-America"
  })

continent5 = Continent.new({
  "name" => "South-America"
  })

continent6 = Continent.new({
  "name" => "Australia"
  })

continent1.save()
continent2.save()
continent3.save()
continent4.save()
continent5.save()
continent6.save()

country1 = Country.new({
  "name" => "Egypt",
  "continent_id" => continent1.id
  })

country2 = Country.new({
  "name" => "Morocco",
  "continent_id" => continent1.id
  })

country3 = Country.new({
  "name" => "Germany",
  "continent_id" => continent2.id
  })

country4 = Country.new({
  "name" => "Italy",
  "continent_id" => continent2.id
  })

country1.save()
country2.save()
country3.save()
country4.save()

city1 = City.new({
  "name" => "Cairo",
  "country_id" => country1.id,
  "visited" => true
  })

city2 = City.new({
  "name" => "Alexandria",
  "country_id" => country1.id,
  "visited" => true
  })

city3 = City.new({
  "name" => "Roma",
  "country_id" => country4.id,
  "visited" => true
  })

city4 = City.new({
  "name" => "Venice",
  "country_id" => country4.id,
  "visited" => false
  })

city1.save()
city2.save()
city3.save()
city4.save()

sight1 = Sight.new({
  "name" => "Bibliotheca Alexandrina",
  "city_id" => city2.id
  })

sight2 = Sight.new({
  "name" => "Montaza Palace",
  "city_id" => city2.id
  })

sight1.save
sight2.save

binding.pry
nil

{"Afghanistan"=>"https://restcountries.eu/data/afg.svg","Åland Islands"=>"https://restcountries.eu/data/ala.svg","Albania"=>"https://restcountries.eu/data/alb.svg","Algeria"=>"https://restcountries.eu/data/dza.svg","American Samoa"=>"https://restcountries.eu/data/asm.svg","Andorra"=>"https://restcountries.eu/data/and.svg","Angola"=>"https://restcountries.eu/data/ago.svg","Anguilla"=>"https://restcountries.eu/data/aia.svg","Antarctica"=>"https://restcountries.eu/data/ata.svg","Antigua and Barbuda"=>"https://restcountries.eu/data/atg.svg","Argentina"=>"https://restcountries.eu/data/arg.svg","Armenia"=>"https://restcountries.eu/data/arm.svg","Aruba"=>"https://restcountries.eu/data/abw.svg","Australia"=>"https://restcountries.eu/data/aus.svg","Austria"=>"https://restcountries.eu/data/aut.svg","Azerbaijan"=>"https://restcountries.eu/data/aze.svg","Bahamas"=>"https://restcountries.eu/data/bhs.svg","Bahrain"=>"https://restcountries.eu/data/bhr.svg","Bangladesh"=>"https://restcountries.eu/data/bgd.svg","Barbados"=>"https://restcountries.eu/data/brb.svg","Belarus"=>"https://restcountries.eu/data/blr.svg","Belgium"=>"https://restcountries.eu/data/bel.svg","Belize"=>"https://restcountries.eu/data/blz.svg","Benin"=>"https://restcountries.eu/data/ben.svg","Bermuda"=>"https://restcountries.eu/data/bmu.svg","Bhutan"=>"https://restcountries.eu/data/btn.svg","Bolivia (Plurinational State of)"=>"https://restcountries.eu/data/bol.svg","Bonaire, Sint Eustatius and Saba"=>"https://restcountries.eu/data/bes.svg","Bosnia and Herzegovina"=>"https://restcountries.eu/data/bih.svg","Botswana"=>"https://restcountries.eu/data/bwa.svg","Bouvet Island"=>"https://restcountries.eu/data/bvt.svg","Brazil"=>"https://restcountries.eu/data/bra.svg","British Indian Ocean Territory"=>"https://restcountries.eu/data/iot.svg","United States Minor Outlying Islands"=>"https://restcountries.eu/data/umi.svg","Virgin Islands (British)"=>"https://restcountries.eu/data/vgb.svg","Virgin Islands (U.S.)"=>"https://restcountries.eu/data/vir.svg","Brunei Darussalam"=>"https://restcountries.eu/data/brn.svg","Bulgaria"=>"https://restcountries.eu/data/bgr.svg","Burkina Faso"=>"https://restcountries.eu/data/bfa.svg","Burundi"=>"https://restcountries.eu/data/bdi.svg","Cambodia"=>"https://restcountries.eu/data/khm.svg","Cameroon"=>"https://restcountries.eu/data/cmr.svg","Canada"=>"https://restcountries.eu/data/can.svg","Cabo Verde"=>"https://restcountries.eu/data/cpv.svg","Cayman Islands"=>"https://restcountries.eu/data/cym.svg","Central African Republic"=>"https://restcountries.eu/data/caf.svg","Chad"=>"https://restcountries.eu/data/tcd.svg","Chile"=>"https://restcountries.eu/data/chl.svg","China"=>"https://restcountries.eu/data/chn.svg","Christmas Island"=>"https://restcountries.eu/data/cxr.svg","Cocos (Keeling) Islands"=>"https://restcountries.eu/data/cck.svg","Colombia"=>"https://restcountries.eu/data/col.svg","Comoros"=>"https://restcountries.eu/data/com.svg","Congo"=>"https://restcountries.eu/data/cog.svg","Congo (Democratic Republic of the)"=>"https://restcountries.eu/data/cod.svg","Cook Islands"=>"https://restcountries.eu/data/cok.svg","Costa Rica"=>"https://restcountries.eu/data/cri.svg","Croatia"=>"https://restcountries.eu/data/hrv.svg","Cuba"=>"https://restcountries.eu/data/cub.svg","Curaçao"=>"https://restcountries.eu/data/cuw.svg","Cyprus"=>"https://restcountries.eu/data/cyp.svg","Czech Republic"=>"https://restcountries.eu/data/cze.svg","Denmark"=>"https://restcountries.eu/data/dnk.svg","Djibouti"=>"https://restcountries.eu/data/dji.svg","Dominica"=>"https://restcountries.eu/data/dma.svg","Dominican Republic"=>"https://restcountries.eu/data/dom.svg","Ecuador"=>"https://restcountries.eu/data/ecu.svg","Egypt"=>"https://restcountries.eu/data/egy.svg","El Salvador"=>"https://restcountries.eu/data/slv.svg","Equatorial Guinea"=>"https://restcountries.eu/data/gnq.svg","Eritrea"=>"https://restcountries.eu/data/eri.svg","Estonia"=>"https://restcountries.eu/data/est.svg","Ethiopia"=>"https://restcountries.eu/data/eth.svg","Falkland Islands (Malvinas)"=>"https://restcountries.eu/data/flk.svg","Faroe Islands"=>"https://restcountries.eu/data/fro.svg","Fiji"=>"https://restcountries.eu/data/fji.svg","Finland"=>"https://restcountries.eu/data/fin.svg","France"=>"https://restcountries.eu/data/fra.svg","French Guiana"=>"https://restcountries.eu/data/guf.svg","French Polynesia"=>"https://restcountries.eu/data/pyf.svg","French Southern Territories"=>"https://restcountries.eu/data/atf.svg","Gabon"=>"https://restcountries.eu/data/gab.svg","Gambia"=>"https://restcountries.eu/data/gmb.svg","Georgia"=>"https://restcountries.eu/data/geo.svg","Germany"=>"https://restcountries.eu/data/deu.svg","Ghana"=>"https://restcountries.eu/data/gha.svg","Gibraltar"=>"https://restcountries.eu/data/gib.svg","Greece"=>"https://restcountries.eu/data/grc.svg","Greenland"=>"https://restcountries.eu/data/grl.svg","Grenada"=>"https://restcountries.eu/data/grd.svg","Guadeloupe"=>"https://restcountries.eu/data/glp.svg","Guam"=>"https://restcountries.eu/data/gum.svg","Guatemala"=>"https://restcountries.eu/data/gtm.svg","Guernsey"=>"https://restcountries.eu/data/ggy.svg","Guinea"=>"https://restcountries.eu/data/gin.svg","Guinea-Bissau"=>"https://restcountries.eu/data/gnb.svg","Guyana"=>"https://restcountries.eu/data/guy.svg","Haiti"=>"https://restcountries.eu/data/hti.svg","Heard Island and McDonald Islands"=>"https://restcountries.eu/data/hmd.svg","Holy See"=>"https://restcountries.eu/data/vat.svg","Honduras"=>"https://restcountries.eu/data/hnd.svg","Hong Kong"=>"https://restcountries.eu/data/hkg.svg","Hungary"=>"https://restcountries.eu/data/hun.svg","Iceland"=>"https://restcountries.eu/data/isl.svg","India"=>"https://restcountries.eu/data/ind.svg","Indonesia"=>"https://restcountries.eu/data/idn.svg","Côte d'Ivoire"=>"https://restcountries.eu/data/civ.svg","Iran (Islamic Republic of)"=>"https://restcountries.eu/data/irn.svg","Iraq"=>"https://restcountries.eu/data/irq.svg","Ireland"=>"https://restcountries.eu/data/irl.svg","Isle of Man"=>"https://restcountries.eu/data/imn.svg","Israel"=>"https://restcountries.eu/data/isr.svg","Italy"=>"https://restcountries.eu/data/ita.svg","Jamaica"=>"https://restcountries.eu/data/jam.svg","Japan"=>"https://restcountries.eu/data/jpn.svg","Jersey"=>"https://restcountries.eu/data/jey.svg","Jordan"=>"https://restcountries.eu/data/jor.svg","Kazakhstan"=>"https://restcountries.eu/data/kaz.svg","Kenya"=>"https://restcountries.eu/data/ken.svg","Kiribati"=>"https://restcountries.eu/data/kir.svg","Kuwait"=>"https://restcountries.eu/data/kwt.svg","Kyrgyzstan"=>"https://restcountries.eu/data/kgz.svg","Lao People's Democratic Republic"=>"https://restcountries.eu/data/lao.svg","Latvia"=>"https://restcountries.eu/data/lva.svg","Lebanon"=>"https://restcountries.eu/data/lbn.svg","Lesotho"=>"https://restcountries.eu/data/lso.svg","Liberia"=>"https://restcountries.eu/data/lbr.svg","Libya"=>"https://restcountries.eu/data/lby.svg","Liechtenstein"=>"https://restcountries.eu/data/lie.svg","Lithuania"=>"https://restcountries.eu/data/ltu.svg","Luxembourg"=>"https://restcountries.eu/data/lux.svg","Macao"=>"https://restcountries.eu/data/mac.svg","Macedonia (the former Yugoslav Republic of)"=>"https://restcountries.eu/data/mkd.svg","Madagascar"=>"https://restcountries.eu/data/mdg.svg","Malawi"=>"https://restcountries.eu/data/mwi.svg","Malaysia"=>"https://restcountries.eu/data/mys.svg","Maldives"=>"https://restcountries.eu/data/mdv.svg","Mali"=>"https://restcountries.eu/data/mli.svg","Malta"=>"https://restcountries.eu/data/mlt.svg","Marshall Islands"=>"https://restcountries.eu/data/mhl.svg","Martinique"=>"https://restcountries.eu/data/mtq.svg","Mauritania"=>"https://restcountries.eu/data/mrt.svg","Mauritius"=>"https://restcountries.eu/data/mus.svg","Mayotte"=>"https://restcountries.eu/data/myt.svg","Mexico"=>"https://restcountries.eu/data/mex.svg","Micronesia (Federated States of)"=>"https://restcountries.eu/data/fsm.svg","Moldova (Republic of)"=>"https://restcountries.eu/data/mda.svg","Monaco"=>"https://restcountries.eu/data/mco.svg","Mongolia"=>"https://restcountries.eu/data/mng.svg","Montenegro"=>"https://restcountries.eu/data/mne.svg","Montserrat"=>"https://restcountries.eu/data/msr.svg","Morocco"=>"https://restcountries.eu/data/mar.svg","Mozambique"=>"https://restcountries.eu/data/moz.svg","Myanmar"=>"https://restcountries.eu/data/mmr.svg","Namibia"=>"https://restcountries.eu/data/nam.svg","Nauru"=>"https://restcountries.eu/data/nru.svg","Nepal"=>"https://restcountries.eu/data/npl.svg","Netherlands"=>"https://restcountries.eu/data/nld.svg","New Caledonia"=>"https://restcountries.eu/data/ncl.svg","New Zealand"=>"https://restcountries.eu/data/nzl.svg","Nicaragua"=>"https://restcountries.eu/data/nic.svg","Niger"=>"https://restcountries.eu/data/ner.svg","Nigeria"=>"https://restcountries.eu/data/nga.svg","Niue"=>"https://restcountries.eu/data/niu.svg","Norfolk Island"=>"https://restcountries.eu/data/nfk.svg","Korea (Democratic People's Republic of)"=>"https://restcountries.eu/data/prk.svg","Northern Mariana Islands"=>"https://restcountries.eu/data/mnp.svg","Norway"=>"https://restcountries.eu/data/nor.svg","Oman"=>"https://restcountries.eu/data/omn.svg","Pakistan"=>"https://restcountries.eu/data/pak.svg","Palau"=>"https://restcountries.eu/data/plw.svg","Palestine, State of"=>"https://restcountries.eu/data/pse.svg","Panama"=>"https://restcountries.eu/data/pan.svg","Papua New Guinea"=>"https://restcountries.eu/data/png.svg","Paraguay"=>"https://restcountries.eu/data/pry.svg","Peru"=>"https://restcountries.eu/data/per.svg","Philippines"=>"https://restcountries.eu/data/phl.svg","Pitcairn"=>"https://restcountries.eu/data/pcn.svg","Poland"=>"https://restcountries.eu/data/pol.svg","Portugal"=>"https://restcountries.eu/data/prt.svg","Puerto Rico"=>"https://restcountries.eu/data/pri.svg","Qatar"=>"https://restcountries.eu/data/qat.svg","Republic of Kosovo"=>"https://restcountries.eu/data/kos.svg","Réunion"=>"https://restcountries.eu/data/reu.svg","Romania"=>"https://restcountries.eu/data/rou.svg","Russian Federation"=>"https://restcountries.eu/data/rus.svg","Rwanda"=>"https://restcountries.eu/data/rwa.svg","Saint Barthélemy"=>"https://restcountries.eu/data/blm.svg","Saint Helena, Ascension and Tristan da Cunha"=>"https://restcountries.eu/data/shn.svg","Saint Kitts and Nevis"=>"https://restcountries.eu/data/kna.svg","Saint Lucia"=>"https://restcountries.eu/data/lca.svg","Saint Martin (French part)"=>"https://restcountries.eu/data/maf.svg","Saint Pierre and Miquelon"=>"https://restcountries.eu/data/spm.svg","Saint Vincent and the Grenadines"=>"https://restcountries.eu/data/vct.svg","Samoa"=>"https://restcountries.eu/data/wsm.svg","San Marino"=>"https://restcountries.eu/data/smr.svg","Sao Tome and Principe"=>"https://restcountries.eu/data/stp.svg","Saudi Arabia"=>"https://restcountries.eu/data/sau.svg","Senegal"=>"https://restcountries.eu/data/sen.svg","Serbia"=>"https://restcountries.eu/data/srb.svg","Seychelles"=>"https://restcountries.eu/data/syc.svg","Sierra Leone"=>"https://restcountries.eu/data/sle.svg","Singapore"=>"https://restcountries.eu/data/sgp.svg","Sint Maarten (Dutch part)"=>"https://restcountries.eu/data/sxm.svg","Slovakia"=>"https://restcountries.eu/data/svk.svg","Slovenia"=>"https://restcountries.eu/data/svn.svg","Solomon Islands"=>"https://restcountries.eu/data/slb.svg","Somalia"=>"https://restcountries.eu/data/som.svg","South Africa"=>"https://restcountries.eu/data/zaf.svg","South Georgia and the South Sandwich Islands"=>"https://restcountries.eu/data/sgs.svg","Korea (Republic of)"=>"https://restcountries.eu/data/kor.svg","South Sudan"=>"https://restcountries.eu/data/ssd.svg","Spain"=>"https://restcountries.eu/data/esp.svg","Sri Lanka"=>"https://restcountries.eu/data/lka.svg","Sudan"=>"https://restcountries.eu/data/sdn.svg","Suriname"=>"https://restcountries.eu/data/sur.svg","Svalbard and Jan Mayen"=>"https://restcountries.eu/data/sjm.svg","Swaziland"=>"https://restcountries.eu/data/swz.svg","Sweden"=>"https://restcountries.eu/data/swe.svg","Switzerland"=>"https://restcountries.eu/data/che.svg","Syrian Arab Republic"=>"https://restcountries.eu/data/syr.svg","Taiwan"=>"https://restcountries.eu/data/twn.svg","Tajikistan"=>"https://restcountries.eu/data/tjk.svg","Tanzania, United Republic of"=>"https://restcountries.eu/data/tza.svg","Thailand"=>"https://restcountries.eu/data/tha.svg","Timor-Leste"=>"https://restcountries.eu/data/tls.svg","Togo"=>"https://restcountries.eu/data/tgo.svg","Tokelau"=>"https://restcountries.eu/data/tkl.svg","Tonga"=>"https://restcountries.eu/data/ton.svg","Trinidad and Tobago"=>"https://restcountries.eu/data/tto.svg","Tunisia"=>"https://restcountries.eu/data/tun.svg","Turkey"=>"https://restcountries.eu/data/tur.svg","Turkmenistan"=>"https://restcountries.eu/data/tkm.svg","Turks and Caicos Islands"=>"https://restcountries.eu/data/tca.svg","Tuvalu"=>"https://restcountries.eu/data/tuv.svg","Uganda"=>"https://restcountries.eu/data/uga.svg","Ukraine"=>"https://restcountries.eu/data/ukr.svg","United Arab Emirates"=>"https://restcountries.eu/data/are.svg","United Kingdom of Great Britain and Northern Ireland"=>"https://restcountries.eu/data/gbr.svg","United States of America"=>"https://restcountries.eu/data/usa.svg","Uruguay"=>"https://restcountries.eu/data/ury.svg","Uzbekistan"=>"https://restcountries.eu/data/uzb.svg","Vanuatu"=>"https://restcountries.eu/data/vut.svg","Venezuela (Bolivarian Republic of)"=>"https://restcountries.eu/data/ven.svg","Viet Nam"=>"https://restcountries.eu/data/vnm.svg","Wallis and Futuna"=>"https://restcountries.eu/data/wlf.svg","Western Sahara"=>"https://restcountries.eu/data/esh.svg","Yemen"=>"https://restcountries.eu/data/yem.svg","Zambia"=>"https://restcountries.eu/data/zmb.svg","Zimbabwe"=>"https://restcountries.eu/data/zwe.svg"}
