package com.neuedu.service;

import com.neuedu.entity.Dept;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeptService {

    /**
     * 查询所有dept
     * @return
     */
    List<Dept> listDept();

    /**
     * 根据id的数组来删除多个dept
     * @param ids
     * @return
     */
    int deleteDeptByIds(int[] ids);

    /**
     * 根据dept_id删除emp
     * @param ids
     * @return
     */
    int deleteEmpByDept(int[] ids);

    /**
     * 添加dept
     * @param dept
     * @return
     */
    int saveDept(@Param("dept") Dept dept);

    /**
     * 根据id查询dept
     * @param id
     * @return
     */
    Dept getDeptById(int id);

    int updateDept(@Param("dept") Dept dept);

}
