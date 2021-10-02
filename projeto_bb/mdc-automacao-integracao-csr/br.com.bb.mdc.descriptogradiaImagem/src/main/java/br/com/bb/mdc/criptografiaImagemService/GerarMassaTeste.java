package br.com.bb.mdc.criptografiaImagemService;

import java.util.ArrayList;
import br.com.bb.mdc.criptografiaImagemImagem.TransformacaoImagem;
import br.com.bb.mdc.criptografiaImagemUtil.Util;

public class GerarMassaTeste {

	private static String pathImage;
	private static String path;
	private static String arquivoCSV; 
	private static String nomeArquivoImagemMassaTest;
	private static String pathMassaTratar;
	private static String pathMassaTratadas;
	private static String chave;
	private static ArrayList<String> arquivos;
	private static ArrayList<String> chaves;
	private static ArrayList<String> imagensTratar;
	private static byte[] binariosEncriptografado;
	private static byte[] binariosDescriptografado;
	private static ArrayList<byte[]> listaBinariosEncriptografados;
	private static ArrayList<byte[]> listaBinariosDescriptografados;

	public static void gerarMassaTesteVariasImagens(ArrayList<String> argumentos) throws Exception {

		System.out.println("\n######### Criação de Massa de Testes ###########\n"
				+ "\t\tImagens de Cheques\t\n");
				
		//inicialização das variáveis
		arquivos = new ArrayList<String>();
		chaves = new ArrayList<String>();
		listaBinariosEncriptografados = new ArrayList<byte[]>();
		listaBinariosDescriptografados = new ArrayList<byte[]>();
		path = null;
		arquivoCSV = null;
		pathMassaTratar = null;
		pathMassaTratadas = null;
		nomeArquivoImagemMassaTest = null;
		imagensTratar = null;
		
		System.out.println("Carregando as Configurações...\n");
		
		//Setup		
		path = argumentos.get(0);
		arquivoCSV = argumentos.get(1);
		pathMassaTratar = argumentos.get(2);
		
		System.out.println("Operações Realizadas:\n...");
		
		//Movendo as Imagens para um diretório específico
		TransformacaoImagem.moverArquivos(pathMassaTratar ,path, arquivoCSV);
		
		//Trabalhando com criptografia das imagens
		arquivos = Util.listandoArquivos(pathMassaTratar);
		listaBinariosEncriptografados = TransformacaoImagem.listaImagemBinaria(arquivos);
		arquivos = Util.iniciarArquivo(arquivos);
		chaves = Util.criarChaveImagens(arquivos, 0, arquivos.get(0).length() -6);	
		listaBinariosDescriptografados = ImagemFactory.decifrarColecao(listaBinariosEncriptografados, chaves);
		
		//Criação das imagens 
		
		pathMassaTratadas = argumentos.get(3);
		TransformacaoImagem.criacaoArquivosImagens(pathMassaTratadas,listaBinariosDescriptografados,chaves);
		
		nomeArquivoImagemMassaTest = argumentos.get(4);	
		imagensTratar = Util.listandoArquivos(pathMassaTratadas);
		System.out.println("...\nAguarde\n...");
		TransformacaoImagem.transformarArquivo(imagensTratar, nomeArquivoImagemMassaTest, pathMassaTratadas);
		System.out.println("\nProcesso Finalizado!!\n##############################################");
	}
	
	public static void gerarMassaTesteUnicaImagem(ArrayList<String> argumentos) throws Exception {
		
		System.out.println("\n######### Criação de Massa de Testes ###########\n"
				+ "\t\tImagens de Cheques\t\n");
		
		//inicializando as variáveis
		pathImage = null;
		path = null;
		chave = null;
		nomeArquivoImagemMassaTest = null;
		binariosEncriptografado = null;
		binariosDescriptografado = null;
		
		
		System.out.println("Carregando as Configurações...\n");
		
		//Setup
		pathImage = argumentos.get(0);
		path = argumentos.get(1);
		nomeArquivoImagemMassaTest = argumentos.get(2);
		
		System.out.println("Operações Realizadas:\n...");
		
		//Trabalhando com criptografia das imagens
		binariosEncriptografado = TransformacaoImagem.imagemBinaria(pathImage);
		chave = pathImage.substring(20, pathImage.length());
		binariosDescriptografado = ImagemFactory.decifra(binariosEncriptografado, chave);
		
		System.out.println("...\nAguarde\n...");
		//Criação das imagens
		
		TransformacaoImagem.criacaoImagem(binariosDescriptografado, path, nomeArquivoImagemMassaTest);
		System.out.println("\nProcesso Finalizado!!\n##############################################");
	}
}
