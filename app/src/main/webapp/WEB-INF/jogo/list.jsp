<html lang="pt-br"></html>
<head>
  <meta charset="UTF-8" />
  <title>Jogos</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container">
    <h1>Jogos</h1>
    <a href="/jogos/insert" class="btn btn-primary">Novo Jogo</a>
    <table class="table">
      <thead>
        <tr>
          <th>Id</th>
          <th>Titulo</th>
          <th>Categoria</th>
          <th>Plataformas</th>
          <th>&nbsp;</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="item" items="${jogos}">
          <tr>
            <td>${item.id}</td>
            <td>${item.titulo}</td>
            <td>${item.categoria.nome}</td>
            <td>
              <c:forEach var="p" varStatus="s" items="${item.plataformas}">
                ${s.count > 1 ? ", " : ""} ${p.nome}
              </c:forEach>
            </td>
            <td>
              <a href="/jogos/update?id=${item.id}" class="btn btn-warning">Editar</a>
              <a href="/jogos/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</body>
</html>