/ Animal interface with an abstract method eat
interface Animal {
    void eat();  // Abstract method eat
}

// Bird interface with an abstract method fly
interface Bird {
    void fly();  // Abstract method fly
}

// Bat class implements both Animal and Bird interfaces
class Bat implements Animal, Bird {
    
    // Providing implementation for the eat() method from Animal interface
    @Override
    public void eat() {
        System.out.println("Bat is eating.");
    }

    // Providing implementation for the fly() method from Bird interface
    @Override
    public void fly() {
        System.out.println("Bat is flying.");
    }
}

// Main class to demonstrate multiple inheritance
public class MultipleInheritanceDemo {
    public static void main(String[] args) {
        // Creating an instance of Bat
        Bat bat = new Bat();
        
        // Calling both eat() and fly() methods
        bat.eat();  // From Animal interface
        bat.fly();  // From Bird interface
    }
}
