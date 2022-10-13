package homework.boardVO;

import java.sql.Date;

public class BoardVO {
	
	private int no; 		// 번호
	private String title;	// 제목
	private String writer;	// 작성자
	private String content;	// 내용
	private Date date;		// 작성일

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "boardVO [no=" + no + ", title=" + title + ", writer=" + writer + ", content=" + content + ", date="
				+ date + "]";
	}
	
	
}
