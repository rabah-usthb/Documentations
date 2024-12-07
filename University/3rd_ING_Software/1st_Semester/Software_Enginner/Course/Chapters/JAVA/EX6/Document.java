import java.util.LinkedHashSet;
import java.util.Set;

public class Document {

String name;
fileExtension extension;
StringBuilder content;
Set<Version> versionList = new LinkedHashSet<>();

public Document(String name ,FileExtension extension,StringBuilder content) {
	this.name = name;
	this.extension = extension;
	this.content =content;
}

public void createVersion(int version) {
   Version newVersion = new Version(version,this.content);
   this.versionList.add(newVersion);
}

public void deleteVersion(int version) {
   for (Version ver : this.versionList) {
		if(ver.version == version) {   
              this.versionList.remove(ver);
			  System.out.println("Successfully Deleted Version : "+version);
			  return;
			}
		   }
		   
   System.out.println("Version "+version+" Not Found");
}

public void revertTo(int version) {
	
   for (Version ver : this.versionList) {
	if(ver.version == version) {   
		this.content = ver.content;
		System.out.println("Successfully Reverted To Version : "+version);
		return;
	}
   }
   
   System.out.println("Version "+version+" Not Found");
}

public void deleteDocument() {
	versionList.clear();
}

}
