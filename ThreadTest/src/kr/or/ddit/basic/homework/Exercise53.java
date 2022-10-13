package kr.or.ddit.basic.homework;

import java.util.Random;
import java.util.Scanner;

public class Exercise53 {
	public static void main(String[] args) {
		/*
		 * 인공지능 컴퓨터와 게이머(사람)가 가위바위보 게임을 할 수 있도록 프로그램을 작성하시오
		 */

		Scanner scanner = new Scanner(System.in);
		Random random = new Random();

		int game1 = random.nextInt(3);
		String[] game2 = {"가위", "바위", "보"};

		System.out.print("가위 바위 보를 입력하세요: ");
		String human = scanner.nextLine();
		System.out.println("게이머: " + human);
		
		System.out.println("인공지능 컴퓨터: " + game2[game1]);
		
		if (game2[game1].equals(human)) {
			System.out.println("결과: 비겼다");
		}else if (game2[game1].equals("가위") && human.equals("보") 
			||game2[game1].equals("바위") && human.equals("가위")
		||game2[game1].equals("보") && human.equals("바위")) {
			System.out.println("결과 : 인공지능 컴퓨터 승리!");
		}else{
			System.out.println("결과 : 게이머 승리!");
		}

	}


	}


