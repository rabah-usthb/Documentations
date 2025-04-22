public class Pilot {

    private static Pilot instance = null;
    private int card;

    private Pilot(int card) {
       this.card = card;
       System.out.println("Pilot Instance");
    }

    public static Pilot getInstance() {
        
            synchronized(Pilot.class) {

            if (instance == null) {
                instance = new Pilot(100);

            }
        }

        return instance;
    }


}
