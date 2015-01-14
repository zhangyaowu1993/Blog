package com.ysu.zyw.service.managementlogic;

import com.ysu.zyw.dao.EssayDAO;
import com.ysu.zyw.service.entity.Essay;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhang_yao_wu1993 on 15/1/12.
 *
 * @author by Zerur
 */
public class EssayManagement {
    private EssayDAO essayDAO;

    public EssayDAO getEssayDAO() {
        return essayDAO;
    }

    public void setEssayDAO(EssayDAO essayDAO) {
        this.essayDAO = essayDAO;
    }


    /**
     * 随机获得 count 条 Essay 数据
     * @param count
     * @return
     */
    @Transactional
    public List<Essay> getEssayStochastic(int count) {
        List<Essay> essayList = essayDAO.selectEssayStochastic(count);
        return essayList;
    }
}
