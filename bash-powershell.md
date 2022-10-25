## Simple filter of some input by a string:

`Bash`
```shell
> echo "1. Apples\n2. Bananas\n3. Cherries" | grep "nan" 
```

`PowerShell`
```shell
> echo "1. Apples" "2. Bananas" "3. Cherries" | Select-String  "nan"      
```

## Simple text manipulation of output

`Bash`
```shell
> echo "Apples\nBananas\nCherries" | xargs -I {} echo "The fruit {} is very tasty" 
``` 

`PowerShell`
```shell
> echo "Apples" "Bananas" "Cherries" | %{echo "The fruit $_ is very tasty "}
```
