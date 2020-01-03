package top.lyde.ssm.dao;

import top.lyde.ssm.domain.Permissions;

import java.util.List;

public interface IPermissionsDao {
    public int save(Permissions permissions) throws  Exception;
    public List<Permissions> findByRoleId(Integer id) throws  Exception;

}
