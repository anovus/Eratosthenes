#Sieve of Eratosthenes
#Sift the Two's and Sift the Three's,
#The Sieve of Eratosthenes.
#When the multiples sublime,
#The numbers that remain are Prime.



# Input: an integer n > 1.
$input = Read-Host -Prompt 'Enter the upper limit: '
$n = $input -as [Double]

# Let A be an array of Boolean values, indexed by integers 2 to n,
# initially all set to true.

$A = @()

for ($i=0; $i -lt $n+1;$i++){

If (($i -eq 0) -or ($i -eq 1)){
$A+=$false
}
else{
$A+=$true
}

}

 
# for i = 2, 3, 4, ..., not exceeding √n:

$sqrtn=[math]::Sqrt($n)



for ($i=2;$i -lt $sqrtn+1; $i++){

#   if A[i] is true:
#     for j = i2, i2+i, i2+2i, i2+3i, ..., not exceeding n:
#       A[j] := false.

    if ($A[$i]){

        $j=0
        $x=0
        while ($j -lt $n+1){
        $j=[Math]::Pow($i,2)+($x*$i)
        $A[$j]=$false

        $x++
        $j=[Math]::Pow($i,2)+($x*$i)
        

        }
        

    }

}


 
# Output: all i such that A[i] is true.
for ($i=0; $i -lt $n+1;$i++){

    If($A[$i]){
    
        $i
    }

}
