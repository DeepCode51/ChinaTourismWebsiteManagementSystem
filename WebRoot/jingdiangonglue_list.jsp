<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">




<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            景点攻略        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
</div>

                
                                                            <div class="form-group">
    景点编号
    
                            <input type="text" class="form-control" style="" name="jingdianbianhao" value="${param.jingdianbianhao}"/>                        
</div>
                                                                <div class="form-group">
    景点名称
    
                            <input type="text" class="form-control" style="" name="jingdianmingcheng" value="${param.jingdianmingcheng}"/>                        
</div>
                                                                                    <div class="form-group">
    所在城市
    
                            <input type="text" class="form-control" style="" name="suozaichengshi" value="${param.suozaichengshi}"/>                        
</div>
                                                                                                                    <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                                <option value="menpiaojiage">
                                按门票价格                            </option>
                                        
</select>
                <select class="form-control" name="sort" id="sort">

                    <option value="desc">倒序</option>
                    <option value="asc">升序</option>
                
</select>
                <script>$("#orderby").val("${orderby}");$("#sort").val("${sort}");</script>
                <button type="submit" class="btn btn-default">
    搜索
</button>

                
            
<!--form标签结束--></form>
        </div>



        

                    <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 景点编号  </th>
<th> 景点名称  </th>
<th> 景点图片  </th>
<th> 所在城市  </th>
<th> 门票价格  </th>
<th> 开放时间  </th>
<th> 景点位置  </th>
                                                                        <th width="180" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0" /><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}" />
                    <tr id="${map.id}" pid="">
                        <td width="30" align="center">
                            <label>
                                                                ${i}
                            </label>
                        </td>
                        <td> ${map.jingdianbianhao} </td>
<td> ${map.jingdianmingcheng} </td>
<td> <c:choose>
<c:when test="${'' == map.jingdiantupian }">
-</c:when><c:otherwise><img width="100" src="${Info.images(map.jingdiantupian)}"/></c:otherwise></c:choose> </td>
<td> ${map.suozaichengshi} </td>
<td> ${map.menpiaojiage} </td>
<td> ${map.kaifangshijian} </td>
<td> ${Info.address(map.jingdianweizhi)} </td>
                                                                        <td align="center">${map.addtime}</td>
                        <td align="center">

                            
                                                        
                            
                                                                <a href="jingdiangonglue_detail.do?id=${map.id}">详情</a>
                                                                <a href="jingdiangonglue_updt.do?id=${map.id}">编辑</a>
                                                                <a href="jingdiangonglue_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                                        <!--qiatnalijne-->
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            
        ${page.info}
            </div>



</div>








</div>
<%@ include file="foot.jsp" %>
