package code.com.bubu.mobi.mapper.dao;

import code.com.bubu.mobi.bean.MobiManager;

public interface MobiManagerMapper {
    int deleteByPrimaryKey(String id);

    int insert(MobiManager record);

    int insertSelective(MobiManager record);

    MobiManager selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MobiManager record);

    int updateByPrimaryKey(MobiManager record);
}