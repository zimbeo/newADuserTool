# Script requires the installation of the Active Directory Powershell Module - this article can help you install it if you don't already. 
# https://docs.microsoft.com/en-us/archive/blogs/ashleymcglone/install-the-active-directory-powershell-module-on-windows-10


# Welcome to the Tool
Write-Host "Welcome to the User Onboarding Tool" -ForegroundColor Yellow
Write-Host "..................................." -ForegroundColor Yellow

# Endless Loop
while($i -lt 9999)
{
    $i++

    $name = Read-Host -Prompt "Please Enter the Name for the New User"
    $password = Read-Host -Prompt "Please Enter a Password for the New User" | ConvertTo-SecureString -AsPlainText -Force
    New-ADUser -Name $name -AccountPassword $password
    Write-Host "Creating User ${name}....."
    Write-Host "${name} has been created...." -ForegroundColor Yellow
    Get-ADUser $name
    
    # Another User?
    $again = Read-Host -Prompt "Would You Like to Create Another User? (y/n)"
    
    if ($again -eq  "y")
    {
    
    }
    elseif ($again -eq  "n")
    {
    Write-Host "Bye! Come back later"
    break
    }
    
}
 