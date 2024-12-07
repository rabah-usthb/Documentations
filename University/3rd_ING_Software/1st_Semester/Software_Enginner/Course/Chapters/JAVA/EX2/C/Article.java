import java.util.LinkedHashSet;
import java.util.Set;

public class Article {
String title;
String description;
Set<Teacher> writerList = new LinkedHashSet<>();

public Article(String title, String description, Set<Teacher>writerList) {
	if (writerList == null || writerList.isEmpty()) {
		throw new IllegalArgumentException("Error Article Must Have At Least One Writer");
	}
	this.title = title;
	this.description = description;

	for(Teacher teacher : writerList) {
		this.addTeacher(teacher);
	}
	
}

public void cancelArticle() {
	for(Teacher teacher : this.writerList) {
		this.removeTeacher(teacher);
	}
}

public void addTeacher(Teacher teacher) {
	if(this.writerList.add(teacher)) {
	teacher.addArticle(this);
	}
}

public void removeTeacher(Teacher teacher) {
	if(this.writerList.remove(teacher)) {
	teacher.removeArticle(this);
	}
}
	
}
