<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<div class="container">
        <div class="jumbotron">

            
            <h3>MayCinema</h3>
            </div>
            
    <table id="movieTable">
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
                            <xsl:value-of select="price" />
                        </td>
                    </tr>
                </xsl:for-each>
            </xsl:for-each>
        </tbody>
    </table>
    </div>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>