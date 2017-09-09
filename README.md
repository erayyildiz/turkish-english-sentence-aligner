# turkish-english-sentence-aligner

A lexicon based sentence alignment tool based on a open source tool Champollion 1.2.
A Turkish-English dictionary which is obtained from Google translate is added to the system. And a lightweight stemmer for Turkish is implemented. See the this paper for the details: 

Yıldız, Eray, and Cüneyd Tantug. "Evaluation of sentence alignment methods for English-Turkish parallel texts." Proceedings of the First Workshop on Language Resources and Technologies for Turkic Languages (LREC), Istanbul, Turkey. 2012.

Set $CTK environment variablie as the path of the tool and run the following command:

your_CTK_path/bin/champollion.ET <english sentence file> <turkish sentence file> <alignment file>
