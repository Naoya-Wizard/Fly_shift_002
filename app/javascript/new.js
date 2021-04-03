function load(){
    document.getElementById("button").addEventListener('click', function(){
        insert = document.getElementById("calender")
        HTMLstr = ""
        myDate    = new Date();                                    
        myWeekTbl = new Array("日","月","火","水","木","金","土");  
        myMonthTbl= new Array(31,28,31,30,31,30,31,31,30,31,30,31);
        myYear = myDate.getFullYear();                                
        if (((myYear%4)==0 && (myYear%100)!=0) || (myYear%400)==0){
            myMonthTbl[1] = 29;                                     
        }
        myMonth = myDate.getMonth();                               
        myToday = myDate.getDate();                                
        myDate.setDate(1);                                        
        myWeek = myDate.getDay();                                  
        myTblLine = Math.ceil((myWeek+myMonthTbl[myMonth])/7);    
        myTable   = new Array(7*myTblLine);                        
    
        for(i=0; i<7*myTblLine; i++) myTable[i]=" ";              
        for(i=0; i<myMonthTbl[myMonth]; i++)myTable[i+myWeek]=i+1;
     
        HTMLstr += `<table border='1' width='800' height='700'>`   
        HTMLstr += `<tr><td colspan='7' bgcolor='#7fffd4'>`  
        HTMLstr += `<strong>${myYear}年${myMonth+1}月カレンダー</strong>`
        HTMLstr += `</td></tr>`
        HTMLstr += `<tr>`;  
    
        for(i=0; i<7; i++){                                       
            HTMLstr += `<td align='center'` 
            if(i==0)HTMLstr += "bgcolor='#fa8072'>";           
            else    HTMLstr += "bgcolor='#ffebcd'>";           
                    HTMLstr += `<strong>${myWeekTbl[i]}</strong>`;    
                    HTMLstr += "</td>";
        }
        HTMLstr += "</tr>";
    
        for(i=0; i<myTblLine; i++){                                
            HTMLstr += "<tr>";                                
            for(j=0; j<7; j++){                                     
                HTMLstr += "<td align='center' ";              
                myDat = myTable[j+(i*7)];                            
                if (myDat==myToday)HTMLstr += "bgcolor='#00ffff'>" 
                else if(j==0)      HTMLstr += "bgcolor='#ffb6c1'>" 
                else               HTMLstr += "bgcolor='#ffffe0'>" 
                HTMLstr += `<strong>${myDat}</strong>`;       
                HTMLstr += "</td>";                             
            }
            HTMLstr += "</tr>";                                
        }
        HTMLstr += "</table>";    
        insert.insertAdjacentHTML('beforeEnd', HTMLstr);
        console.log(HTMLstr);
        document.getElementById("button").style.display ="none";
    })
}

window.addEventListener('load', load())