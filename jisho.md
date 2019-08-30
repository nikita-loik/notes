# Japanese-Language Students Dictionary

## Functionality (to begin with)
* 10 000 words
* 読みやすい
* 説明が明るい
* inputs: kanji, kana, romaji
* tags: part of speech

## Competitors
There is no Japanese-Japanese dictionary for students.

Competitors List
|competitor|platform|target|price (EUR)|
|:--------:|:------:|:----:|:---:|
|wanikani.com|web|||
|midoriapp.com|iOS|Dictionary</br>Japanese-English</br>English-Japanese</br>Kanji| 9.99|
|takoboto.jp|Windows Windows Phone Android|Dictionary</br>Japanese-English</br>English-Japanese</br>Kanji||

## Estimated Market Size

[Less than 1% of users leave their reviews.](https://www.quora.com/What-percentage-of-iPhone-app-users-leave-reviews-in-the-App-Store)

|app|comments|user # (estimated)|
|:-:|:------:|:----------------:|
|midoriapp.com|49 (~5★)|4900|
|takoboto.jp|3919 (~5★)|391900|

# Technical Features
## Input
written input
https://pdfs.semanticscholar.org/f3ee/6bfaec669a2c8d087e2f11fa48aa7b45d6ea.pdf
https://github.com/KyotoSunshine/CNN-for-handwritten-kanji
http://www.dais.unive.it/~pelillo/Didattica/Artificial%20Intelligence/Old%20Stuff/2015-2016/Slides/CNN_seminar.pdf
https://pdfs.semanticscholar.org/3c6e/b43f7bab705115ce922ade155f64c66ccd2f.pdf

# Resources
* complete information [Electronic Dictionary Research and Development Group](http://www.edrdg.org)
* dictionary [JMdict](http://www.edrdg.org/jmdict/edict_doc.html)
* examples [Tanaka Corpus](http://www.edrdg.org/wiki/index.php/Tanaka_Corpus)
* kanji components [radkfile & kradfile](http://www.edrdg.org/krad/kradinf.html)
* kanji dictionary [kanjidict](http://www.edrdg.org/wiki/index.php/KANJIDIC_Project)
* stroke order [SVG files](http://kanjivg.tagaini.net)

# Text Encoding Conversion
1. Check file encoding.
```bash
file -I file_name
```
2. List all available encodings.
```bash
iconv -l
```
3. Change file encoding.
```bash
iconv -f EUC-JP -t UTF-8 input_file_name > output_file_name
```
