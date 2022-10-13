package kr.or.ddit.homework;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;


public class H03Hotel {

//	호텔 운영을 관리하는 프로그램 작성.(Map이용)
//	- 키값은 방번호 
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Scanner scanner;

	public H03Hotel() {
		scanner = new Scanner(System.in);
		
	}

	public void displayMenu() {
		System.out.println();
		System.out.println("*********************************************");
		System.out.println("어떤 업무를 하시겠습니까?");
		System.out.println("1.체크인  2.체크아웃 3.객실상태 4.업무종료");
		System.out.println("*********************************************");
		System.out.print("메뉴선택 => ");
	}

	// 프로그램을 시작하는 메서드
	public void hotelStart() {
		System.out.println("**************************");
		System.out.println("호텔 문을 열었습니다.");
		System.out.println("**************************");

		while (true) {

			displayMenu();

			int menuNum = scanner.nextInt();

			switch (menuNum) {
			case 1: checkIn();
				break;
//			case 2:	checkOut();
//				break;
//			case 3:	condision();
//				break;
			case 4:
				System.out.println("**************************");
				System.out.println("호텔 문을 닫았습니다.");
				System.out.println("**************************");
			default:
				System.out.println("잘못 입력했습니다. 다시입력하세요.");

			}
		}
	}

// 체크인 하기
private void checkIn() {
		
		
	}


class Hotel{
	private String roomNum;
	private String name;

	public Hotel(String roomNum, String name) {
		super();
		this.roomNum = roomNum;
		this.name = name;
	}
	public String getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "방번호 : " + roomNum + ",투숙객 :" + name;
	}
}
}
