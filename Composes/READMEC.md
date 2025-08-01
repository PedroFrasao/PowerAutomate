### 📄 Relationship Between `Compose` and HTML

Each `Compose` action is responsible for injecting data into a specific section of an HTML template using **placeholders** — variables wrapped in double curly braces like `{{...}}`.

---

#### 🔁 Dynamic Substitution with Placeholders

When generating HTML content, `Compose` replaces placeholders with actual values.

Example:

```html
<p>Hello, {{UserName}}!</p>
