package com.kvknl.regressie.definitions.kvkor.newregistration.composeassignment;

import com.kvknl.regressie.data._JsonData;
import com.kvknl.regressie.definitions.generic.BasePage;
import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.WebDriverRunner;
import io.qameta.allure.Step;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import static com.codeborne.selenide.Selenide.$;

public class ComposeAssignmentPage extends BasePage {

    public ComposeAssignmentPage(WebDriver webDriver) {
        super(webDriver);
        WebDriverRunner.setWebDriver(webDriver);
    }

    // JSON obj for GUI data
    private _JsonData testdata = new _JsonData();

    @Step("het selecteren van een rechtsvorm")
    public void choiceLegalForm() {

        // samenstellen opgave
        Configuration.timeout = 15000;
        $(By.id("Type_opgave")).click();
        $(By.xpath("//*[@id=\"Type_opgave\"]/option[1]")).click();
        $(By.xpath("//*[@id=\"Rechtsvorm\"]/option[2]")).click();
        $(By.id("Volgende")).click();
    }
}
