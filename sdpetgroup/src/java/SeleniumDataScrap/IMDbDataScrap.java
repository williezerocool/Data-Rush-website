
package SeleniumDataScrap;

import IMDbEntities.IMDbLatestNews;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class IMDbDataScrap {
    
    private Document document;
    private String url = "http://www.imdb.com/";
    
    public IMDbDataScrap() {}
    
    private Document getHtmlDocument() throws IOException {
    
        document = Jsoup.connect(url).get();
        return document;
    }
    
    public List<IMDbLatestNews> getLastestNewsList() throws IOException {
    
        Document doc;
        Element div;
        Elements div2;
       
        
        
        
        doc = getHtmlDocument();
        div = doc.getElementById("wrapper");
        div2 = div.select(".channel-content");
        
        List<IMDbLatestNews> LastestNewsList = new ArrayList<>();
        
        for(Element el : div2) {
            
            IMDbLatestNews news = new IMDbLatestNews();
            
            news.setImage(el.select(".primary-news")
                    .select(".primary-image")
                    .select(".image")
                    .select("a")
                    .select("img")
                    .attr("src"));
            news.setHeader(el.select(".primary-news")
                    .select(".primary-content")
                    .select(".news-header")
                    .select("a")
                    .text());
            news.setArticle(el.select(".primary-news")
                    .select(".primary-content")
                    .select("p")
                    .text());
            
            LastestNewsList.add(news);
            
        }
        
        LastestNewsList.remove(0);
        return LastestNewsList;
        
    }
    
 
}
