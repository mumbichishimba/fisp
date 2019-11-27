package zm.co.farmer.fisp.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Hash {

    /**
     * Generate an MD5 String
     *
     * @param message
     * @return Return type String: An MD5 string
     * @throws Exception
     */
    public static String generateMD5(String message)
            throws Exception {
        return hashString(message, "MD5");
    }

    /**
     * Generate an SHA1 String
     *
     * @param message
     * @return Return type String: A SHA1 string
     * @throws Exception
     */
    public static String generateSHA1(String message)
            throws Exception {
        return hashString(message, "SHA-1");
    }

    /**
     * Generate an SHA256 String
     *
     * @param message
     * @return Return type String: A SHA1 string
     * @throws Exception
     */
    public static String generateSHA256(String message)
            throws Exception {
        return hashString(message, "SHA-256");
    }

    /**
     * Generate an HASH String
     *
     * @param message
     * @return Return type String: A HASH string
     * @throws Exception
     */
    private static String hashString(String message, String algorithm)
            throws Exception {
        try {
            MessageDigest digest = MessageDigest.getInstance(algorithm);
            byte[] hashedBytes = digest.digest(message.getBytes("UTF-8"));

            return convertByteArrayToHexString(hashedBytes);
        } catch (NoSuchAlgorithmException | UnsupportedEncodingException ex) {
            throw new Exception("Could not generate hash from String", ex);
        }
    }

    /**
     * Convert bytes array a a hex string
     *
     * @param arrayBytes
     * @return Return type
     */
    private static String convertByteArrayToHexString(byte[] arrayBytes) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < arrayBytes.length; i++) {
            stringBuffer.append(Integer.toString((arrayBytes[i] & 0xFF) + 256, 16).substring(1));
        }
        return stringBuffer.toString();
    }
}
