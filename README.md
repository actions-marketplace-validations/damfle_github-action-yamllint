# yamllint

Lint YAML files. Simply and that's all.

## Usage

```yaml
- uses: damfle/github-action-yamllint@v1.0.2
  with:
    file_or_dir: ./
```

## Parameters
 - `file_or_dir` - files to check - **required**
 - `config_file` - path to a custom configuration file - *optional*
 - `config_data` - custom configuration - *optional*
 - `strict` - return non-zero exit code on warnings as well as errors - *optional*

## License

The scripts and documentation in this project are released under the MIT License.

Inspired by https://github.com/nosborn/github-action-yamllint.git