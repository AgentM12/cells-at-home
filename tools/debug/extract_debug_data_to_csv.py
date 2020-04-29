'''
Allows extraction of statistics from Minecraft given a certain protocol.
'''

import argparse
import os
import re
from os import path

FORMAT = -1
CONFIG = 0
START = 1
TICK = 2
END = 3

SEP = ';'
NL = '\n'

# Constants
minecraft_logs = path.join(os.getenv('APPDATA'), ".minecraft/logs")

base_start_str = '^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/'
chat_base_str = base_start_str + '%s\\] (.*)$'

sig_config_str = base_start_str + 'STATS_CONFIG\\] %s (.*)$'
sig_start = re.compile(chat_base_str % 'STATS_START')
sig_tick = re.compile(chat_base_str % 'STATS')
sig_end = re.compile(chat_base_str % 'STATS_END')

format_config = re.compile(chat_base_str % 'FORMAT_CONFIG')
format_start = re.compile(chat_base_str % 'FORMAT_START')
format_tick = re.compile(chat_base_str % 'FORMAT_TICK')
format_end = re.compile(chat_base_str % 'FORMAT_END')

#####################################

def append_id(filename, identifier):
    return "{0}_{2}{1}".format(*os.path.splitext(filename) + (identifier,))

def get_profile_ids(input_file):
    min_ids = 99999999999999
    max_ids = -1

    sig_config_with_open = re.compile(sig_config_str % '(\\d+)')
    with open(input_file, 'r') as f:
        for line in f:
            m = sig_config_with_open.match(line)
            if m:
                nums = int(m.group(1))
                min_ids = min(nums, min_ids)
                max_ids = max(nums, max_ids)

    return range(min_ids, max_ids+1)

def try_match(form, line, storage, index):
    m = form.match(line)
    if m:
        storage[index] = m.group(1)
        return True
    return False

def try_match_append(form, line, lines):
    m = form.match(line)
    if m:
        lines.append(m.group(1))
        return True
    return False

def convert(input_file, output_file, profile_id):
    sig_config_with_id = re.compile(sig_config_str % str(profile_id))
    with open(input_file, 'r') as f:
        state = FORMAT
        formats = [None, None, None, None]
        lines = []
        for line in f:
            if state == FORMAT:
                if try_match(format_config, line, formats, CONFIG): continue
                if try_match(format_start, line, formats, START): continue
                if try_match(format_tick, line, formats, TICK): continue
                if try_match(format_end, line, formats, END):
                    state = CONFIG
                    continue
            if state == CONFIG:
                if try_match_append(sig_config_with_id, line, lines):
                    state = START
                    continue
            if state == START:
                if try_match_append(sig_start, line, lines):
                    state = TICK
                    continue
            if state == TICK:
                if try_match_append(sig_tick, line, lines): continue
                if try_match_append(sig_end, line, lines):
                    state = END
                    break

    if state != END:
        print('Could not find profile ID %d!' % profile_id)
        return

    #### CONVERT TO CSV STRING ####

    # CONFIG
    string = SEP.join(formats[CONFIG].split()) + NL
    string += str(profile_id) + SEP + SEP.join(lines[0].split()) + NL + NL

    # START
    string += SEP.join(formats[START].split()) + NL
    string += SEP.join(lines[1].split()) + NL + NL

    # TICK
    string += SEP.join(formats[TICK].split()) + NL
    for i in range(2, len(lines) - 1):
        string += SEP.join(lines[i].split()) + NL
    string += NL

    # END
    string += SEP.join(formats[END].split()) + NL
    string += SEP.join(lines[-1].split()) + NL

    with open(output_file, 'w+') as f:
        f.write(string)


### MAIN ###

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument(dest="profile_id",type=int)
    parser.add_argument("-i", "--input", default=None, dest="input_file")
    parser.add_argument("-o", "--output", default=None, dest="output_file")
    return parser.parse_args()

def main():
    args = get_args()
    profile_id = args.profile_id
    input_file = args.input_file if args.input_file is not None else path.join(minecraft_logs, 'latest.log')
    output_file = args.output_file if args.output_file is not None else 'output.csv'

    profile_ids = [profile_id]
    if profile_id == -1:
        profile_ids = get_profile_ids(input_file)
        
        for profile_id in profile_ids:
            convert(input_file, append_id(output_file, profile_id), profile_id)
    else:
        convert(input_file, output_file, profile_id)

if __name__ == '__main__':
    main()