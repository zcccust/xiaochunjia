package com.xiaochunjia.data.dao;

import java.util.List;

/**
 * Created by zhangchengchun on 2016/6/22.
 * Dao基类，包含以下接口
 * add：添加数据
 * get：根据id查询数据
 * delete：根据id删除数据
 * findAll：查询所有数据
 * findByPage：根据记录数、页大小查询数据
 */
public interface BaseDao<TEntity> {
    Integer add(TEntity entity);
    TEntity get(Long id);
    void delete(Long id);
    List<TEntity> findAll();
    List<TEntity> findByPage(Integer record,Integer pageSize);
}
