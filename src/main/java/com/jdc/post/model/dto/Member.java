package com.jdc.post.model.dto;

public record Member(
		String login,
		String name,
		String password,
		Role role
) {
	
	public enum Role {
		ADMIN, MEMBER
	}

}