package code.com.bubu.mobi.mapper.dao;

import code.com.bubu.mobi.bean.MobiCode;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MobiCodeMapper {

    int insertByType(Integer type);

    List<MobiCode> selectCodeByType(@Param("type") Integer type, @Param("code") String code);

    /*int deleteByPrimaryKey(String id);

    int insert(MobiCode record);

    int insertSelective(MobiCode record);

    MobiCode selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MobiCode record);

    int updateByPrimaryKey(MobiCode record);*/
}