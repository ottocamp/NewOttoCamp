package user.model.vo;

public class RandomCode {
	
	
	
	public String RandomCode(int num) {
		
		String code ="";
				
		for(int i=0;i<num;i++) {
			code+=(char)Math.floor(((Math.random()*26)+60)); 
		}
	
		return code;
	}
	
	
	

}
