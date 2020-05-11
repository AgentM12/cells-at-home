# Minecraft Static Analyser
# A tool that finds potential bugs in your Minecraft functions that don't get logged by MC itself.
# Such as calls to functions that may not exist.

import os
import re
import json

sp = '\\\\/'
ns_id = '(?:[a-z_][a-z0-9_]*:)[a-z0-9_.][a-z0-9_/.]*'

dp_pattern = re.compile('.*?[{sp}]datapacks[{sp}][^{sp}]+[{sp}]data[{sp}]([a-z_][a-z0-9_]*)[{sp}]functions[{sp}](.*)\\.mcfunction'.format(sp=sp))
valid_namespace_pattern = re.compile(ns_id)
function_call_pattern = re.compile('(?:[^#].*? run |)function (#?{})'.format(ns_id))
schedule_function_call_pattern = re.compile('(?:[^#].*? run |)schedule (?:function|clear) (#?{})'.format(ns_id))

config_location = 'mcsa_config.json'

severities = {0: "DEBUG", 1: "INFO", 2: "WARN", 3: "ERROR"}

def pyprint(msg, severity=2):
    print("[MCSA/{}] {}".format(severities[severity], msg))

def get_config():
    with open(config_location, 'r') as f:
        return json.load(f)

def list_all_functions(dp_loc):
    funcs = []
    func_paths = []
    for path, subdirs, files in os.walk(dp_loc):
        for name in files:
            fun_candidate = os.path.join(path, name)
            m = dp_pattern.match(fun_candidate)
            if m:
                namespace = m.group(1)
                function_path = m.group(2).replace('\\', '/')
                funcs.append('{}:{}'.format(namespace, function_path))
                func_paths.append(os.path.join(path, name))
    return funcs, func_paths

def static_analyzer():
    config = get_config()
    dp_location = config['datapack-path']
    f, f_paths = list_all_functions(dp_location)

    bugs = 0
    bugs += validate_function_names(f, config)
    bugs += validate_function_calls(f, f_paths, config)
    return bugs

def get_severity(config, key, default):
    try:
        return config['severity'][key]
    except:
        return default

def validate_function_calls(funcs, func_paths, config):
    sv = get_severity(config, 'call-to-function-not-found', 3)
    bugs = 0
    for p in func_paths:
        ln = 1
        with open(p, 'r') as f:
            for line in f:
                m = function_call_pattern.match(line)
                m2 = schedule_function_call_pattern.match(line)
                if m:
                    fc = m.group(1)
                    if fc not in funcs:
                        pyprint('Function "{}" not found at {} in "{}"'.format(fc, ln, p), sv)
                        bugs += 1
                if m2:
                    fc = m2.group(1)
                    if fc not in funcs:
                        pyprint('Function "{}" not found at {} in "{}"'.format(fc, ln, p), sv)
                        bugs += 1
                ln += 1
    return bugs

def validate_function_names(funcs, config):
    sv = get_severity(config, 'invalid-function-name', 3)
    bugs = 0
    for f in funcs:
        if not valid_namespace_pattern.match(f):
            pyprint("Function doesn't comply to namespaced id format: \"{}\"".format(f), sv)
            bugs += 1
    return bugs

def main():
    bugs = static_analyzer()
    pyprint('Finished analyzing, found {} (potential) bug{}.'.format(bugs, '' if bugs == 1 else 's'), 1)

if __name__ == '__main__':
    main()