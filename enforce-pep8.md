# Enforce PEP 8

For any Python code that's in context, Enforce the code standards of PEP 8 as noted as this document: https://peps.python.org/pep-0008/

In particular, make sure the rules and conventions of the following  section of the above document are enforced: https://peps.python.org/pep-0008/#programming-recommendations

Report any violations of the above in your output to the user. Do not immediately or automatically make the code changes to fix the violations. Give the user a chance to do so first. Only fix the violations when the user explicitly asks you to do so.

Here are some example output of a violation:

```
The following code in sample.py on line 17 violates the PEP8 convention Regarding the correct order of Checking if a variable does not equal the Singleton `None`:
`if not some_variable is None`

The PEP8 convention is to use the following order instead:
`if some_variable is not None`

As noted in the documentation, the recommended order is easier to read and parse.
```

Please output all violations in a logical and easy to read format for the user to understand.
