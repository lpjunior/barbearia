<jsp:include page="cabecalho.jsp" />
<div class="col-md-10 content">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Bem vindo a P�gina do Administrador - Servi�os</h4>
		</div>
		<div class="panel-body">
			<div class="comment-tabs">
				<ul class="nav nav-tabs" role="tablist">
					<li class="active"><a href="#comentario_registrado" role="tab"
						data-toggle="tab" class="color-depoimento-user"><h4
								class="reviews text-capitalize">Servi�os Registradoss</h4></a></li>
					<li><a href="#registrar_comentario" role="tab"
						data-toggle="tab" class="color-depoimento-user"><h4
								class="reviews text-capitalize">Novo Servi�o</h4></a></li>
				</ul>
				<div class="tab-content">
					<!-- Coment�rios registrados-->
					<div class="tab-pane active" id="comentario_registrado">
						<div class="">
							<section class="content">
								<div class="col-md-12 container-principal">
									<div class="panel panel-default">
										<div class="panel-body">
											<div class="pull-left">
												<div class="btn-group">
													<h5>Visualize os Servi�os:</h5>
													<button type="button" class="btn btn-success btn-filter"
														data-target="ativo">Ativo</button>
													<button type="button" class="btn btn-warning btn-filter"
														data-target="inativo">Inativo</button>
													<button type="button" class="btn btn-default btn-filter"
														data-target="all">Todos</button>
												</div>
											</div>
											<div class="table-container">
												<table class="table table-filter">
													<tbody>
														<!-- Incio informa��o Ativo/Inativo-->
														<tr data-status="inativo">
															<td class="formatacao_td">
																<h4>
																	<small>Status:</small><span class="pull-left inativo">(Inativo)</span>
																</h4>
															</td>
															<td></td>
															<td class="formatacao_td_image">
																<div class="media">
																	<a href="#" class="pull-left"> <img
																		src="http://i65.tinypic.com/2w7o7b7.png"
																		class="media-photo">
																	</a>
																</div>
															</td>
															<td class="formatacao_td">Descri��o</td>
															<td></td>
															<td class="formatacao_td"><span class="media">R$</span>
															</td>
															<td></td>
															<td class="formatacao_td"><span class="pull-right">
																	<button class="btn btn-default" data-toggle="modal"
																		data-target="#modalEditarServico" type="button">Editar</button>
																	<button class="btn btn-success" type="button"
																		disabled="disabled">Ativar</button>
																	<button class="btn btn-warning" type="button"
																		disabled="disabled">Desativar</button>
																	<button class="btn btn-danger" type="button">Excluir</button>
															</span> <!--Modal-->
																<div class="modal fade" id="modalEditarServico"
																	role="dialog">
																	<div class="modal-dialog">

																		<!-- Modal Conte�do Total-->
																		<div class="modal-content">
																			<div class="modal-header">
																				<button type="button" class="close"
																					data-dismiss="modal">&times;</button>
																				<h4 class="modal-title">Editar servi�o</h4>
																			</div>
																			<!-- Conte�do Central -->
																			<div class="modal-body">
																				<div
																					class="panel panel-default painel-registro-coment">
																					<div class="row">
																						<form class="form-horizontal">
																							<div class="col-sm-12">
																								<fieldset>
																									<div class="col-md-6 col-sm-6 col-xs-8">
																										<form>
																											<!-- Imagem e bot�o -->
																											<div class="form-group">
																												<label for="servico_imagem">Escolher
																													imagem:</label> <input type="file"
																													id="servico_imagem" value="Imagem">
																											</div>
																											<!-- Input Texto-->
																											<div class="form-group">
																												<label for="servico_descricao">Descri��o
																													do Servi�o:</label> <input type="servico_descricao"
																													class="form-control col-sm-6"
																													id="servico_descricao"
																													placeholder="Servi�o" value="Corte Tesoura">
																											</div>
																											<!-- Input Texto-->
																											<div class="form-group">
																												<label for="servico_preco">Pre�o</label> <input
																													type="servico_preco" class="form-control"
																													id="servico_preco" placeholder="Pre�o"
																													value="R$ 20,00">
																											</div>
																											<!-- Bot�o Enviar-->
																											<button type="submit"
																												class="btn btn-success pull-left">Enviar</button>
																										</form>
																									</div>
																							</div>
																					</div>
																				</div>

																			</div>
																			<!-- Inferior Bot�o Encerrar-->
																			<div class="modal-footer">
																				<button type="button" class="btn btn-default"
																					data-dismiss="modal">Fechar</button>
																			</div>
																		</div>

																	</div>
																</div></td>
														</tr>
														<!-- Incio informa��o Ativo/Inativo-->
														<tr data-status="ativo">
															<td class="col-md-6 formatacao_td">
																<h4>
																	<small>Status:</small><span class="pull-left ativo">(Ativo)</span>
																</h4>
															</td>
															<td></td>
															<td class="formatacao_td_image">
																<div class="media">
																	<a href="#" class="pull-left"> <img
																		src="http://i65.tinypic.com/2w7o7b7.png"
																		class="media-photo" class="media-photo">
																	</a>

																</div>
															</td>
															<td class="formatacao_td">Descri��o</td>
															<td></td>
															<td class="formatacao_td"><span class="media">R$</span>
															</td>
															<td></td>
															<td class="formatacao_td"><span class="pull-right">
																	<button class="btn btn-default" data-toggle="modal"
																		data-target="#modalEditarServico" type="button">Editar</button>
																	<button class="btn btn-success" type="button"
																		disabled="disabled">Ativar</button>
																	<button class="btn btn-warning" type="button"
																		disabled="disabled">Desativar</button>
																	<button class="btn btn-danger" type="button">Excluir</button>
															</span> <!--Modal-->
																<div class="modal fade" id="modalEditarServico"
																	role="dialog">
																	<div class="modal-dialog">

																		<!-- Modal Conte�do Total-->
																		<div class="modal-content">
																			<div class="modal-header">
																				<button type="button" class="close"
																					data-dismiss="modal">&times;</button>
																				<h4 class="modal-title">Editar servi�o</h4>
																			</div>
																			<!-- Conte�do Central -->
																			<div class="modal-body">
																				<div
																					class="panel panel-default painel-registro-coment">
																					<div class="row">
																						<form class="form-horizontal">
																							<div class="col-sm-12">
																								<fieldset>
																									<div class="col-md-6 col-sm-6 col-xs-8">
																										<form>
																											<!-- Imagem e bot�o -->
																											<div class="form-group">
																												<label for="servico_imagem">Escolher
																													imagem:</label> <input type="file"
																													id="servico_imagem" value="Imagem">
																											</div>
																											<!-- Input Texto-->
																											<div class="form-group">
																												<label for="servico_descricao">Descri��o
																													do Servi�o:</label> <input type="servico_descricao"
																													class="form-control col-sm-6"
																													id="servico_descricao"
																													placeholder="Servi�o" value="Corte Tesoura">
																											</div>
																											<!-- Input Texto-->
																											<div class="form-group">
																												<label for="servico_preco">Pre�o</label> <input
																													type="servico_preco" class="form-control"
																													id="servico_preco" placeholder="Pre�o"
																													value="R$ 20,00">
																											</div>
																											<!-- Bot�o Enviar-->
																											<button type="submit"
																												class="btn btn-success pull-left">Enviar</button>
																										</form>
																									</div>
																							</div>
																					</div>
																				</div>

																			</div>
																			<!-- Inferior Bot�o Encerrar-->
																			<div class="modal-footer">
																				<button type="button" class="btn btn-default"
																					data-dismiss="modal">Fechar</button>
																			</div>
																		</div>

																	</div>
																</div>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<div class="content-footer">
										<p>*Ser�o mostrados servi�os Ativos e Inativos somente,
											aten��o ao exlcuir informa��es.</p>
									</div>
								</div>
							</section>
						</div>
					</div>
					<!-- Registrar coment�rio-->
					<div class="tab-pane" id="registrar_comentario">
						<div class="col-md-12 container-principal">
							<div class="panel panel-default painel-registro-coment">
								<div class="row">
									<form class="form-horizontal">
										<div class="col-sm-12">
											<fieldset>
												<div class="col-md-6 col-sm-6 col-xs-8">
													<form>
														<!-- Imagem e bot�o -->
														<div class="form-group">
															<label for="servico_imagem">Escolher imagem:</label> <input
																type="file" id="servico_imagem">
														</div>
														<!-- Input Texto-->
														<div class="form-group">
															<label for="servico_descricao">Descri��o do
																Servi�o:</label> <input type="servico_descricao"
																class="form-control col-sm-6" id="servico_descricao"
																placeholder="Servi�o">
														</div>
														<!-- Input Texto-->
														<div class="form-group">
															<label for="servico_preco">Pre�o</label> <input
																type="servico_preco" class="form-control"
																id="servico_preco" placeholder="Pre�o">
														</div>
														<!-- Bot�o Enviar-->
														<button type="submit" class="btn btn-success pull-left">Enviar</button>
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
<jsp:include page="rodape.jsp" />