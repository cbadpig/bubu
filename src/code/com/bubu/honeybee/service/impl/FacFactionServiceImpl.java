package code.com.bubu.honeybee.service.impl;

import code.com.bubu.honeybee.service.FanFactionService;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Service;

import java.io.*;
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
        int maxSize = 1;
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

        CloseableHttpClient httpclient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://www.fanfiction.net/s/13322892/1");
        try {
            CloseableHttpResponse response1 = httpclient.execute(httpGet);
            HttpEntity entity1 = response1.getEntity();
            InputStream content = entity1.getContent();
            BufferedReader reader = new BufferedReader(new InputStreamReader(content));
            String strLine = null;
            StringBuffer buffer = new StringBuffer();
            while ((strLine = reader.readLine()) != null) {
                buffer.append(strLine);
            }
            String htmlstr = buffer.toString();

            writerToText(getTitle(htmlstr),getAuthor(htmlstr),getContent(htmlstr));

            EntityUtils.consume(entity1);
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println(Thread.currentThread().getName() + "---" + articleNum);
    }


    public String getTitle(String htmlstr) {

        String temp = htmlstr;
        temp = temp.substring(temp.indexOf("<b class='xcontrast_txt'>")+25,temp.indexOf("</b><span class='xcontrast_txt'>"));
        return temp;
    }

    public String getAuthor(String htmlstr) {
        String temp = htmlstr;
        temp = temp.substring(0,temp.indexOf("</a> <span class='icon-mail-1  xcontrast_txt' >"));
        temp = temp.substring(temp.lastIndexOf(">")+1,temp.length());
        return temp;
    }

    public String getContent(String htmlstr) {
        String temp = htmlstr;
        temp = temp.substring(temp.indexOf("id='storytext'>") + 15,temp.length());
        temp = temp.substring(0,temp.indexOf("</div>"));
        temp = temp.replaceAll("<p>","    ").replaceAll("</p>","\\n\\r")
                .replaceAll("<strong>","").replaceAll("</strong>","")
                .replaceAll("<em>","").replaceAll("</em>","");
        return temp;
    }

    public void  writerToText(String title,String author,String content) {
        try {
            BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream("d:\\2.txt"));
            out.write(content.getBytes());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}