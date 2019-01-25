package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvgzBean;

public interface LvgzBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvgzBean record);

    int insertSelective(LvgzBean record);

    LvgzBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvgzBean record);

    int updateByPrimaryKey(LvgzBean record);
}