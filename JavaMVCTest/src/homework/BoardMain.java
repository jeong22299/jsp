package homework;

import java.util.Scanner;

import homework.boardService.BoardService;
import homework.boardVO.BoardVO;

public class BoardMain {
	private Scanner scan = new Scanner(System.in); 
	private BoardService boService;

	public BoardMain() {
		boService = new BoardService();
	}
	
	/**
	 * 메뉴를 출력하는 메서드
	 */
	public void displayMenu(){
		System.out.println();
		System.out.println("----------------------");
		System.out.println("  === 게 시 판 ===");
		System.out.println("  1. 새글 작성");
		System.out.println("  2. 수정");
		System.out.println("  3. 삭제");
		System.out.println("  4. 검색");
		System.out.println("  5. 전체 목록 출력");
		System.out.println("  6. 작업 끝.");
		System.out.println("----------------------");
		System.out.print("게시판 메뉴 선택 >> ");
	}
	
	
	/**
	 * 프로그램 시작메서드
	 */
	public void start(){
		int choice;
		do{
			displayMenu(); //메뉴 출력
			choice = scan.nextInt(); // 메뉴번호 입력받기
			switch(choice){
				case 1 :  // 자료 입력
					insertWrite();
					break;
				case 2 :  // 자료 수정 
					updateWrite();
					break;
//				case 3 :  // 자료 삭제
//					deleteWrite();
//					break;
//				case 4 :  // 자료 검색
//					searchWrite();
//					break;
//				case 5 :  // 전체 자료 출력
//					displayWriteAll();
//					break;
				case 6 :  // 작업 끝
					System.out.println("작업을 마칩니다.");
					break;
				default :
					System.out.println("번호를 잘못 입력했습니다. 다시입력하세요");
			}
		}while(choice!=6);
	}

	private void updateWrite() {
		
		
	}

	private void insertWrite() {
		
			scan.nextLine();
			System.out.println();
			System.out.println("게시글 입력 정보를 입력하세요.");
			System.out.print("작성자 >> ");
			String writer = scan.next();
			
			System.out.print("제  목 >> ");
			String title = scan.next();
			
			System.out.print("내  용 >> ");
			String content = scan.next();
			
			BoardVO bv = new BoardVO();
			bv.setWriter(writer);
			bv.setTitle(title);
			bv.setContent(content);
			
			int cnt = boService.registerBoard(bv);
			
			if(cnt > 0) {
				System.out.println(title + " 게시글 등록 성공!");
			}else {
				System.out.println(title + " 게시글 등록 실패!!!");
			}			
						
	}

	public static void main(String[] args) {
		BoardMain brdObj = new BoardMain();
		brdObj.start();
	}
	
}
