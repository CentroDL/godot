Book.delete_all
Author.delete_all
Character.delete_all

Author.create([
{ name: "Hunter S. Thompson", born_on: "Sun, 18 Jul 1937", died_on: "Sun, 20 Feb 2005", gender: "male", has_pseudonym: true},
{ name: "Philip K. Dick", born_on: "Sun, 16 Dec 1928", died_on: "Tue, 02 Mar 1982", gender: "male", has_pseudonym: false},
{ name: "Stephen King", born_on: "Sun, 21 Sep 1947", died_on: nil, gender: "male", has_pseudonym: false },
{ name: "Joanne Rowling", born_on: "31 July 1965", died_on: nil, gender: "female", has_pseudonym: true }
])


Book.create([
  {title: "Fear and Loathing In Las Vegas", released_on:"November 11, 1971" , genre: "Gonzo Journalism", author_id: Author.find_by(name: "Hunter S. Thompson").id },
  {title: "Do Androids Dream of Electric Sheep?", released_on:"Jan 01 1968" , genre: "Science Fiction", author_id: Author.find_by(name: "Philip K. Dick").id },
  {title: "Harry Potter and the Philosopher's Stone", released_on:"26 June 1997" , genre: "Fantasy", author_id: Author.find_by(name: "Joanne Rowling").id },
  {title: "Harry Potter and the Chamber of Secrets", released_on:"02 July 1998" , genre: "Fantasy", author_id: Author.find_by(name: "Joanne Rowling").id }
  ])

Character.create([
{ name:"Raoul Duke", gender: "Male", quirk:"LSD", book_id: Book.find_by(title: "Fear and Loathing In Las Vegas").id },
{ name: "Rick Deckard", gender: "Male", quirk: "selfish", book_id: Book.find_by(title: "Do Androids Dream of Electric Sheep?").id },
{ name: "Harry Potter", gender: "Male", quirk:"Scar", book_id: Book.find_by(title: "Harry Potter and the Philosopher's Stone").id },
{ name: "Ron Weasley", gender: "Male", quirk:"Ginger", book_id: Book.find_by(title: "Harry Potter and the Chamber of Secrets").id },
{ name: "Hermione Granger", gender: "female", quirk:"Smarts", book_id: Book.find_by(title: "Harry Potter and the Philosopher's Stone").id }
])


