package code.com.bubu.honeybee.service.impl;

import code.com.bubu.honeybee.service.FanFactionService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Service
public class FacFactionServiceImpl implements FanFactionService {

    @Override
    public String fanfactionStart() {

        try {
            fanfactionDownload();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public void  fanfactionDownload() {
        int maxSize = 1000;
        ExecutorService executorService = Executors.newFixedThreadPool(20);
        for (int i = 0; i < maxSize ; i++) {
            executorService.execute(new FanFactionRunnable(i));
        }
    }

}

class FanFactionRunnable implements Runnable {

    private int articleNum ;

    public FanFactionRunnable(){};

    public FanFactionRunnable(int articleNum) {
        this.articleNum = articleNum;
    }

    @Override
    public void run() {
        httpDownload(articleNum);
    }

    public void httpDownload(int articleNum) {
        System.out.println(Thread.currentThread().getName() + "---" + articleNum);
    }

}