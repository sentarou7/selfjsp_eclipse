package to.msn.wings.selfjsp.chap08;

public class WingsFunction {
    public static String getProperty(String name) {
        return System.getProperty(name);
    }

    public static String repeatString(String str, int count, String delimiter) {
        StringBuffer buf = new StringBuffer();
        for (int i = 0; i < count; i++) {
            buf.append(str);
            buf.append(delimiter);
        }
        return buf.toString();
    }
}