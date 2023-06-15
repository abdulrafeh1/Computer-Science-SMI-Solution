public class Calendar {

    public static void main(String[] args) {
        int Y = 2021;    // year
        int startDayOfMonth = 5;
        int spaces = startDayOfMonth;

        String[] months = {
                "",                           
                "January", "February", "March",
                "April", "May", "June",
                "July", "August", "September",
                "October", "November", "December"
            };

            int[] days = {
                0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
            };

            for (int M = 1; M <= 12; M++) {

            if  ((((Y % 4 == 0) && (Y % 100 != 0)) ||  (Y % 400 == 0)) && M == 2)
                days[M] = 29;

            System.out.println("          "+ months[M] + " " + Y);

            // Display the lines
            System.out.println("-------------------------------------");
            System.out.println("   Sun  Mon Tue   Wed Thr   Fri  Sat");

            // spaces required
               spaces = (days[M-1] + spaces)%7;
            
            // print the calendar data
            for (int i = 0; i < spaces; i++)
                System.out.print("     ");
            for (int i = 1; i <= days[M]; i++) {
                System.out.printf(" %3d ", i);
                if (((i + spaces) % 7 == 0) || (i == days[M])) System.out.println();
            }
            
            System.out.println();
        
            System.out.println("Calender By ABDUL RAFEH CSC@20s104");
        }
    }
}