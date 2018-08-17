
Actor.delete_all
Movie.delete_all
Appearence.delete_all

annette_bening = Actor.create(name:"Annette Bening", birthyear:1960, status:true, gender:"f", awards:"Golden-Globe, Emmys")
hilary_swank = Actor.create(name:"Hilary Swank", birthyear:1944, status:true, gender:"f", awards:"Academy, Golden-Globe")
imelda_stauton = Actor.create(name:"Imelda Stauton", birthyear:1962, status:true, gender:"f", awards:"Screen-Actors-Guild")
tea_leoni = Actor.create(name:"Tea Leoni", birthyear:1952, status:true, gender:"f", awards:"None")
nicole_kidman = Actor.create(name:"Nicole Kidman", birthyear:1951, status:true, gender:"f", awards:"Academy, Golden-Globe")
uma_thurman = Actor.create(name:"Uma Thurman ", birthyear:1948, status:true, gender:"f", awards:"BAFTA, Academy, Golden-Globe")
laura_linney = Actor.create(name:"Laura Linney", birthyear:1954, status:true, gender:"f", awards:"Golden-Globe, Primetime Emmy, Tony")
jamie_foxx = Actor.create(name:"Jamie Foxx", birthyear:1950, status:true, gender:"m", awards:"Academy, Golden-Globe, BAFTA Award")
johnny_depp = Actor.create(name:"Johnny Depp", birthyear:1953, status:true, gender:"m", awards:"Screen-Actors_Guld, Golden_Globe")
denzel_washington = Actor.create(name:"Denzel Washington", birthyear:1963, status:true, gender:"m", awards:"Tony, Academy, Golden-Globe")
leonardo_dicaprio = Actor.create(name:"Leonardo DiCaprio", birthyear:1943, status:true, gender:"m", awards:"Academy, Tony, Golden-Globe")
sacha_baron_cohen = Actor.create(name:"Sacha Baron Cohen", birthyear: 1978, status:true, gender:"m", awards:"Golden-Globe, MTV movie award")
jonah_hill = Actor.create(name:"Jonah hill", birthyear: 1983, status:true, gender:"m", awards:"Golden-Globe, MTV movie award")





american_beauty = Movie.create(title:"American-Beauty", year:2010, awards:" 5 Oscar, 1 Golden-Globe",   genre:"Drama", rating:8.4, sales: 356309554)
the_million_dollar_baby = Movie.create(title:"The Million Dollar baby",  year:2010, awards:"Grammys", genre:"Drama",  rating:4.0,  sales: 133404797)
shakespeare_in_love = Movie.create(title:"Shakespeare in love",  year:2004, awards:"None",    genre:"action", rating:8.0,  sales: 602718215)

the_departed = Movie.create(title:"The-Departed", year:2006, awards:"None", genre:"Adventure", rating:10.0,sales: 212609504)
borat = Movie.create(title:"Borat", year:2006, awards:"Academy", genre:"Comedy", rating:1.0, sales: 595092312)
training_day = Movie.create(title:"Training Day", year:2006, awards:"Academy", genre:"Action", rating:5.0, sales: 292576195)
pirates_of_the_carribean = Movie.create(title:"Pirates of the carribean", year:2006, awards:"Academy", genre:"Drama", rating:8.0, sales: 292576195)

blood_diamond = Movie.create(title:"Blood-Diamond",year:2006, awards:"Oscar", genre:"Action", rating:8.0, sales: 292576195)
inception = Movie.create(title:"Inception", year:2010, awards:"Grammys",  genre:"Action", rating:8.0, sales: 292576195)
wolf_of_wallstreet = Movie.create(title:"Wolf of Wall Street", year:2013, awards:"Acedemy, Golden-Globe", genre: "dark comedy", rating:8.2,  sales:392000001)
bad_boys = Movie.create(title:"Bad Boys", year:1995, awards:"BMI film-music award", genre:"Action", rating:6.8, sales:141000001)
moulan_rouge = Movie.create(title:"Moulan Rouge", year:2001, awards:"Oscar, Golden-Globe, Academy", genre:"musical romance", rating:7.6, sales:179000434)
kill_bill = Movie.create(title:"kill Bill", year:2003, awards:"Academy of Sci-Fi, Best-Score", genre:"Action", rating:8.1, sales:180000001)
the_truman_show = Movie.create(title:"The Truman Show", year:1998, awards:"BAFTA, Golden-Globe, Academe of Sci-fi", genre:"Comedy", rating:8.1, sales:264000201)
django = Movie.create(title:"Django", year:2012, awards:"Oscar, Golden-Globe, BAFTA", genre:"Acrion", rating:8.4, sales:425000001)



Appearence.create(actor:johnny_depp, movie:pirates_of_the_carribean)
Appearence.create(actor:imelda_stauton, movie:american_beauty)
Appearence.create(actor:denzel_washington, movie:training_day)
Appearence.create(actor:hilary_swank, movie:the_million_dollar_baby)
Appearence.create(actor:leonardo_dicaprio, movie:wolf_of_wallstreet)
Appearence.create(actor:leonardo_dicaprio, movie:the_departed)
Appearence.create(actor:leonardo_dicaprio, movie:inception)
Appearence.create(actor:leonardo_dicaprio, movie:blood_diamond)
Appearence.create(actor:jonah_hill, movie:wolf_of_wallstreet)
Appearence.create(actor:tea_leoni, movie:bad_boys)
Appearence.create(actor:nicole_kidman, movie:moulan_rouge)
Appearence.create(actor:uma_thurman, movie:kill_bill)
Appearence.create(actor:laura_linney, movie:the_truman_show)
Appearence.create(actor:jamie_foxx, movie:django)