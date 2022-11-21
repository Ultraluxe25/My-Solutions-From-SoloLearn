function person(name, age) {
  this.name = name;
  this.age = age;
  this.yearOfBirth = bornYear;
}

function bornYear() {
  return 2016 - this.age;
}

// Note that it's not necessary to write the function's parentheses when assigning it to an object.
