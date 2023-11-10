<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Produto</title>
<%@ include file="header.jsp" %>
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container">
	<h1 class="mt-2">Cadastro de Produto</h1>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg}</div>
	</c:if>
	<c:if test="${not empty erro }">
		<div class="alert alert-danger">${erro}</div>
	</c:if>
	<form action="produto" method="post">
		<input type="hidden" value="cadastrar" name="acao">
		<div class="form-group mt-1 pt-1">
			<label for="id-nome">Nome</label>
			<input type="text" name="nome" id="id-nome" class="form-control">
		</div>
		<div class="form-group mt-1 pt-1">
			<label for="id-valor">Valor</label>
			<input type="text" name="valor" id="id-valor" class="form-control">
		</div>
		<div class="form-group mt-1 pt-1">
			<label for="id-quantidade">Quantidade</label>
			<input type="text" name="quantidade" id="id-quantidade" class="form-control">
		</div>
		<div class="form-group mt-1 pt-1">
			<label for="id-fabricacao">Data de Fabrica��o</label>
			<input type="text" name="fabricacao" id="id-fabricacao" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-categoria">Categoria</label>
			<select name="categoria" id="id-categoria" class="form-control">
				<option value="0">Selecione</option>
				<c:forEach items="${categorias }" var="c">
					<option value="${c.codigo }" >${c.nome }</option>
				</c:forEach>
			</select>
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary mt-2">
	</form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>