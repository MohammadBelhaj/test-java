<%@page import="presentation.ProduitController"%>
<%@page import="dao.Produit"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Reference</th>
      <th scope="col">Designation</th>
      <th scope="col">Prix unitaire</th>
      <th scope="col">Qte en stock</th>
      <th scope="col">ACTIONS</th>
    </tr>
  </thead>
  <tbody>
  <% List<Produit> list=(List<Produit>)request.getAttribute("listproduit");
  for(Produit p : list){
  
  %>
    <tr>
      <th scope="row"><%= p.getRef() %></th>
      <td><%= p.getDesignation() %></td>
      <td><%= p.getPu() %></td>
      <td><%= p.getQtestock() %></td>
      <td><a class ="btn btn-primary">Editer</a>
      	<a class ="btn btn-danger">Supprimer</a>
      </td>
      
    </tr>
    <% } %>
  </tbody>
</table>
</div>
</body>
</html>