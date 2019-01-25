package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpdzBean;

public interface TpdzBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpdzBean record);

    int insertSelective(TpdzBean record);

    TpdzBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpdzBean record);

    int updateByPrimaryKey(TpdzBean record);
}