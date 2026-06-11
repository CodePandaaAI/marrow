<div align="center">
  <img src="marrow_logo.png" width="150" alt="Marrow logo">

  <h1>Marrow</h1>

  <p><strong>Explanations that make sense.</strong></p>

  <p>Marrow teaches AI to explain difficult ideas clearly.</p>
</div>

---

## The answer can be correct and still not help

You ask an AI to explain something.

It gives you a definition. The definition sounds correct, but the idea is still
not clear.

So you try again:

- "Explain it simply."
- "Use easier words."
- "Give me an example."
- "Explain it like I am a beginner."
- "Can you use an analogy?"
- "I still do not understand."

Each answer gives you more words. Sometimes it gives you the same explanation
with different words. You may learn related facts without finding the one
meaning you were looking for.

After enough trial and error, one sentence finally makes the idea click.

Then you think:

> Why did the explanation not begin with that?

Marrow is built for that problem.

## A complete-looking definition can still hide the idea

An explanation can sound clear and detailed while asking the learner to
understand several other concepts first.

Ask:

> What is a tensor in AI?

A common answer may say:

> A tensor is a fundamental mathematical building block in artificial
> intelligence that acts as a generalized container for data. It is an
> N-dimensional array of numbers. It allows AI models to process complex data
> such as images, text, and video.

The answer contains useful facts. But the main idea is carried by phrases such
as "generalized container" and "N-dimensional array." If those phrases are not
already clear, the definition still does not give you something definite to
think with.

A more useful beginning is:

> In machine learning, a tensor is data with a shape. The data is usually
> numbers, and the shape tells you how those numbers are arranged.

For example:

- `7` is one number.
- `[7, 12, 4]` is three numbers in a line.
- A table of numbers has rows and columns.
- A group of color images can be arranged by image, height, width, and color.

These can all be stored as tensors. What changes is the shape: the description
of how many numbers there are along each direction.

So when an AI model expects a tensor with a certain shape, it expects numbers
arranged in that particular form.

"Data with a shape" is a useful first meaning for machine learning. It is not
the complete mathematical definition of a tensor. The fuller definition can
come later, after the learner has a clear place to attach it.

## More detail is not always the answer

When an explanation fails, AI often adds more:

- more definitions
- more background
- more examples
- more technical terms
- more sections

More can help, but it can also hide the answer under a lesson you did not ask
for.

If you ask what inflation means, you may get:

> Inflation is a sustained increase in the general price level.

That is a correct economic definition. But it may not give you a clear picture.

A useful first explanation is:

> Inflation is when prices generally go up over time. Your money then buys less
> than it did before.

The formal definition can come later. First, you have something clear to think
with.

## One explanation does not fit every idea

Some ideas become clear through a definition. Others need a contrast, a cause
and effect, a concrete example, or the correction of one wrong assumption.

Marrow does not force every answer into the same shape.

### Sometimes the missing part is a contrast

> A price increase means one thing became more expensive. Inflation means prices
> are generally rising across the economy.

The contrast prevents one expensive product from being mistaken for inflation.

### Sometimes the missing part is what happens

A common explanation of confirmation bias is:

> Confirmation bias is the tendency to favor information that confirms existing
> beliefs.

A clearer first explanation may be:

> When you already believe something, evidence that supports it is easier to
> notice, trust, and remember than evidence that challenges it.

The second version shows the pattern instead of only naming it.

### Sometimes the missing part is the real action

A technical explanation may say:

> Dependency injection is a design pattern that implements inversion of control.

But that gives a learner two more labels to understand.

A more useful beginning is:

> A part of a program often creates the helpers it needs. With dependency
> injection, another part creates those helpers and gives them to it.

Now the learner can see what changes in the code. The formal terms have
something real to attach to.

## What Marrow changes

Before the AI answers, Marrow guides it to:

1. Notice what part of the idea is actually missing.
2. Consider more than one way to explain it.
3. Choose the clearest core meaning.
4. Check whether the important words create understanding or only sound simple.
5. Add only the support needed for the idea to hold together.
6. Keep the explanation accurate without burying it under warnings.
7. Try a different route when the first explanation does not click.

This work stays behind the scenes. The reader should receive a natural
explanation, not a report about how the explanation was built.

## What Marrow does not do

Marrow does not assume that beginners need everything explained from zero.

It does not require:

- a long answer
- an analogy
- an example
- numbered steps
- the history of the idea
- every related concept
- a fixed teaching style

Sometimes one sentence is enough. Sometimes an example carries the idea.
Sometimes the learner needs exact detail instead of a simpler answer.

The goal is not to explain more.

The goal is to reach the meaning sooner.

## When Marrow can help

Use Marrow when:

- a definition is correct but still feels empty
- an AI keeps replacing one difficult term with another
- you understand the words but not how they connect
- explanations keep moving into related topics
- you need a basic picture before exact details
- you have asked several times and the idea still has not clicked
- you want an explanation that respects what you already know

Marrow can help with technology, science, economics, language, history,
philosophy, everyday reasoning, and other subjects. The aim stays the same:
find the missing meaning and explain that first.

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
