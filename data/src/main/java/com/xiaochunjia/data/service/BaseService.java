package com.xiaochunjia.data.service;

import com.xiaochunjia.data.dao.BaseDao;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by zhangchengchun on 2016/6/22.
 * Service 基类，实现如下服务
 * add：添加数据
 * get：根据id查询数据
 * delete：根据id删除数据
 * findAll：查询所有数据
 * findByPage：根据页码、页大小查询数据
 */
public class BaseService<TDao extends BaseDao<TEntity>,TEntity> {

    @Autowired
    protected TDao entityDao;

    public List<TEntity> findByPage(int page, int pageSize){

        if(page==0)page=1;

        int record =(page-1)*pageSize;

        return entityDao.findByPage(record, pageSize);
    }

    public Integer addBlog(TEntity blog){
        return entityDao.add(blog);
    }

    public TEntity find(Long id) {
        return entityDao.get(id);
    }

    public void delete(Long id){
        entityDao.delete(id);
    }

    public List<TEntity> findAll(){
        return entityDao.findAll();
    }
}
