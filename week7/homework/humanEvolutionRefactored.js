class Human {
  constructor(full_name, age) {
    this.full_name = full_name;
    this.age = age;
  }
  sayName() {
    console.log(`Hi, my name is ${this.full_name}`);
  }
  sayAge() {
    console.log(`I'm ${this.age}`);
  }
}

class Developer extends Human {
  constructor() {
    super("bob",25)
  }
}