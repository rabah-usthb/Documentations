import java.util.LinkedHashSet;
import java.util.Set;

public class Teacher {
String firstName;
String lastName;
int ID;
Set<Article> articleList = new LinkedHashSet<>();

public Teacher(String firstName , String lastName , int ID) {
 this.firstName = firstName;
 this.lastName = lastName;
 this.ID = ID;
}

public void addArticle(Article article) {this.articleList.add(article);}
public void removeArticle(Article article) {this.articleList.remove(article);}
}
