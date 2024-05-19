ggplot(data.frame(x = c(-3, 5)), aes(x)) +
  stat_function(
    fun = dnorm,
    geom = "line",
    linetype = 2
  ) +
  stat_function(
    fun = dnorm,
    geom = "area",
    fill = "orange",
    args = list(
      mean = 2
    ),
    xlim = c(-2, qnorm(.95))
  )+
  stat_function(
    fun = dnorm,
    geom = "area",
    linetype = 2,
    fill = "orange",
    alpha = .3,
    args = list(
      mean = 2
    )
  )
