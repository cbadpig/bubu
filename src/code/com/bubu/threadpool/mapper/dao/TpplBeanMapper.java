package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpplBean;

public interface TpplBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpplBean record);

    int insertSelective(TpplBean record);

    TpplBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpplBean record);

    int updateByPrimaryKeyWithBLOBs(TpplBean record);

    int updateByPrimaryKey(TpplBean record);
}