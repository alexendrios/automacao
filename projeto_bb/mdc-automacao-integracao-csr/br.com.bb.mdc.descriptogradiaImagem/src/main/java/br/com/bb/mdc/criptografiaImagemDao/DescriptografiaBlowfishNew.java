package br.com.bb.mdc.criptografiaImagemDao;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class DescriptografiaBlowfishNew
{
	 public enum Action {
	        CIPHER  (Cipher.ENCRYPT_MODE),
	        DECIPHER(Cipher.DECRYPT_MODE);
	       
	        private Action(int mode) { this.mode = mode; }
	        private final int mode;
	        private int getCipherMode() { return this.mode; }
	    };
	   
	   
	    public static byte[] blowfish(byte[] input, String key, Action action) throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException  {
	        byte[] cbc_ch = {(byte) 0x12, (byte) 0x3d, (byte) 0xab, (byte) 0xfa, (byte) 0x85, (byte) 0x80, (byte) 0x0d, (byte) 0x06,
	                         (byte) 0xf5, (byte) 0x41, (byte) 0xa6, (byte) 0x12, (byte) 0x84, (byte) 0xf3, (byte) 0x67, (byte) 0x63};
	        byte[] cbc_iv = {(byte) 0xe9, (byte) 0xec, (byte) 0x5f, (byte) 0xef, (byte) 0xfd, (byte) 0xbe, (byte) 0x2f, (byte) 0xb4};

	        if ((key != null) && (key.length() >= 32)) {
	            byte[] divers = key.getBytes("US-ASCII");
	            for (int i = 0; i < 16; i++)
	                cbc_ch[i] ^= (divers[i] ^ divers[i + 16]);
	       
	            for (int i = 0; i < 8; i++)
	                cbc_iv[i] ^= divers[i + 16];
	        }

	        Cipher cipher = Cipher.getInstance("Blowfish/CBC/PKCS5Padding");
	        cipher.init(action.getCipherMode(), new SecretKeySpec(cbc_ch, "Blowfish"), new IvParameterSpec(cbc_iv));
	        return cipher.doFinal(input);
	    }
}
