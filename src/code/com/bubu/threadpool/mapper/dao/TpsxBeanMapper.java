package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TpsxBean;

public interface TpsxBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TpsxBean record);

    int insertSelective(TpsxBean record);

    TpsxBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TpsxBean record);

    int updateByPrimaryKeyWithBLOBs(TpsxBean record);

    int updateByPrimaryKey(TpsxBean record);
}