package board2;
//IDX       NOT NULL NUMBER         
//TITLE     NOT NULL VARCHAR2(500)  
//WRITER    NOT NULL VARCHAR2(100)  
//CONTENT   NOT NULL VARCHAR2(4000) 
//IPADDR    NOT NULL VARCHAR2(100)  
//IMAGE              VARCHAR2(500)  
//VIEWCOUNT          NUMBER         
//WRITEDATE          DATE      

import java.sql.Date;

public class BoardDTO {
	private int idx;
	private String title;
	private String writer;
	private String content;
	private String ipaddr;
	private String image;
	private int viewCount;
	private Date writeDate;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIpaddr() {
		return ipaddr;
	}
	public void setIpaddr(String ipaddr) {
		this.ipaddr = ipaddr;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	
	
}
