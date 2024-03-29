% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/the.best.friends.r
\name{best.friends.test}
\alias{best.friends.test}
\title{best.friends.test}
\usage{
best.friends.test(relation, distance_like = FALSE)
}
\arguments{
\item{relation}{is the elements*communities matrix of the relations between features and the entities}

\item{distance_like}{the default is \code{FALSE} and it shows that the relation values are not like distance,
i.e. the better relation is shown by the lagrer value; if the relation is, on the contrary, distance-like,
and 0 is the best, the value is \code{TRUE}.}
}
\value{
\code{data.frame} with 5 columns: element index,
the index of the community that is a putative best friend of the element,
uncorrected p-value for the pair,
element name,
friend name.
The small (after multiple hypothesis correction we are to do) p-value
indicates that the community is really the best friend of the element.
}
\description{
We have what can to be friends (communities) as columns and we have what they can befriends of (features) as rows.
}
\examples{
genes<-10
regulation=matrix(
  c(0.2, 0.2, 0.2, 0.2, 0.25, rep(0.2,genes-5),
    rep(1, genes),
    rep(1, genes),
    rep(1, genes),
    rep(1, genes),
    rep(1, genes),
    rep(1, genes),
    rep(1, genes),
    rep(1, genes),
    rep(1, genes)
  ),
  ncol=10,byrow=FALSE
)
gene.names<-LETTERS[seq( from = 1, to = genes )]
TF.names<-c('TF1','TF2','TF3','TF4','TF5','TF6','TF7','TF8','TF9','TF10')
rownames(regulation)<-gene.names
colnames(regulation)<-TF.names
bestfriends<-best.friends.test(regulation)
}
