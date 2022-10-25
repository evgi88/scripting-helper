## Simple filter of some input by a string:

`Bash`
```
> echo "1. Apples\n2. Bananas\n3. Cherries" | grep "nan" 
```

`PowerShell`
```
> echo "1. Apples" "2. Bananas" "3. Cherries" | Select-String  "nan"      
```
