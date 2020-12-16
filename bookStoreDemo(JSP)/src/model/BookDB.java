package model;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class BookDB {
	private static Map<String, Book> books = new LinkedHashMap<String, Book>();
    static {
    	books.put("1", new Book("1","ë�󶫴�"));
    	books.put("2", new Book("2","ë��ѡ��"));
    	books.put("3", new Book("3","ϰ��ƽ������֪������"));
    	books.put("4", new Book("4","�ܶ�����"));
    	books.put("5", new Book("5","��Сƽ��"));
    	books.put("6", new Book("6","���ı����й�:������"));
    	books.put("7", new Book("7","��»�����"));
    	books.put("8", new Book("8","�غ���ʮ�ݣ�ı˧������"));
    }
    public static Collection<Book> getAll(){
    	return books.values();
    }
    public static Book getbook(String id) {
    	return books.get(id);
    }
}
