package Libraries;
import java.io.File;

public class SampleKeywordsLibrary {

  public static final String ROBOT_LIBRARY_SCOPE = "GLOBAL";
  public void create_folder_java() {
    String currentDirectory = System.getProperty("user.dir");
    String path = currentDirectory + "/SampleFolderJava";
    //Instantiate the File class
    File f1 = new File(path);
    f1.mkdir();
  }
}