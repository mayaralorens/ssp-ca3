<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
      <html>
      <body>
          
      
     <div class ="container">
         <div class ="jumbotron">
            
         </div>
           <table id="movieTable" border="1">
        <thead>
            <tr>
                <th>Select Movie</th>
                <th>Item</th>
                <th>Price</th>
            </tr>
            <td>                        
                    <xsl:element name="img">    			
                <xsl:attribute name="src">				
                <xsl:value-of select="picture"/>		  		
              </xsl:attribute>	
              <xsl:attribute name="width">200</xsl:attribute>						
              <xsl:attribute name="align">right</xsl:attribute>		
                </xsl:element>						
               </td>
        </thead>
        </table>
               
     </div>  
  

   
        </body>
  </html>
    </xsl:template>
</xsl:stylesheet>
