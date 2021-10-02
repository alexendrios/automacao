package br.com.bb.mdc.criptografiaImagemImagem;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import javax.imageio.ImageIO;
import javax.media.jai.NullOpImage;
import javax.media.jai.OpImage;
import javax.media.jai.PlanarImage;
import com.sun.media.jai.codec.FileSeekableStream;
import com.sun.media.jai.codec.ImageCodec;
import com.sun.media.jai.codec.ImageDecoder;
import com.sun.media.jai.codec.ImageEncoder;
import com.sun.media.jai.codec.SeekableStream;
import com.sun.media.jai.codec.TIFFEncodeParam;
import br.com.bb.mdc.criptografiaImagemUtil.Util;

public class TransformacaoImagem {

	private static InputStream is = null;
	private static byte[] buffer = null;
	private static ByteArrayInputStream bis;
	public static ArrayList<byte[]> imagensBinaria;

	//Trata o CSV Lido
	private static ArrayList<String> tratrarCsv(String arquivo) throws Exception {

		ArrayList<String> csv;
		ArrayList<String> csvTratado;
		String linhaCsv;

		csv = new ArrayList<String>();
		csvTratado = new ArrayList<String>();

		try {

			csv = Util.lerCsv(arquivo);

			// Tratamento CSV para ser Comparados com a lista de Arquivos
			linhaCsv = "";
			for (int i = 1; i < csv.size(); i++) {
				linhaCsv = "0" + csv.get(i);
				csvTratado.add(linhaCsv.substring(0, linhaCsv.length() - 1));
			}

		} catch (Exception e) {
			throw new Exception(e + " ** Erro ao Tratar o Arquivo CSV **");
		}

		return csvTratado;
	}

	//Formaliza o conteúdo retornando um padrão para Transformar o CSV em txt
	private static String formalizarConteudo(ArrayList<String> informacoes) {
		String saida = "";
		for (int i = 0; i < informacoes.size(); i++) {
			saida += informacoes.get(i) + "\n";
		}
		return saida;
	}

	//Padroniza o CSV para ser Comparados com os nomes dos Arquivos no Diretório Informado
	private static ArrayList<String> formalizarCsv(String arquivo) throws Exception {
		ArrayList<String> csv = new ArrayList<String>();
		ArrayList<String> csvFormalizado = new ArrayList<String>();
		ArrayList<String> dados = new ArrayList<String>();

		csv = tratrarCsv(arquivo);
		String csvArquivo = "csv.txt";
		String conteudo = formalizarConteudo(csv);
		
		Util.escritorArquivos(csvArquivo, conteudo);

		dados = Util.leitorArquivos(csvArquivo);
		

		int a = 0;
		int b = 1;
		
		//analizar esse método

		for (int i = 0; i < dados.size() - 1; i++) {
			String dadosColecao = "";
			for (int j = 0; j < dados.get(i).length(); j++) {
				if (a <= 34 || b <= 35) {
					dadosColecao += dados.get(i).subSequence(a, b);
					a += 2;
					b += 2;
				}	
			}
			a = 0;
			b = 1;
			
			csvFormalizado.add(dadosColecao);
		}
		
		return csvFormalizado;
	}

	// transformar um único arquivo em binário
	public static byte[] imagemBinaria(String pathImagem) throws Exception {
		try {
			is = new FileInputStream(pathImagem);
			buffer = new byte[is.available()];
			is.read(buffer);
			is.close();
		} catch (IOException e) {
			throw new Exception("** Erro ao Criar o Binário da Imagem **");
		}

		System.out.println("Binário Criado!!!");
		return buffer;
	}

	// Transformar um único binário em Imagem
	public static void criacaoImagem(byte[] imagemDados, String caminhoArquivo,
										String nomeArquivo) throws Exception {

		Util.criarDiretorio(caminhoArquivo);
		bis = new ByteArrayInputStream(imagemDados);

		try {
			ImageIO.write(ImageIO.read(bis), "tiff", new File(
					caminhoArquivo + "\\" + nomeArquivo + ".tif")
					);
			
		} catch (IOException e) {

			throw new Exception("** Erro ao Criar o Arquivo **");
		}

		System.out.println("Imagem Criada!!!");
	}

	// Transformando uma Lista de Arquivos e retornando uma Lista de Arquivos
	// Binário
	public static ArrayList<byte[]> listaImagemBinaria(ArrayList<String> pathImagens) throws Exception {
		imagensBinaria = new ArrayList<byte[]>();
		try {
			for (int i = 0; i < pathImagens.size(); i++) {
				is = new FileInputStream(pathImagens.get(i));
				buffer = new byte[is.available()];
				is.read(buffer);
				is.close();
				imagensBinaria.add(buffer);
			}
		} catch (Exception e) {

			throw new Exception("** Erro no Processo de Criação da Lista de Binários **");
		}
		System.out.println("Lista de Binário Criada!!!");
		return imagensBinaria;
	}

	// Transformar uma Coleção de Binários em imagens
	public static void criacaoArquivosImagens(String caminhoArquivo, ArrayList<byte[]> imagensBinarias,
			ArrayList<String> nomesImagens) throws Exception {
		
		Util.criarDiretorio(caminhoArquivo);
		try {
			for (int i = 0; i < imagensBinarias.size(); i++) {
				bis = new ByteArrayInputStream(imagensBinarias.get(i));
	
					ImageIO.write(ImageIO.read(bis), "tiff", new File(
							caminhoArquivo + "\\" + nomesImagens.get(i) + ".tif")
							);
			}
			} catch (IOException e) {
				throw new Exception("** Erro ao Criar o Arquivo **");
			}


		System.out.println("Coleção de Imagens Criadas!!!");
	}

	//Cria vários Arquivos de Imagens em um único
	public static void transformarArquivo(ArrayList<String> tifs, String nomeArquivo, String file) throws Exception {

		int numTifs = tifs.size();

		BufferedImage image[] = new BufferedImage[numTifs];
		for (int i = 0; i < numTifs; i++) {
			SeekableStream ss = new FileSeekableStream(tifs.get(i));
			ImageDecoder decoder = ImageCodec.createImageDecoder("tiff", ss, null);
			PlanarImage pi = new NullOpImage(decoder.decodeAsRenderedImage(0), null, null, OpImage.OP_IO_BOUND);
			image[i] = pi.getAsBufferedImage();

			ss.close();
		}

		TIFFEncodeParam params = new TIFFEncodeParam();
		params.setCompression(TIFFEncodeParam.COMPRESSION_DEFLATE);
		OutputStream out = new FileOutputStream("C:/temp/" + nomeArquivo + ".tif");
		ImageEncoder encoder = ImageCodec.createImageEncoder("tiff", out, params);
		List<BufferedImage> list = new ArrayList<BufferedImage>(image.length);
		for (int i = 1; i < image.length; i++) {
			list.add(image[i]);
		}
		params.setExtraImages(list.iterator());
		encoder.encode(image[0]);
		out.close();
		
		Util.apagarDiretorio(file);
		System.out.println("Massa de Teste Criada!!.");

	}

	//Move os arquivos a serem Tratados Conforme o CSV informado
	public static void moverArquivos(String caminhoArquivo, String path, 
									String arquivo) throws Exception {
		
		ArrayList<String> arquivos = new ArrayList<String>();
		ArrayList<String> arquivosDiretorio = new ArrayList<String>();
		ArrayList<String> csv = new ArrayList<String>();
		ArrayList<String> info = new ArrayList<String>();

		Util.criarDiretorio(caminhoArquivo);
		
		
		arquivosDiretorio = Util.listandoArquivos(path);
		arquivos = Util.iniciarArquivo(arquivosDiretorio);
		csv = formalizarCsv(arquivo);
			
		for (int i = 0; i < arquivos.size(); i++) {
			for (int j = 0; j < csv.size(); j++) {
				if (arquivos.get(i).substring(0, arquivos.get(i).length() -6).equals(csv.get(j))) {
					info.add(0,path+"\\");
					info.add(1, arquivos.get(i));
					info.add(2, caminhoArquivo);
					Util.moverArquivo(info);
				}
			}
		}
		System.out.println("Arquivos Movidos conforme indicação do CSV!!");
	}
}
