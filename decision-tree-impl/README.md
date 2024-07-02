# Decision tree for sleep disorder detection

![Languages used](https://img.shields.io/github/languages/count/isadfrn/decision-tree-impl?style=flat-square)
![Repository size](https://img.shields.io/github/repo-size/isadfrn/decision-tree-impl?style=flat-square)
![Last commit](https://img.shields.io/github/last-commit/isadfrn/decision-tree-impl?style=flat-square)

## About

This is a decision tree for sleep disorder detection, which was used in an Artificial Intelligence class taken in my Master's Degree.

## Run

To run this project locally, you need to:

- Install and define a venv:

```shell
pip install virtualenv
virtualenv myenv
```

- Install dependencies

```shell
pip install pandas scikit-learn dtreeviz
```

- Then run:

```shell
#To prepare the dataset before running the main script
python fix-data.py

# To run the main script
python script.py
```

You check the results on [result.txt](./result.txt)

## Contributing

This repository is using [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) and [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/), so if you want to contribute:

- create a branch from develop branch;
- make your contributions;
- open a [Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) to develop branch;
- wait for discussion and future approval;

I thank you in advance for any contribution.

## Status

Finished

## License

[MIT](./LICENSE)
