package model;

public class RentType {
    private int rentalTypeCode;
    private String rentalTypeName;

    public RentType() {
    }

    public RentType(int rentalTypeCode, String rentalTypeName) {
        this.rentalTypeCode = rentalTypeCode;
        this.rentalTypeName = rentalTypeName;
    }

    public int getRentalTypeCode() {
        return rentalTypeCode;
    }

    public void setRentalTypeCode(int rentalTypeCode) {
        this.rentalTypeCode = rentalTypeCode;
    }

    public String getRentalTypeName() {
        return rentalTypeName;
    }

    public void setRentalTypeName(String rentalTypeName) {
        this.rentalTypeName = rentalTypeName;
    }
}
