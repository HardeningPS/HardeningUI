@{
    Rules = @{
        PSPlaceOpenBrace                            = @{
            Enable             = $True
            OnSameLine         = $False
            NewLineAfter       = $True
            IgnoreOneLineBlock = $True
        }

        PSPlaceCloseBrace                           = @{
            Enable             = $True
            NewLineAfter       = $True
            IgnoreOneLineBlock = $True
            NoEmptyLineBefore  = $False
        }

        PSUseShouldProcessForStateChangingFunctions = @{
            Enable = $True
        }

        PSProvideCommentHelp                        = @{
            Enable                  = $True
            ExportedOnly            = $False
            BlockComment            = $True
            VSCodeSnippetCorrection = $False
            Placement               = "before"
        }
    }
}