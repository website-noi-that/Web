<%@ page pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
                                <th>Số Lượng</th>
                                <th>Đơn Vị Tính</th>
                                <th>Giá Bán</th>
                                <th>Tình Trạng</th>
                                <th>Hình</th>
                                <th>Loại SP</th>
                                
                                <th><a href="#">Thêm</a></th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <td colspan="9">

                                    <div class="links">
                                        
                                        <c:if test="${paginationProducts.totalPages > 1}">
                                            <c:forEach items="${paginationProducts.navigationPages}" var="page">
                                                <c:if test="${page != -1 }">
                                                    <a href="list-product.htm?page=${page}" class="nav-item">${page}</a>
                                                </c:if>
                                                <c:if test="${page == -1 }">
                                                    <span class="nav-item"> ... </span>
                                                </c:if>
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                </td>
                            </tr>
                        </tfoot>
                        <tbody>
                            <c:forEach var="a" items="${paginationProducts.list}">
                                <tr>
                                    <td>${a.maSP}</td>
                                    <td>${a.tenSP}</td>
                                    <td>${a.soluong}</td>
                                    <td>${a.donViTinh}</td>
                                    <td>${a.giaBan}</td>
                                    <td>${a.tinhTrang}</td>
                                    <td>
                                        <img src="img/product/${a.hinh}" style="width: 60px; height: 50px">
                                    </td>
                                    <td>${a.loaiSP}</td>
                                    <td>
                                        <a href="edit-product.htm?id=${a.maSP}" type="button" class="btn btn-primary">Sửa</a>
                                    
                                        <a href="delete-product.htm?id=${a.maSP}" type="button" class="btn btn-primary">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>

                </div>
            </div>