package code.com.bubu.main.mapper.dao;

import code.com.bubu.main.bean.YhBean;

public interface YhBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(YhBean record);

    int insertSelective(YhBean record);

    YhBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(YhBean record);

    int updateByPrimaryKey(YhBean record);
}