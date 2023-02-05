public class cat {
    public string name='';
    public string color='';


    public cat (string name, string color){
        this.name=name;
        this.color=color;
        sleeping();
    }

    public void sleeping(){
        system.debug(this.name + ' is sleeping!');


    }

}