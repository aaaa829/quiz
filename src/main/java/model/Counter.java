package model;

import java.io.Serializable;

public class Counter implements Serializable {
	private int count;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
