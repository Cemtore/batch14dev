public class RankHandler {
    public string rankPrice(integer rank){
        string price='';
        if (rank==1){
            price='Gold';
        } else if (rank==2){
            price='Silver';
        } else if(rank==3){
            price='Bronze';
        } else if(rank<10){
            price='Top 10 Certificates';
        } else {
            price='Participation Certificate';
        }

        return price;
    }

    public string rankPriceSwitch(integer rank){
        string price='';
        switch on rank {
            when 1 {price='GOLD';
            }
            when 2{
                price='SILVER';
            }
            when 3{
                price='BRONZE';
            }
            when 4,5,6,7,8,9,10{
                price='TOP 10 CERTIFACTES';
            }
            when else {
                if (rank <= 0) {
                    price='Shame on YOU';
                }
                    else {
                        price='Thanks for PARTICIPATION';
                    }
                }
               
        }
        return price;

    }
}