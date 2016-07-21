package com.xiaochunjia.data.service;

import com.xiaochunjia.data.dao.DictionaryDao;
import com.xiaochunjia.data.model.Dictionary;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class DictionaryService extends BaseService<DictionaryDao,Dictionary>{

     public List<Dictionary> findByType(Integer type){
        return entityDao.findByType(type);
    }
}
