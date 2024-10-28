package com.service;

import java.util.List;


public class liuService
{
	public static int[] Random(int suoyoudeshu[],int geshu)
	{
		int send[] = suoyoudeshu;
		int geshu1=geshu;
		if(send.length<geshu1)
		{
			return send;
		}
		
		java.util.Random r = new java.util.Random();   
		int temp1,temp2;  
		  
		int len = send.length; 
		int returnValue[] = new int[geshu1];  
		for(int i=0;i<geshu1;i++)  
		{ 
			temp1 = Math.abs(r.nextInt())% len; 
			returnValue[i] = send[temp1]; 
            temp2 = send[temp1];  
            send[temp1] = send[len-1];  
            send[len-1] = temp2;  len--; 
        }  
		return returnValue; 

	}
	
	public static int[] Random(List<Integer> list,int geshu)
	{
		int[] numbers = new int[list.size()];
		for(int i=0;i<list.size();i++)
		{
			numbers[i]=list.get(i);
		}
		
		int send[] = numbers;
		int geshu1=geshu;
		if(send.length<geshu1)
		{
			return send;
		}
		
		java.util.Random r = new java.util.Random();   
		int temp1,temp2;  
		  
		int len = send.length; 
		int returnValue[] = new int[geshu1];  
		for(int i=0;i<geshu1;i++)  
		{ 
			temp1 = Math.abs(r.nextInt())% len; 
			returnValue[i] = send[temp1]; 
            temp2 = send[temp1];  
            send[temp1] = send[len-1];  
            send[len-1] = temp2;  len--; 
        }  return returnValue; 
	}
	
}
