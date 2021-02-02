require_relative '../config/environment'

# we need variables here to pass as arguments
model_w = Word.new("model")
instance_w = Word.new("instance")
active_record_w = Word.new("active record")
argument_w = Word.new("argument")
array_ruby_w = Word.new("array")
associations_w = Word.new("associations")
attr_accessor_w = Word.new("attr_accessor")
attr_reader_w = Word.new("attr_reader")
attr_writer_w = Word.new("attr_writer")
attribute_w = Word.new("attribute")
binding_pry_w = Word.new("binding.pry")
class_method_w = Word.new("class method")
class_variable_w = Word.new("class variable")
class_w = Word.new("class")
domain_model_w = Word.new("domain model")
domain_modelling_w = Word.new("domain modelling")
dry_w = Word.new("dry")
enumerable_method_w = Word.new("enumerable method")
enumerable_w = Word.new("enumerable")
erd_w = Word.new("erd")
gem_w = Word.new("gem")
gemfile_w = Word.new("gemfile")
getter_method_w = Word.new("getter method")
hash_w = Word.new("hash")
initialize_w = Word.new("initialize")
instance_method_w = Word.new("instance method")
instance_variable_w = Word.new("instance variable")
iterate_w = Word.new("iterate")
many_to_many_relationship_w = Word.new("many_to_many relationship")
method_w = Word.new("method")
module_w = Word.new("module")
object_oriented_programming_w = Word.new("object oriented programming")
oop_w = Word.new("oop")
object_ruby_w = Word.new("object")
one_to_many_relationship_w = Word.new("one-to-many relationship")
parameter_w = Word.new("parameter")
pry_w = Word.new("pry")
require_all_w = Word.new("require_all")
require_relative_w = Word.new("require_relative")
self_w = Word.new("self")
setter_method_w = Word.new("setter method")
single_source_of_truth_w = Word.new("hash")
variable_w = Word.new("variable")
yagni_w = Word.new("yagni")


# we don't need variables here because we just want to create these objects

definitions_array = [{content: "an argument is what you invoke the method or function with", word: argument_w},
{content: "the relationship between the tables(models) in the database", word: attr_accessor_w},
{content: "attr_accessor is attr_reader and attr_writer combined.", word: attr_accessor_w},
{content: "attr_reader allows you to only read (access) information but not write (change) it", word: attr_reader_w},
{content: "it is a getter method", word: attr_reader_w},
{content: "attr_writer allows you to only write (change) information but not read (view) it", word: attr_writer_w},
{content: "it is a setter method", word: attr_writer_w},
{content: "If an instance is a human called Alex, you can think of attributes as different features: age, eye_color, height", word: attr_writer_w},
{content: "the relationship between the tables(models) in the database", word: attribute_w},
{content: "In Object-Oriented Programming, everything is an instance of a class.", word: class_w},
{content: "Class is like a blueprint from which Ruby creates instances.", word: class_w},
{content: "In Object-Oriented Programming, everything is an instance of a model (class).", word: model_w},
{content: "Model (class) is like a blueprint from which Ruby creates instances.", word: model_w},
{content: "Class is a cookie-cutter and instances are cookies", word: class_w},
{content: "Model (class) is a cookie-cutter and instances are cookies", word: model_w},
{content: "If a class is Dog, a class method example would be 'Dog.all', or 'Dog.dog_with_the_longest_ears'", word: class_method_w},
{content: "It's a method that is used to compare or store all instances of the method (e.g. .all)", word: class_method_w},
{content: "It's a method that concerns ALL instances of a given class and is marked with a dot (.)", word: class_method_w},
{content: "It's a variable that's stored in the class and is marked as @@ (e.g. @@all)", word: class_variable_w},
{content: "enumerables are collections, i.e. arrays, sets and hashes", word: enumerable_w},
{content: "enumerable methods are the ones you can call on collections, e.g. .map, .select, .filter, .each, .size", word: enumerable_method_w},
{content: "it's a diagram of model relationship", word: erd_w},
{content: "it's a domain model of your database", word: erd_w},
{content: "This method is used to retrieve or GET a value of an instance variable", word: getter_method_w},
{content: "is a collection of key-value pairs like this: 'employee: salary'. It is similar to an Array, except that the data pairing is done randomly using the object's keys (ie. employee) instead of a numeric index. A hash is also known as an associative array", word: hash_w},
{content: "it's a method that tells ruby to create an instance based on the blueprint provided by the class", word: initialize_w},
{content: "Instance is an object created following a blueprint from a class", word: instance_w},
{content: "If class is a cookie-cutter, then instance is a cookie!", word: instance_w},
{content: "Think about instances as examples of a group. E.g. ruby_dev_99 would be an instance of a class User", word: instance_w},
{content: "These are methods marked with a pound sign (#), they refer to what an instace can do", word: instance_method_w},
{content: "It is the behavior of an instance of a given class", word: instance_method_w},
{content: "If an instance is a dog called Floofy, an example of an instance method would be 'Dog#bark', or 'Dog#chase_its_tail'", word: instance_method_w},
{content: "It's a variable that stores information about the given instance and is marked as @ (e.g. @age)", word: instance_variable_w},
{content: "Your personal toolbox of methods that can be called upon instead of repeating them in your code", word: module_w},
{content: "Object Oriented Programming is a programming design pattern that allows you to build code modules, called classes, which work as blueprints used to create instances of objects with specific attributes and behaviors defined in the class layout.", word: object_oriented_programming_w},
{content: "OOP stands for 'Object Oriented Programming'. Object Oriented Programming is a programming design pattern that allows you to build code modules, called classes, which work as blueprints used to create instances of objects with specific attributes and behaviors defined in the class layout.", word: oop_w},
{content: "A parameter is an argument that you include in the function/method definition", word:  parameter_w},
{content: "It's like a placeholder variable for when the function is invoked later that you can use in the function/method body", word:  parameter_w},
{content: "Maybe methods are like Genies. The Genie can do all sorts of things for you. But who called the Genie? If Aladdin rubbed the lamp (aka 'called a method') then Aladdin is 'self' right now. But when Jafar rubs the lamp (calls a method), then that method is *his* genie now. Jafar is 'self'. So who is the one calling the genie (who is the one invoking this method)? That's self.", word: self_w},
{content: "self is what the method is called on; it's like the subject of the method so in floofy.bark, floofy will be the self and in Dog.all Dog will be self", word: self_w},
{content: "This method is used to SET or assign the value of an instance variable", word: setter_method_w},
{content: "This means that all the instances of a Dog class should be pushed only to the @@all in the Dog class; you can call Dog.all from another class, though", word: single_source_of_truth_w},
{content: "every single model should be responsible only for knowing where its own instances are; it's not the job of an instance to know everything of other instances --  it's the job of the class to know exactly what the instances are up to", word: single_source_of_truth_w},

{content: "It's like a little pocket of data", word: variable_w},
{content: "many to many is actually two one to many relationships joined by one common denominator", word: many_to_many_relationship_w},
{content: "require all can link multiple files", word: require_all_w},
{content: "require_all is a gem that gives you a require_all method; this method accepts an argument of the folder you want to tie in, e.g. 'models' if the folder is located in the same folder as the runner, or its relative path (e.g. require_all '../models) if it’s located somewhere else", word: require_all_w},
{content: "require_relative is a method provided by Ruby that allows you to tie another file to the one you're working in", word: require_relative_w},
{content: " to establish a many-to-many relationship you need a bridging class that joins the two into two different one-<many relationships", word: many_to_many_relationship_w},
{content: "for example an actor has many movies and movie has many actors; in order to have such a relationship in our app, we need to introduce a JOINER: Actor -< Role >- Movie", word: many_to_many_relationship_w},
{content: "Recipe for a many-to-many relationship: a) Create file with joiner class, b) Check whether runner file is connected to joiner file by creating a new test instance of the joiner class - an “unitialized” error means it’s not working, c) Create test data for joiner class, d) Write methods", word: many_to_many_relationship_w},
{content: "YAGNI: You Aren’t Gonna Need It - only create methods that are directly necessary", word: yagni_w},
{content: "binding.pry? more like binding.cry!", word: binding_pry_w},
{content: "pry me to the moon", word: pry_w},
{content: "pry me a river", word: pry_w},
{content: "pry me to the moon", word: pry_w},
{content: "domain modeling = planning out the relationships and characteristics of all the models in your app", word: domain_modelling_w},
{content: "Domain holds objects and their relationships", word: domain_model_w},
{content: "The Single Source of Truth principle: Every single model should only keep track of its own instances (i.e., Tweets only live in class Tweet; users only live in class User)", word: single_source_of_truth_w},
{content: "Recipe for #initialize: a) Write method with parameters; b) Write @instance_variables; c) Create attr_ macros... Recipe for .all: Define a @@class_variable; d) Define a self.all class method; e) << push the newly created instance to the @@class_variable", word: initialize_w},
{content: "Writing binding.pry; self is a good practice when writing and adding to code to periodically check what self is/does", word: pry_w},
{content: "If a method starts with self, you can call it with the class.", word: class_method_w},
{content: "self is a special variable that points to the object/class that 'owns' the currently executing code: For example, in a Dog class, method by itself is an instance method, called on an instance: stella.method - self.method is an class method, called on the entire class: Dog.method", word: self_w},
{content: "You won't really ever use attr_writer (exception is a form!)", word: attr_writer_w},
{content: "attr_accessor is a shortcut that means attr_reader and attr_writer.", word: attr_accessor_w},
{content: "Parameters are a data blueprint set when writing a function", word: parameter_w},
{content: "Arguments are real data passed into a function when called", word: argument_w},
{content: "D.R.Y: Don’t repeat yourself: use classes to avoid repeating yourself", word: dry_w},
{content: "There can be a binding pry within a binding pry", word: binding_pry_w}
]

definitions_array.each{|def_hash| Definition.new(def_hash[:content], def_hash[:word])}

dict_app = DictApp.new
dict_app.run

# binding.pry
