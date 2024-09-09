- Find related work
  - Look for datasets that people use
  - Which models did people attempt to solve it with
- Which model do we want to use?
  - Pre-trained model? From scratch?
  - Probably pre-trained if multilingual
  - Look into transferability? - possible research question
    - Might just train in Danish and see if it works in EnglishNexf
  - Most people are currently reading Danish, Dutch and French
    - Focus on testing on those languages
  - Which type of classification?
    - Predict CEFR label directly?
    - Maybe predict directly whether it is on the user level (requires user modelling, would be more difficult)?
    - Could experiment with other classifications from existing datasets
  - A certain publication's editor might try to keep a similar difficulty level
    - Might be differences depending on the domain and between publications
    - What is the range of difficulty?
  - Possible baselines:
    - FK
      - Looks at word and sentence length in languages
    - Could look at word frequency in the language
  - The definition of CEFR labels is very vague and relative
     - If you have labeled data for Danish, will that transfer to English?
     - The kinds of statements/sentences you can say in A1 should be similar between languages, which models should learn if they use sentence embeddings.

Example

- Have dataset OneStopEnglish - 3 levels
- E.g. FK 40-60 maps to intermediate
  - FK output 36, so we can see whether that is accurate

Potential questions

- Does sentence-level work?
- How can you use some of the existing metrics to classify CEFR?

Next steps

- Try to find dataset in related work (readability scores) as baseline
  - Could also check difference between classifying at 3 vs 6 levels
- Try doing sentence-wise classification with FK and compare with article-level CEFR
  - Tests whether the aggregation function works

- Figure out the FK thresholds for the various languages
  - Should be for German in the code
  - Also available for English, French
  - Could use other formulas for other languages if no FK adaptation is available
    - I.e. lix for Danish, Swedish, and Norwegian

- Are there any existing datasets we can use?
  - Any using CEFR?
  - What is the second best option that approximates CEFR?

- Read up on FK

- Can we find enough CEFR labeled data in French for evaluation?