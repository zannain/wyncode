class Dog {
  constructor(name) {
    this.name = name;
  }
  bark() {
    console.log("wuf! wuf!");
  }
  speak(msg) {
    console.log(this.name + " says: " + msg);
  }
}

class StBernard extends Dog {
  constructor() {
    super("Beethoven");
  }
}