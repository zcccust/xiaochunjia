package com.xiaochunjia.data.dao;

import com.xiaochunjia.data.model.Dictionary;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface DictionaryDao extends BaseDao<Dictionary>{
    List<Dictionary> findByType(Integer type);
}