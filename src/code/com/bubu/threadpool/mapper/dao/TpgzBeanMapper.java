package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpgzBean;

public interface TpgzBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpgzBean record);

    int insertSelective(TpgzBean record);

    TpgzBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpgzBean record);

    int updateByPrimaryKey(TpgzBean record);
}