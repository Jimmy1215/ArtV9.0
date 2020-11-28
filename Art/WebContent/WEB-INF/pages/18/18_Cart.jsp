<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form action="<c:url value="/18/cGetCartById.ctrl"/>">
	<div class="form-row" style="text-align: center;">
		<div class="form-group">
			<label>課程編號</label> <input type="text" class="form-control"
				name="cartId">
		</div>
		<div class="form-group">
			<label>課程名稱</label> <input type="text" class="form-control"
				name="cartTitle">
		</div>
		<div class="form-group">
			<label>課程售價</label> <input type="text" class="form-control"
				name="cartPrice">
		</div>
	</div>

	<button type="submit" class="btn btn-primary">送出</button>
</form>


</form>