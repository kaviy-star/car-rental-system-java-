package dao;

import entity.*;
import java.util.List;

public interface ICarLeaseRepository {
    void addCar(Car car);
    void removeCar(int carID);
    List<Car> listAvailableCars();
    List<Car> listRentedCars();
    Car findCarById(int carID);
    
    void addCustomer(Customer customer);
    void removeCustomer(int customerID);
    List<Customer> listCustomers();
    Customer findCustomerById(int customerID);
    
    Lease createLease(int customerID, int carID, java.util.Date startDate, java.util.Date endDate);
    void returnCar(int leaseID);
    List<Lease> listActiveLeases();
    List<Lease> listLeaseHistory();
    
    void recordPayment(Lease lease, double amount);
}
