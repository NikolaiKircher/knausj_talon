#custom vscode commands go here
app: vscode
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits
tag(): user.tabs
tag(): user.command_search

# custom
result next:
    user.vscode("search.action.focusNextSearchResult")

result last:
    user.vscode("search.action.focusPreviousSearchResult")

# toggle extended search
search result toggle:
    user.vscode("workbench.view.search")
    key("tab:4 enter")

toggle regex:
    user.find_toggle_match_by_regex()

toggle match case:
    user.find_toggle_match_by_case()

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()

# expand search options in sidebar
search extension:
    mouse_move(374, 129)
    mouse_click()

filter steps:
    user.vscode_focus_files_to_include()
    insert("*steps.rb")

filter features:
    user.vscode_focus_files_to_include()
    insert("*.feature")

filter nothing:
    user.vscode_focus_files_to_include()
    key(backspace)

filter yaml:
    user.vscode_focus_files_to_include()
    insert("*.yml")

filter context:
    user.vscode_focus_files_to_include()
    insert("config/context/*.yml")

filter html:
    user.vscode_focus_files_to_include()
    insert("*.html.erb")

pin tab:
    user.vscode("workbench.action.pinEditor")

unpin tab:
    user.vscode("workbench.action.unpinEditor")

file down:
    user.vscode("workbench.scm.focus")
    key(down enter)

file up:
    user.vscode("workbench.scm.focus")
    key(up enter)

# suggest
jest: key(ctrl-space)

# paste a step definition line into a feature file
# pastry:
#     edit.paste()
#     key(home ctrl-right del:3 space)
#     key(ctrl-f)
#     insert(' do')
#     user.vscode("editor.action.nextMatchFindAction")
#     key(esc shift-end del backspace:3)


# paste a feature line into a step definition file
stepdef:
    edit.paste()
    key(home ctrl-right del)
    insert('(/^^')
    key(backspace end)
    insert('$/) do')

file save as: user.vscode("workbench.action.files.saveAs")
fix line indentation: user.vscode("editor.action.reindentlines")


hash box:
  insert('[""]')
  key(left)
  key(left)

string box:
  insert('#{}')
  key(left)

cross: user.split_next()

rspec line: user.vscode("extension.runLineOnRspec")
rspec file: user.vscode("extension.runFileOnRspec")
rspec repeat: user.vscode("extension.runOnLastSpec")

captain file: user.vscode_with_plugin("workbench.action.tasks.runTask", "rubocop file")
captain file soft: user.vscode_with_plugin("workbench.action.tasks.runTask", "rubocop file soft")
captain project: user.vscode_with_plugin("workbench.action.tasks.runTask", "rubocop project")

lint project: user.vscode_with_plugin("workbench.action.tasks.runTask", "lint project")
cuke lint project: user.vscode_with_plugin("workbench.action.tasks.runTask", "cuke lint project")
erb lint project: user.vscode_with_plugin("workbench.action.tasks.runTask", "erb lint project")

cucumber file: user.vscode_with_plugin("workbench.action.tasks.runTask", "cucumber file")

prepare cucumber:
    user.vscode("copyFilePath")
    user.vscode("workbench.action.terminal.focus")
    sleep(500ms)
    key(delete)
    insert('GUI=1 bec ')
    edit.paste()

prepare cucumber line <number>:
    user.vscode("copyFilePath")
    user.vscode("workbench.action.terminal.focus")
    sleep(500ms)
    key(delete)
    insert('GUI=1 bec ')
    edit.paste()
    sleep(500ms)
    insert(':')
    insert(number)

cucumber <number>:
    user.vscode("copyFilePath")
    user.vscode("workbench.action.terminal.focus")
    sleep(500ms)
    key(delete)
    key(ctrl-c)
    insert('GUI=1 bec ')
    edit.paste()
    sleep(500ms)
    insert(':')
    insert(number)
    key(enter)

prepare sqlite:
    user.vscode("workbench.action.terminal.focus")
    sleep(500ms)
    key(delete)
    insert('ruby bin/change_sql_schema.rb && cp config/database_sqlite.yml.ci config/database.yml')

prepare oracle:
    user.vscode("workbench.action.terminal.focus")
    sleep(500ms)
    key(delete)
    insert('git checkout master -- db/schema.rb config/database.yml')

insert frozen string:
    mimic('pre file')
    insert('# frozen_string_literal: true\n\n')

task repeat: user.vscode("workbench.action.tasks.reRunTask")

comment to do:
  insert("# TODO: ")

git discard file: user.vscode("git.clean")

# revert selected ranges
change discard: user.vscode("git.revertSelectedRanges")

git blame: user.vscode("gitlens.toggleFileBlameInDiffLeft")
git blame toggle: user.vscode("gitlens.toggleLineBlame")
# git head: user.vscode("git.openFile")
git head: user.vscode("gitlens.openWorkingFile")
git compare to master:
    user.vscode("gitlens.diffWithRevisionFrom")
    sleep(450ms)
    insert('master')
git compare:
    user.vscode("gitlens.diffWithRevisionFrom")
git compare last:
    key(ctrl-shift-g)
    key(,)
git compare next:
    key(ctrl-shift-g)
    key(.)

term test:
    user.vscode("workbench.action.terminal.focus")
    sleep(50ms)
    key(up enter)

term restart:
    user.vscode("workbench.action.terminal.focus")
    sleep(50ms)
    key(ctrl-u)
    insert('restart\n')

term captain:
    user.vscode("workbench.action.terminal.focus")
    sleep(50ms)
    insert('rubocop -a --force-default-config ')

git reset soft:
    user.vscode("workbench.action.terminal.focus")
    sleep(50ms)
    insert('git rs')

prepare release:
    user.vscode("workbench.action.terminal.focus")
    sleep(500ms)
    insert('bash bin/build_and_deploy_on_gitlab.sh ')

term selected:
    user.vscode("workbench.action.terminal.runSelectedText")

# knausj
window reload: user.vscode("workbench.action.reloadWindow")
window close: user.vscode("workbench.action.closeWindow")
#multiple_cursor.py support end

go view [<user.text>]:
    user.vscode("workbench.action.openView")
    insert(user.text or "")

# Sidebar
bar explore: user.vscode("workbench.view.explorer")
bar extensions: user.vscode("workbench.view.extensions")
bar outline: user.vscode("outline.focus")
bar run: user.vscode("workbench.view.debug")
bar search: user.vscode("workbench.view.search")
bar source: user.vscode("workbench.view.scm")
bar test: user.vscode("workbench.view.testing.focus")
bar switch: user.vscode("workbench.action.toggleSidebarVisibility")

# Symbol search
symbol hunt [<user.text>]:
    user.vscode("workbench.action.gotoSymbol")
    sleep(50ms)
    insert(text or "")

symbol hunt all [<user.text>]:
    user.vscode("workbench.action.showAllSymbols")
    sleep(50ms)
    insert(text or "")

# Panels
panel control: user.vscode("workbench.panel.repl.view.focus")
panel output: user.vscode("workbench.panel.output.focus")
panel problems: user.vscode("workbench.panel.markers.view.focus")
panel switch: user.vscode("workbench.action.togglePanel")
panel (terminal | term): user.vscode("workbench.action.terminal.focus")
panel editor: user.vscode("workbench.action.focusActiveEditorGroup")

# Settings
show settings: user.vscode("workbench.action.openGlobalSettings")
show settings json: user.vscode("workbench.action.openSettingsJson")
show settings folder: user.vscode("workbench.action.openFolderSettings")
show settings folder json: user.vscode("workbench.action.openFolderSettingsFile")
show settings workspace: user.vscode("workbench.action.openWorkspaceSettings")
show settings workspace json: user.vscode("workbench.action.openWorkspaceSettingsFile")
show shortcuts: user.vscode("workbench.action.openGlobalKeybindings")
show shortcuts json: user.vscode("workbench.action.openGlobalKeybindingsFile")
show snippets: user.vscode("workbench.action.openSnippets")

# VSCode Snippets
snip (last | previous): user.vscode("jumpToPrevSnippetPlaceholder")
snip next: user.vscode("jumpToNextSnippetPlaceholder")

# Display
centered switch: user.vscode("workbench.action.toggleCenteredLayout")
fullscreen switch: user.vscode("workbench.action.toggleFullScreen")
theme switch: user.vscode("workbench.action.selectTheme")
wrap toggle: user.vscode("editor.action.toggleWordWrap")
zen toggle: user.vscode("workbench.action.toggleZenMode")

# File Commands
file snipe <user.text>:
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert(text)
    sleep(800ms)
    key(enter)
file pasta:
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    edit.paste()
    sleep(450ms)
    key(enter)
file hunt [<user.text>]:
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert(text or "")
file hunt (pace | paste):
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    edit.paste()
file copy name: user.vscode("fileutils.copyFileName")
file copy path: user.vscode("copyFilePath")
file copy local [path]: user.vscode("copyRelativeFilePath")
file create sibling: user.vscode_and_wait("explorer.newFile")
file create: user.vscode("workbench.action.files.newUntitledFile")
file create relative: user.vscode("fileutils.newFile")
file create root: user.vscode("fileutils.newFileAtRoot")
file rename:
    user.vscode("fileutils.renameFile")
    sleep(150ms)
file move:
    user.vscode("fileutils.moveFile")
    sleep(150ms)
file clone:
    user.vscode("fileutils.duplicateFile")
    sleep(150ms)
file delete:
    user.vscode("fileutils.removeFile")
    sleep(150ms)
file open folder: user.vscode("revealFileInOS")
file reveal: user.vscode("workbench.files.action.showActiveFileInExplorer")
save ugly: user.vscode("workbench.action.files.saveWithoutFormatting")

# Language Features
suggest show: user.vscode("editor.action.triggerSuggest")
hint show: user.vscode("editor.action.triggerParameterHints")
definition show: user.vscode("editor.action.revealDefinition")
definition peek: user.vscode("editor.action.peekDefinition")
definition side: user.vscode("editor.action.revealDefinitionAside")
references show: user.vscode("editor.action.goToReferences")
hierarchy peek: user.vscode("editor.showCallHierarchy")
references find: user.vscode("references-view.find")
format that | formalize: user.vscode("editor.action.formatDocument")
format selection: user.vscode("editor.action.formatSelection")
imports fix: user.vscode("editor.action.organizeImports")
problem next: user.vscode("editor.action.marker.nextInFiles")
problem last: user.vscode("editor.action.marker.prevInFiles")
problem fix: user.vscode("problems.action.showQuickFixes")
rename that: user.vscode("editor.action.rename")
refactor that: user.vscode("editor.action.refactor")
whitespace trim: user.vscode("editor.action.trimTrailingWhitespace")
language switch: user.vscode("workbench.action.editor.changeLanguageMode")
refactor rename: user.vscode("editor.action.rename")
refactor this: user.vscode("editor.action.refactor")

#code navigation
(go declaration | follow): user.vscode("editor.action.revealDefinition")
go back: user.vscode("workbench.action.navigateBack")
go forward: user.vscode("workbench.action.navigateForward")
go implementation: user.vscode("editor.action.goToImplementation")
go type: user.vscode("editor.action.goToTypeDefinition")
go usage: user.vscode("references-view.find")
go recent [<user.text>]:
    user.vscode("workbench.action.openRecent")
    sleep(50ms)
    insert(text or "")
    sleep(250ms)
go edit: user.vscode("workbench.action.navigateToLastEditLocation")

# Bookmarks. Requires Bookmarks plugin
bar marks: user.vscode("workbench.view.extension.bookmarks")
go marks:
    user.deprecate_command("2023-06-06", "go marks", "bar marks")
    user.vscode("workbench.view.extension.bookmarks")
toggle mark: user.vscode("bookmarks.toggle")
go next mark: user.vscode("bookmarks.jumpToNext")
go last mark: user.vscode("bookmarks.jumpToPrevious")

close other tabs: user.vscode("workbench.action.closeOtherEditors")
close all tabs: user.vscode("workbench.action.closeAllEditors")
close tabs way right: user.vscode("workbench.action.closeEditorsToTheRight")
close tabs way left: user.vscode("workbench.action.closeEditorsToTheLeft")

tab close other: user.vscode("workbench.action.closeOtherEditors")
tab close unchanged: user.vscode("gitlens.closeUnchangedFiles")
tab destroy: user.vscode("workbench.action.closeActivePinnedEditor")
tab destroy all: user.vscode("workbench.action.closeAllGroups")
open changed files: user.vscode("gitlens.openChangedFiles")

# Folding
fold that: user.vscode("editor.fold")
unfold that: user.vscode("editor.unfold")
fold those: user.vscode("editor.foldAllMarkerRegions")
unfold those: user.vscode("editor.unfoldRecursively")
fold all: user.vscode("editor.foldAll")
unfold all: user.vscode("editor.unfoldAll")
fold comments: user.vscode("editor.foldAllBlockComments")
fold one: user.vscode("editor.foldLevel1")
fold two: user.vscode("editor.foldLevel2")
fold three: user.vscode("editor.foldLevel3")
fold four: user.vscode("editor.foldLevel4")
fold five: user.vscode("editor.foldLevel5")
fold six: user.vscode("editor.foldLevel6")
fold seven: user.vscode("editor.foldLevel7")

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git branch: user.vscode("git.branchFrom")
git branch this: user.vscode("git.branch")
git checkout [<user.text>]:
    user.vscode("git.checkout")
    sleep(50ms)
    insert(text or "")
git commit [<user.text>]:
    user.vscode("git.commitStaged")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")
git commit undo: user.vscode("git.undoCommit")
git commit amend: user.vscode("git.commitStagedAmend")
git diff: user.vscode("git.openChange")
git fetch: user.vscode("git.fetch")
git fetch all: user.vscode("git.fetchAll")
git ignore: user.vscode("git.ignore")
git merge: user.vscode("git.merge")
git output: user.vscode("git.showOutput")
git pull: user.vscode("git.pullRebase")
git push: user.vscode("git.push")
git push force: user.vscode("git.pushForce")
git rebase abort: user.vscode("git.rebaseAbort")
git reveal: user.vscode("git.revealInExplorer")
git revert: user.vscode("git.revertChange")
git stash: user.vscode("git.stash")
git stash untracked: user.vscode("git.stashIncludeUntracked")
git stash pop: user.vscode("git.stashPop")
git status: user.vscode("workbench.scm.focus")
git stage file: user.vscode("git.stage")
git stage all: user.vscode("git.stageAll")
git stage selected: user.vscode("git.stageSelectedRanges")
git sync: user.vscode("git.sync")
git unstage: user.vscode("git.unstage")
git unstage all: user.vscode("git.unstageAll")
pull request: user.vscode("pr.create")
# Use keyboard shortcuts because VSCode relies on when clause contexts to choose the appropriate
# action: https://code.visualstudio.com/api/references/when-clause-contexts
change next: key(alt-f5)
change last: key(shift-alt-f5)

# Testing
test run: user.vscode("testing.runAtCursor")
test run file: user.vscode("testing.runCurrentFile")
test run all: user.vscode("testing.runAll")
test run failed: user.vscode("testing.reRunFailTests")
test run last: user.vscode("testing.reRunLastRun")

test debug: user.vscode("testing.debugAtCursor")
test debug file: user.vscode("testing.debugCurrentFile")
test debug all: user.vscode("testing.debugAll")
test debug failed: user.vscode("testing.debugFailTests")
test debug last: user.vscode("testing.debugLastRun")

test cancel: user.vscode("testing.cancelRun")

# Debugging
break point: user.vscode("editor.debug.action.toggleBreakpoint")
step over: user.vscode("workbench.action.debug.stepOver")
debug step into: user.vscode("workbench.action.debug.stepInto")
debug step out [of]: user.vscode("workbench.action.debug.stepOut")
debug start: user.vscode("workbench.action.debug.start")
debug pause: user.vscode("workbench.action.debug.pause")
debug stopper: user.vscode("workbench.action.debug.stop")
debug continue: user.vscode("workbench.action.debug.continue")
debug restart: user.vscode("workbench.action.debug.restart")
debug console: user.vscode("workbench.debug.action.toggleRepl")
debug clean: user.vscode("workbench.debug.panel.action.clearReplAction")

# Terminal
terminal external: user.vscode("workbench.action.terminal.openNativeConsole")
terminal new: user.vscode("workbench.action.terminal.new")
terminal next: user.vscode("workbench.action.terminal.focusNext")
terminal last: user.vscode("workbench.action.terminal.focusPrevious")
terminal split: user.vscode("workbench.action.terminal.split")
terminal zoom | termy: user.vscode("workbench.action.toggleMaximizedPanel")
terminal trash: user.vscode("workbench.action.terminal.kill")
terminal toggle: user.vscode_and_wait("workbench.action.terminal.toggleTerminal")
term scroll up: user.vscode("workbench.action.terminal.scrollUp")
term scroll down: user.vscode("workbench.action.terminal.scrollDown")
terminal <number_small>: user.vscode_terminal(number_small)

task run [<user.text>]:
    user.vscode("workbench.action.tasks.runTask")
    insert(user.text or "")
#TODO: should this be added to linecommands?
copy line down: user.vscode("editor.action.copyLinesDownAction")
copy line up: user.vscode("editor.action.copyLinesUpAction")

#Expand/Shrink AST Selection
select less: user.vscode("editor.action.smartSelect.shrink")
select (more | this): user.vscode("editor.action.smartSelect.expand")

minimap: user.vscode("editor.action.toggleMinimap")
maximize: user.vscode("workbench.action.minimizeOtherEditors")
restore: user.vscode("workbench.action.evenEditorWidths")

#breadcrumb
select breadcrumb: user.vscode("breadcrumbs.focusAndSelect")
# Use `alt-left` and `alt-right` to navigate the bread crumb

replace here:
    user.replace("")
    key(cmd-alt-l)

hover show: user.vscode("editor.action.showHover")

join lines: user.vscode("editor.action.joinLines")

full screen: user.vscode("workbench.action.toggleFullScreen")

curse undo: user.vscode("cursorUndo")
curse redo: user.vscode("cursorRedo")

select word: user.vscode("editor.action.addSelectionToNextFindMatch")
skip word: user.vscode("editor.action.moveSelectionToNextFindMatch")

# jupyter
cell next: user.vscode("notebook.focusNextEditor")
cell last: user.vscode("notebook.focusPreviousEditor")
cell run above: user.vscode("notebook.cell.executeCellsAbove")
cell run: user.vscode("notebook.cell.execute")

install local: user.vscode("workbench.extensions.action.installVSIX")
preview markdown: user.vscode("markdown.showPreview")
