import os


def main():
    print(os.environ["INPUT_COMMIT-DIFF"])
    print(os.environ["INPUT_BRANCH-NAME"])


if __name__ == "__main__":
    main()
