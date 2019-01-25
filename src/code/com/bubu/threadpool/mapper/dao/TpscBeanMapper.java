package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpscBean;

public interface TpscBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpscBean record);

    int insertSelective(TpscBean record);

    TpscBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpscBean record);

    int updateByPrimaryKey(TpscBean record);
}