package com.util;
import java.util.Comparator;

import com.model.TGeshou;

public class ComparatorGeshou implements Comparator
{

	public int compare(Object arg0, Object arg1)
	{
		TGeshou geshou0 = (TGeshou) arg0;
		TGeshou geshou1 = (TGeshou) arg1;

		// 首先比较年龄，如果年龄相同，则比较名字

		/*int flag = user0.getAge().compareTo(user1.getAge());
		if (flag == 0)
		{
			return user0.getName().compareTo(user1.getName());
		} 
		else
		{
			return flag;
		}*/
		
		int flag = geshou1.getPiaoshu().compareTo(geshou0.getPiaoshu());//倒叙排列
		//正续排列 int flag = user0.getAge().compareTo(user1.getAge());
		return flag;
	}

}
