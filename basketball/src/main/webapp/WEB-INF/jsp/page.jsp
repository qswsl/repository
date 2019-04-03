<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--公用翻页代码-->
<input type="hidden" name="page" id="page" value="1"/>
<ul class="pagination">
    <input type="hidden" value="1" name="pageNo" id="pageNo" />
    <li><span>共<span style="color: red">${page.totalPageCount}</span>页，当前第<span style="color: red">${page.pageNow}</span>页</span></li>
   <%-- <li><span>跳转到 <input type="text" value="${datas.number+1}" id="gotoPage" onchange="pageNoChange();" /></span></li>--%>
    <li><span>每页显示${page.pageSize}条
			                </span>
    </li>
    <li> <a href="${param.url}?pageNo=1">首页</a></li>
    <li>
        <c:choose>
            <c:when test="${page.pageNow !=1}">
                <a href="${param.url}?pageNo=${page.pageNow -1}">上一页</a>
            </c:when>
        </c:choose>

    </li>

    <li><%--<a href="/findBookNoQuery?pageNo=${datas.number +1}" class="disable">下一页</a>--%>
        <c:choose>
            <c:when test="${page.pageNow < page.totalPageCount}">
                <a
                        href="${param.url}?pageNo=${page.pageNow +1}">下一页</a>
            </c:when>
        </c:choose>

    </li>
    <li> <a href="${param.url}?pageNo=${page.totalPageCount}">尾页</a></li>
    <li><span>共<span style="color: red">${page.totalCount}</span>条记录</span></li>
</ul>
<script type="text/javascript">
    function pageSizeChange() {
        //得到每页显示条数
        var pageSizeValue = jQuery('#pageSize').val();
        if (pageSizeValue == null || pageSizeValue == '') {
            jQuery('#pageSize').val(10);
        }

        jQuery('#pageNo').val('1');
        document.getElementById('formSubmit').submit();
    }
    function pageNoChange() {
        var gotoPageValue = jQuery('#gotoPage').val();
        if (gotoPageValue == null || gotoPageValue == '') {
            jQuery('#pageNo').val(1);
        }else{
            jQuery('#pageNo').val(gotoPageValue-1);
        }
        document.getElementById('formSubmit').submit();
    }
</script>
<!--END公用翻页代码-->



