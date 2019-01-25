package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpwzBean;

public interface TpwzBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpwzBean record);

    int insertSelective(TpwzBean record);

    TpwzBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpwzBean record);

    int updateByPrimaryKeyWithBLOBs(TpwzBean record);

    int updateByPrimaryKey(TpwzBean record);
}