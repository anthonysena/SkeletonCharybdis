outputFolder <- "E:/SkeletonCharybdis/Runs/CDM_OPTUM_EHR_COVID_v1239/diagnostics"
CohortDiagnostics::preMergeDiagnosticsFiles(file.path(outputFolder,"target"))
CohortDiagnostics::preMergeDiagnosticsFiles(file.path(outputFolder,"feature"))
CohortDiagnostics::preMergeDiagnosticsFiles(file.path(outputFolder,"subgroup"))