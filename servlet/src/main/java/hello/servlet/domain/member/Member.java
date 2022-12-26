package hello.servlet.domain.member;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Member {

	private Long id;
	private String usernmae;
	private int age;

	public Member() {
	}
	
	public Member(String usernmae, int age) {
		this.usernmae = usernmae;
		this.age = age;
	}

}
