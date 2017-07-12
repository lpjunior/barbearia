<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="cabecalho.jsp" />
<div class="col-md-10 content">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Bem vindo a Página do Administrador - Serviços</h4>
		</div>
		<div class="panel-body">
			<div class="comment-tabs">
				<ul class="nav nav-tabs" role="tablist">
					<li class="active"><a href="#comentario_registrado" role="tab"
						data-toggle="tab" class=""><h4 class="reviews text-capitalize">Serviços
								Registrados</h4></a></li>
					<li><a href="#registrar_funcionario" role="tab"
						data-toggle="tab" class="color-depoimento-user"><h4
								class="reviews text-capitalize">Novo Serviço</h4></a></li>
				</ul>
				<div class="tab-content">
					<!-- Comentários registrados-->
					<div class="tab-pane active" id="comentario_registrado">
						<div class="">
							<section class="content">
								<div class="col-md-12 container-principal">
									<div class="panel panel-default">
										<div class="panel-body">
											<div class="pull-left">
												<div class="btn-group">
													<h5>Visualize os Funcionários:</h5>
													<button type="button" class="btn btn-success btn-filter"
														onclick="location.href='equipe?listar=ativos'">Ativo</button>
													<button type="button" class="btn btn-warning btn-filter"
														onclick="location.href='equipe?listar=inativo'">Inativo</button>
													<button type="button" class="btn btn-default btn-filter"
														onclick="location.href='equipe?listar=todos'">Todos</button>
												</div>
											</div>
											<div class="table-container">
												<table class="table table-filter">
													<tbody>
														<!-- Incio informação Ativo/Inativo-->
														<c:forEach var="servico"
															items="${requestScope.servicos}">
															<tr data-status="inativo">
																<td class="formatacao_td" colspan="2">
																	<h4>
																		<small>Status:</small><br>
																		<span class="pull-left ativo">(Ativo)</span>
																	</h4>
																</td>
																<td class="formatacao_td_image" colspan="2">
																	<div class="media">
																		<a href="#" class="pull-left"> <img
																			src="resources/image/${servico.imagem}"
																			class="media-photo">
																		</a>
																	</div>
																</td>
																<td class="formatacao_td" colspan="2"><span
																	class="media">${servico.descricao}</span></td>
																<td class="formatacao_td" colspan="2">R$: ${servico.valor}</td>
																<td class="formatacao_td"><span class="pull-right">
																		<button class="btn btn-default" data-toggle="modal"
																			data-target="#modalEditarFuncionario" type="button">Editar</button>
																		<button class="btn btn-success" onclick="location.href='enabled_s?id=${servico.id}'" type="button" disabled>Ativar</button>
																		<button class="btn btn-warning" onclick="location.href='disabled_s?id=${servico.id}'" type="button" disabled>Desativar</button>
																		<button class="btn btn-danger" onclick="location.href='del_s?id=${servico.id}'" type="button">Excluir</button>
																</span></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<div class="content-footer">
										<p>*Serão mostrados funcionários Ativos e Inativos
											somente, atenção ao exlcuir informações.</p>
									</div>
								</div>
							</section>
						</div>
					</div>
					<!-- Registrar Funcionário-->
					<div class="tab-pane" id="registrar_funcionario">
						<div class="col-md-12 container-principal">
							<div class="panel panel-default painel-registro-coment">
								<div class="row">
									<div class="col-sm-12">
										<div class="col-md-6 col-sm-6 col-xs-8">
											<form action="cadastrar_s" method="post"
												enctype="multipart/form-data">
												<fieldset>
													<div class="form-group">
														<label for="id_foto">Escolher imagem:</label> <input
															type="file" name="foto" id="id_foto" required />
													</div>
													<div class="form-group">
														<label for="id_desc_service">Descrição do Serviço:</label>
														<input type="text" id="id_desc_service" name="desc_service" class="form-control col-sm-6" placeholder=Serviço required>
													</div>
													<div class="form-group">
														<label for="id_preco">Preço:</label>
														<input type="number" min=1 step=any id="id_preco" name="preco" class="form-control col-sm-6" placeholder="Preço" required>
													</div>
													<button type="submit" class="btn btn-success pull-left"
														style="margin-top: 1.3%;">Enviar</button>
												</fieldset>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<footer class="pull-left footer">
	<p class="col-md-12">
	<hr class="divider">
	</p>
</footer>
</div>
</div>

<div class="modal fade" id="modalEditarFuncionario" role="dialog">
	<div class="modal-dialog">

		<!-- Modal Conteúdo Total-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Editar Funcionário</h4>
			</div>
			<!-- Conteúdo Central -->
			<div class="modal-body">
				<div class="panel panel-default painel-registro-coment">
					<div class="row">
						<form class="form-horizontal">
							<div class="col-sm-12">
								<fieldset>
									<div class="col-md-6 col-sm-6 col-xs-8">
										<form>
											<!-- Imagem e botão -->
											<div class="form-group">
												<label for="funcionario_imagem">Escolher imagem:</label> <input
													type="file" id="funcionario_imagem" value="Imagem">
											</div>
											<!-- Input Texto-->
											<div class="form-group">
												<label for="funcionario_descricao">Nome:</label> <input
													type="servico_descricao" class="form-control col-sm-6"
													id="servico_descricao" placeholder="Serviço" value="Sergio">
											</div>
											<!-- Input Texto-->
											<div class="form-group">
												<label for="servico_preco">Descrição:</label>
												<textarea type="servico_preco" class="form-control"
													id="servico_preco" placeholder="Descreva seu funcinário"
													value="HEOURHEUOHRUOE"></textarea>
											</div>
											<!-- Botão Enviar-->
											<button type="submit" class="btn btn-success pull-left">Enviar</button>
										</form>
									</div>
							</div>
					</div>
				</div>

			</div>
			<!-- Inferior Botão Encerrar-->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
			</div>
		</div>

	</div>
</div>
<jsp:include page="rodape.jsp" />