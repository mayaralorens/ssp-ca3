<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
   <link rel="stylesheet" type=text/css href="css/style.css">
    <!--Amatic SC font-->
    <link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
     <!-- My JavaScript file -"defer, so my script can be "loaded" on top"-->
    <style>body {
    font-family: 'Amatic SC';
    font-size: 35px;
    background-image: url(../img/movies.jpg);
    background-repeat: repeat;
    background-size: contain;

}

.container {
    background-color: whitesmoke;
    
}
.jumbotron {

    
    background-image: url(https://media.giphy.com/media/5wikad3qSOqAg/giphy.gif);
    background-repeat: repeat;
    background-size: contain;
    margin-bottom: 0;
    padding-bottom: 7%;
    padding-top: 7%;
    
  

}

div.title h3{
   
    font-size: 100px;
    color:black;
    text-align: center;
    text-transform: lowercase;
    font-weight: bolder;
    font-family: 'Amatic SC';
    margin-bottom: 2%;
    margin-top: 0;
    background-color: black;
    background-image: url(../img/title.jpg);
    background-repeat: repeat;
    background-size: 18%;
    padding-top: 2%;
    padding-bottom: 2%;
    
   
}
th, tr, td {

    padding: 10px 25px;
 
}
tr:nth-child(odd) {
    background-color: white;
    
}
tr:nth-child(even) {
    background-color: black;
    color: whitesmoke;
}
 th {
    text-align: center;
    
    background-color: black;
    color: white;
    padding: 35px; 
}
td{
    text-align: center;
}
#movieTable{
    margin-left: auto;
    margin-right: auto;
}
div.footer{
    margin-top:5%;
    margin-bottom: 5%;
    padding-top: 3%;
    padding-bottom: 3%;
    background-color: black;
    background-image: url(https://media.giphy.com/media/ftqg6fMvi3R9LVcU0t/giphy.gif);
    background-repeat: repeat;
    background-position: left;
    background-size: 120%;
    opacity: 0.8;
   
    
   
  
}

#myFooter p{
    color: white;
    text-align: center;
    font-weight: bold;
    
}

</style>
</head>
<body>
<div class="container">
        <div class="jumbotron">

            
           
            </div>

            <div class="title" id="myTitle">
               <h3>MayCinema</h3>
            </div>
            
    <table  id="movieTable">
        <thead>
            <tr>
                <th>Movie</th>
                <th>Item</th>
                <th>Price</th>
            </tr>
        </thead>
             
        <tbody>

            <xsl:for-each select="//section">
                <tr>
                    <td colspan="3">
                       <xsl:value-of select="@name" /> 
                                        </td>
                </tr>
                <xsl:for-each select="entry">
                    <tr>
                        <xsl:attribute name="vegetarian">
                            <xsl:value-of select="boolean(@vegetarian)" />
                        </xsl:attribute>
                        <td>
                 <xsl:element name="img">    			
                <xsl:attribute name="src">				
                <xsl:value-of select="picture"/>		  		
              </xsl:attribute>	
              <xsl:attribute name="width">200</xsl:attribute>						
              <xsl:attribute name="align">left</xsl:attribute>		
                </xsl:element>	
                        </td>
                        <td>
                            <xsl:value-of select="item" />
                        </td>
                        <td align="right">
                          <span class="badge badge-danger">  <xsl:value-of select="price" /></span>
                        </td>
                    </tr>
                </xsl:for-each>
            </xsl:for-each>
        </tbody>
        
    </table>
    <div class="footer" >
            <div id="myFooter">
            <p>Mon and Tue CLOSED DURING LOCKDOWN</p>
            <p>Wednesday 10.00 - 24.00</p>
            <p>Thursday 10:00 - 24:00</p>
            <p>Friday 10:00 - 23:00</p>
            <p>Saturday 10:00 - 23:00</p>
            <p>Sunday Closed</p>
            </div>
         </div>
      </div>
   
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>