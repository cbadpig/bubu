package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpzsBean;

public interface TpzsBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpzsBean record);

    int insertSelective(TpzsBean record);

    TpzsBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpzsBean record);

    int updateByPrimaryKey(TpzsBean record);
}