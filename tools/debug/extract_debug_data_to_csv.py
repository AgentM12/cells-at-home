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

minecraft_logs = path.join(os.getenv('APPDATA'), ".minecraft/logs")
sig_config_str = '^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/STATS_CONFIG\\] %s (.*)$'
sig_start = re.compile('^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/STATS_START\\] (.*)$')
sig_tick = re.compile('^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/STATS\\] (.*)$')
sig_end = re.compile('^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/STATS_END\\] (.*)$')

format_config = re.compile('^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/FORMAT_CONFIG\\] (.*)$')
format_start = re.compile('^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/FORMAT_START\\] (.*)$')
format_tick = re.compile('^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/FORMAT_TICK\\] (.*)$')
format_end = re.compile('^\\[\\d{1,2}:\\d{1,2}:\\d{1,2}\\] \\[[a-zA-Z\\s\\/]*?\\]: \\[CHAT\\] \\[DEBUG\\/FORMAT_END\\] (.*)$')

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

def convert(input_file, output_file, profile_id):
    sig_config_with_id = re.compile(sig_config_str % str(profile_id))
    with open(input_file, 'r') as f:
        state = FORMAT
        formats = [None, None, None, None]
        lines = []
        for line in f:
            # Formats
            if state == FORMAT:
                m = format_config.match(line)
                if m:
                    formats[CONFIG] = m.group(1)
                    continue

                m = format_start.match(line)
                if m:
                    formats[START] = m.group(1)
                    continue
                
                m = format_tick.match(line)
                if m:
                    formats[TICK] = m.group(1)
                    continue
                
                m = format_end.match(line)
                if m:
                    formats[END] = m.group(1)
                    state = CONFIG
                    continue

            # Config
            if state == CONFIG:
                m = sig_config_with_id.match(line)
                if m:
                    lines.append(m.group(1))
                    state = START
                    continue

            # Signatures
            if state == START:
                m = sig_start.match(line)
                if m:
                    lines.append(m.group(1))
                    state = TICK
                    continue

            if state == TICK:
                m = sig_tick.match(line)
                if m:
                    lines.append(m.group(1))
                    continue

                m = sig_end.match(line)
                if m:
                    lines.append(m.group(1))
                    state = END
                    break

    if state != END:
        print('Could not find profile ID %d!' % profile_id)
        return


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

if __name__ == '__main__':
    main()