package com.j.qsng.service;

import com.j.qsng.dao.ColumnInfoContentMapper;
import com.j.qsng.model.ColumnContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ColumnInfoContentServiceImpl implements ColumnInfoContentService {
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    ColumnInfoContentMapper columnInfoContentMapper;

    public List<ColumnContent> getByType(String type) {

        return columnInfoContentMapper.getByType(type);
    }

    public void update(ColumnContent columnContent) {
        columnInfoContentMapper.update(columnContent);
    }

    public ColumnContent queryById(String id) {
        return columnInfoContentMapper.queryById(id);
    }


    public static String HtmlToText(String str) {
        if (str == null) {
            return "";
        } else if (str.length() == 0) {
            return "";
        }
        str = str.replaceAll("<br />", "\n");
        return str;
    }


}
