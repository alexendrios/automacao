package br.com.bb.mdc.testesAutomatizadosAnalise;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import br.com.bb.mdc.testesAutomatizadosEntidade.RegistroProtocolo;
import br.com.bb.mdc.testesAutomatizadosService.DadosProcessamentoCSR717;
import br.com.bb.mdc.testesAutomatizadosUtils.Utils;

public class AnaliseDadosProcessamentoCSR717 {

	private static RegistroProtocolo dadosProtocolo;
	private static ArrayList<RegistroProtocolo> listaDadosProtocolo;
	private static Map<String, String> listaOcorrencias;
	private static Map<String, Integer> quantidadeCheque;
	private static Map<String, String> codResponsavel;
	private static Map<String, String> responsavelIndiceImagem;
	private static Map<String, String> indiceApurado;
	private static Map<String, Integer> quantidadeElementosIndice;
	private static Map<String, String> codigoOcorrencia;
	private static Map<String, Integer> qtdidadeOcorrencia; 
	private static int posicaoInicial;
	private static int posicaoFinal;
	private static int somaF = 0;
	private static int somaV = 0;
	private static int somaA = 0;
	private static int somaConferenciaSistema = 0;
	private static int somaConferenciaOutros = 0;
	private static int qtdCheque;
	
	

	private static Map<String, String> listaDescricaoOcorrencia(Map<String, String> argumentos) {
		/*
		 * Lista de Ocoência Confeccionada conforme <CSR – Controle da Sua Remessa>
		 */

		argumentos.put("000", "Cheque sem ocorrência");
		argumentos.put("700", "Tamanho da imagem divergente");
		argumentos.put("701", "Tamanho (bytes) divergente");
		argumentos.put("702", "Excesso no tamanho de bordas");
		argumentos.put("703", "Inclinação fora de padrão");
		argumentos.put("794", "Excesso de bordas na imagem");
		argumentos.put("705", "Contraste fora de padrão");
		argumentos.put("706", "Resolução da imagem divergente");
		argumentos.put("707", "Imagem não comprimida CCITT4");
		argumentos.put("708", "Imagem não está no padrão TIFF");
		argumentos.put("709", "Imagem não é bitonal(P/B)");
		argumentos.put("710", "Indicativa de devolução - Divergência de\n\tAssinatura");
		argumentos.put("711", "Insuficiência de Assinatura");
		argumentos.put("712", "Falta Cartão Autógrafos");
		argumentos.put("713", "Indicativa de devolução - Erro formal:\n\tAusência de Assinatura");
		argumentos.put("715", "Indicativa de devolução - Moeda inválida");
		argumentos.put("716", "Indicativa de devolução - Cheque Prescrito");
		argumentos.put("717", "Indicativa de devolução - Cheque > 100,00\n\tnão nominativo");
		argumentos.put("718", "Cheque sem CMC7");
		argumentos.put("719", "Cheque sem linha superior");
		argumentos.put("720", "Dados inconsistentes com CMC7");
		argumentos.put("721", "Dados inc. CMC7xLinha1 -> UT");
		argumentos.put("722", "Indicativa de devolução - Cheque sem valor\n\tnumérico");
		argumentos.put("723", "Indicativa de devolução - Erro formal -\n\tCheque sem valor por extenso");
		argumentos.put("724", "Diverg. valor processado GTI");
		argumentos.put("725", "Cheque não datado");
		argumentos.put("726", "Erro formal - Mês");
		argumentos.put("727", "Indicativa de devolução - Erro formal - Data");
		argumentos.put("730", "Dúvida - Divergência de Assinatura");
		argumentos.put("733", "Dúvida - Erro formal: Ausência de Assinatura");
		argumentos.put("737", "Dúvida - Cheque > 100,00 não nominativo");
		argumentos.put("742", "Dúvida - Cheque sem valor numérico");
		argumentos.put("743", "Dúvida - Erro formal - Cheque sem valor por\n\textenso");
		argumentos.put("788", "Ocorrência que trata das exceções");
		argumentos.put("797", "Conferência de Assinatura não efetuada");
		argumentos.put("798", "Conferência de Formalística não efetuada");
		argumentos.put("799", "Cheque não verificado");
		argumentos.put("800", "magem não permitiu processamento");

		return argumentos;
	}

	private static Map<String, Integer> inserirQuantidade(Map<String, Integer> argumento,
			ArrayList<RegistroProtocolo> argumento2) {
		for (RegistroProtocolo nome : argumento2) {
			if (!argumento.containsKey(nome.getCodProtrocolo()))
				argumento.put(nome.getCodProtrocolo(), 0);
			argumento.put(nome.getCodProtrocolo(), argumento.get(nome.getCodProtrocolo()) + 1);
		}
		return argumento;
	}

	private static Map<String, String> tratamentoMap(Map<String, String> argumento, ArrayList<String> agurmento,
			int inicio, int fim) {

		for (String valor : agurmento) {
			argumento.put(valor, valor.substring(inicio, fim));
		}
		return argumento;
	}

	private static Map<String, Integer> calcularquantidadeElementos(Map<String, Integer> argumento,
			ArrayList<String> argumento2) {
		for (String nome : argumento2) {
			if (!argumento.containsKey(nome))
				argumento.put(nome, 0);
			argumento.put(nome, argumento.get(nome) + 1);
		}
		return argumento;
	}

	private static ArrayList<String> tratamentoListaMap(Map<String, String> agumento, ArrayList<String> argumento2) {
		for (Map.Entry<String, String> item : agumento.entrySet()) {
			argumento2.add(item.getValue());
		}

		return argumento2;
	}
	
	public static String mostrarIndiceHtml() {
		/*
		 * Criação das linhas de uma tabela em Html
		 * Referente ao Índice
		 */
		
		String atual = "";
		for (Entry<String, Integer> item : quantidadeElementosIndice.entrySet()) {
			String saida = String.format("\t\t\t\t\t<td>%s</td>\n\t\t\t\t\t<td>%d</td>\n",
					item.getKey(), item.getValue());
			
			atual += "\t\t\t\t<tr>\n"+saida+"\t\t\t\t</tr>\n";
		}
		
		return atual;
	}
	
	public static String mostrarOcorrenciaHtml() {
		/*
		 * Criação das linhas de uma tabela em Html
		 * Referente as Ocorrância
		 */
		String atual = "";
		for (Map.Entry<String, Integer> item : qtdidadeOcorrencia.entrySet()) {
			for (Map.Entry<String, String> ocorr : listaOcorrencias.entrySet()) {
				if (item.getKey().equals(ocorr.getKey())) {
					String saida = String.format("\t\t\t\t\t<td>%s</td>\n\t\t\t\t\t<td>%s</td>\n\t\t\t\t\t<td>%d</td>\n", 
							item.getKey(),ocorr.getValue(), item.getValue());
					
					atual += "\t\t\t\t<tr>\n"+saida+"\t\t\t\t</tr>\n";
				}
			}

		}
		return atual;
	}

	public static void analisarCSR717(String path, String file) throws IOException {

		quantidadeCheque = new HashMap<String, Integer>();

		// Identificação do Protocolo
		dadosProtocolo = DadosProcessamentoCSR717.identicacaoRegistro(path, file);

		
		// Identificação dos Registros
		listaDadosProtocolo = DadosProcessamentoCSR717.dadosRegistro(path, file);

		// Quantidade de Cheque
		quantidadeCheque = inserirQuantidade(quantidadeCheque, listaDadosProtocolo);
		qtdCheque = quantidadeCheque.size();

		// Trecho de Código Responsável pelo Identificador de Imagem
		ArrayList<String> indiceImagem = new ArrayList<String>();
		for (int i = 0; i < listaDadosProtocolo.size(); i++) {
			indiceImagem.add(listaDadosProtocolo.get(i).getIndicadorImagem() + " "
					+ listaDadosProtocolo.get(i).getCodProtrocolo());
		}

		posicaoInicial = 0;
		posicaoFinal = 1;
		responsavelIndiceImagem = new HashMap<String, String>();
		responsavelIndiceImagem = tratamentoMap(responsavelIndiceImagem, indiceImagem, posicaoInicial, posicaoFinal);

		for (Map.Entry<String, String> item : responsavelIndiceImagem.entrySet()) {
			if (item.getValue().equals("F")) {
				somaF += 1;
			} else if (item.getValue().equals("A")) {
				somaA += 1;
			} else {
				somaV += 1;
			}
		}

		// Código Responsável pela Coferência
		ArrayList<String> sistemaResponsavel = new ArrayList<String>();
		for (RegistroProtocolo string : listaDadosProtocolo) {
			sistemaResponsavel.add(string.getCodProtrocolo() + string.getCodResponsavel());
		}

		codResponsavel = new HashMap<String, String>();
		posicaoInicial = 18;
		posicaoFinal = sistemaResponsavel.get(0).length();
		codResponsavel = tratamentoMap(codResponsavel, sistemaResponsavel, posicaoInicial, posicaoFinal);

		for (Map.Entry<String, String> item : codResponsavel.entrySet()) {

			if (item.getValue().equals("SISTEMA ")) {
				somaConferenciaSistema += 1;
			} else {
				somaConferenciaOutros += 1;
			}

		}

		// Trecho de Código Responsável pelo ìndice de Confiabilidade
		ArrayList<String> indiceConfencia = new ArrayList<String>();
		for (RegistroProtocolo string : listaDadosProtocolo) {
			indiceConfencia.add(string.getCodProtrocolo() + string.getIndiceConfiabilidade());
		}

		posicaoInicial = 18;
		posicaoFinal = indiceConfencia.get(0).length();
		indiceApurado = new HashMap<String, String>();
		indiceApurado = tratamentoMap(indiceApurado, indiceConfencia, posicaoInicial, posicaoFinal);

		ArrayList<String> indiceResultado = new ArrayList<String>();
		indiceResultado = tratamentoListaMap(indiceApurado, indiceResultado);
		quantidadeElementosIndice = new HashMap<String, Integer>();
		quantidadeElementosIndice = calcularquantidadeElementos(quantidadeElementosIndice, indiceResultado);

		// Ocorrência
		ArrayList<String> codigOcorrencia = new ArrayList<String>();
		for (RegistroProtocolo ocorrencia : listaDadosProtocolo) {
			codigOcorrencia.add(ocorrencia.getCodProtrocolo() + ocorrencia.getCodOcorrencia());
		}
		
		posicaoInicial = 18;
		posicaoFinal = codigOcorrencia.get(0).length();
		codigoOcorrencia = new HashMap<String, String>();
		codigoOcorrencia = tratamentoMap(codigoOcorrencia, codigOcorrencia, posicaoInicial, posicaoFinal);

		ArrayList<String> listOcorrencia = new ArrayList<String>();
		listOcorrencia = tratamentoListaMap(codigoOcorrencia, listOcorrencia);
		qtdidadeOcorrencia = new HashMap<String, Integer>();
		qtdidadeOcorrencia = calcularquantidadeElementos(qtdidadeOcorrencia,listOcorrencia);
	
		// Descrição Ocorrência
		
		listaOcorrencias = new HashMap<String, String>();
		listaOcorrencias = listaDescricaoOcorrencia(listaOcorrencias);
		for (Map.Entry<String, Integer> item : qtdidadeOcorrencia.entrySet()) {
			for (Map.Entry<String, String> ocorr : listaOcorrencias.entrySet()) {
				if (item.getKey().equals(ocorr.getKey())) {
				}
			}

		}

				
		//Geração do Html Report
		String arquivo = "target/report_html/reportCSR717.html";
		
		//Formatação do Report HTML	
		String conteudo ="<!DOCTYPE html>\n" + 
				"<html lang='pt-br'>\n" + 
				"   <head>\n" + 
				"		<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>\n"+
				"       <meta charset='utf-8'/>\n" + 
				"       <title>Report CSR717 - Sistema MDC</title>\n" +
				"		<link rel = 'stylesheet' type='text/css' href='C:\\Users\\Alexandre Santos\\eclipse-workspace\\br.com.bb.mdc.testesAutomatizados\\target\\style\\css\\bootstrap.min.css'>\n"+
				"   </head>\n" + 
				"   <body>\n" +
				"		<div class='container'>\n"+
				"			<div class='jumbotron jumbotron-fluid'>\n"+
				"				<div class='container'>\n"+
				"					<h1 class='text-primary' class='display-4'>REPORT <small class='text-warning'>CSR717</small>\n"+
				"				</h1>\n"+
				"				</div>"+
				"			</div>\n"+	
				"			<table class=table 'table-responsive-md'>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+		
				"						<th>REMESSA</th>\n"+	
				"						<th>DATA DO MOVIMENTO</th>\n"+	
				"						<th>NOME DO ARQUIVO</th>\n"+	
				"						<th>REMESSA CSR717</th>\n"+
				"					</tr>\n"+
				" 					<tr>\n"+	
				"						<td>"+dadosProtocolo.getHeadear()+"</td>\n"+
				"						<td>"+dadosProtocolo.getDataMovimentoHeadear()+"</td>\n"+
				"						<td>"+dadosProtocolo.getNomeArquivoHeadear()+"</td>\n"+
				"						<td>"+dadosProtocolo.getRemessaHeadear()+"</td>\n"+
				"					</tr>\n"+
				"				</tbody>\n"+	
				"			</table></br>\n"+
				"			<table class='table table-hover'>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+
				"						<td>QTD. DE REGISTROS:</td>\n"+
				"						<td>"+listaDadosProtocolo.size()+"</td>\n"+
				"					</tr>\n"+
				"					<tr>\n"+
				"						<td>DATA DA CONFERÊNCIA:</td>\n"+
				"						<td>"+listaDadosProtocolo.get(0).getDataConferencia()+"</td>\n"+
				"					</tr>\n"+
				"					<tr>\n"+
				"						<td>HORA DA CONFERÊNCIA:</td>\n"+
				"						<td>"+listaDadosProtocolo.get(listaDadosProtocolo.size() - 1).getHoraCoferencia()+" a "+listaDadosProtocolo.get(0).getHoraCoferencia()+"</td>\n"+
				"					</tr>\n"+
				"				</tbody>\n"+
				"			</table></br>\n"+
				"			<table class='table table-hover'>\n"+
				"				<thead>\n"+
				"					<tr><th colspan='2'>RESPONSÁVEL PELA CONFERÊNCIA DAS IMAGENS DO CHEQUE</th></tr>\n"+
				"				</thead>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+
				"						<th>SISTEMA:</th>\n"+
				"						<td>"+somaConferenciaSistema+"</td>\n"+
				"					</tr>\n"+
				"					<tr>\n"+
				"						<th>OUTROS:</th>\n"+
				"						<td>"+somaConferenciaOutros+"</td>\n"+
				"					</tr>\n"+
				"				</tbody>\n"+
				"			</table></br>\n"+
				"			<h3>RESULTADO DO PROCESSAMENTO DE IMAGEM</h3></br>\n"+
				"			<table class='table table-striped'>\n"+
				"				<thead>\n"+
				"					<tr><th colspan='2'>ANÁLISE REFERENTE A IMAGEM DE CHEQUES</th></tr>\n"+
				"				</thead>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+
				"						<td>QTD. DE CHEQUES IDENT. NO SISTEMA</td>\n"+
				"						<td>"+qtdCheque+"</td>\n"+
				"					</tr>\n"+
				"				</tbody>\n"+
				"			</table>\n"+
				"			<pre>\n"+
				"A FORMA DE IDENTIFICAÇÃO DA IMAGEM\n" + 
				"DOS CHEQUES PELO SISTEMA\n"+		
				"			</pre>\n"+	
				"			<table class='table table-hover'>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+
				"						<th>LADO DO CHEQUE</th>\n"+
				"                  		<th>QTD.</th>\n"+ 
				"					</tr>\n"+
				"               	<tr>\n"+
				"						<td>FRENTE</td>\n"+
				"						<td>"+somaF+"</td>\n"+
				"					</tr>\n"+
				"               	<tr>\n"+
				"						<td>VERSO</td>\n"+
				"						<td>"+somaV+"</td>\n"+				
				"					</tr>\n"+
				"               	<tr>\n"+
				"						<td>AMBOS LADOS</td>\n"+
				"						<td>"+somaA+"</td>\n"+				
				"					</tr>\n"+	
				"				</tbody>\n"+
				"			</table>\n"+
				/*"			<<p>\n"+
				"			ÍNDICE APURADO NA CONFERÊNCIA</br>\n" + 
				"			DAS IMAGENS DE CHEQUES\n"+
				"			</p>\n"+
			    "			<pre>\n"+
				"VALOR DE 0 A 100\n" + 
				"000 PARA REPROVADO\n" + 
				"100 PARA APROVADO\n"+
				"			</pre>\n"+
				"			<table class='table table-hover'>\n"+	
				"				<tbody>\n"+
				"					<tr>\n"+
				"						<th>ÍNDICE</th>\n"+
				"						<th>QTD.</th>\n"+
				"					</tr>\n"+
								mostrarIndiceHtml()+"\n"+	
				"				</tbosy>\n"+
				"			</table>\n"+
				"			<pre>\n"+
				"Nota - se que o SISTEMA identificou o registro de: 4 imagens de cheques,\n" + 
				"no entanto a soma das quantidades demostradas pelo índice apresenta\n" + 
				"o resultado: 12, pois cada cheque foi processado mais de uma vez\n" + 
				"Ao qual obteve as seguintes ocorrências:\n"+		
				*/"			</pre>\n"+
				"			<table class='table table-hover'>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+
				"						<th>OCORRÊNCIA</th>\n"+
				"						<th>DESCRIÇÃO</th>\n"+
				"						<th>QTD.</th>\n"+
				"					</tr>\n"+
							mostrarOcorrenciaHtml()+"\n"+
				"				</tbody>\n"+
				"			</table></br>\n"+
				"			<table class=table 'table-responsive-md'>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+		
				"						<th>REMESSA</th>\n"+	
				"						<th>DATA DO MOVIMENTO</th>\n"+	
				"						<th>NOME DO ARQUIVO</th>\n"+	
				"						<th>REMESSA CSR717</th>\n"+
				"					</tr>\n"+
				" 					<tr>\n"+	
				"						<td>"+dadosProtocolo.getTrailler()+"</td>\n"+
				"						<td>"+dadosProtocolo.getDataMovimentoTrailler()+"</td>\n"+
				"						<td>"+dadosProtocolo.getNomeArquivoTrailler()+"</td>\n"+
				"						<td>"+dadosProtocolo.getRemessaTrailler()+"</td>\n"+
				"					</tr>\n"+
				"				</tbody>\n"+	
				"			</table>\n"+
				"		</div>\n"+
				"   </body>\n" + 
				"</html>";
		
		//Cria o Arquivo HTML
		Utils.escritorArquivos(arquivo, conteudo);
	}

}
