package ex06;

public class MemberDTO {
	
	private String name;
	private String imgPath;
	
	public MemberDTO() {}	// 오버라이딩하는 것이 있으면 기본생성자는 항상 만들어놔라. (useBean 함수 못쓰는 경우가 생김)
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		this.imgPath = "image/짱구/" + name + ".png";		// image -> prefix         png -> suffix
		// 원래 기본생성자에 오버라이딩 형식으로 name과 imgPath를 지정하려 했지만
		// JSP:useBean을 사용하게 되어서 setName 함수 안에 끼워넣었다.
		
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
	

}
