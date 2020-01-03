package top.lyde.ssm.domain;

import java.util.List;

public class Role {
   private int	id;
   private String roleName;
   private String roleDesc;
   private List<Permissions> permissions;
    public List<Permissions> getPermissions() {
        return permissions;
    }
    public void setPermissions(List<Permissions> permissions) {
        this.permissions = permissions;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getRoleName() {
        return roleName;
    }
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    public String getRoleDesc() {
        return roleDesc;
    }
    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", roleName='" + roleName + '\'' +
                ", roleDesc='" + roleDesc + '\'' +
                ", permissions=" + permissions +
                '}';
    }
}
