import java.util.*;

public class StandardDeviation {
    public static void main(String[] args) {
        double[] nums = new double[]{160, 200, 120, 150, 130};
        int i = 0;
        double mean = 0;
        double stan = 0;

        for(double n:nums) {
            i++;
            mean += n;
        }
        mean = mean / i;
        
        for(double n:nums) {
            n = Math.sqrt(n - mean);
        }
        double firstmean = mean;
        System.out.println(mean);
        i = 0;
        for(double n:nums) {
            i++;
            mean += n;
        }
        stan = mean / i;
        stan = Math.sqrt((stan) * 2);
        System.out.println("Range:" + (firstmean - stan) + ", " + (firstmean + stan));
        double[] nums2 = new double[]{160, 200, 120, 150, 130};
        for(double n:nums2) {
            if(n > (firstmean - stan) && n < (firstmean + stan)) {
                System.out.println(n);
            }
        }
    }
}