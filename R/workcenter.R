#' 按纽生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' WorkcenterUI()
WorkcenterUI <- function(tabTitle ='责任中心',
                          colTitles =c('操作区','','显示区'),
                          widthRates =c(6,6,12),
                          func_left = WorkcenterUI_left,
                          func_right =WorkcenterUI_right,
                          func_bottom = WorkcenterUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' WorkcenterUI_left()
WorkcenterUI_left <- function() {


  res <- shiny::tagList(


    tsui::uiTemplate(templateName = '嘉好人工计提基础资料模板'),
    tsui::mdl_file(id = 'file_expInfo_Workcenter',label ='请上传文件' ),

    shiny::actionButton(inputId = 'btn_preview_Workcenter',label = '预览'),
    shiny::actionButton(inputId = 'btn_Update_Workcenter',label = '更新责任中心')

    #shiny::actionButton(inputId = 'btn_deptUpdate',label = '更新部门对照表'),

    #shiny::actionButton(inputId = 'btn_WorkcenterUpdate',label = '更新责任中心'),
    #shiny::actionButton(inputId = 'btn_workcenterUpdate',label = '更新责任中心'),
    #shiny::actionButton(inputId = 'btn_rditemUpdate',label = '更新研发项目对照')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' WorkcenterUI_bottom()
WorkcenterUI_right <- function() {
  res <- shiny::tagList(



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' WorkcenterUI_bottom()
WorkcenterUI_bottom <- function() {
  res <- shiny::tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'mdlJHmd_Workcenter_resultView',label ='结果显示' ))
  )
  return(res)

}