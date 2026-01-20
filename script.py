DELIMITER = "######"
FILE_NAME = "sentinel.hcl"

POLICY_TEMPLATE = '''policy "s3-block-public-access-account-level-{i}" {{
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}}
'''

def generate_policies(n: int) -> str:
    return "\n".join(
        POLICY_TEMPLATE.format(i=i).rstrip()
        for i in range(1, n + 1)
    ) + "\n"

def update_policies_file(n: int):
    with open(FILE_NAME, "r") as f:
        content = f.read()

    if DELIMITER not in content:
        raise ValueError(f'Delimiter "{DELIMITER}" not found in {FILE_NAME}')

    before, _ = content.split(DELIMITER, 1)

    new_content = (
        before.rstrip()
        + "\n\n"
        + DELIMITER
        + "\n"
        + generate_policies(n)
    )

    with open(FILE_NAME, "w") as f:
        f.write(new_content)

if __name__ == "__main__":
    N = 1000  # <-- number of policies to generate
    update_policies_file(N)
    print(f"Updated {FILE_NAME} with {N} policies.")
