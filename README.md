#### Slides

To see the slides, clone this repository and run the following commands

```
npm install
npm run dev
```

Then you should be able to see the slides on `localhost:5000`.
Navigate with left and right arrow keys.

To build a static version of the slides into `dist/`, run `npm run build`
(and `npm run preview` to serve the build locally).

`npm run docker` builds the slides and packages `dist/` into an nginx-based Docker image tagged `slides-mev`.
