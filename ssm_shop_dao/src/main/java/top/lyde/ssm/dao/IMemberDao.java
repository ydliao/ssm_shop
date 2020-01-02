package top.lyde.ssm.dao;

import top.lyde.ssm.domain.Member;

public interface IMemberDao {
    public Member findById(Integer id);
}
