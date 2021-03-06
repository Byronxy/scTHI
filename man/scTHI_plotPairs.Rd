% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scTHI_plotPairs.R
\name{scTHI_plotPairs}
\alias{scTHI_plotPairs}
\title{scTHI_plotPairs}
\usage{
scTHI_plotPairs(scTHIresult, cexPoint = 0.8, interactionToplot)
}
\arguments{
\item{scTHIresult}{scTHI object.}

\item{cexPoint}{Set the point size.}

\item{interactionToplot}{Interaction pair to plot.}
}
\value{
None
}
\description{
Generates a plot on the t-SNE coordinates to
show the expression levels
of an interaction pair of interest. Each cell is
colored according to the
corresponding
gene expression value.
}
\examples{
library(scTHI.data)
data(scExample)
result <-  scTHI_score(scExample,
                 cellCusterA = colnames(scExample)[1:30],
                 cellCusterB = colnames(scExample)[31:100],
                 cellCusterAName = "ClusterA",
                 cellCusterBName = "ClusterB", filterCutoff = 0,
                 pvalueCutoff = 1, nPermu = 100, ncore = 8)
result <- scTHI_runTsne(result)
scTHI_plotPairs(result,interactionToplot = "CXCL12_CD4")
}
