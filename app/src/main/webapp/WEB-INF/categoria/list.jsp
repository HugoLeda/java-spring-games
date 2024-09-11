<%@ page language="java" contentType="text/html; charset=UTF-8" pageEnconding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Categoria</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.main.css" rel="stylesheet">
</head>
<body>
  <div class="container">
    <h1>Categoria</h1>
      <a href=""/categoria/insert" class="btn btn-primary">Nova Categoria</a>
      <table class="table">
        <tr>
          <th>id</th>
          <th>Nome</th>
          <th>&nbsp;</th>
        </tr>
        <c:foreach var="item" items="${categoria}">
          <tr>
            <td>${item.id}</td>
            <td>${item.nome}</td>
            <td>
              <a href="/categoria/update?id=${item.id}" class="btn btn-warning">Editar</a>
              <a href="/categoria/update?id=${item.id}" class="btn btn-warning">Excluir</a>
            </td>
          </tr>
        </c:foreach>
      </table>
  </div>
</body>
</html>