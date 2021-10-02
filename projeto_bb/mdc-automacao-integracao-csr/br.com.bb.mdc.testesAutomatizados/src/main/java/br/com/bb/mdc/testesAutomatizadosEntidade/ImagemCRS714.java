package br.com.bb.mdc.testesAutomatizadosEntidade;

public class ImagemCRS714 {

	private final int TAMANHO_REG_IMAGEM = 27408;
	private int quantidadeRegistros;
	private int tamanhoImagem;
	private String ladoImagem;

	public int getTAMANHO_REG_IMAGEM() {
		return TAMANHO_REG_IMAGEM;
	}

	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}

	public int getTamanhoImagem() {
		return tamanhoImagem;
	}

	public String getLadoImagem() {
		return ladoImagem;
	}
	
	public void setTamanhoImagem(int tamanhoImagem) {
		this.tamanhoImagem = tamanhoImagem;
	}
	
	public void setQuantidadeRegistros(int imagemSize) {
		int quantidadeRegistros = (imagemSize / getTAMANHO_REG_IMAGEM()) + 1;
		this.quantidadeRegistros = quantidadeRegistros;
	}

	public void analizarImagem(String imagem) {
		
		imagem = imagem.replace(".", ";");
		String[] lado = imagem.split(";");
		imagem = lado[0].substring(lado[0].length() - 1);
		this.ladoImagem = imagem;
	}

	

}
