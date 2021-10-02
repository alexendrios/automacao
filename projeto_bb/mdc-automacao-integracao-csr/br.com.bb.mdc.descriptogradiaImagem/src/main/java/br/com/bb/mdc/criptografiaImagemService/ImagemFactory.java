package br.com.bb.mdc.criptografiaImagemService;

import java.util.ArrayList;

import br.com.bb.mdc.criptografiaImagemDao.DescriptografiaBlowfishNew;

public class ImagemFactory {

	public static byte[] decifra(byte[] entrada, String chave) throws Exception {
		byte[] saida;
		
		try {
			saida = DescriptografiaBlowfishNew.blowfish(entrada, chave, DescriptografiaBlowfishNew.Action.DECIPHER);
		} catch (Exception e) {
			throw new Exception("** Erro ao descriptografar arquivo ***");
		}
		System.out.println("Descriptografia do Arquivo .tif Realizado!!!");
		return saida;
	}
	
	public static ArrayList<byte[]> decifrarColecao(ArrayList<byte[]> binarios, ArrayList<String> chave) throws Exception{
		ArrayList<byte[]> saida = new ArrayList<byte[]>();
		try {
			for (int i = 0; i < binarios.size(); i++) {
				saida.add(DescriptografiaBlowfishNew.blowfish(binarios.get(i), chave.get(i), DescriptografiaBlowfishNew.Action.DECIPHER));
			}
			
		} catch (Exception e) {
			throw new Exception("** Erro ao descriptografar arquivo. ***");
		}
		System.out.println("Descriptografia dos Arquivos \".tif\" Realizado!!!");
		return saida;
	}

}
