import java.util.Date;
import java.text.SimpleDateFormat;

String timestamp() {
  Date date = new Date();
  SimpleDateFormat formatter = new SimpleDateFormat("yyMMdd-HHmmss-SSS"); // Swiftライクに書きたいところ
  return formatter.format(date);
}
