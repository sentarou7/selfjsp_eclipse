package to.msn.wings.selfjsp.chap06;

import java.io.Serializable;

public class Bmi implements Serializable {
    private double height = 0;
    private double weight = 0;

    public Bmi() { /* コンストラクタ */ }

    public double getHeight() {
        return this.height;
    }

    public double getWeight() {
        return this.weight;
    }

    public double getValue() {
        return this.weight / (this.height * this.height);
    }

    public String getRank() {
        if (this.getValue() < 18.5) {
            return "やせ気味";
        } else if (this.getValue() < 25) {
            return "標準";
        } else {
            return "肥満気味";
        }
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }
}
