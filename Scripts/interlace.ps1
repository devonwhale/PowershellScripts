$sentenceOne = Read-Host -Prompt 'What is the first sentence?'
$sentenceTwo = Read-Host -Prompt 'What is the second sentence?'

$sentenceOneSplit = $sentenceOne.Split()
$sentenceTwoSplit = $sentenceTwo.Split()

$greaterLength = If ($sentenceOneSplit.Count -le $sentenceTwoSplit.Count) {$sentenceTwoSplit.Count} Else {$sentenceOneSplit.Count}

$output = ''

$i = 0

For ($i; $i -le $greaterLength; $i++) 
{
    $output = $output + $sentenceOneSplit[$i] + ' ' + $sentenceTwoSplit[$i] + ' '
}

$output