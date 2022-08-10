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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        return iFacilityRepository.getServiceTypeList();
    }

    @Override
    public List<RentType> getRentTypeList() {
        return iFacilityRepository.getRentTypeList();
    }

    @Override
    public Map<String, String> add(Facility facility) {
            Map<String, String> errMap = this.validate(facility);
            if (errMap.isEmpty()) {
                iFacilityRepository.addNewFacility(facility);
            }
            return errMap;
        }


    public Map<String, String> validate(Facility facility) {
        Map<String, String> errMap = new HashMap<>();

        if (facility.getFacilityCost() < 0) {
            errMap.put("costErr", "Costs cannot be negative");
        }

        if (facility.getFacilityArea() < 0) {
            errMap.put("areaErr", "Area cannot be negative");
        }

        if (facility.getPoolArea() < 0) {
            errMap.put("poolErr", "Pool area cannot be negative");
        }

        if (facility.getNumberOfFloor() < 0 || (Math.floor(facility.getNumberOfFloor()) != Math.ceil(facility.getNumberOfFloor()))) {
            errMap.put("floorErr", "Number of floors must be an integer");
        }

        if (facility.getFacilityMaxPeople() < 0 || (Math.floor(facility.getFacilityMaxPeople()) != Math.ceil(facility.getFacilityMaxPeople()))) {
            errMap.put("maxPeopleErr", "Max people must be an integer");
        }

        if (!facility.getFacilityName().isEmpty()) {
            if (!facility.getFacilityName().matches("(^[A-Z0-9][a-z0-9]+)( [A-Z0-9][a-z0-9]+)*$")) {
                errMap.put("nameErr", "Please input right format");
            }
        } else {
            errMap.put("nameErr", "Please input service name");
        }

        return errMap;
    }

}



