library(recipes)

example_data <- tibble::tribble(
    ~ language,
    "English, Italian",
    "Spanish, French",
    "English, French, Spanish"
)

recipe(~. , data = example_data) |>
    step_dummy_extract(language, sep = ", ") |>
    prep() |>
    bake(new_data = NULL)
