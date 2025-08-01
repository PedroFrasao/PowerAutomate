###  Relationship Between `Compose` and HTML

Each `Compose` action is responsible for injecting data into specific parts of an HTML template using **placeholders** — variables wrapped in double curly braces like `{{...}}`.

---

####  Dynamic Substitution with Placeholders

When generating HTML content, placeholders such as `{{ColumnName}}` are used to mark where dynamic values should appear.

The actual replacement happens through the values defined inside the `Compose`. The HTML file **remains static**, while the `Compose` provides the corresponding values.

Example:

```html
<p>Total Sales: {{TotalSales}}</p>
