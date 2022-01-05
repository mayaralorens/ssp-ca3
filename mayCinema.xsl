<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
   <link rel="stylesheet" type=text/css href="css/style.css">
    <!--Amatic SC font-->
    <link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
     <!-- My JavaScript file -"defer, so my script can be "loaded" on top"-->
     <script defer src="js/script.js"></script>

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
                <th>Select Movie</th>
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
            
               
            </div>
    </div>
   
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>