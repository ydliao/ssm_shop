package top.lyde.ssm.dao;

import top.lyde.ssm.domain.Role;

import java.util.List;

public interface IRoleDao {
    public List<Role> findAll() throws  Exception;;

    public int save(Role role) throws  Exception;

    public Role findByUserId(Integer id);

}
