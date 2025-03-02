public class dataBaseManager {
    private static dataBaseManager instance = null;
    private String connectionString; 
    private String user="system";
    private String password="1234";
    private String pdb="XE";
    private String server = "localhost:1521";

    private dataBaseManager() {
        connectionString = "system/1234//localhost:1521/XE";
        System.out.println("dataBaseManager Initialized");
    }


    
    public static dataBaseManager getInstance() {
        if (instance == null) {
            instance = new dataBaseManager();
        }
        else {
        	System.out.println("Already Initialized");
        }
        return instance;
    }

 
    public String getConnectionString() {
        return this.connectionString;
    }
    
    public String getUser() {
        return this.user;
    }
    
    public String getPDB() {
        return this.pdb;
    }
    
    public String getPassword() {
    	return this.password;
    }
    
    public String getServer() {
        return this.server;
    }
    
    public void setUser(String user) {
    	this.connectionString = this.connectionString.replace(this.user,user);
    }
    
    public void setPassword(String password) {
    	this.connectionString = this.connectionString.replace(this.password,password);
    }
    
    public void setServer(String server) {
    	this.connectionString = this.connectionString.replace(this.server,server);
    }
    
    public void setPDB(String pdb) {
    	this.connectionString = this.connectionString.replace(this.pdb,pdb);
    }

}

