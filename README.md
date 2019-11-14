# shell-with-output

Github Action that runs a shell command and captures the output.

```
docker run -it shell-with-output:latest "echo hi1 && >&2 echo hi2"
::set-output name=stdout::hi1
::set-output name=stderr::hi2
```

## YAML

```
- name: Read File
  id: read_file
  uses: bengreenier-actions/shell-with-output@master
  with:
    command: echo hello world
```

Will yield outputs:

+ `stdout`: contains the stdout of the command
+ `stderr`: contains the stderr of the command

And can be further accessed in yaml with:

```
- name: Leverage output
  run: echo ${{ steps.read_file.outputs.stdout }}
```

Where `read_file` matches the `id` of the step that ran the command.

## License

MIT
