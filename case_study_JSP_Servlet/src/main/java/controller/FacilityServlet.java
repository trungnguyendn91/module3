package controller;

import model.RentType;
import model.ServiceType;
import model.customer.Customer;
import model.facility.Facility;
import service.customer.ICustomerService;
import service.customer.impl.CustomerService;
import service.facility.IFacilityService;
import service.facility.impl.FacilityService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "FacilityServlet", urlPatterns ="/facility")
public class FacilityServlet extends HttpServlet {
    private IFacilityService facilityService = new FacilityService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    add(request, response);
                    break;
                case "edit":
                    updateFacility(request,response);
                    break;
                case "search":
                    //searchCountry(request, response);
                    break;
                case "delete":
                    deleteFacility(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        facilityService.deleteFacility(id);

        List<Facility> facilityList = facilityService.selectAllFacility();
        request.setAttribute("facility", facilityList);
        listFacility(request, response);
    }


    private void updateFacility(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String facilityName = request.getParameter("ten_dich_vu");
        int facilityArea  = Integer.parseInt(request.getParameter("dien_tich"));
        double facilityCost = Double.parseDouble(request.getParameter("gia_thue"));
        int facilityMaxPeople = Integer.parseInt(request.getParameter("so_nguoi_toi_da"));
        int rentTypeId = Integer.parseInt(request.getParameter("ma_kieu_thue"));
        int facilityTypeId = Integer.parseInt(request.getParameter("ma_loai_dich_vu"));
        String standardRoom = request.getParameter("tieu_chuan_phong");
        String description = request.getParameter("mo_ta_tien_nghi_khac");
        Double poolArea ;
        if(request.getParameter("dien_tich_ho_boi")==""){
            poolArea=0.0;
        }else
            poolArea= Double.parseDouble(request.getParameter("dien_tich_ho_boi"));
        int numberOfFloor;
        if(request.getParameter("so_tang")==""){
            numberOfFloor=0;
        }else numberOfFloor = Integer.parseInt(request.getParameter("so_tang"));
        String freeSerVice = request.getParameter("dich_vu_mien_phi_di_kem");
        Facility facility = new Facility(facilityName,facilityArea,facilityCost,facilityMaxPeople,
                rentTypeId,facilityTypeId,standardRoom,description,poolArea,numberOfFloor,freeSerVice);
        boolean check= facilityService.editFacility(facility,id);


        String message="";
        if(check){
            message="Thay dổi thành công";
        }else message="Thay đổi thất bại";
        request.setAttribute("message",message);
        listFacility(request,response);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String facilityName = request.getParameter("ten_dich_vu"); // colummLable : tên  thuocj tính của bảng
        int facilityArea  = Integer.parseInt(request.getParameter("dien_tich"));
        double facilityCost = Double.parseDouble(request.getParameter("gia_thue"));
        int facilityMaxPeople = Integer.parseInt(request.getParameter("so_nguoi_toi_da"));
        int rentTypeId = Integer.parseInt(request.getParameter("ma_kieu_thue"));
        int facilityTypeId = Integer.parseInt(request.getParameter("ma_loai_dich_vu"));
        String standardRoom = request.getParameter("tieu_chuan_phong");
        String description = request.getParameter("mo_ta_tien_nghi_khac");
        Double poolArea ;
        if(request.getParameter("dien_tich_ho_boi")==""){
            poolArea=0.0;
        }else
            poolArea= Double.parseDouble(request.getParameter("dien_tich_ho_boi"));
        int numberOfFloor;
        if(request.getParameter("so_tang")==""){
            numberOfFloor=0;
        }else numberOfFloor = Integer.parseInt(request.getParameter("so_tang"));
        String freeSerVice = request.getParameter("dich_vu_mien_phi_di_kem");
        Facility facility = new Facility(facilityName,facilityArea,facilityCost,facilityMaxPeople,
                rentTypeId,facilityTypeId,standardRoom,description,poolArea,numberOfFloor,freeSerVice);
        boolean check = facilityService.addFacility(facility);
        if (check){
            request.setAttribute("mess", "Them moi thanh cong");
        }else {
            request.setAttribute("mess", "Them moi thất bại");
        }
        showNewListFacility(request,response);

    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }


            switch (action) {
                case "create":
                   showNewListFacility(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;

                case "sort":
                    //sortUsers(request, response);
                    break;
                case "addUserPermision":
                    //addUserPermision(request, response);
                    break;
                default:
                    listFacility(request, response);

           }

    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/editService.jsp");
        int id = Integer.parseInt(request.getParameter("id"));
        Facility facility = facilityService.findFacilityById(id);
        List<RentType> rentalTypeList = facilityService.getRentTypeList();
        List<ServiceType> serviceTypes = facilityService.getServiceTypeList();
        request.setAttribute("rentalTypeList",rentalTypeList);
        request.setAttribute("serviceTypes",serviceTypes);
        request.setAttribute("facility",facility);
        request.setAttribute("id",id);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewListFacility(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.selectAllFacility();
        request.setAttribute("facilityList",facilityList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/editService.jsp");

        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listFacility(HttpServletRequest request, HttpServletResponse response)
    {
        List<Facility> facilityList = facilityService.selectAllFacility();
        request.setAttribute("listFacility", facilityList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/service/listService.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
