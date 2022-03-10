//import Person "person";
import custom "custom";
import animal "animal";


actor {

//c1
    public func fun() : async custom.profile {
        var Jay : custom.profile  = {
          name = "Jay ng";
          age = 47;
          gender = "Male";
        };
        return Jay;
       // Debug.print(Jay);
    };


//c2

        var luna : animal.animal = {
            specie = "dog";
            energy = 100 ;  
         };
        Debug.print(luna);

//c4 
    public func create_animal_then_takes_a_break(specie: Text, energy : Nat): async animal{
        let a : animal.animal = {
            specee = specie;
            energy = energy;
        };
        return animal.animal_sleep(a);
    };

// c5 
    private type List<T> = List.List<T>;
    private var animals : [animal] = [{specie= ""; energy = 0}];
    private var animal_list: List<Animal> = List.fromArray<Animal>(animals);
// c6 


    public func push_animal(a: animal): async (){
        animal_list := List.push(a, animal_list);
    };

    public func get_animal(): async [Animal]{
        return List.toArray(animal_list);
    };



};