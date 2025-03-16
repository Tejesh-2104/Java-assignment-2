import java.util.Scanner;

// Abstract class BankAccount
abstract class BankAccount {
    protected double balance;

    // Constructor
    public BankAccount(double initialBalance) {
        this.balance = initialBalance;
    }

    // Abstract methods
    abstract void deposit(double amount);
    abstract void withdraw(double amount);
    abstract void checkBalance();
}

// DigitalBank implementing BankAccount
class DigitalBank extends BankAccount {
    // Constructor
    public DigitalBank(double initialBalance) {
        super(initialBalance);
    }

    // Implementing abstract methods
    @Override
    void deposit(double amount) {
        balance += amount;
        System.out.println("Deposited: $" + amount);
    }

    @Override
    void withdraw(double amount) {
        if (amount > balance) {
            System.out.println("Insufficient balance!");
        } else {
            balance -= amount;
            System.out.println("Withdrawn: $" + amount);
        }
    }

    @Override
    void checkBalance() {
        System.out.println("Current Balance: $" + balance);
    }

    // Unique method for DigitalBank
    void payOnline(double amount) {
        if (amount > balance) {
            System.out.println("Payment failed! Insufficient balance.");
        } else {
            balance -= amount;
            System.out.println("Online Payment Successful: $" + amount);
        }
    }
}

// Main class
public class BankDemo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // Taking user input for initial balance
        System.out.print("Enter initial balance: ");
        double initialBalance = scanner.nextDouble();

        // Using BankAccount reference for DigitalBank object
        BankAccount account = new DigitalBank(initialBalance);
        
        System.out.print("Enter amount to deposit: ");
        double depositAmount = scanner.nextDouble();
        account.deposit(depositAmount);
        
        System.out.print("Enter amount to withdraw: ");
        double withdrawAmount = scanner.nextDouble();
        account.withdraw(withdrawAmount);
        
        account.checkBalance();

        // Using DigitalBank reference to access payOnline()
        DigitalBank digitalAccount = new DigitalBank(initialBalance);
        
        System.out.print("Enter amount for online payment: ");
        double paymentAmount = scanner.nextDouble();
        digitalAccount.payOnline(paymentAmount);
        
        digitalAccount.checkBalance();
        
        scanner.close();
    }
}
