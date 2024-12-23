public class simpleForm extends GeoForm {

	private formType type;
	
	public simpleForm(String type){
		type = type.toUpperCase(); 
		try {
			 formType.valueOf(type);
			 this.type = formType.valueOf(type);
		 }
		catch(IllegalArgumentException e) {
			System.out.println(e.getMessage());
		}
	}
	
	
	
	@Override
	public void draw() {
		System.out.println("Draw "+this.type);
	}
	
	public void setType(String type) {
		type = type.toUpperCase(); 
		try {
			 formType.valueOf(type);
			 this.type = formType.valueOf(type);
		 }
		catch(IllegalArgumentException e) {
			System.out.println(e.getMessage());
		}
	}
	
	public formType getType() {
		return this.type;
	}

}
