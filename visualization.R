
library(trelliscope)

uids <- unique(train_df$unique_id)

plot_data <- train_df

plot_data$ds <- as.Date(plot_data$ds)

p <- ggplot(plot_data, aes(x = ds, y = y)) +
  geom_line(color="steelblue") +
  facet_panels(vars(unique_id), scales = "free")

p_df <- as_panels_df(p)

tdf <- as_trelliscope_df(p_df, name = "Product sales")

view_trelliscope(tdf)
