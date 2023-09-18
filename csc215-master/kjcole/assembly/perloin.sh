#!/bin/bash
perl -p -i -e "s|FindNextStatementLoop|S103|g;" happyASM.asm
perl -p -i -e "s|CheckEnoughVarSpace|S037|g;" happyASM.asm
perl -p -i -e "s|RemoveProgramLine|S047|g;" happyASM.asm
perl -p -i -e "s|NextExponentDigit|S205|g;" happyASM.asm
perl -p -i -e "s|LineNumberFromStr|S096|g;" happyASM.asm
perl -p -i -e "s|InsertProgramLine|S049|g;" happyASM.asm
perl -p -i -e "s|FunctionCallError|S095|g;" happyASM.asm
perl -p -i -e "s|ForLoopIsComplete|S127|g;" happyASM.asm
perl -p -i -e "s|FindNextStatement|S101|g;" happyASM.asm
perl -p -i -e "s|UpdateLinkedList|S051|g;" happyASM.asm
perl -p -i -e "s|StoreProgramLine|S046|g;" happyASM.asm
perl -p -i -e "s|NegateIfPositive|S237|g;" happyASM.asm
perl -p -i -e "s|GetTerminalWidth|S252|g;" happyASM.asm
perl -p -i -e "s|GetCompareOpLoop|S107|g;" happyASM.asm
perl -p -i -e "s|FUnpackMantissas|S196|g;" happyASM.asm
perl -p -i -e "s|FLoadBCDEfromMem|S192|g;" happyASM.asm
perl -p -i -e "s|szTerminalWidth|S262|g;" happyASM.asm
perl -p -i -e "s|OptionalFnsLoop|S255|g;" happyASM.asm
perl -p -i -e "s|NextLineNumChar|S097|g;" happyASM.asm
perl -p -i -e "s|KW_ARITH_OP_FNS|S012|g;" happyASM.asm
perl -p -i -e "s|InitProgramBase|S257|g;" happyASM.asm
perl -p -i -e "s|GetNonBlankLine|S045|g;" happyASM.asm
perl -p -i -e "s|FMantissaRtOnce|S167|g;" happyASM.asm
perl -p -i -e "s|FMantissaRtMult|S165|g;" happyASM.asm
perl -p -i -e "s|FindProgramLine|S054|g;" happyASM.asm
perl -p -i -e "s|EndOfForHandler|S086|g;" happyASM.asm
perl -p -i -e "s|DoExponentDigit|S212|g;" happyASM.asm
perl -p -i -e "s|VAR_ARRAY_BASE|S025|g;" happyASM.asm
perl -p -i -e "s|ToUnder1000000|S228|g;" happyASM.asm
perl -p -i -e "s|ToNextTabBreak|S114|g;" happyASM.asm
perl -p -i -e "s|TerminateInput|S110|g;" happyASM.asm
perl -p -i -e "s|PrintSpaceLoop|S118|g;" happyASM.asm
perl -p -i -e "s|PrepareToPrint|S219|g;" happyASM.asm
perl -p -i -e "s|PopHLandReturn|S172|g;" happyASM.asm
perl -p -i -e "s|KW_GENERAL_FNS|S014|g;" happyASM.asm
perl -p -i -e "s|FTestSign_tail|S181|g;" happyASM.asm
perl -p -i -e "s|FindMemTopLoop|S249|g;" happyASM.asm
perl -p -i -e "s|EvalExpression|S128|g;" happyASM.asm
perl -p -i -e "s|DecimalShiftUp|S210|g;" happyASM.asm
perl -p -i -e "s|DECIMAL_POWERS|S230|g;" happyASM.asm
perl -p -i -e "s|DecimalLoopEnd|S209|g;" happyASM.asm
perl -p -i -e "s|CopyFromBuffer|S050|g;" happyASM.asm
perl -p -i -e "s|CheckEnoughMem|S038|g;" happyASM.asm
perl -p -i -e "s|CalcTabBrkSize|S253|g;" happyASM.asm
perl -p -i -e "s|CalcSpaceCount|S115|g;" happyASM.asm
perl -p -i -e "s|WaitTermReady|S076|g;" happyASM.asm
perl -p -i -e "s|ToNextKeyword|S081|g;" happyASM.asm
perl -p -i -e "s|TAYLOR_SERIES|S239|g;" happyASM.asm
perl -p -i -e "s|szVersionInfo|S263|g;" happyASM.asm
perl -p -i -e "s|PushStepValue|S085|g;" happyASM.asm
perl -p -i -e "s|PROG_PTR_TEMP|S019|g;" happyASM.asm
perl -p -i -e "s|PrintNullLoop|S112|g;" happyASM.asm
perl -p -i -e "s|NextChar_tail|S089|g;" happyASM.asm
perl -p -i -e "s|KW_INLINE_FNS|S011|g;" happyASM.asm
perl -p -i -e "s|INPUT_OR_READ|S018|g;" happyASM.asm
perl -p -i -e "s|InputLineWith|S060|g;" happyASM.asm
perl -p -i -e "s|FSubMantissas|S156|g;" happyASM.asm
perl -p -i -e "s|FMulOuterLoop|S169|g;" happyASM.asm
perl -p -i -e "s|FMulInnerLoop|S170|g;" happyASM.asm
perl -p -i -e "s|FMantissaLeft|S160|g;" happyASM.asm
perl -p -i -e "s|FLoadFromBCDE|S190|g;" happyASM.asm
perl -p -i -e "s|FAddMantissas|S163|g;" happyASM.asm
perl -p -i -e "s|EvalMinusTerm|S132|g;" happyASM.asm
perl -p -i -e "s|EvalBracketed|S131|g;" happyASM.asm
perl -p -i -e "s|DoOptionalFns|S254|g;" happyASM.asm
perl -p -i -e "s|DATA_PROG_PTR|S027|g;" happyASM.asm
perl -p -i -e "s|AlreadyAllocd|S143|g;" happyASM.asm
perl -p -i -e "s|UnusedMemory|S265|g;" happyASM.asm
perl -p -i -e "s|ToOver100000|S217|g;" happyASM.asm
perl -p -i -e "s|TestBreakKey|S092|g;" happyASM.asm
perl -p -i -e "s|szMemorySize|S264|g;" happyASM.asm
perl -p -i -e "s|PushNextWord|S009|g;" happyASM.asm
perl -p -i -e "s|PROGRAM_BASE|S023|g;" happyASM.asm
perl -p -i -e "s|ProcessDigit|S211|g;" happyASM.asm
perl -p -i -e "s|PrintKeyword|S082|g;" happyASM.asm
perl -p -i -e "s|OutChar_tail|S075|g;" happyASM.asm
perl -p -i -e "s|OPT_FN_DESCS|S258|g;" happyASM.asm
perl -p -i -e "s|NextDataLine|S125|g;" happyASM.asm
perl -p -i -e "s|ListNextLine|S079|g;" happyASM.asm
perl -p -i -e "s|InvSignToInt|S182|g;" happyASM.asm
perl -p -i -e "s|InitElements|S149|g;" happyASM.asm
perl -p -i -e "s|GotCompareOp|S108|g;" happyASM.asm
perl -p -i -e "s|GetSubscript|S094|g;" happyASM.asm
perl -p -i -e "s|FWordToFloat|S150|g;" happyASM.asm
perl -p -i -e "s|FreeCopyLoop|S065|g;" happyASM.asm
perl -p -i -e "s|FMantissaInc|S161|g;" happyASM.asm
perl -p -i -e "s|FMantissaDec|S200|g;" happyASM.asm
perl -p -i -e "s|FLoadFromMem|S189|g;" happyASM.asm
perl -p -i -e "s|FExponentAdd|S178|g;" happyASM.asm
perl -p -i -e "s|FCharToFloat|S185|g;" happyASM.asm
perl -p -i -e "s|ExpDigitLoop|S226|g;" happyASM.asm
perl -p -i -e "s|EvalInlineFn|S134|g;" happyASM.asm
perl -p -i -e "s|DivideByZero|S041|g;" happyASM.asm
perl -p -i -e "s|CURRENT_LINE|S021|g;" happyASM.asm
perl -p -i -e "s|CopyMemoryUp|S035|g;" happyASM.asm
perl -p -i -e "s|ConfigIOcode|S248|g;" happyASM.asm
perl -p -i -e "s|SyntaxError|S040|g;" happyASM.asm
perl -p -i -e "s|SyntaxCheck|S002|g;" happyASM.asm
perl -p -i -e "s|ScaleResult|S207|g;" happyASM.asm
perl -p -i -e "s|PrintString|S113|g;" happyASM.asm
perl -p -i -e "s|PrintSpaces|S117|g;" happyASM.asm
perl -p -i -e "s|OutOfMemory|S039|g;" happyASM.asm
perl -p -i -e "s|NotAKeyword|S063|g;" happyASM.asm
perl -p -i -e "s|NextKeyword|S067|g;" happyASM.asm
perl -p -i -e "s|LINE_BUFFER|S016|g;" happyASM.asm
perl -p -i -e "s|InitVarLoop|S141|g;" happyASM.asm
perl -p -i -e "s|IncHLReturn|S193|g;" happyASM.asm
perl -p -i -e "s|GotDataItem|S124|g;" happyASM.asm
perl -p -i -e "s|GetExponent|S204|g;" happyASM.asm
perl -p -i -e "s|GetArrayVar|S144|g;" happyASM.asm
perl -p -i -e "s|FindVarLoop|S138|g;" happyASM.asm
perl -p -i -e "s|FCopyToBCDE|S191|g;" happyASM.asm
perl -p -i -e "s|FAddOneHalf|S151|g;" happyASM.asm
perl -p -i -e "s|EvalVarTerm|S133|g;" happyASM.asm
perl -p -i -e "s|ERROR_CODES|S015|g;" happyASM.asm
perl -p -i -e "s|DoneMemSize|S251|g;" happyASM.asm
perl -p -i -e "s|DIM_OR_EVAL|S017|g;" happyASM.asm
perl -p -i -e "s|DecimalLoop|S208|g;" happyASM.asm
perl -p -i -e "s|CopyMemLoop|S036|g;" happyASM.asm
perl -p -i -e "s|CompareHLDE|S005|g;" happyASM.asm
perl -p -i -e "s|CharIsAlpha|S093|g;" happyASM.asm
perl -p -i -e "s|AllocNewVar|S140|g;" happyASM.asm
perl -p -i -e "s|TERMINAL_Y|S006|g;" happyASM.asm
perl -p -i -e "s|TERMINAL_X|S007|g;" happyASM.asm
perl -p -i -e "s|TaylorLoop|S238|g;" happyASM.asm
perl -p -i -e "s|RtMultLoop|S166|g;" happyASM.asm
perl -p -i -e "s|ResetStack|S059|g;" happyASM.asm
perl -p -i -e "s|ResetInput|S071|g;" happyASM.asm
perl -p -i -e "s|RemoveLine|S048|g;" happyASM.asm
perl -p -i -e "s|NextKwLoop|S068|g;" happyASM.asm
perl -p -i -e "s|GetFlowPtr|S034|g;" happyASM.asm
perl -p -i -e "s|FNormalise|S157|g;" happyASM.asm
perl -p -i -e "s|FNegateInt|S164|g;" happyASM.asm
perl -p -i -e "s|FCopyToMem|S194|g;" happyASM.asm
perl -p -i -e "s|FAsInteger|S199|g;" happyASM.asm
perl -p -i -e "s|ArithParse|S129|g;" happyASM.asm
perl -p -i -e "s|AllocArray|S147|g;" happyASM.asm
perl -p -i -e "s|WriteChar|S064|g;" happyASM.asm
perl -p -i -e "s|szWantSqr|S261|g;" happyASM.asm
perl -p -i -e "s|szWantSin|S259|g;" happyASM.asm
perl -p -i -e "s|szWantRnd|S260|g;" happyASM.asm
perl -p -i -e "s|STACK_TOP|S022|g;" happyASM.asm
perl -p -i -e "s|SignToInt|S183|g;" happyASM.asm
perl -p -i -e "s|NextDigit|S221|g;" happyASM.asm
perl -p -i -e "s|KwCompare|S062|g;" happyASM.asm
perl -p -i -e "s|InputNext|S073|g;" happyASM.asm
perl -p -i -e "s|InputLine|S072|g;" happyASM.asm
perl -p -i -e "s|InputChar|S077|g;" happyASM.asm
perl -p -i -e "s|FTestSign|S008|g;" happyASM.asm
perl -p -i -e "s|FMulByTen|S180|g;" happyASM.asm
perl -p -i -e "s|FindArray|S145|g;" happyASM.asm
perl -p -i -e "s|FDivByTen|S173|g;" happyASM.asm
perl -p -i -e "s|FCopyLoop|S195|g;" happyASM.asm
perl -p -i -e "s|DigitLoop|S222|g;" happyASM.asm
perl -p -i -e "s|Backspace|S070|g;" happyASM.asm
perl -p -i -e "s|AssignVar|S105|g;" happyASM.asm
perl -p -i -e "s|VAR_BASE|S024|g;" happyASM.asm
perl -p -i -e "s|Tokenize|S061|g;" happyASM.asm
perl -p -i -e "s|RND_SEED|S235|g;" happyASM.asm
perl -p -i -e "s|ResetAll|S057|g;" happyASM.asm
perl -p -i -e "s|ReadNext|S123|g;" happyASM.asm
perl -p -i -e "s|PrintInt|S214|g;" happyASM.asm
perl -p -i -e "s|Overflow|S162|g;" happyASM.asm
perl -p -i -e "s|ONE_HALF|S229|g;" happyASM.asm
perl -p -i -e "s|NullTerm|S227|g;" happyASM.asm
perl -p -i -e "s|NormLoop|S158|g;" happyASM.asm
perl -p -i -e "s|NextChar|S003|g;" happyASM.asm
perl -p -i -e "s|ListChar|S080|g;" happyASM.asm
perl -p -i -e "s|KEYWORDS|S013|g;" happyASM.asm
perl -p -i -e "s|FRoundUp|S159|g;" happyASM.asm
perl -p -i -e "s|FreeCopy|S066|g;" happyASM.asm
perl -p -i -e "s|FIsEqual|S198|g;" happyASM.asm
perl -p -i -e "s|FDivLoop|S175|g;" happyASM.asm
perl -p -i -e "s|FCompare|S197|g;" happyASM.asm
perl -p -i -e "s|ExecNext|S087|g;" happyASM.asm
perl -p -i -e "s|EvalTerm|S130|g;" happyASM.asm
perl -p -i -e "s|DimContd|S135|g;" happyASM.asm
perl -p -i -e "s|VAR_TOP|S026|g;" happyASM.asm
perl -p -i -e "s|szError|S031|g;" happyASM.asm
perl -p -i -e "s|SqrLoop|S232|g;" happyASM.asm
perl -p -i -e "s|Restore|S090|g;" happyASM.asm
perl -p -i -e "s|PrintIN|S213|g;" happyASM.asm
perl -p -i -e "s|OutChar|S004|g;" happyASM.asm
perl -p -i -e "s|NewLine|S111|g;" happyASM.asm
perl -p -i -e "s|FNegate|S187|g;" happyASM.asm
perl -p -i -e "s|FInLoop|S203|g;" happyASM.asm
perl -p -i -e "s|FBUFFER|S030|g;" happyASM.asm
perl -p -i -e "s|FAddMem|S152|g;" happyASM.asm
perl -p -i -e "s|ExitTab|S119|g;" happyASM.asm
perl -p -i -e "s|Return|S100|g;" happyASM.asm
perl -p -i -e "s|GetVar|S137|g;" happyASM.asm
perl -p -i -e "s|FACCUM|S028|g;" happyASM.asm
perl -p -i -e "s|DoZero|S216|g;" happyASM.asm
perl -p -i -e "s|Start|S001|g;" happyASM.asm
perl -p -i -e "s|Print|S109|g;" happyASM.asm
perl -p -i -e "s|L0E32|S256|g;" happyASM.asm
perl -p -i -e "s|L0DDE|S250|g;" happyASM.asm
perl -p -i -e "s|L0D8D|S247|g;" happyASM.asm
perl -p -i -e "s|L0D8B|S246|g;" happyASM.asm
perl -p -i -e "s|L0D87|S245|g;" happyASM.asm
perl -p -i -e "s|L0D6F|S244|g;" happyASM.asm
perl -p -i -e "s|L0D4B|S243|g;" happyASM.asm
perl -p -i -e "s|L0D42|S242|g;" happyASM.asm
perl -p -i -e "s|L0D17|S240|g;" happyASM.asm
perl -p -i -e "s|L0C7C|S234|g;" happyASM.asm
perl -p -i -e "s|L0BEB|S225|g;" happyASM.asm
perl -p -i -e "s|L0BDB|S224|g;" happyASM.asm
perl -p -i -e "s|L0BCF|S223|g;" happyASM.asm
perl -p -i -e "s|L0B95|S220|g;" happyASM.asm
perl -p -i -e "s|L0B71|S218|g;" happyASM.asm
perl -p -i -e "s|L0AE4|S206|g;" happyASM.asm
perl -p -i -e "s|L0971|S177|g;" happyASM.asm
perl -p -i -e "s|L095F|S176|g;" happyASM.asm
perl -p -i -e "s|L0919|S171|g;" happyASM.asm
perl -p -i -e "s|L082C|S155|g;" happyASM.asm
perl -p -i -e "s|L07E1|S148|g;" happyASM.asm
perl -p -i -e "s|L07BF|S146|g;" happyASM.asm
perl -p -i -e "s|L0782|S142|g;" happyASM.asm
perl -p -i -e "s|L0747|S139|g;" happyASM.asm
perl -p -i -e "s|L05FA|S122|g;" happyASM.asm
perl -p -i -e "s|L046E|S091|g;" happyASM.asm
perl -p -i -e "s|L03E2|S084|g;" happyASM.asm
perl -p -i -e "s|L036A|S074|g;" happyASM.asm
perl -p -i -e "s|L0271|S053|g;" happyASM.asm
perl -p -i -e "s|L0265|S052|g;" happyASM.asm
perl -p -i -e "s|L015F|S020|g;" happyASM.asm
perl -p -i -e "s|L003A|S010|g;" happyASM.asm
perl -p -i -e "s|Input|S120|g;" happyASM.asm
perl -p -i -e "s|Gosub|S098|g;" happyASM.asm
perl -p -i -e "s|FZero|S179|g;" happyASM.asm
perl -p -i -e "s|FTEMP|S029|g;" happyASM.asm
perl -p -i -e "s|FPush|S188|g;" happyASM.asm
perl -p -i -e "s|Error|S042|g;" happyASM.asm
perl -p -i -e "s|Clear|S058|g;" happyASM.asm
perl -p -i -e "s|szOK|S033|g;" happyASM.asm
perl -p -i -e "s|szIn|S032|g;" happyASM.asm
perl -p -i -e "s|Stop|S043|g;" happyASM.asm
perl -p -i -e "s|Read|S121|g;" happyASM.asm
perl -p -i -e "s|Next|S126|g;" happyASM.asm
perl -p -i -e "s|Main|S044|g;" happyASM.asm
perl -p -i -e "s|List|S078|g;" happyASM.asm
perl -p -i -e "s|Init|S241|g;" happyASM.asm
perl -p -i -e "s|Goto|S099|g;" happyASM.asm
perl -p -i -e "s|FSub|S153|g;" happyASM.asm
perl -p -i -e "s|FOut|S215|g;" happyASM.asm
perl -p -i -e "s|FMul|S168|g;" happyASM.asm
perl -p -i -e "s|FDiv|S174|g;" happyASM.asm
perl -p -i -e "s|FAdd|S154|g;" happyASM.asm
perl -p -i -e "s|Exit|S069|g;" happyASM.asm
perl -p -i -e "s|Exec|S088|g;" happyASM.asm
perl -p -i -e "s|Tab|S116|g;" happyASM.asm
perl -p -i -e "s|Sqr|S231|g;" happyASM.asm
perl -p -i -e "s|Sin|S236|g;" happyASM.asm
perl -p -i -e "s|Sgn|S184|g;" happyASM.asm
perl -p -i -e "s|Run|S056|g;" happyASM.asm
perl -p -i -e "s|Rnd|S233|g;" happyASM.asm
perl -p -i -e "s|Rem|S102|g;" happyASM.asm
perl -p -i -e "s|New|S055|g;" happyASM.asm
perl -p -i -e "s|Let|S104|g;" happyASM.asm
perl -p -i -e "s|Int|S201|g;" happyASM.asm
perl -p -i -e "s|For|S083|g;" happyASM.asm
perl -p -i -e "s|FIn|S202|g;" happyASM.asm
perl -p -i -e "s|Dim|S136|g;" happyASM.asm
perl -p -i -e "s|Abs|S186|g;" happyASM.asm
perl -p -i -e "s|If|S106|g;" happyASM.asm

#

#perl -p -i -e "s|^(S...)|\1:|g;"  happyASM.asm

#

perl -p -i -e "s|^(S...\:)?( +)(IN)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(OUT)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(EI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(DI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(HLT)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RST)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CMC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(STC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(NOP)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(INR)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(DCR)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CMA)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(DAA)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(POP)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(PUSH)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(DAD)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(INX)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(DCX)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(XCHG)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(XTHL)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(SPHL)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RLC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RRC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RAL)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RAR)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(MOV)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(STAX)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(LDAX)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ADD)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ADC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(SUB)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(SBB)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ANA)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(XRA)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ORA)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CMP)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(STA)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(LDA)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(SHLD)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(LHLD)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(LXI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(MVI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ADI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ACI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(SUI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(SBI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ANI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(XRI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ORI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CPI)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(PCHL)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JMP)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JNC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JZ)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JNZ)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JM)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JP)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JPE)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(JPO)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CALL)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CNC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CZ)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CNZ)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CM)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CP)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CPE)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(CPO)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RET)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RNC)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RZ)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RNZ)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RM)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RP)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RPE)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(RPO)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(ORG)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(DB)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(DW)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?( +)(DS)|\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s| *\t|\t|g;" happyASM.asm
perl -p -i -e "s|\t *|\t|g;" happyASM.asm

#

perl -p -i -e "s|^(S...\:)?(\t+)(IN) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(OUT) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(EI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(DI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(HLT) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RST) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CMC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(STC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(NOP) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(INR) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(DCR) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CMA) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(DAA) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(POP) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(PUSH) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(DAD) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(INX) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(DCX) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(XCHG) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(XTHL) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(SPHL) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RLC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RRC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RAL) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RAR) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(MOV) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(STAX) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(LDAX) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ADD) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ADC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(SUB) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(SBB) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ANA) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(XRA) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ORA) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CMP) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(STA) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(LDA) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(SHLD) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(LHLD) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(LXI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(MVI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ADI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ACI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(SUI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(SBI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ANI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(XRI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ORI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CPI) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(PCHL) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JMP) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JNC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JZ) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JNZ) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JM) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JP) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JPE) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(JPO) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CALL) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CNC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CZ) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CNZ) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CM) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CP) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CPE) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(CPO) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RET) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RNC) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RZ) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RNZ) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RM) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RP) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RPE) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(RPO) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(ORG) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(DB) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(DW) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s|^(S...\:)?(\t+)(DS) |\1\t\3\t|g;" happyASM.asm
perl -p -i -e "s| *\t|\t|g;" happyASM.asm
perl -p -i -e "s|\t *|\t|g;" happyASM.asm
