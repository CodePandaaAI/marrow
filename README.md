<div align="center">
  <img src="marrow_logo.png" width="150" alt="Marrow logo">

  <h1>Marrow</h1>

  <p><strong>Explanations that make sense.</strong></p>

  <p>Marrow helps AI reach the meaning sooner.</p>
</div>

---

## Why Marrow exists

You ask AI to explain something.

The answer is correct, but it does not click.

So you ask again:

- "Explain it simply."
- "Use easier words."
- "Give me an example."
- "Try an analogy."
- "I still do not understand."

After enough trial and error, one sentence finally makes the idea clear.

And you think:

> Why did the AI not say that first?

Marrow is built for that problem.

## One example

Ask:

> What is a tensor in AI?

You may get an answer like this:

> A tensor is a fundamental mathematical building block that acts as a
> generalized container for data. It is an N-dimensional array of numbers.

The answer contains useful facts. But if "generalized container" and
"N-dimensional array" are not already clear, the definition does not give you
much to think with.

Marrow tries to find the meaning that should come first:

> In machine learning, a tensor is data with a shape. The data is usually
> numbers. The shape tells you how those numbers are arranged.

A number, a list of numbers, a table, and a group of images can all be stored as
tensors. Their shapes describe how the numbers are arranged.

So when an AI model expects a tensor with a certain shape, it expects numbers
arranged in that form.

"Data with a shape" is a useful first meaning in machine learning. It is not the
complete mathematical definition. The exact definition can come later, after
the first idea is clear.

## What does "simple" mean?

There is no explanation that feels simple to everyone.

What feels clear depends on what a person already knows and which part is
confusing them.

For Marrow, a simple explanation is one that creates the needed understanding
with the least unnecessary difficulty.

That does not always mean:

- fewer words
- easier vocabulary
- less detail
- an analogy
- a beginner lesson

Sometimes a short answer is enough. Sometimes an example makes the difference.
Sometimes an exact explanation is clearer than a vague one.

The goal is not to make every answer look simple.

The goal is to make the idea easier to understand.

## How Marrow helps

Before answering, Marrow guides the AI to:

1. Find the part the learner is missing.
2. Consider different ways to explain it.
3. Put the clearest meaning first.
4. Check whether the important words actually help.
5. Add only the background the learner needs.
6. Keep the explanation accurate.
7. Try a different approach if the first one does not click.

This work stays behind the scenes. The learner receives a natural explanation,
not a report about how it was made.

## What Marrow avoids

Marrow does not force every answer to:

- start from zero
- become long
- include an analogy
- include an example
- use numbered steps
- explain every related topic

Different ideas and different learners need different explanations.

Marrow tries to find the one that fits.

## Add Marrow

For tools that support AI skills:

```bash
npx skills add CodePandaaAI/marrow
```

<details>
<summary>Other installation options</summary>

### macOS, Linux, or WSL

```bash
curl -fsSL https://raw.githubusercontent.com/CodePandaaAI/marrow/main/install.sh | bash
```

### Windows PowerShell

```powershell
irm https://raw.githubusercontent.com/CodePandaaAI/marrow/main/install.ps1 | iex
```

</details>

## Use it with ChatGPT, Claude, or Gemini

Open [the Marrow skill](skills/marrow/SKILL.md) and add its contents to your
custom instructions, Project, Gem, or assistant.

You can also paste it into a new conversation before asking your question.

---

<div align="center">
  <p><strong>Find the meaning. Make it clear. Add only what helps.</strong></p>
  <p><a href="LICENSE">MIT License</a></p>
</div>
