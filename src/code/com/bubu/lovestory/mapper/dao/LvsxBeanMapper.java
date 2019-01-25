package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvsxBean;

public interface LvsxBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvsxBean record);

    int insertSelective(LvsxBean record);

    LvsxBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvsxBean record);

    int updateByPrimaryKeyWithBLOBs(LvsxBean record);

    int updateByPrimaryKey(LvsxBean record);
}