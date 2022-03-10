module {


    public type animal = {
        specie :  Text;
        energy : Nat;
    };


//c3 

    public func animal_sleep(a : animal) : animal{
         let update_animal : animal = {
             specie = a.specie ;
             energy = a.energy + 10;
         };
         // return update_animal ; 
    };



}