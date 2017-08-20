class Book {
  constructor(title, author) {
    this.title = title;
    this.author = author;
  }
  getTitle() {
    return this.title;
  }
  getAuthor() {
    return this.author;
  }
  amISpecial() {
    var re = /w/i;
    if (this.title[0].match(re)) {
      return "I'm Wynning";
    } else {
      return "never judge a book by its cover ;)";
    }
  }
}

class Poem extends Book {
  constructor() {
    super("Angel", "PK");
  }
  recite() {
    return "You will(Need no)\n{Example at=All;\nif (You.are(GOOD))\nat.writing(Your.CODE);\n}"
  }
}

var favPoem = new Poem();
favPoem.getTitle();
// "Angel"
favPoem.getAuthor();
// "PK"
favPoem.amISpecial();
// "never judge a book by its cover ;)"
favPoem.recite();
//  "You will(Need no)
//  { Example at= All;
//  if (You.are(GOOD))
//  at.writing(Your.CODE);
//  }"