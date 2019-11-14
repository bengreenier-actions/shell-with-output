# shell-with-output

Github Action that runs a shell command and captures the output.

```
docker run -it shell-with-output:latest "echo hi1 && >&2 echo hi2"
::set-output name=stdout::hi1
::set-output name=stderr::hi2
```
