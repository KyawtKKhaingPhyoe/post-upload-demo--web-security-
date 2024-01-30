package com.jdc.post.model;

import java.util.List;

import javax.sql.DataSource;

import com.jdc.post.model.dto.Post;

public interface PostDao {
	
	static PostDao getInstance(DataSource ds) {
		return new PostDaoImpl(ds);
	}

	List<Post> search(String keyword);

}
