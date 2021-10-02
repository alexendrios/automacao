package br.com.bb.mdc.testesAutomatizadosAnalise;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import br.com.bb.mdc.testesAutomatizadosEntidade.IndentificacaoRS724;
import br.com.bb.mdc.testesAutomatizadosEntidade.RegistroCSR724;
import br.com.bb.mdc.testesAutomatizadosUtils.Utils;

public class AnaliseDadosProcessamentoCRS724 {
	

	private static Map<String, String> listaDescricaoOcorrencia(Map<String, String> argumentos) {
		
		/*
		 * Lista de Ocoência Confeccionada conforme <CSR – Controle da Sua Remessa>
		 */
		
		argumentos.put("00", "SEM OCORRÊNCIA");
		argumentos.put("01", "FALTA HEADER OU TRAILER");
		argumentos.put("02", "ARQUIVO TRUNCADO");
		argumentos.put("03", "REMESSA VAZIA");
		argumentos.put("99", "ERRO NÃO TRATADO");
		
		return argumentos;
	}
	
	private static String mostrarOcorrência(RegistroCSR724 registro) {
		String atual = "";
		Map<String, String> ocorrencia = new HashMap<String, String>();
		ocorrencia = listaDescricaoOcorrencia(ocorrencia);
		for (Map.Entry<String, String> item : ocorrencia.entrySet()) {
			if(item.getKey().equals(registro.getCodigoErro())){
				String saida = String.format("\t\t\t\t\t<td>%s</td>\n\t\t\t\t\t<td>%s</td>\n", 
						item.getKey(), item.getValue());
				
				atual += "\t\t\t\t<tr>\n"+saida+"\t\t\t\t</tr>\n";
			}
		}
		
		return atual;
	}
	
	public static void reportHtml(IndentificacaoRS724 idenfificacao, RegistroCSR724 registro) throws IOException {
		String arquivo = "target/report_html/confirmacaoCSR724.html";
		
		//Configuração do documento HTML
		String conteudo ="<!DOCTYPE html>\n" + 
				"<html lang='pt-br'>\n" + 
				"   <head>\n" + 
				"		<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>\n"+
				"       <meta charset='utf-8'/>\n" + 
				"       <title>Recebimento do arquivo CSR724 - Sistema MDC</title>\n" +
				"		<link rel = 'stylesheet' type='text/css' href='C:\\Users\\Alexandre Santos\\eclipse-workspace\\br.com.bb.mdc.testesAutomatizados\\target\\style\\css\\bootstrap.min.css'>\n"+
				"   </head>\n" + 
				"   <body>\n" +
				"		<div class='container'>\n"+
				"			<div class='jumbotron jumbotron-fluid'>\n"+
				"				<div class='container'>\n"+
				"					<h1 class='text-primary' class='display-4'>CONFIRMAÇÃO DO RECEBIMENTO <small class='text-warning'>CSR724</small>\n"+
				"				</h1>\n"+
				"				</div>"+
				"			</div>\n"+	
				"			<table class=table 'table-responsive-md'>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+		
				"						<th>IDENTIFICAÇÃO</th>\n"+	
				"						<th>NOME DO ARQUIVO</th>\n"+	
				"						<th>DATA DE MOVIMENTO</th>\n"+	
				"						<th>BANCO</th>\n"+
				"					</tr>\n"+
				" 					<tr>\n"+	
				"						<td>"+idenfificacao.getIdentificacaoHeadear()+"</td>\n"+
				"						<td>"+idenfificacao.getNomeArquivoHeadear()+"</td>\n"+
				"						<td>"+idenfificacao.getDataMovimentoHeadear()+"</td>\n"+
				"						<td>"+idenfificacao.getBancoHeadear()+"</td>\n"+
				"					</tr>\n"+
				"				</tbody>\n"+	
				"			</table></br>\n"+
				"			<table class='table table-hover'>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+
				"						<td>TIPO DE REGISTROS</td>\n"+
				"						<td>"+registro.getTipoRegistro()+"</td>\n"+
				"					</tr>\n"+
				"					<tr>\n"+
				"						<td>NOME DO ARQUIVO</td>\n"+
				"						<td>"+registro.getNomeArquivo()+"</td>\n"+
				"					</tr>\n"+
									"<tr>\n"+		
				"						<th>CÓDIGO DO ERRO</th>\n"+	
				"						<th>DESCRIÇÃO</th>\n"+	
				"					</tr>\n"+
										mostrarOcorrência(registro)+"\n"+
				"				</tbody>\n"+
				"			</table></br>\n"+
				"			<table class=table 'table-responsive-md'>\n"+
				"				<tbody>\n"+
				"					<tr>\n"+		
				"						<th>IDENTIFICAÇÃO</th>\n"+	
				"						<th>NOME DO ARQUIVO</th>\n"+	
				"						<th>DATA DE MOVIMENTO</th>\n"+	
				"						<th>BANCO</th>\n"+
				"					</tr>\n"+
				" 					<tr>\n"+	
				"						<td>"+idenfificacao.getIdentificacaoTrailler()+"</td>\n"+
				"						<td>"+idenfificacao.getNomeArquivoTrailler()+"</td>\n"+
				"						<td>"+idenfificacao.getDataMovimentoTrailler()+"</td>\n"+
				"						<td>"+idenfificacao.getBancoTrailler()+"</td>\n"+
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
