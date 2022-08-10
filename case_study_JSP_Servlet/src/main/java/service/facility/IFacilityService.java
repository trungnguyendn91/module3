package service.facility;

import model.RentType;
import model.ServiceType;
import model.customer.Customer;
import model.facility.Facility;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface IFacilityService {
    public boolean addFacility(Facility facility);

    public List<Facility> selectAllFacility();

    public boolean deleteFacility(int id) throws SQLException;

    public boolean editFacility(Facility facility, int id) throws SQLException;

    List<Facility> findByServiceName(String name);

    public  Facility findFacilityById(int id);

    List<ServiceType> getServiceTypeList();

    List<RentType> getRentTypeList();

    Map<String, String> add(Facility facility);


}
