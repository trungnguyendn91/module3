package model.facility;

public class Facility {
    private int facilityId;
    private String facilityName;
    private int facilityArea;
    private double facilityCost;
    private int facilityMaxPeople;
    private int rentTypeId;
    private int facilityTypeId;
    private String standardRoom;
    private String description;
    private double poolArea;
    private int numberOfFloor;
    private String freeSerVice;

    public Facility() {
    }

    public Facility(int facilityId, String facilityName, int facilityArea, double facilityCost, int facilityMaxPeople, int rentTypeId, int facilityTypeId, String standardRoom, String description, double poolArea, int numberOfFloor, String freeSerVice) {
        this.facilityId = facilityId;
        this.facilityName = facilityName;
        this.facilityArea = facilityArea;
        this.facilityCost = facilityCost;
        this.facilityMaxPeople = facilityMaxPeople;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
        this.standardRoom = standardRoom;
        this.description = description;
        this.poolArea = poolArea;
        this.numberOfFloor = numberOfFloor;
        this.freeSerVice = freeSerVice;
    }

    public Facility( String facilityName, int facilityArea, double facilityCost, int facilityMaxPeople, int rentTypeId, int facilityTypeId, String standardRoom, String description, double poolArea, int numberOfFloor, String freeSerVice) {

        this.facilityName = facilityName;
        this.facilityArea = facilityArea;
        this.facilityCost = facilityCost;
        this.facilityMaxPeople = facilityMaxPeople;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
        this.standardRoom = standardRoom;
        this.description = description;
        this.poolArea = poolArea;
        this.numberOfFloor = numberOfFloor;
        this.freeSerVice = freeSerVice;
    }



    public int getFacilityId() {
        return facilityId;
    }

    public void setFacilityId(int facilityId) {
        this.facilityId = facilityId;
    }

    public String getFacilityName() {
        return facilityName;
    }

    public void setFacilityName(String facilityName) {
        this.facilityName = facilityName;
    }

    public int getFacilityArea() {
        return facilityArea;
    }

    public void setFacilityArea(int facilityArea) {
        this.facilityArea = facilityArea;
    }

    public double getFacilityCost() {
        return facilityCost;
    }

    public void setFacilityCost(double facilityCost) {
        this.facilityCost = facilityCost;
    }

    public int getFacilityMaxPeople() {
        return facilityMaxPeople;
    }

    public void setFacilityMaxPeople(int facilityMaxPeople) {
        this.facilityMaxPeople = facilityMaxPeople;
    }

    public int getRentTypeId() {
        return rentTypeId;
    }

    public void setRentTypeId(int rentTypeId) {
        this.rentTypeId = rentTypeId;
    }

    public int getFacilityTypeId() {
        return facilityTypeId;
    }

    public void setFacilityTypeId(int facilityTypeId) {
        this.facilityTypeId = facilityTypeId;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumberOfFloor() {
        return numberOfFloor;
    }

    public void setNumberOfFloor(int numberOfFloor) {
        this.numberOfFloor = numberOfFloor;
    }

    public String getFreeSerVice() {
        return freeSerVice;
    }

    public void setFreeSerVice(String freeSerVice) {
        this.freeSerVice = freeSerVice;
    }
}