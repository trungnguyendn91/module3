package service.facility.impl;

import model.RentType;
import model.ServiceType;
import model.customer.Customer;
import model.facility.Facility;
import repository.customer_repository.ICustomerRepository;
import repository.customer_repository.impl.CustomerRepositoryService;
import repository.facility_repository.IFacilityRepository;
import repository.facility_repository.impl.FacilityRepositoryService;
import service.facility.IFacilityService;

import java.sql.SQLException;
import java.util.List;

public class FacilityService implements IFacilityService {
    IFacilityRepository iFacilityRepository = new FacilityRepositoryService();
    @Override
    public boolean addFacility(Facility facility) {
        return iFacilityRepository.addFacility(facility);
    }

    @Override
    public List<Facility> selectAllFacility() {
        return iFacilityRepository.selectAllFacility();
    }

    @Override
    public boolean deleteFacility(int id) throws SQLException {
        return iFacilityRepository.deleteFacility(id);
    }

    @Override
    public boolean editFacility(Facility facility, int id) throws SQLException {
        return iFacilityRepository.editFacility(facility, id);
    }

    @Override
    public List<Facility> findByServiceName(String name) {
        return iFacilityRepository.findByServiceName(name);
    }

    @Override
    public Facility findFacilityById(int id) {
        return iFacilityRepository.findFacilityById(id);
    }

    @Override
    public List<ServiceType> getServiceTypeList() {
        return iFacilityRepository.getServiceTypeList();}

    @Override
    public List<RentType> getRentTypeList() {
        return iFacilityRepository.getRentTypeList();
    }


}
