package kr.or.ddit.app.common.vo;

import java.sql.Date;

public class AtchFileVO {
	//ATCH_FILE 
	private long ATCH_FILE_ID = -1;
	private Date ATCH_FILE_DAY;
	private String ATCH_FILE_ABLE;
	//ATCH_DE
	private long ATCH_DE_SEQ;
	private String ATCH_DE_OG;
	private String ATCH_FILE_DE_SAV;
	private String ATCH_FILE_DE_EXT;
	private String ATCH_FILE_DE_CONT;
	private String ATCH_FILE_DE_PATH;
	private long ATCH_FILE_DE_SIZE;
	
	
	public long getATCH_FILE_ID() {
		return ATCH_FILE_ID;
	}
	public void setATCH_FILE_ID(long ATCH_FILE_ID) {
		this.ATCH_FILE_ID = ATCH_FILE_ID;
	}
	public Date getATCH_FILE_DAY() {
		return ATCH_FILE_DAY;
	}
	public void setATCH_FILE_DAY(Date aTCH_FILE_DAY) {
		ATCH_FILE_DAY = aTCH_FILE_DAY;
	}
	public String getATCH_FILE_ABLE() {
		return ATCH_FILE_ABLE;
	}
	public void setATCH_FILE_ABLE(String aTCH_FILE_ABLE) {
		ATCH_FILE_ABLE = aTCH_FILE_ABLE;
	}
	public long getATCH_DE_SEQ() {
		return ATCH_DE_SEQ;
	}
	public void setATCH_DE_SEQ(long atchDeSeq) {
		ATCH_DE_SEQ = atchDeSeq;
	}
	public String getATCH_DE_OG() {
		return ATCH_DE_OG;
	}
	public void setATCH_DE_OG(String aTCH_DE_OG) {
		ATCH_DE_OG = aTCH_DE_OG;
	}
	public String getATCH_FILE_DE_SAV() {
		return ATCH_FILE_DE_SAV;
	}
	public void setATCH_FILE_DE_SAV(String aTCH_FILE_DE_SAV) {
		ATCH_FILE_DE_SAV = aTCH_FILE_DE_SAV;
	}
	public String getATCH_FILE_DE_EXT() {
		return ATCH_FILE_DE_EXT;
	}
	public void setATCH_FILE_DE_EXT(String aTCH_FILE_DE_EXT) {
		ATCH_FILE_DE_EXT = aTCH_FILE_DE_EXT;
	}
	public String getATCH_FILE_DE_CONT() {
		return ATCH_FILE_DE_CONT;
	}
	public void setATCH_FILE_DE_CONT(String tCH_FILE_DE_CONT) {
		ATCH_FILE_DE_CONT = tCH_FILE_DE_CONT;
	}
	public String getATCH_FILE_DE_PATH() {
		return ATCH_FILE_DE_PATH;
	}
	public void setATCH_FILE_DE_PATH(String aTCH_FILE_DE_PATH) {
		ATCH_FILE_DE_PATH = aTCH_FILE_DE_PATH;
	}
	public long getATCH_FILE_DE_SIZE() {
		return ATCH_FILE_DE_SIZE;
	}
	public void setATCH_FILE_DE_SIZE(long fileSize) {
		ATCH_FILE_DE_SIZE = fileSize;
	}
	
	
}
	
	
	
	
	
	
	
	
	
//	private String atchFileId = -1; 	// 첨부파일ID
//	private Date creatDt; 			// 생성일자
//	private String fileSn = 1; 		// 파일순번
//	private String fileStreCours; 	// 파일저장경로
//	private String streFileNm; 		// 저장파일명
//	private String orignlFileNm; 	// 원본파일명
//	private String fileExtsn;		// 파일확장자
//	private String fileCn = ""; 	// 파일내용
//	private String fileSize = 0; 		// 파일크기
//	
//	
//	public String getAtchFileId() {
//		return atchFileId;
//	}
//	public void setAtchFileId(String atchFileId) {
//		this.atchFileId = atchFileId;
//	}
//	public Date getCreatDt() {
//		return creatDt;
//	}
//	public void setCreatDt(Date creatDt) {
//		this.creatDt = creatDt;
//	}
//	public String getFileSn() {
//		return fileSn;
//	}
//	public void setFileSn(String fileSn) {
//		this.fileSn = fileSn;
//	}
//	public String getFileStreCours() {
//		return fileStreCours;
//	}
//	public void setFileStreCours(String fileStreCours) {
//		this.fileStreCours = fileStreCours;
//	}
//	public String getStreFileNm() {
//		return streFileNm;
//	}
//	public void setStreFileNm(String streFileNm) {
//		this.streFileNm = streFileNm;
//	}
//	public String getOrignlFileNm() {
//		return orignlFileNm;
//	}
//	public void setOrignlFileNm(String orignlFileNm) {
//		this.orignlFileNm = orignlFileNm;
//	}
//	public String getFileExtsn() {
//		return fileExtsn;
//	}
//	public void setFileExtsn(String fileExtsn) {
//		this.fileExtsn = fileExtsn;
//	}
//	public String getFileCn() {
//		return fileCn;
//	}
//	public void setFileCn(String fileCn) {
//		this.fileCn = fileCn;
//	}
//	public String getFileSize() {
//		return fileSize;
//	}
//	public void setFileSize(String fileSize) {
//		this.fileSize = fileSize;
//	}
//	
//}
