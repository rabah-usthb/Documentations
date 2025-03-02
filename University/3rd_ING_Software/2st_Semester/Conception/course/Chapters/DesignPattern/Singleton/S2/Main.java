public class Main {

	public static void main(String[] args) {
		
		dataBaseManager dbManager = dataBaseManager.getInstance();
		System.out.println(dbManager.getConnectionString());
		dbManager.setUser("Dbaiot");
		dbManager.setPassword("psw");
		System.out.println(dbManager.getConnectionString());
		dbManager = dataBaseManager.getInstance();
		
	}

}
