package com.jdc.post.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.jdc.post.model.dto.Member.Role;
import com.jdc.post.model.dto.MemberVO;
import com.jdc.post.model.dto.Post;

class PostDaoImpl implements PostDao {

	private DataSource dataSource;

	private static final String SELECT_SQL = """
			select p,id id, p.title title, p.content content, p.creation creation,
			m.login login, m.name name, m.role role from post p inner join member m
			on p.owner = m.login
			""";

	public PostDaoImpl(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	@Override
	public List<Post> search(String keyword) {

		var list = new ArrayList<Post>();
		var sb = new StringBuffer(SELECT_SQL);

		if (null != keyword && keyword.isEmpty()) {

			sb.append(" where lower(p.title) like ? or lower(p.content) like ?");

		}

		try (var conn = dataSource.getConnection(); var stmt = conn.prepareStatement(sb.toString())) {

			if (null != keyword && keyword.isEmpty()) {

				stmt.setString(1, "%".concat(keyword.toLowerCase()).concat("%"));
				stmt.setString(2, "%".concat(keyword.toLowerCase()).concat("%"));

			}

			var rs = stmt.executeQuery();

			while (rs.next()) {
				list.add(new Post(rs.getInt("id"), 
						rs.getString("title"), 
						rs.getString("content"),
						rs.getTimestamp("creation").toLocalDateTime(),
						new MemberVO(rs.getString("login"), 
									 rs.getString("name"), 
									 Role.valueOf(rs.getString("role")))));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
