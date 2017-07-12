<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html" charset="UTF-8">

<title>Barbearia Leopodinense | Seja Bem vindo!</title>

<meta name="description" content="Barbearia Leopodinense">
<meta name="author" content="Equipe 2016.1">
<link rel="icon" type="image/icon" href="resources/image/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/jquery.easing.min.js.css">
<link rel="stylesheet" href="resources/css/scrolling-nav.css">
<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="col-lg-12">
					<figure class="col-lg-12">
						<img src="resources/image/Logo.png" height="205" width="205"
							class="img-responsive center-block">
					</figure>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-default page-scroll" data-spy="affix"
		data-offset-top="197">

		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav orientacao-nav">
						<li><a class="logotipo-menu"><img id="brand"
								class="brand-menu" src="resources/image/logo-menu.png"
								width="45" height="45"></a></li>
						<li><a class="centralizar" href="#home">Home</a></li>
						<li><a class="centralizar" href="#sobre">Sobre</a></li>
						<li><a class="centralizar" href="#equipe">Equipe</a></li>
						<li><a class="centralizar" href="#galeria">Galeria</a></li>
						<li><a class="centralizar" href="#servicos">Serviços</a></li>
						<li><a class="centralizar" href="#depoimentos">Depoimentos</a></li>
						<li><a class="centralizar" href="#contato">Contato</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>

	<section id="home" class="home-section">
		<div class="">
			<div class="row">
				<div class="col-lg-12">
					<div class="">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<img src="resources/image/image-um.jpg" alt="Img 1"
										class="carro">
								</div>
								<div class="item">
									<img src="resources/image/image-dois.jpg" alt="Img 2"
										class="carro">
								</div>
								<div class="item">
									<img src="resources/image/image-tres.jpg" alt="Img 3"
										class="carro">
								</div>
							</div>
							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-12 container-sobre">
			<div class="container ">
				<h2>Seja bem vindo ao nosso espaço</h2>
				<p>
				<h5>
					Aqui você encontra um serviço feito da melhor forma por
					profissionais capacitados.
					</p>
				</h5>
			</div>
		</div>
	</section>
	<section id="sobre" class="sobre-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 alinhamento-sobre">
					<img src="resources/image/sobre.png" width="180" height="130"
						class="img-responsive center-block alinhamento-img-sobre">
					<div class="col-md-4">


						<img src="resources/image/image-funcionario.jpg"
							class="img-responsive img-quipe center-block" width="300"
							height="140"> <img src="resources/image/image-cliente.jpg"
							class="img-responsive img-quipe center-block" width="300"
							height="150">
					</div>
					<div class="col-md-8 formtacao-container-sobre">
						<div class="col-md4"></div>
						<div class="jumbotrom ">

							<p class="pull-left">
							<h1>
								A Babearia Leopoldinense é um projeto e sonho, e ao longo de 30
								anos foi se consolidando através de muita dedicação, e trabalho
								duro do seu idealizador Paulo Sergio. Hoje contamos com uma
								equipe que só acrescenta e ajuda no melhor tratamento de nossos
								clientes.
								</p>
								</h>
								<p>
									<small>- Barbearia Leopoldinense 
								</p>
								</small>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="equipe" class="equipe-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<img src="resources/image/nossa-equipe.png" width="180"
						height="130" class="img-responsive center-block img-nossa-equipe">
					<div class="row thumbnail-img-equipe ">
						<div class="col-md-4">
							<div class="borda-funcinario">
								<img src="resources/image/funcionario1.jpg" alt="..."
									width="180" height="200"
									class="img-responsive center-block  img-funcionario">
								<div class="">
									<p
										class="media-heading text-uppercase reviews text-center funcionario-text">
										Funcionário 1</p>
									<hr class="detalhe-funcionario">
								</div>
								<div class="caption descricao-funcionario">
									<h5>Se popularizou na década de 60, quando a Letraset
										lançou decalques contendo passagens de Lorem Ipsum, e mais
										recentemente quando passou a ser integrado a softwares de
										editoração eletrônica como Aldus PageMaker.</h5>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="borda-funcinario">
								<img src="resources/image/funcionario1.jpg" alt="..."
									width="180" height="200"
									class="img-responsive center-block  img-funcionario">
								<div class="">
									<p
										class="media-heading text-uppercase reviews text-center funcionario-text">
										Funcionário 2</p>
									<hr class="detalhe-funcionario">
								</div>
								<div class="caption descricao-funcionario">
									<h5>Se popularizou na década de 60, quando a Letraset
										lançou decalques contendo passagens de Lorem Ipsum, e mais
										recentemente quando passou a ser integrado a softwares de
										editoração eletrônica como Aldus PageMaker.</h5>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="borda-funcinario">
								<img src="resources/image/funcionario1.jpg" alt="..."
									width="180" height="200"
									class="img-responsive center-block img-funcionario">
								<div class="">
									<p
										class="media-heading text-uppercase reviews text-center funcionario-text">
										Funcionário 3</p>
									<hr class="detalhe-funcionario">
								</div>
								<div class="caption descricao-funcionario">
									<h5>Se popularizou na década de 60, quando a Letraset
										lançou decalques contendo passagens de Lorem Ipsum, e mais
										recentemente quando passou a ser integrado a softwares de
										editoração eletrônica como Aldus PageMaker.</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Galeria Section -->
	<section id="galeria" class="galeria-section  background-galeria">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!--<h1>Galeria</h1>-->
					<img src="resources/image/galeria.png" width="180" height="130"
						class="img-responsive center-block img-galeria">
					<div class="">

						<div class="container">
							<div class="row">

								<div id="adv_team_4_columns_carousel"
									class="carousel slide four_shows_one_move team_columns_carousel_wrapper"
									data-ride="carousel" data-interval="2000" data-pause="hover">
									<!--========= Wrapper for slides =========-->
									<div class="carousel-inner" role="listbox">
										<!--========= 1st slide =========-->
										<div class="item">

											<div
												class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
												<img src="resources/image/gale1.jpg" alt="slider 01"
													class="img-responsive">
												<div class="team_columns_item_caption">
													<h4>Imagem 1</h4>
													<hr>

												</div>
											</div>
											<div
												class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
												<img src="resources/image/gale6.jpg" alt="slider 02"
													class="img-responsive">
												<div class="team_columns_item_caption">
													<h4>Imagem 2</h4>
													<hr>
												</div>
											</div>
											<div
												class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
												<img src="resources/image/gale4.jpg" alt="slider 02"
													class="img-responsive">
												<div class="team_columns_item_caption">
													<h4>Imagem 3</h4>
													<hr>
												</div>
											</div>
											<div
												class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
												<img src="resources/image/gale3.jpg" alt="slider 02"
													class="img-responsive">
												<div class="team_columns_item_caption">
													<h4>Imagem 4</h4>
													<hr>
												</div>
											</div>
										</div>
										<!--========= 2nd slide =========-->
										<div class="item active">
											<div
												class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
												<img src="resources/image/gale5.jpg" alt="slider 02"
													class="img-responsive">
												<div class="team_columns_item_caption">
													<h4>Imagem 5</h4>
													<hr>
												</div>
											</div>
											<div
												class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
												<img src="resources/image/gale2.jpg" alt="slider 02"
													class="img-responsive">
												<div class="team_columns_item_caption">
													<h4>Imagem 6</h4>
													<hr>
												</div>
											</div>
											<div
												class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
												<img src="resources/image/gale7.jpg" alt="slider 02"
													class="img-responsive">
												<div class="team_columns_item_caption">
													<h4>Imagem 7</h4>
													<hr>
												</div>
											</div>
											<div
												class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
												<img src="resources/image/gale8.jpg" " alt="slider 02"
													class="img-responsive">
												<div class="team_columns_item_caption">
													<h4>Imagem 8</h4>
													<hr>
												</div>
											</div>
										</div>
									</div>
									<!--======= Navigation Buttons =========-->
									<!--======= Left Button =========-->
									<a
										class="left carousel-control team_columns_carousel_control_left adv_left"
										href="#adv_team_4_columns_carousel" role="button"
										data-slide="prev"> <span
										class="fa fa-angle-left team_columns_carousel_control_icons"
										aria-hidden="true"></span> <span class="sr-only">Previous</span>
									</a>
									<!--======= Right Button =========-->
									<a
										class="right carousel-control team_columns_carousel_control_right adv_right"
										href="#adv_team_4_columns_carousel" role="button"
										data-slide="next"> <span
										class="fa fa-angle-right team_columns_carousel_control_icons"
										aria-hidden="true"></span> <span class="sr-only">Next</span>
									</a>
								</div>
							</div>
						</div>
						<!--  Fim da galeria -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Precos Section -->
	<section id="servicos" class="servicos-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 conteudo-edit"
					sytle="background-image:url('resources/image/fundo-barb.jpg');">
					<img src="resources/image/servicos.png" width="140" height="100"
						class="img-responsive center-block img-servicos">
					<!--<h1>Servicos</h1>-->
					<div class="row">
						<div class="col-md-4">
							<figure>
								<img src="resources/image/maquina2.png"
									class="img-reponsive img-servicos-ativo" width="160"
									height="160">
							</figure>

							<p class="text-center">
								<strong><h4>Corte Máquina</h4></strong>
							</p>
							<p>R$ 20,00</p>
							<hr class="descricao-servico-valor">
						</div>

						<div class="col-md-4">
							<img src="resources/image/tesoura2.png"
								class="img-reponsive person img-servicos-ativo" width="160"
								height="160">
							<p class="text-center">
								<strong><h4>Corte Tesoura</h4></strong>
							</p>
							<p>R$ 25,00</p>
							<hr class="descricao-servico-valor">
						</div>


						<div class="col-md-4">
							<img src="resources/image/pe2.png"
								class="img-reponsive person img-servicos-ativo" width="160"
								height="160">
							<p class="text-center">
								<strong class="descricao-servico"><h4>Pé (Apenas
										acabamento)</h4></strong>
							</p>
							<p>R$ 10,00</p>
							<hr class="descricao-servico-valor">
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<img src="resources/image/navalha2.png"
								class="img-reponsive person img-servicos-ativo " width="160"
								height="160">
							<p class="text-center">
								<strong><h4>Barba Simples</h4></strong>
							</p>
							<p>R$ 16,00</p>
							<hr class="descricao-servico-valor">
						</div>
						<div class="col-md-4">
							<img src="resources/image/barba2.png"
								class="img-reponsive person img-servicos-ativo " width="160"
								height="160">
							<p class="text-center">
								<strong><h4>Barba Modelada</h4></strong>
							</p>
							<p>R$ 18,00</p>
							<hr class="descricao-servico-valor">
						</div>
						<div class="col-md-4">
							<img src="resources/image/pinça2.png"
								class="img-reponsive img-circle person img-servicos-ativo"
								width="160" height="160">
							<p class="text-center">
								<strong><h4>Sobrancelha</h4></strong>
							</p>
							<p>R$ 8,00</p>
							<hr class="descricao-servico-valor">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="depoimentos" class="depoimentos-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1" id="logout">
					<div class="page-header page-image-depo">
						<img src="resources/image/depo-user.png" width="180" height="130"
							class="img-responsive center-block img-depo-user">

					</div>
					<div class="comment-tabs">
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a href="#comments-logout" role="tab"
								data-toggle="tab" class="color-depoimento-user"><h4
										class="reviews text-capitalize">Comentários</h4></a></li>
							<li><a href="#account-settings" role="tab" data-toggle="tab"
								class="color-depoimento-user"><h4
										class="reviews text-capitalize">Adicionar Comentário</h4></a></li>
						</ul>
						<div class="tab-content">
							<!-- Início dos Comentários registrados-->
							<div class="tab-pane active" id="comments-logout">
								<!-- Carrossel-->
								<div class='row'>
									<div class='col-md-offset-2 col-md-8'>
										<div class="carousel slide" data-ride="carousel"
											id="quote-carousel">
											<!-- Bottom Carousel Indicators -->
											<ol class="carousel-indicators">
												<li data-target="#quote-carousel" data-slide-to="0"
													class="active"></li>
												<li data-target="#quote-carousel" data-slide-to="1"></li>
												<li data-target="#quote-carousel" data-slide-to="2"></li>
											</ol>
											<!-- Carousel Slides / Quotes -->
											<div class="carousel-inner">
												<!-- Quote 1 -->
												<div class="item active">
													<blockquote>
														<div class="row">
															<div class="col-sm-3 text-center">
																<h5 class="media-heading text-uppercase reviews">Cliente
																	Número Um</h5>
																<h6 class="media-heading text-uppercase reviews">Bairro</h6>
																<!--<img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/128.jpg" style="width: 100px;height:100px;">-->
															</div>
															<div class="col-sm-9">
																<small>Lorem ipsum dolor sit amet, consectetur
																	adipiscing elit. Etiam auctor nec lacus ut tempor.
																	Mauris. </small> <span class="glyphicon glyphicon-star"></span>
															</div>
														</div>
													</blockquote>
												</div>
												<!-- Quote 2 -->
												<div class="item">
													<blockquote>
														<div class="row">
															<div class="col-sm-3 text-center">
																<h5 class="media-heading text-uppercase reviews">Cliente
																	Número Dois</h5>
																<h6 class="media-heading text-uppercase reviews">Bairro</h6>
																<!--<img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/128.jpg" style="width: 100px;height:100px;">-->
															</div>
															<div class="col-sm-9">
																<small>Lorem ipsum dolor sit amet, consectetur
																	adipiscing elit. Etiam auctor nec lacus ut tempor.
																	Mauris. </small> <span class="glyphicon glyphicon-star"></span>
															</div>
														</div>
													</blockquote>
												</div>
												<!-- Quote 3 -->
												<div class="item">
													<blockquote>
														<div class="row">
															<div class="col-sm-3 text-center">
																<h5 class="media-heading text-uppercase reviews">Cliente
																	Número Três</h5>
																<h6 class="media-heading text-uppercase reviews">Bairro</h6>
																<!--<img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/128.jpg" style="width: 100px;height:100px;">-->
															</div>
															<div class="col-sm-9">
																<small>Lorem ipsum dolor sit amet, consectetur
																	adipiscing elit. Etiam auctor nec lacus ut tempor.
																	Mauris. </small> <span class="glyphicon glyphicon-star"></span>
															</div>
														</div>
													</blockquote>
												</div>
											</div>
											<!-- Carousel Buttons Next/Prev -->
											<a data-slide="prev" href="#quote-carousel"
												class="left carousel-control"><i
												class="fa fa-chevron-left"></i></a> <a data-slide="next"
												href="#quote-carousel" class="right carousel-control"><i
												class="fa fa-chevron-right"></i></a>
										</div>
									</div>
								</div>
								<!--Fim do carrossel-->
							</div>
							<!-- Fim dos Comentrarios-->
							<div class="tab-pane" id="account-settings">
								<form action="#" method="post" class="form-horizontal"
									id="accountSetForm" role="form">
									<div class="form-group">
										<label for="name" class="col-sm-2 control-label">Nome</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="name" id="name"
												placeholder="Nome">
										</div>
									</div>
									<div class="form-group">
										<label for="email" class="col-sm-2 control-label">Bairro</label>
										<div class="col-sm-10">
											<input type="email" class="form-control" name="email"
												id="email" placeholder="Bairro">
										</div>
									</div>
									<div class="form-group">
										<label for="textArea" class="col-sm-2 control-label">Comentário:</label>
										<div class="col-sm-10">
											<textarea class="form-control" rows="3" id="textArea"
												placeholder="Comentário"></textarea>
										</div>
									</div>
									<div class="col-sm-12 col-md-12">
										<h2>
											<p>Deixe sua avaliação</p>
										</h2>
										<div class="row lead">
											<div id="stars" class="starrr"></div>
											<h4>
												Você avaliou no total de: <span id="count">0</span>
												estrela(s)
											</h4>
										</div>

									</div>

									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button class="btn btn-success btn-circle text-uppercase"
												type="submit" id="submit">Enviar</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Contato Section -->
	<section id="contato" class="contato-section" style="">
		<div class="container">
			<div class="row">
				<div class="col-md-12 conteudo-edit-contato">
					<h2 class="center-block text-align">FALE CONOSCO !</h2>
					<hr>
					<div class="col-md-6">
						<div class="form-edit">
							<div class="row text-left">
								<h3 class="text-center back-fundo">
									Endereço<span class="glyphicon glyphicon-map-marker"></span>
								</h3>
								<p class="edit-end">Rua Patagonia, 71, Penha - Rio De
									Janeiro</p>
								<p>
									<small>RJ - CEP 21020-320 
								</p>
								</small>
							</div>
							<div class="row">
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3493.1651974917304!2d-43.278
55038543088!3d-22.83889764119295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x997b96a766
005f%3A0x6c4a9c8221086032!2sR.+Patag%C3%B4nia%2C+71+-+Penha%2C+Rio+de+Janeiro+-+RJ%2C+21020-320
!5e0!3m2!1spt-BR!2sbr!4v1499048359147"
									max-width="550" height="200" margin-left="0" frameborder="0"
									style="border: 0" allowfullscreen></iframe>
							</div>
							<div class=" row text-left">
								<h4 class="help-block">
									<dt>Horário de Funcionamento
								</h4>
								</dt>
								<p class="help-block">Segunda a Sexta - 00 às 20h</p>
								<p class="help-block">
									<small>(21) 3507-9469 
								</p>
								</small>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="row">
							<div class="form-edit">
								<form class="form-horizontal form-edit-campos">
									<h3 class="text-center espaco-msg back-fundo">
										Deixe sua mensagem ! <span
											class="glyphicon glyphicon-envelope enviar-msg"></span>
									</h3>
									<fieldset>
										<div class="form-group">
											<label for="inputNome" class="col-lg-3 control-label">Nome:</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="inputNome"
													placeholder="Nome">
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-lg-3 control-label">Email:</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="inputEmail"
													placeholder="Email">
											</div>
										</div>
										<div class="form-group">
											<label for="inputTelefone" class="col-lg-3 control-label">Telefone:</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="inputTelefone"
													placeholder="Telefone">
											</div>
										</div>
										<div class="form-group">
											<label for="inputIdade" class="col-lg-3 control-label">Idade:</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" id="inputIdade"
													placeholder="Idade">
											</div>
										</div>
										<div class="form-group">
											<label for="inputComoConheceu" class="col-lg-3 control-label">Como
												Conheceu:</label>
											<div class="col-lg-9">
												<input type="text" class="form-control"
													id="inputComoConheceu" placeholder="Como Conheceu ?">
											</div>
										</div>
										<div class="form-group">
											<label for="textArea" class="col-lg-3 control-label">Dúvidas/Sugestões:</label>
											<div class="col-lg-9">
												<textarea class="form-control" rows="3" id="textArea"
													placeholder="Digite suas Dúvidas e Sugestões"></textarea>
												<span class="help-block">Envienos-nos seu nome e
													e-mail com duvidas e sugestões, e entraremos em contato o
													mais rápido possível.</span>
											</div>
										</div>
										<div class="form-group">
											<div class="col-lg-10 col-lg-offset-2">
												<button type="reset" class="btn btn-success">Enviar</button>
												<button type="submit" class="btn btn-danger">Cancelar</button>
											</div>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright center-block text-align">
			<p>&copy; Os Horários do site seguem a Hora Oficial de Brasília -
				2017, Barbearia Leopoldinense TODOS OS DIREITOS RESERVADOS.</p>
		</div>
	</section>

	<a id="btn-top" href="#page-top"><span
		class="glyphicon glyphicon glyphicon-upload"></span></a>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function () {
			$(window).scroll(function () {
				if ($(this).scrollTop() > 100) {
					$('#btn-top').fadeIn();
				} else {
					$('#btn-top').fadeOut();
				}
			});
		
			$('#btn-top').click(function () {
				$('html, body').animate({
					scrollTop: 0
				}, 1600);
				return false;
			});
		});
	</script>
	<!-- Script estrela de avaliação -->
	<script>
		// Starrr plugin 
		var __slice = [].slice;
		
		(function($, window) {
				var Starrr;
			
			Starrr = (function() {
			Starrr.prototype.defaults = {
				rating: void 0,
				numStars: 5,
				change: function(e, value) {}
			};
			
			function Starrr($el, options) {
				var i, _, _ref,
				_this = this;
			
				this.options = $.extend({}, this.defaults, options);
				this.$el = $el;
				_ref = this.defaults;
				for (i in _ref) {
					_ = _ref[i];
					if (this.$el.data(i) != null) {
						this.options[i] = this.$el.data(i);
					}
				}
				this.createStars();
				this.syncRating();
				this.$el.on('mouseover.starrr', 'span', function(e) {
					return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
				});
				this.$el.on('mouseout.starrr', function() {
					return _this.syncRating();
				});
				this.$el.on('click.starrr', 'span', function(e) {
					return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
				});
				this.$el.on('starrr:change', this.options.change);
			}
			
				Starrr.prototype.createStars = function() {
				var _i, _ref, _results;
				
				_results = [];
				for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
					_results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
				}
					return _results;
				};
				
				Starrr.prototype.setRating = function(rating) {
				if (this.options.rating === rating) {
					rating = void 0;
				}
				this.options.rating = rating;
				this.syncRating();
				return this.$el.trigger('starrr:change', rating);
				};
				
				Starrr.prototype.syncRating = function(rating) {
					var i, _i, _j, _ref;
					
					rating || (rating = this.options.rating);
					if (rating) {
						for (i = _i = 0, _ref = rating - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
							this.$el.find('span').eq(i).removeClass('glyphicon-star-empty').addClass('glyphicon-star');
						}
					}
					if (rating && rating < 5) {
						for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
							this.$el.find('span').eq(i).removeClass('glyphicon-star').addClass('glyphicon-star-empty');
						}
					}
					if (!rating) {
						return this.$el.find('span').removeClass('glyphicon-star').addClass('glyphicon-star-empty');
					}
				};
				
				return Starrr;
				
				})();
				return $.fn.extend({
				starrr: function() {
				var args, option;
				
				option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
				return this.each(function() {
				var data;
				
				data = $(this).data('star-rating');
				if (!data) {
				$(this).data('star-rating', (data = new Starrr($(this), option)));
				}
				if (typeof option === 'string') {
				return data[option].apply(data, args);
				}
				});
				}
				});
		})(window.jQuery, window);
		
		$(function() {
		return $(".starrr").starrr();
		});
		
		$( document ).ready(function() {
		
		$('#stars').on('starrr:change', function(e, value){
		$('#count').html(value);
		});
		
		$('#stars-existing').on('starrr:change', function(e, value){
		$('#count-existing').html(value);
		});
		});
	</script>
	<script>
		$(window).scroll(function(){
			var height = $(this).scrollTop();
			var brand = $("#brand");
			if (height > 100){
				brand.show();
			}
			else{
				brand.hide();
			}
		});
	</script>
	<script>
		// When the DOM is ready, run this function
		$(document).ready(function() {
		//Set the carousel options
			$('#quote-carousel').carousel({
				pause: true,
				interval: 4000,
			});
		});
	</script>
</body>
</html>