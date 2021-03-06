% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fgsea.R
\name{calcGseaStat}
\alias{calcGseaStat}
\title{Calculates GSEA statistics for a given query gene set}
\usage{
calcGseaStat(stats, selectedStats, gseaParam = 1, returnAllExtremes = FALSE)
}
\arguments{
\item{stats}{Named numeric vector with gene-level statistics
sorted in decreasing order (order is not checked).}

\item{selectedStats}{Indexes of selected genes in the `stats` array.}

\item{gseaParam}{GSEA weight parameter (0 is unweighted, suggested value is 1).}

\item{returnAllExtremes}{If TRUE return not only the most extreme point, but all of them.}
}
\value{
Value of GSEA statistic.
}
\description{
Takes \emph{O(k log k)} time, where \emph{k} is a size of `selectedSize`.
}
\examples{
data(exampleRanks)
data(examplePathways)
ranks <- sort(exampleRanks, decreasing=TRUE)
es <- calcGseaStat(ranks, na.omit(match(examplePathways[[1]], names(ranks))))
}

