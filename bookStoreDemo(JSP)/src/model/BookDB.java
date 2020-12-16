package model;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class BookDB {
	private static Map<String, Book> books = new LinkedHashMap<String, Book>();
    static {
    	books.put("1", new Book("1","毛泽东传"));
    	books.put("2", new Book("2","毛泽东选集"));
    	books.put("3", new Book("3","习近平的七年知青岁月"));
    	books.put("4", new Book("4","周恩来传"));
    	books.put("5", new Book("5","邓小平传"));
    	books.put("6", new Book("6","他改变了中国:江泽民传"));
    	books.put("7", new Book("7","彭德怀自述"));
    	books.put("8", new Book("8","关河五十州：谋帅刘伯承"));
    }
    public static Collection<Book> getAll(){
    	return books.values();
    }
    public static Book getbook(String id) {
    	return books.get(id);
    }
}
