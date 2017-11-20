
package SeleniumDataScrap;

import BBBentities.Business;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;


public class BBBDataScrap {
    
    private WebDriver driver =  new ChromeDriver();
    private String url = "https://www.bbb.org/en/us";
   
    
    
    public BBBDataScrap() {}
    
  
    
    
    public List<Business> BBBSearch(String usrSearch, String usrLocation) {
        
        driver.get(url);
        driver.findElement(By.xpath("//*[@id=\"searchInputs\"]/div/div/form/div/div[1]/div/input")).clear();
        driver.findElement(By.xpath("//*[@id=\"searchInputs\"]/div/div/form/div/div[1]/div/input")).sendKeys(usrSearch);
        driver.findElement(By.xpath("//*[@id=\"searchInputs\"]/div/div/form/div/div[2]/div/input")).clear();
        driver.findElement(By.xpath("//*[@id=\"searchInputs\"]/div/div/form/div/div[2]/div/input")).sendKeys(usrLocation);
        driver.findElement(By.xpath("//*[@id=\"searchInputs\"]/div/div/form/div/button")).click();
        
        List<Business> business = getBusiness();
       
        return business;
    }
        
    public List<Business> getBusiness() {
        
        List<Business> list= new ArrayList<>();
       
        List<WebElement> elements = driver.findElements(By.className("search-result__contact-info"));
        
        for(WebElement el : elements) {
        
            Business business = new Business();
            
            business.setName(getElementText(el, "search-result__business-name"));
            business.setPhone(getElementText(el, "dtm-search-listing-phone"));
            business.setAddress(getElementText(el, "dtm-search-listing-address"));
            
            list.add(business);
            
        }
         return list;
    }
    
    private String getElementText(WebElement el, String className) {
    
        if( el.findElements(By.className(className)).size() != 0) {
            return el.findElement(By.className(className)).getText();
        } else
            return "Data Not Listed";
    }
    
    
    
    
}
