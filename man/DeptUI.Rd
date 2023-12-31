% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dept.R
\name{DeptUI}
\alias{DeptUI}
\title{按纽生成生成器界面}
\usage{
DeptUI(
  tabTitle = "部门对照",
  colTitles = c("操作区", "", "显示区"),
  widthRates = c(6, 6, 12),
  func_left = DeptUI_left,
  func_right = DeptUI_right,
  func_bottom = DeptUI_bottom
)
}
\arguments{
\item{tabTitle}{标题}

\item{colTitles}{主页标题}

\item{widthRates}{左右比例}

\item{func_left}{左函数}

\item{func_right}{右函数}

\item{func_bottom}{下面一栏}
}
\value{
返回值
}
\description{
按纽生成生成器界面
}
\examples{
DeptUI()
}
