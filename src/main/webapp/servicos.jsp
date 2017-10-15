<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						data-toggle="tab" class=""><h4 class="reviews text-capitalize">Servi�os
								Registrados</h4></a></li>
					<li><a href="#registrar_funcionario" role="tab"
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
													<h5>Visualize os Funcion�rios:</h5>
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
														<c:forEach var="servico" items="${requestScope.servicos}">
															<tr data-status="inativo">
																<td class="formatacao_td" colspan="2">
																	<h4>
																		<small>Status:</small><br> <span
																			class="pull-left ativo">(Ativo)</span>
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
																<td class="formatacao_td" colspan="2">R$:
																	${servico.valor}</td>
																<td class="formatacao_td"><span class="pull-right">
																		<button class="btn btn-default" data-toggle="modal"
																			data-target="#modalEditar" type="button"
																			data-servicoid="${servico.id}"
																			data-servicodescricao="${servico.descricao}"
																			data-servicopreco="${servico.valor}"
																			data-servicoimagem="${servico.imagem}">Editar</button>
																		<button class="btn btn-success"
																			onclick="location.href='enabled_s?id=${servico.id}'"
																			type="button" disabled>Ativar</button>
																		<button class="btn btn-warning"
																			onclick="location.href='disabled_s?id=${servico.id}'"
																			type="button" disabled>Desativar</button>
																		<button class="btn btn-danger"
																			onclick="location.href='del_s?id=${servico.id}'"
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
										<p>*Ser�o mostrados funcion�rios Ativos e Inativos
											somente, aten��o ao exlcuir informa��es.</p>
									</div>
								</div>
							</section>
						</div>
					</div>
					<!-- Registrar Funcion�rio-->
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
														<label for="id_desc_service">Descri��o do Servi�o:</label>
														<input type="text" id="id_desc_service"
															name="desc_service" class="form-control col-sm-6"
															placeholder=Servi�o required>
													</div>
													<div class="form-group">
														<label for="id_preco">Pre�o:</label> <input type="number"
															min=1.0 step=any id="id_preco" name="preco"
															class="form-control col-sm-6" placeholder="Pre�o"
															required>
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

<div class="modal fade" id="modalEditar" role="dialog"
	aria-labelledby="modalEditarLabel">
	<div class="modal-dialog">

		<!-- Modal Conte�do Total-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" id="modalEditarLabel">Editar
					Funcion�rios</h4>
			</div>
			<!-- Conte�do Central -->
			<div class="modal-body">
				<div class="panel panel-default painel-registro-coment">
					<div class="row">
						<div class="col-sm-12">
							<div class="col-md-6 col-sm-6 col-xs-8">
								<form action="edit_s" method="post"
									enctype="multipart/form-data">
									<fieldset>
										<div class="form-group">
											<label for="id_fotoModal">Escolher imagem:</label> <input
												class="form-control col-sm-6" type="text" name="foto"
												id="id_fotoModal" readonly />
											<div class="checkbox">
												<label id="id_lbl_troca"> <input type="checkbox"
													id="id_troca"> trocar foto
												</label>
											</div>
										</div>
										<div class="form-group">
											<label for="id_desc_serviceModal">Descri��o do
												Servi�o:</label> <input type="text" id="id_desc_serviceModal"
												name="desc_service" class="form-control col-sm-6" value=""
												placeholder=Servi�o required>
										</div>
										<div class="form-group">
											<label for="id_precoModal">Pre�o:</label> <input
												type="number" min=1 step=any id="id_precoModal" name="preco"
												class="form-control col-sm-6" value="" placeholder="Pre�o"
												required>
										</div>
										<button type="submit" value="" id="id_Modal" name="id"
											class="btn btn-success pull-left" style="margin-top: 1.3%;">Enviar</button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- Inferior Bot�o Encerrar-->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
			</div>
		</div>
	</div>
</div>

</section>
<script type="text/javascript">
	$('#modalEditar').on('show.bs.modal', function(event) {
		var button = $(event.relatedTarget) // Button that triggered the modal
		var id = button.data('servicoid') // Extract info from data-* attributes
		var descricao = button.data('servicodescricao')
		var preco = button.data('servicopreco')
		var img = button.data('servicoimagem')
		// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		var modal = $(this)
		modal.find('.modal-title').text(descricao)
		modal.find('#id_Modal').val(id)
		modal.find('#id_desc_serviceModal').val(descricao)
		modal.find('#id_precoModal').val(preco)
		modal.find('#id_fotoModal').val(img)
	})
</script>
<script>
	$('#id_troca').click(function() {
		if ($(this).prop('checked')) {
			$('input#id_fotoModal').removeAttr("type");
			$('input#id_fotoModal').prop('type', 'file');
			$('input#id_troca').fadeOut("slow");
			$('#id_lbl_troca').fadeOut("slow");
		}
	});
</script>
<jsp:include page="rodape.jsp" />