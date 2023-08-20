custom_target(
    output: ['grammar_contentwords.plp', 'grammar_functionwords.plp', 'grammar.plp', 'sorts.plp'],
    command: ['swipl', '-g', '"[fit_to_plp], halt."']
)
configure_file(input: 'ace_to_drs.pl', output: 'ace_to_drs.pl', configuration: configuration_data())
configure_file(input: 'ape_utils.pl', output: 'ape_utils.pl', configuration: configuration_data())
configure_file(input: 'fit_to_plp.pl', output: 'fit_to_plp.pl', configuration: configuration_data())
configure_file(input: 'grammar_contentwords.fit', output: 'grammar_contentwords.fit', configuration: configuration_data())
configure_file(input: 'grammar_functionwords.fit', output: 'grammar_functionwords.fit', configuration: configuration_data())
configure_file(input: 'grammar.fit', output: 'grammar.fit', configuration: configuration_data())
configure_file(input: 'grammar_words.pl', output: 'grammar_words.pl', configuration: configuration_data())
configure_file(input: 'make_syntax_report.perl', output: 'make_syntax_report.perl', configuration: configuration_data())
configure_file(input: 'prologfeatures.pl', output: 'prologfeatures.pl', configuration: configuration_data())
configure_file(input: 'refres.pl', output: 'refres.pl', configuration: configuration_data())
configure_file(input: 'sentence_failure.pl', output: 'sentence_failure.pl', configuration: configuration_data())
configure_file(input: 'sorts.fit', output: 'sorts.fit', configuration: configuration_data())
configure_file(input: 'tokenizer.pl', output: 'tokenizer.pl', configuration: configuration_data())
configure_file(input: 'tokens_to_sentences.pl', output: 'tokens_to_sentences.pl', configuration: configuration_data())