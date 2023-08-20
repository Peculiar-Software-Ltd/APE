configure_file(
    input: 'downloader.pl',
    output: 'downloader.pl',
    configuration: configuration_data()
)
custom_target(
    build_by_default: true,
    command: ['swipl', '-f', 'none', '-g', 'ensure_clex', '-t', 'halt', '-s', 'tests/downloader.pl'],
    install: true,
    install_dir: 'tests',
    output: 'clex_lexicon.pl',
)
custom_target(
    build_by_default: true,
    command: ['swipl', '-f', 'none', '-g', 'download_acetexts', '-t', 'halt', '-s', 'tests/downloader.pl'],
    install: true,
    install_dir: 'tests',
    output: 'acetexts.pl',
)

configure_file(input: 'README.md', output: 'README.md', configuration: configuration_data())
configure_file(input: 'rtest.bash', output: 'rtest.bash', configuration: configuration_data())
configure_file(input: 'test_ape.pl', output: 'test_ape.pl', configuration: configuration_data())
configure_file(input: 'test_apeexe.sh', output: 'test_apeexe.sh', configuration: configuration_data())
configure_file(input: 'test_drace.pl', output: 'test_drace.pl', configuration: configuration_data())
configure_file(input: 'test_drs_to_x.pl', output: 'test_drs_to_x.pl', configuration: configuration_data())
configure_file(input: 'test_duration.pl', output: 'test_duration.pl', configuration: configuration_data())
configure_file(input: 'test_everything.sh', output: 'test_everything.sh', configuration: configuration_data())
configure_file(input: 'test_owlswrl.pl', output: 'test_owlswrl.pl', configuration: configuration_data())
configure_file(input: 'test_ruleml.sh', output: 'test_ruleml.sh', configuration: configuration_data())