<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
        <title>F1 - INFO</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        </head>
        <header>
        <h1>FORMULA1 info</h1>
        </header>
    <body>
        <h2>Formula 1 - some informations about drivers</h2>
        <table border="12">
            <tr bgcolor="#39acb5">
                <th>Name</th>
                <th>Age</th>
                <th>Country</th>
                <th>Height</th>
                <th>Weight</th>
                <th>Team</th>
                <th>Wins</th>
                <th>Photo</th>
            </tr>
            <xsl:for-each select="formula1/item[@type='driver']">
                
            <tr bgcolor="#4adde8">
                <td><xsl:value-of select="name"/></td> 
                <td><xsl:value-of select="age"/></td> 
                <td><xsl:value-of select="country"/></td> 
                <td><xsl:value-of select="height"/></td> 
                <td><xsl:value-of select="weight"/></td> 
                <td><xsl:value-of select="team"/></td> 
                <td><xsl:value-of select="wins"/></td> 
                <td><img><xsl:attribute name="width">200</xsl:attribute>
                    <xsl:attribute name="height">200</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="photo"/></xsl:attribute></img></td>  
            </tr>
                   
            </xsl:for-each>
        </table>
        
        <h2>F1 teams</h2>
        
        <row>
        <table border="12">
            <tr bgcolor="#52b168">
                <th>Name</th>
                <th>Year of foundation</th>
                <th>First Driver</th>
                <th>Second Driver</th>
                <th>Power of Engine</th>
                <th>Producer of the Enigne</th>
                <th>Photo</th>
                
            </tr>
            <xsl:for-each select="formula1/item[@type='team']">
            <tr bgcolor="#67de83">
                <td><xsl:value-of select="name"/></td> 
                <td><xsl:value-of select="year"/></td> 
                <td><xsl:value-of select="drivers/first"/></td> 
                <td><xsl:value-of select="drivers/second"/></td> 
                <td><xsl:value-of select="engine/power"/></td> 
                <td><xsl:value-of select="engine/producer"/></td> 
                <td><img><xsl:attribute name="width">150</xsl:attribute>
                    <xsl:attribute name="height">150</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="photo"/></xsl:attribute></img></td> 
            </tr>
            </xsl:for-each>
        </table>
        
        </row>
        
        <h2>F1 tracks</h2>
        
        <row>
        <table border="12">
            <tr bgcolor="#bc4d4d">
                <th>Name</th>
                <th>Location</th>
                <th>Length</th>
                <th>Date</th>
                <th>Amount of corners</th>
                <th>Photo</th>
            </tr>
            <xsl:for-each select="formula1/item[@type='track']">
            <tr bgcolor="#d17070">
                <td><xsl:value-of select="name"/></td> 
                <td><xsl:value-of select="location"/></td> 
                <td><xsl:value-of select="length"/></td> 
                <td><xsl:value-of select="date"/></td> 
                <td><xsl:value-of select="aoc"/></td>  
                <td><img><xsl:attribute name="width">150</xsl:attribute>
                    <xsl:attribute name="height">150</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="photo"/></xsl:attribute></img></td> 
            </tr>
            </xsl:for-each>
        </table>
        </row>
        
    </body>
        <footer>
        <h2>Made by Kacper Rzymkiewicz </h2>
        <h3>Uniwersytet Pedagogiczny </h3>
        <h4>Instytut Informatyki</h4>
        </footer>
    </html>
</xsl:template>
</xsl:stylesheet>
