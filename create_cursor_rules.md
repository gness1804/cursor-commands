# Create Cursor Rules

Create a Cursor rules document for this repository, if it doesn't exist. If it does, tell the user that it does and then stop. (The repository should be provided by the user.)

If there's no rules document, create one. Add best practices for the particular languages and frameworks that the refill is using. If there is a CLAUDE.md Or similar file on the repository, use that as a model.

Ask the user if they want to create the new rules document either in the repository root or the `~/cursor-rules` document in the OS root.

## If creating the rule doc in the repo root

Cursor has a particular accepted file structure for rules in repository routes:

The accepted file structure for Cursor rules within a repository is as follows: 

• Main Directory: All Cursor rules for a project should reside within a dedicated directory named .cursor/rules/ at the root of your repository. 
• Individual Rule Files: Each rule is stored as a separate file within this .cursor/rules/ directory. These files must have the .mdc extension. 
• Nested Rules (for multi-repo or sub-project contexts): For projects with a multi-repository structure or distinct sub-projects, you can create additional .cursor/rules/ directories within those sub-directories. This allows for more granular, context-specific rules to be applied when working within those specific areas of the codebase. For example: 

    project/
    ├── .cursor/rules/  # Project-wide rules
    ├── backend/
    │   └── .cursor/rules/ # Backend-specific rules
    └── frontend/
        └── .cursor/rules/ # Frontend-specific rules

• Naming Convention: While not strictly enforced, a recommended naming convention for .mdc files is PREFIX-name.mdc (e.g., style-guide.mdc, react-conventions.mdc). For a general rules file, use a general name like `rules.md` or `cursor.md`. 
• Content: Each .mdc file contains the instructions and guidelines for the Cursor AI, formatted in Markdown. These files can include frontmatter to define properties like description, globs (for scoping rules to specific file patterns), and alwaysApply (to indicate if the rule should always be active). 

## If creating a rule in the OS root

* I have a version controlled repo at `~/cursor-rules.` The rule would need to be created there. Then, you, or I would run the install file on the same repo, which copies the rule over to the `~/.cursor/rules` directory that Cursor looks at for the rules.
* If the rules are created in this repository, it needs a more specific name, because other Cursor rules live there too. In this case, name the file after the project that it has rules for.

