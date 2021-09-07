# SSH Private Key Permissions
The private key should only be accesible to the owner.

## Windows
Set Private key permissions to owner only.  
You can do this using the GUI or using the Command Prompt.  
In CMD:
```bat
:: # Remove Inheritance ::
Icacls private.key /c /t /Inheritance:d

:: # Set Ownership to Owner ::
Icacls private.key /c /t /Grant %UserName%:F

:: # Remove All Users, except for Owner ::
Icacls private.key /c /t /Remove Administrator "Authenticated Users" BUILTIN\Administrators BUILTIN Everyone System Users

:: # Verify ::
 Icacls private.key
```

## Linux
Set Private key permissions to owner only
```
sudo chmod 600 private.key 
```
