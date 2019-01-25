package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpdtBean;

public interface TpdtBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpdtBean record);

    int insertSelective(TpdtBean record);

    TpdtBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpdtBean record);

    int updateByPrimaryKey(TpdtBean record);
}