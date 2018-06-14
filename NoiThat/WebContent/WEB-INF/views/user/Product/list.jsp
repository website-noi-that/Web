<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

            <div class="row content">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="breadcrumbs">
                        <p>
                            <a href="#">Trang Chủ</a>
                            <i class="icons icon-right-dir"></i> Sản Phẩm
                            <i class="icons icon-right-dir"> </i> Danh Sách
                        </p>
                    </div>
                </div>
                <div class="main-content col-lg-12 col-md-12 col-sm-12">
                    <table class="blueTable">
                        <thead>
                            <tr>
                                <th>Mã SP</th>
                                <th>Tên SP</th>
                                <th>Xuất Xứ</th>
                                <th>Số Lượng</th>
                                <th>Đơn Vị Tính</th>
                                <th>Giá Bán</th>
                                <th>Tình Trạng</th>
                                <th>Hình</th>
                                <th>Tiêu Đề</th>
                                <th>Loại SP</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <td colspan="12">
                                    
                                    <div class="links">
                                        <a href="#">&laquo;</a>
                                        <a class="active" href="#">1</a>
                                        <a href="#">2</a>
                                        <a href="#">3</a>
                                        <a href="#">4</a>
                                        <a href="#">&raquo;</a>
                                    </div>
                                </td>
                            </tr>
                        </tfoot>
                        <tbody>
                            <c:forEach var="a" items="${list}">
                                <tr>
                                    <td>${a.maSP}</td>
                                    <td>${a.tenSP}</td>
                                    <td>${a.xuatXu}</td>
                                    <td>${a.soluong}</td>
                                    <td>${a.donViTinh}</td>
                                    <td>${a.giaBan}</td>
                                    <td>${a.tinhTrang}</td>
                                    <td>${a.hinh}</td>
                                    <td>${a.tieuDe}</td>
                                    <td>${a.tieuDe}</td>
                                    <td>
                                        <a href="edit-product/${a.maSP}.htm" type="button" class="btn btn-primary">Sửa</a>
                                    </td>
                                    <td>
                                        <a href="delete-product/${a.maSP}.htm" type="button" class="btn btn-primary">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        
                    </table>
                </div>
            </div>