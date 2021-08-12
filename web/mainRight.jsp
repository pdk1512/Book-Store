<%-- 
    Document   : mainRight
    Created on : Mar 10, 2021, 12:04:12 AM
    Author     : 84964
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Main right -->
<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
    <div class="product-categori">
        <div class="filter-sidebar-left">
            <div class="title-left">
                <h3>Categories</h3>
            </div>
            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                <c:forEach items="${listC}" var="c">
                    <a href="category?cid=${c.id}" class="list-group-item list-group-item-action ${tag == c.id ? "active":""}"> ${c.category} </a>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="product-categori">
        <div class="filter-sidebar-left">
            <div class="title-left">
                <h3>Sort by</h3>
            </div>
            <select id="sort-mode" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                <option data-display="Select">Nothing</option>
                <option value="priceDescrease" ${'priceDescrease'==param.sortby ? 'selected' : ''}>High Price → Low Price</option>
                <option value="priceIncrease" ${'priceIncrease'==param.sortby ? 'selected' : ''}>Low Price → High Price</option>
            </select>
            <script>
                document.getElementById('sort-mode').addEventListener("change", function () {
                    let mode = document.getElementById("sort-mode").value;
                    location.href = 'shop?&sortby=' + mode;
                });
            </script>
        </div>
    </div>
    <c:if test="${sessionScope.acc.isadmin == 1}">
        <div class="product-categori">
            <div class="filter-sidebar-left" style="text-align: center">
                <h3><b><a href="add.jsp" style="color: #b0b435">Thêm sản phẩm</a><b></h3>
                            </div>
                            </div>
                        </c:if>
                        </div>
                        <!-- End of main right -->
