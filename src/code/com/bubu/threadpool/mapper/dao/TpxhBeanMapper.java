package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpxhBean;

public interface TpxhBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpxhBean record);

    int insertSelective(TpxhBean record);

    TpxhBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpxhBean record);

    int updateByPrimaryKey(TpxhBean record);
}