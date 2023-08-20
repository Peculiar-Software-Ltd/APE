project('ape', version: '6.7', license: 'LGPL-3.0-only', license_files: 'LICENSE.txt')
perl = find_program('perl', required: true)
cat = find_program('cat', required: true)
xxd = find_program('xxd', required: true)
swipl = find_program('swipl', required: true)
sh = find_program('sh', required: true)

all_sources = []
subdir('prolog')
# install_data(install_mode: 'rwxr-xr-x', install_dir: '/usr/bin', sources: all_sources)
configure_file(input: 'ape.pl', output: 'ape.pl', configuration: configuration_data())
configure_file(input: 'pack.pl', output: 'pack.pl', configuration: configuration_data())
configure_file(input: 'runape.pl', output: 'runape.pl', configuration: configuration_data())
configure_file(input: 'make_cmdline.cmd', output: 'make_cmdline.cmd', configuration: configuration_data())
configure_file(input: 'make_exe.cmd', output: 'make_exe.cmd', configuration: configuration_data())
ape_exe = custom_target(
    build_by_default: true,
    command: [sh, 'make_exe.cmd'],
    #input: all_sources, 
    install: true,
    install_dir: '.',
    output: 'ape.exe',
)
custom_target(
    build_by_default: true,
    command: [sh, 'make_cmdline.cmd'],
    #input: all_sources, 
    install: true,
    install_dir: '.',
    output: 'ape.cmd',
)
grammar_doc = custom_target(
    build_by_default: true,
    capture: true,
    command: [cat,
        'prolog/parser/grammar.fit',
        'prolog/parser/grammar_functionwords.fit',
        'prolog/parser/grammar_contentwords.fit'
    ],
    install: true,
    install_dir: '.',
    output: 'grammar.doc',
)

custom_target(
    'syntax_report.html',
    build_by_default: true,
    capture: true,
    command: [perl,
        'prolog/parser/make_syntax_report.perl',
        '--number', meson.project_version()
    ],
    feed: true,
    input: grammar_doc,
    output: 'syntax_report.html',
)

subdir('tests')
# text1 = 'John likes Mary.'
# text2 = 'Every man likes a car.'
# text3 = '1 / 2 ^ 3 ^ 4 = 1/8.'
# text4 = 'If John likes Mary then 1 / 2 ^ 3 = 1/8.'
# text5 = '1 / 2 * 3 - 4 = 1/8.'
# ape_exe = ape_exe.extract_objects('ape.exe')
# test('text1', ape_exe, args: ['-text', '@0@'.format(text1), '-cdrspp', '-cparaphrase', '-cowlfsspp', '-csyntax', '-csyntaxpp', '-csyntaxd', '-csyntaxdpp'])
# test('text2', ape_exe, args: ['-text', '@0@'.format(text2), '-cdrspp', '-cparaphrase', '-cowlfsspp'])
# test('text3', ape_exe, args: ['-text', '@0@'.format(text3), '-cdrspp', '-cparaphrase'])
# test('text4', ape_exe, args: ['-text', '@0@'.format(text4), '-solo', 'owlfsspp'])
# test('text5', ape_exe, args: ['-text', '@0@'.format(text5), '-cdrspp', '-cparaphrase', '-cowlfsspp', '-csyntax', '-csyntaxpp', '-csyntaxd', '-csyntaxdpp'])
# 