package repository.facility_repository.impl;

import model.RentType;
import model.ServiceType;
import model.customer.Customer;
import model.facility.Facility;
import repository.customer_repository.BaseRepository;
import repository.facility_repository.IFacilityRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepositoryService implements IFacilityRepository {
    private static final String SELECT_ALL_FACILITY = "select * from dich_vu where `status` = 1";
    private final String DELETE_FACILITY =  "UPDATE dich_vu SET `status` = 0 WHERE ma_dich_vu = ?";
    private final String FIND_BY_NAME = "select * from dich_vu where name like %?%;";
    private final String UPDATE_FACILITY = "update dich_vu set ten_dich_vu=?,dien_tich=?,gia_thue=?," +
            "so_nguoi_toi_da =?,ma_kieu_thue=?,ma_loai_dich_vu=?,tieu_chuan_phong=?,mo_ta_tien_nghi_khac=?,dien_tich_ho_boi=?," +
            "so_tang=? ,dich_vu_mien_phi_di_kem=? where ma_dich_vu = ?";
    private final String INSERT_INTO = " insert into dich_vu( ten_dich_vu," +
            " dien_tich,gia_thue,so_nguoi_toi_da,ma_kieu_thue,ma_loai_dich_vu, tieu_chuan_phong," +
            " mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,dich_vu_mien_phi_di_kem )" +
            " values (?,?,?,?,?,?,?,?,?,?,?)";
    private static final String SELECT_FACILITY_BY_ID = "select ten_dich_vu, dien_tich, gia_thue, " +
            "so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac," +
            "dien_tich_ho_boi, so_tang, dich_vu_mien_phi_di_kem from dich_vu where ma_dich_vu = ?";
    @Override
    public boolean addFacility(Facility facility) {
        int check;
        Connection connection = BaseRepository.getConnectDB();
        String freeService =facility.getFreeSerVice();
        double poolArea=facility.getPoolArea();
        String standardRoom=facility.getStandardRoom();
        String description=facility.getDescription();
        int numberOfFloors=facility.getNumberOfFloor();
        if(facility.getFacilityTypeId()==1) {
            facility = null;
        } else if(facility.getFacilityTypeId()==2) {
            freeService = null;
            poolArea =0;
        }else {
            poolArea=0;
            standardRoom=null;
            description=null;
            numberOfFloors=0;
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setString(1, facility.getFacilityName());//ten_dich_vu
            preparedStatement.setInt(2, facility.getFacilityArea());//dien_tich
            preparedStatement.setDouble(3, facility.getFacilityCost());//gia_thue
            preparedStatement.setInt(4, facility.getFacilityMaxPeople());//so_nguoi_toi_da
            preparedStatement.setInt(5, facility.getRentTypeId());//ma_kieu_thue
            preparedStatement.setInt(6, facility.getFacilityTypeId());//ma_loai_dich_vu
            preparedStatement.setString(7, facility.getStandardRoom());//tieu_chuan_phong
            preparedStatement.setString(8, facility.getDescription());//mo_ta_tien_nghi_khac
            preparedStatement.setDouble(9, facility.getPoolArea());//dien_tich_ho_boi
            preparedStatement.setInt(10, facility.getNumberOfFloor());//so_tang
            preparedStatement.setString(11, facility.getFreeSerVice());//dich_vu_mien_phi_di_kem
            // câu excuteUpdate trả về số lượng lượng cột bị ảnh hưởng?
            check =preparedStatement.executeUpdate();
            return (check==1);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Facility> selectAllFacility() {
        List<Facility> facilityList = new ArrayList<>();
        // kết nối dabase
        Connection connection = BaseRepository.getConnectDB();
        // tạo câu truy vấn
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FACILITY);
            ResultSet resultSet =preparedStatement.executeQuery();
            while (resultSet.next()){
                int facilityId = resultSet.getInt("ma_dich_vu");
                String facilityName = resultSet.getString("ten_dich_vu");
                int facilityArea  = resultSet.getInt("dien_tich");
                double facilityCost = resultSet.getDouble("gia_thue");
                int facilityMaxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int facilityTypeId = resultSet.getInt("ma_loai_dich_vu");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                String description = resultSet.getString("mo_ta_tien_nghi_khac");
                int numberOfFloor = resultSet.getInt("so_tang");
                String freeSerVice = resultSet.getString("dich_vu_mien_phi_di_kem");
                Facility facility = new Facility(facilityId,facilityName,facilityArea,facilityCost,facilityMaxPeople,rentTypeId,facilityTypeId,standardRoom,description,poolArea,numberOfFloor,freeSerVice);
                facilityList.add(facility);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        // trả về 1 list
        return facilityList;
    }

    @Override
    public boolean deleteFacility(int id) throws SQLException {
        int rowDeleted;
        try {Connection connection = BaseRepository.getConnectDB();
            PreparedStatement statement = connection.prepareStatement(DELETE_FACILITY);
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() ;
            return rowDeleted >0? true:false;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean editFacility(Facility facility, int id) throws SQLException {
        int check;
        Connection connection = BaseRepository.getConnectDB();
        String freeService =facility.getFreeSerVice();
        double poolArea=facility.getPoolArea();
        String standardRoom=facility.getStandardRoom();
        String description=facility.getDescription();
        int numberOfFloors=facility.getNumberOfFloor();
        if(facility.getFacilityTypeId()==1) {
            facility = null;
        } else if(facility.getFacilityTypeId()==2) {
            freeService = null;
            poolArea =0;
        }else {
            poolArea=0;
            standardRoom=null;
            description=null;
            numberOfFloors=0;
        }
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_FACILITY);
            preparedStatement.setString(1, facility.getFacilityName());//ten_dich_vu
            preparedStatement.setInt(2, facility.getFacilityArea());//dien_tich
            preparedStatement.setDouble(3, facility.getFacilityCost());//gia_thue
            preparedStatement.setInt(4, facility.getFacilityMaxPeople());//so_nguoi_toi_da
            preparedStatement.setInt(5, facility.getRentTypeId());//ma_kieu_thue
            preparedStatement.setInt(6, facility.getFacilityTypeId());//ma_loai_dich_vu
            preparedStatement.setString(7, facility.getStandardRoom());//tieu_chuan_phong
            preparedStatement.setString(8, facility.getDescription());//mo_ta_tien_nghi_khac
            preparedStatement.setDouble(9, facility.getPoolArea());//dien_tich_ho_boi
            preparedStatement.setInt(10, facility.getNumberOfFloor());//so_tang
            preparedStatement.setString(11, facility.getFreeSerVice());//dich_vu_mien_phi_di_kem
            // câu excuteUpdate trả về số lượng lượng cột bị ảnh hưởng?
            preparedStatement.setInt(12,id);
            check =preparedStatement.executeUpdate();
            return (check==1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Facility> findByServiceName(String name) {
        return null;
    }

    @Override
    public Facility findFacilityById(int id) {
        Facility facility = null;
        // Bước 1: Thiết lập kết nối
        try {
            List<Facility> facilityList = new ArrayList<>();
            Connection connection = BaseRepository.getConnectDB();
            // Bước 2: Tạo một câu lệnh bằng cách sử dụng đối tượng kết nối
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FACILITY_BY_ID);
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Bước 3: Thực hiện truy vấn hoặc cập nhật truy vấn
            ResultSet rs = preparedStatement.executeQuery();

            // Bước 4: Xử lý đối tượng ResultSet.
            while (rs.next()) {
                int facilityId = rs.getInt("ma_dich_vu");
                String facilityName = rs.getString("ten_dich_vu");
                int facilityArea  = rs.getInt("dien_tich");
                double facilityCost = rs.getDouble("gia_thue");
                int facilityMaxPeople = rs.getInt("so_nguoi_toi_da");
                int rentTypeId = rs.getInt("ma_kieu_thue");
                int facilityTypeId = rs.getInt("ma_loai_dich_vu");
                String standardRoom = rs.getString("tieu_chuan_phong");
                double poolArea = rs.getDouble("dien_tich_ho_boi");
                String description = rs.getString("mo_ta_tien_nghi_khac");
                int numberOfFloor = rs.getInt("so_tang");
                String freeSerVice = rs.getString("dich_vu_mien_phi_di_kem");
                Facility facility1 = new Facility(facilityId,facilityName,facilityArea,facilityCost,facilityMaxPeople,rentTypeId,facilityTypeId,standardRoom,description,poolArea,numberOfFloor,freeSerVice);
                facilityList.add(facility1);
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        // trả về 1 list
        return facility;
    }

    @Override
    public List<ServiceType> getServiceTypeList() {
        List<ServiceType> serviceTypes = new ArrayList<>();
        Connection connection =BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from loai_dich_vu");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int serviceTypeCode = rs.getInt(1);
                String serviceTypeName = rs.getString(2);
                serviceTypes.add(new ServiceType(serviceTypeCode,serviceTypeName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  serviceTypes;
    }

    @Override
    public List<RentType> getRentTypeList() {
        List<RentType> rentalTypeList = new ArrayList<>();
        Connection connection =BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from kieu_thue");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int rentalTypeCode = rs.getInt(1);
                String rentalTypeName = rs.getString(2);
                rentalTypeList.add(new RentType(rentalTypeCode,rentalTypeName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  rentalTypeList;
    }
}
