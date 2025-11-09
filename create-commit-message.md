# Create Commit Message

Create a Git commit message for all the code that has been changed. Either staged or unstaged. The message should be short: one main sentence, summarizing the changes, and then 2 to 3 bullet points, depending on the complexity of the changes made. The commitment message should be written in an appropriate tone. Please also follow the standards below.

The commit message should really be no more than three bullet points. Otherwise, you're really describing the diff more than you're actually summarizing what got changed.

## Commit Message Standards

- **Format**: Use conventional commits format (`type: description`)
- **Types**: `feat:`, `fix:`, `docs:`, `style:`, `refactor:`, `test:`, `chore:`
- **Description**: Use imperative mood, lowercase, no period (unless there are multiple sentences). Keep it succinct.


Here is an example:

```sh
fix: Improved logic for the main controller to fix bug where script would hang.
- Removed spaghetti code
- Improved the speed of execution by several seconds
```

Incorporate any additional information or directions that I give, if any.
Do not actually commit any code. Simply print out your proposed commitment message.
