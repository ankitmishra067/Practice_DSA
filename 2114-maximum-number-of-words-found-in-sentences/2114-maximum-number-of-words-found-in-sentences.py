class Solution:
    def mostWordsFound(self, sentences: List[str]) -> int:
        len_sentence = [ ]
        for sentence in sentences:
            x = len(sentence.split(' '))
            len_sentence.append(x)
        return max(len_sentence)
        