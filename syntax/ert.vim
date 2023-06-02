" Vim syntax file
" Language:		ert
" Filename extensions:	*.ert
" Maintainer:           Matt Ferrera <msfe@equinor.com>

syn case match

" keywords
syn keyword ertRequired DATA_FILE ECLBASE JOBNAME GRID
syn keyword ertRequired NUM_REALIZATIONS NUM_CPU
"
syn keyword ertOptional DATA_KW LICENSE_PATH RANDOM_SEED ENSPATH
syn keyword ertOptional HISTORY_SOURCE REFCASE_HISTORY REFCASE_SIMULATED
syn keyword ertOptional REFCASE INSTALL_JOB OBS_CONFIG RESULT_PATH
syn keyword ertOptional RUNPATH RUNPATH_FILE RUN_TEMPLATE
"
syn keyword ertSimuCtrl MIN_REALIZATIONS STOP_LONG_RUNNING MAX_RUNTIME
"
syn keyword ertParamKey FIELD GEN_DATA GEN_KW GEN_KW_TAG_FORMAT
syn keyword ertParamKey SURFACE SUMMARY
"
syn keyword ertESAlgthm ENKF_ALPHA ENKF_BOOTSTRAP ENKF_FORCE_NCOMP
syn keyword ertESAlgthm ENKF_NCOMP ENKF_TRUNCATION UPDATE_LOG_PATH
syn keyword ertESAlgthm UPDATE_SETTINGS
"
syn keyword ertAnalysis ANALYSIS_SELECT ANALYSIS_SET_VAR ANALYSIS_COPY
syn keyword ertAnalysis ITER_CASE ITER_COUNT ITER_RETRY_COUNT
syn keyword ertAnalysis MAX_SUBMIT SINGLE_NODE_UPDATE
"
syn keyword ertAdvcdOpt DEFINE TIME_MAP
"
syn keyword ertFwdModel FORWARD_MODEL SIMULATION_JOB JOB_SCRIPT
syn keyword ertFwdModel QUEUE_SYSTEM QUEUE_OPTION
"
syn keyword ertLSFConfg LSF_SERVER LSF_QUEUE LSF_RESOURCE LSF_RSH_CMD
syn keyword ertLSFConfg LSF_LOGIN_SHELL BSUB_CMD BJOBS_CMD BJOBS_CMD
syn keyword ertLSFConfg BHIST_CMD BJOBS_TIMEOUT DEBUG_OUTPUT SUBMIT_SLEEP
syn keyword ertLSFConfg PROJECT_CODE EXCLUDE_HOST MAX_RUNNING
"
syn keyword ertTORQConf QSUB_CMD QSTAT_CMD QDEL_CMD QUEUE CLUSTER_LABEL
syn keyword ertTORQConf MAX_RUNNING NUM_NODES NUM_CPUS_PER_NODE
syn keyword ertTORQConf KEEP_QSUB_OUTPUT SUBMIT_SLEEP DEBUG_OUTPUT
syn keyword ertTORQConf QUEUE_QUERY_TIMEOUT
"
syn keyword ertSLURMQue SBATCH SCANCEL SCONTROL SQUEUE PARTITION
syn keyword ertSLURMQue SQUEUE_TIMEOUT MAX_RUNTIME MEMORY MEMORY_PER_CPU
syn keyword ertSLURMQue INCLUDE_HOST EXCLUDE_HOST MAX_RUNNING
"
syn keyword ertPlotting REFCASE_LIST RFTPATH HOOK_WORKFLOW LOAD_WORKFLOW
syn keyword ertPlotting LOAD_WORKFLOW_JOB WORKFLOW_JOB_DIRECTORY
"
syn keyword ertUnixEnvt SETENV 
"
syn keyword ertDeprecated CASE_TABLE
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
hi def link ertDeprecated         Keyword
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
