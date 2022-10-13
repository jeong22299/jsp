package kr.or.ddit.basic;

import java.util.Random;

import javax.swing.JOptionPane;

/*
 	컴퓨터와 가위바위보를 진행하는 프로그램을 작성하시오.
 	
 	컴퓨터의 가위바위보는 난수를 이용
 	사용자의 가위바위보는 showInputDialog() 메서드를 이용하여 입력 받는다.
 	입력시간은 5초제한 5초안에 입력이 없으면 진것으로 한다.
 	
 	5초안에 입력이 완료되면 승패를 출력한다.
 */
public class T07ThreadGame {
	public static boolean inputcheck = false;
	
	public static void main(String[] args) {
		showInputDialog log = new showInputDialog();
		CountDown2 cnt = new CountDown2();
		
		log.start();
		cnt.start();

	}
}

class showInputDialog extends Thread {
	
	@Override
	public void run() {
		String str = JOptionPane.showInputDialog("가위바위보를 입력하세요");
		
		T07ThreadGame.inputcheck = true;
		
		System.out.println("당 신 : " + str );
		Random random = new Random();
		String[] computer = {"가위", "바위", "보"};
		int game1 = random.nextInt(3);
		System.out.println("컴퓨터: " + computer[game1]);

		if (computer[game1].equals(str)) {
			System.out.println("결과: 비겼다");
		} else if (computer[game1].equals("가위") && str.equals("보") 
				||computer[game1].equals("바위") && str.equals("가위")
				||computer[game1].equals("보") && str.equals("바위")) {
			System.out.println("결과 : 컴퓨터 승리!");
		} else {
			System.out.println("결과 :  당신이 이겼습니다!");
		}
	}
}

class CountDown2 extends Thread {
	
	@Override
	public void run() {
		for(int i=5; i>=1; i--) {
		
			if(T07ThreadGame.inputcheck) {
				return;
			}
			System.out.println(i);

			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
		// 10초가 경과되었는데도 입력이 없으면 프로그램을 종료한다.
		System.out.println("5초가 지났습니다. 컴퓨터가 이겼습니다.");
		System.exit(0); // 프로그램을 강제로 종료시키는 메서드
	}
}