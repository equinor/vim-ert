" Vim syntax file
" Language:		ert
" Filename extensions:	*.ert
" Maintainer:           Matthew Ferrera <msfe@equinor.com>

syn case match

" keywords
syn keyword ertRequired DATA_FILE ECLBASE JOBNAME GRID
syn keyword ertRequired NUM_REALIZATIONS NUM_CPU
"
syn keyword ertOptional DATA_KW DATA_ROOT RANDOM_SEED ENSPATH
syn keyword ertOptional HISTORY_SOURCE 
syn keyword ertOptional REFCASE INSTALL_JOB INSTALL_JOB_DIRECTORY OBS_CONFIG
syn keyword ertOptional RUNPATH RUNPATH_FILE RUN_TEMPLATE
syn keyword ertOptional REALIZATION_MEMORY CONFIG_DIRECTORY
"
syn keyword ertSimuCtrl MIN_REALIZATIONS STOP_LONG_RUNNING MAX_RUNTIME
"
syn keyword ertParamKey FIELD GEN_DATA GEN_KW 
syn keyword ertParamKey GEN_KW_EXPORT_NAME SURFACE SUMMARY
"
syn keyword ertESAlgthm ENKF_ALPHA 
syn keyword ertESAlgthm UPDATE_LOG_PATH STD_CUTOFF
"
syn keyword ertAnalysis ANALYSIS_SET_VAR 
syn keyword ertAnalysis MAX_SUBMIT 
"
syn keyword ertAdvcdOpt DEFINE TIME_MAP
"
syn keyword ertFwdModel FORWARD_MODEL SIMULATION_JOB JOB_SCRIPT
syn keyword ertFwdModel QUEUE_SYSTEM QUEUE_OPTION
"
syn keyword ertDsgnMatx DESIGN_MATRIX
"
syn keyword ertLSFConfg LSF_SERVER LSF_QUEUE 
syn keyword ertLSFConfg BSUB_CMD BJOBS_CMD BJOBS_CMD
syn keyword ertLSFConfg BHIST_CMD BJOBS_TIMEOUT DEBUG_OUTPUT SUBMIT_SLEEP
syn keyword ertLSFConfg PROJECT_CODE EXCLUDE_HOST MAX_RUNNING
"
syn keyword ertTORQConf QSUB_CMD QSTAT_CMD QDEL_CMD QUEUE CLUSTER_LABEL
syn keyword ertTORQConf MAX_RUNNING 
syn keyword ertTORQConf KEEP_QSUB_OUTPUT SUBMIT_SLEEP DEBUG_OUTPUT
"
syn keyword ertSLURMQue SBATCH SCANCEL SCONTROL SQUEUE PARTITION
syn keyword ertSLURMQue SQUEUE_TIMEOUT MAX_RUNTIME MEMORY MEMORY_PER_CPU
syn keyword ertSLURMQue INCLUDE_HOST EXCLUDE_HOST MAX_RUNNING
"
syn keyword ertPlotting HOOK_WORKFLOW LOAD_WORKFLOW
syn keyword ertPlotting LOAD_WORKFLOW_JOB WORKFLOW_JOB_DIRECTORY
"
syn keyword ertUnixEnvt SETENV 
"
syn keyword ertPreProc INCLUDE
"
syn keyword ertForwardModels RMS FLOW ECLIPSE300 ECLIPSE100
syn keyword ertForwardModels DELETE_DIRECTORY MAKE_DIRECTORY 
syn keyword ertForwardModels CAREFUL_COPY_FILE MOVE_FILE MAKE_SYMLINK
syn keyword ertForwardModels COPY_DIRECTORY COPY_FILE DELETE_FILE SYMLINK
syn keyword ertForwardModels TEMPLATE_RENDER

syn region ertReference start='<' end='>'

" operators
syn match ertOp ':'
syn match ertOp '='

syn keyword ertTodo containedin=ertComment TODO FIXME BUG FIX
" not used, put kept just in case
syn match ertChar "'[^\\]'"
syn match ertChar "'\\.'"

syn match ertNumber '\<\d\d*\>'
syn match ertNumber '\<0x[0-9a-fA-F]*\>'
syn match ertNumber '\<\d\d*\.\d*\>'

syn match ertNameLiteral '``*[^ \[()\]}][^ ()\[\]{}]*'

syn region ertComment  start="--"  end="$"  contains=ertTodo

syn match ertFormatStr '%d'
syn match ertFormatStr '*'
syn region ertString   start="\""  end="\"" contains=ertFormatStr,ertReference


if exists('b:current_syntax')
    unlet b:current_syntax
endif

hi def link ertReference          Identifier
hi def link ertTodo               Todo

hi def link ertComment            Comment

hi def link ertRequired           Keyword
hi def link ertOptional           Keyword
hi def link ertSimuCtrl           Keyword
hi def link ertParamKey           Keyword
hi def link ertESAlgthm           Keyword
hi def link ertAnalysis           Keyword
hi def link ertAdvcdOpt           Keyword
hi def link ertFwdModel           Keyword
hi def link ertLSFConfg           Keyword
hi def link ertTORQConf           Keyword
hi def link ertSLURMQue           Keyword
hi def link ertPlotting           Keyword
hi def link ertUnixEnvt           Keyword
hi def link ertPreProc            PreProc
hi def link ertFormatStr          SpecialChar           

hi def link ertForwardModels      Function

hi def link ertDelim              Delimiter
hi def link ertOp                 Operator

hi def link ertNotation           String
hi def link ertString             String
hi def link ertStringEscape       SpecialChar
hi def link ertChar               Character
hi def link ertNumber             Number
hi def link ertNameLiteral        Identifier

hi def link ertError              Error

syn sync minlines=200
syn sync maxlines=500

let b:current_syntax = "ert"

" vim: ts=8 sw=8
