import os


def main():
    print(os.environ["INPUT_BRANCH-NAME"])
    behind = os.environ["INPUT_COMMIT-DIFF"].split("\t")
    print(behind)


if __name__ == "__main__":
    main()
