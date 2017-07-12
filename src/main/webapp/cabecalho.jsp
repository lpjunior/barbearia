<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="home_active" value="${fn:endsWith(pageContext.request.requestURI, 'sistema.jsp')}" />
<c:set var="equipe_active" value="${fn:endsWith(pageContext.request.requestURI, 'equipe.jsp')}" />
<c:set var="servicos_active" value="${fn:endsWith(pageContext.request.requestURI, 'servicos.jsp')}" />
<c:set var="comentarios_active" value="${fn:endsWith(pageContext.request.requestURI, 'comentarios.jsp')}" />
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="text/html" charset="UTF-8">

<title>Administração Barbearia Leopodinense</title>
<link rel="icon" type="image/icon" href="resources/image/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/sistema.css">

<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<section>
		<div>
			<nav class="navbar navbar-default navbar-static-top">
				<div class="container-fluid">
					<!-- Logo e Menu -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="sistema.jsp"><img
							src="resources/image/logo.png" widht="30" height="30"
							class="image-logo"></a>
						<p class="titulo_pagina">Administração - Barbearia
							Leopoldinense</p>
					</div>

					<!-- Configuração: Acesso ao site, deslogar e a outros links -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="" target="_blank">Visite o Site</a></li>
							<li class="dropdown "><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false">
									Conta <span class="caret"></span>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li class="dropdown-header">Configurações</li>
									<li class=""><a href="#">Alterar Senha</a></li>
									<li class="divider"></li>
									<li><a href="#">Sair</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
			<div class="container-fluid main-container">
				<div class="col-md-2 sidebar">
					<ul class="nav nav-pills nav-stacked">
						<li class="${home_active ? 'active' : 'none'}"><a href="sistema.jsp">Página Inicial</a></li>
						<li class="${equipe_active ? 'active' : 'none'}"><a href="equipe.jsp">Equipe</a></li>
						<li class="${servicos_active ? 'active' : 'none'}"><a href="servicos.jsp">Serviços</a></li>
						<li class="${comentarios_active ? 'active' : 'none'}"><a href="comentarios.jsp">Comentários</a></li>
					</ul>
				</div>