###  Purpose of `SELECT` and `JOIN` Blocks

In our SharePoint list, the **People** field was returning a list of objects, but we only needed the `DisplayName` value.

To achieve this:

1. We used the `SELECT` block to extract only the `DisplayName` from each item in the list.
2. Then, we used the `JOIN` block to combine those names into a single string.

This simplifies the data for use in emails, reports, or HTML output, avoiding unnecessary information.
