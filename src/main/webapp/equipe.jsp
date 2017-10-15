<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="cabecalho.jsp" />
<div class="col-md-10 content">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Bem vindo a Página do Administrador - Equipe</h4>
		</div>
		<div class="panel-body">
			<div class="comment-tabs">
				<ul class="nav nav-tabs" role="tablist">
					<li class="active"><a href="#comentario_registrado" role="tab"
						data-toggle="tab" class=""><h4 class="reviews text-capitalize">Funcionários
								Registrados</h4></a></li>
					<li><a href="#registrar_funcionario" role="tab"
						data-toggle="tab" class="color-depoimento-user"><h4
								class="reviews text-capitalize">Novo Funcionário</h4></a></li>
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
														<c:forEach var="funcionario"
															items="${requestScope.equipe}">
															<tr data-status="inativo">
																<td class="formatacao_td" colspan="2">
																	<h4>
																		<small>Status:</small><br> <span
																			class="pull-left ativo">(Ativo)</span>
																	</h4>
																</td>
																<td class="formatacao_td_image">
																	<div class="media">
																		<a href="#" class="pull-left"> <img
																			src="resources/image/${funcionario.foto}"
																			class="media-photo">
																		</a>
																	</div>
																</td>
																<td class="formatacao_td" colspan="2">${funcionario.nome}</td>
																<td class="formatacao_td" colspan="2"><span
																	class="media">${funcionario.desc}</span></td>
																<td class="formatacao_td"><span class="pull-right">
																		<button class="btn btn-default" data-toggle="modal"
																			data-target="#modalEditar" type="button"
																			data-idfuncionario="${funcionario.id}"
																			data-nmfuncionario="${funcionario.nome}"
																			data-tmpfuncionario="${funcionario.tempoprof}"
																			data-descfuncionario="${funcionario.desc}"
																			data-ftfuncionario="${funcionario.foto}">Editar</button>
																		<button class="btn btn-success"
																			onclick="location.href='enabled_e?id=${funcionario.id}'"
																			type="button" disabled>Ativar</button>
																		<button class="btn btn-warning"
																			onclick="location.href='disabled_e?id=${funcionario.id}'"
																			type="button" disabled>Desativar</button>
																		<button class="btn btn-danger"
																			onclick="location.href='del_e?id=${funcionario.id}'"
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
					<!-- Registrar Funcionário-->
					<div class="tab-pane" id="registrar_funcionario">
						<div class="col-md-12 container-principal">
							<div class="panel panel-default painel-registro-coment">
								<div class="row">
									<div class="col-sm-12">
										<div class="col-md-6 col-sm-6 col-xs-8">
											<form action="cadastrar_e" method="post"
												enctype="multipart/form-data">
												<fieldset>
													<div class="form-group">
														<label for="if_foto">Escolher imagem:</label> <input
															type="file" name="foto" id="if_foto" required />
													</div>
													<div class="form-group">
														<label for="id_nome">Nome:</label> <input type="text"
															id="id_nome" name="nome" class="form-control col-sm-6"
															placeholder="Nome" required>
													</div>
													<div class="form-group">
														<label for="id_descricao">Descrição:</label>
														<textarea class="form-control" id="id_descricao"
															name="descricao" placeholder="Decreva seu funcionário"
															required></textarea>
													</div>
													<div class="form-group">
														<label for="id_tempo">Tempo de experiência:</label> <input
															type="number" min=1 id="id_tempo" name="tempo"
															class="form-control col-sm-6" placeholder="ex: 10"
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

		<!-- Modal Conteúdo Total-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" id="modalEditarLabel">Editar
					Funcionário</h4>
			</div>
			<!-- Conteúdo Central -->
			<div class="modal-body">
				<div class="panel panel-default painel-registro-coment">
					<div class="row">
						<div class="col-sm-12">
							<div class="col-md-6 col-sm-6 col-xs-8">
								<form action="edit_e" method="post"
									enctype="multipart/form-data">
									<fieldset>
										<div class="form-group">
											<label for="id_foto_funcModal">Escolher imagem:</label> <input
												class="form-control col-sm-6" type="text" name="foto"
												id="id_foto_funcModal" readonly />
											<div class="checkbox">
												<label id="id_lbl_troca"> <input type="checkbox"
													id="id_troca"> trocar foto
												</label>
											</div>
										</div>
										<div class="form-group">
											<label for="id_nome_funcModal">Nome:</label> <input
												type="text" id="id_nome_funcModal" name="nome"
												class="form-control col-sm-6" placeholder="Nome" value=""
												required>
										</div>
										<div class="form-group">
											<label for="id_desc_funcModal">Descrição:</label>
											<textarea class="form-control" id="id_desc_funcModal"
												name="descricao" value=""
												placeholder="Decreva seu funcionário" required></textarea>
										</div>
										<div class="form-group">
											<label for="id_temp_funcModal">Tempo de experiência:</label>
											<input type="number" min=1 id="id_temp_funcModal"
												name="tempo" class="form-control col-sm-6" value=""
												placeholder="ex: 10" required>
										</div>
										<button type="submit" value="" id="id_funcModal" name="id"
											class="btn btn-success pull-left" style="margin-top: 1.3%;">Enviar</button>
									</fieldset>
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
</section>
<script type="text/javascript">
	$('#modalEditar').on('show.bs.modal', function(event) {
		var button = $(event.relatedTarget) // Button that triggered the modal
		var id = button.data('idfuncionario') // Extract info from data-* attributes
		var nome = button.data('nmfuncionario')
		var tempo = button.data('tmpfuncionario')
		var descricao = button.data('descfuncionario')
		var foto = button.data('ftfuncionario')
		// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		var modal = $(this)
		modal.find('.modal-title').text('Funcionário: ' + nome)
		modal.find('#id_funcModal').val(id)
		modal.find('#id_nome_funcModal').val(nome)
		modal.find('#id_temp_funcModal').val(tempo)
		modal.find('#id_desc_funcModal').val(descricao)
		modal.find('#id_foto_funcModal').val(foto)
	})
</script>
<script>
	$('#id_troca').click(function() {
		if ($(this).prop('checked')) {
			$('input#id_foto_funcModal').removeAttr("type");
			$('input#id_foto_funcModal').prop('type', 'file');
			$('input#id_troca').fadeOut("slow");
			$('#id_lbl_troca').fadeOut("slow");
		}
	});
</script>
<jsp:include page="rodape.jsp" />