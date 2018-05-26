package com.neuedu.service;

import com.neuedu.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpService {

    /**
     * 查询所有emp
     * @return
     */
    List<Emp> listEmp();

    /**
     * 根据id查询emp
     * @param id
     * @return
     */
    Emp getEmpById(int id);

    /**
     * 添加emp
     * @param emp
     * @return
     */
    int saveEmp(Emp emp);

    /**
     * 根据id的数组来删除多个emp
     * @param ids
     * @return
     */
    int deleteEmpByIds(int[] ids);

    /**
     * 修改emp
     * @param emp
     * @return
     */
    int updateEmp(@Param("emp") Emp emp);

}
