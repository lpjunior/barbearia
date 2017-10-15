<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="cabecalho.jsp" />
<div class="col-md-10 content">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Bem vindo a Página do Administrador - Comentários</h4>
		</div>
		<div class="panel-body">
			<div class="comment-tabs">
				<ul class="nav nav-tabs" role="tablist">
					<li class="active"><a href="#comentario_registrado" role="tab"
						data-toggle="tab" class=""><h4 class="reviews text-capitalize">Comentários
								Registrados</h4></a></li>
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
													<h5>Visualize os Comentários:</h5>
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
														<!-- Incio informação Ativo/Inativo-->
														<c:forEach var="comentario"
															items="${requestScope.comentarios}">
															<tr data-status="inativo">
																<td class="formatacao_td" colspan="2">
																	<h4>
																		<small>Status:</small><br>
																		<c:choose>
																			<c:when test="${comentario.ativo}">
																				<span class="pull-left ativo">(Ativo)</span>
																				<c:set var="desativado" value="disable" />
																			</c:when>
																			<c:otherwise>
																				<span class="pull-left inativo">(Inativo)</span>
																			</c:otherwise>
																		</c:choose>
																	</h4>
																</td>
																<td class="formatacao_td" colspan="2">${comentario.nome}</td>
																<td class="formatacao_td" colspan="2">${comentario.bairro}</td>
																<td class="formatacao_td" colspan="2"><span
																	class="media">${comentario.comentario}</span></td>
																<td class="formatacao_td" colspan="2"><span
																	class="media">${comentario.nota}</span></td>
																<td class="formatacao_td"><span class="pull-right">
																		<button class="btn btn-success"
																			onclick="location.href='enabled_c?id=${comentario.id}'"
																			type="button" ${comentario.ativo ? 'disabled' : ''}>Ativar</button>
																		<button class="btn btn-warning"
																			onclick="location.href='disabled_c?id=${comentario.id}'"
																			type="button" ${comentario.ativo ? '' : 'disabled'}>Desativar</button>
																		<button class="btn btn-danger"
																			onclick="location.href='del_c?id=${comentario.id}'"
																			type="button">Excluir</button>
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
</section>
<jsp:include page="rodape.jsp" />