function Test-SqlConnection {
    param(
        [Parameter(Mandatory)]
        [string]$Server,

        [Parameter(Mandatory)]
        [string]$DatabaseName

    )

    $ErrorActionPreference = 'Stop'

    try {
        
        $connectionString = 'Data Source={0};database={1};trusted_connection=true' -f $Server,$DatabaseName
        $sqlConnection = New-Object System.Data.SqlClient.SqlConnection $ConnectionString
        $sqlConnection.Open()
        ## This will run if the Open() method does not throw an exception
        $true
    } catch {
        $false
    } finally {
        ## Close the connection when we're done
        $sqlConnection.Close()
    }
}

Test-SqlConnection -Server '.' -DatabaseName 'mvcmovie' 
