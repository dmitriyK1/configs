https://gist.githubusercontent.com/k2052/4089827/raw/31673d54850142806a0c309dd3a8aafb36aae888/emacsCoreCommands.md
> Emacs Commands

## Text

- C-f: move cursor forward one char
- C-b: mover cursor back one chart
- C-n: mover cursor to next line
- C-p: go to previous line
- M-f: forward one word
- M-b: move backward one word
- C-a: move to beginning of line
- C-e: move to end of line
- M-a: move to beginning of sentence
- M-e: move to end of sentence
- C-v: down one page
- M-v: up one page
- C-l: center on current line
- M-<: Move cursor to beginning of file
- M->: Move cursor to end of file

## Editing

- C-d: delete char
- M-d: delete word forward
- M-del: delete word backwards
- C-k: delete line
- M-u: make uppercase
- M-c: make first letter uppercase
- M-l: make lowercase

### Marks

- C-Space: Set mark start
- C-W: delete marked region
- M-W: copy marked region
- C-y: paste
- M-y: yank/paste earlier text
- C-x C-x: swap cursor and mark

## On Buffers

- M | An asterisk means it has been modified since last sav
- R | A % sign if read only
- Buffer | Name of buffer
- Size | Size of buffed
- Mode | Mode of buffer
- File | Name of file for buffer

## Files

- C-x C-f: find file
- C-x C-s: save file
- C-x s: save any unsaved files
- C-x C-w: Save As
- C-x C-v: find alternate file
- C-x i: insert file at cursor position

## Buffers

- C-x C-b: List Buffers
- C-x b <name>: Switch to buffer with name
- C-x k: close current buffer

## Windows

- C-x 0: Close current window
- C-x 1: Close all windows except current
- C-x 2: split window vertically
- C-x 3: split window horizontall
- C-x o: switch to other windowƒ
- C-x ^: enlarge window
- M-x shrink-window: shrink window
- M C-v: scroll other window
- C-x 4 f: find file in other window
- C-x 4 o: change to other winow
- C-x 4 0: kill buffer and window

## Buffers and Windows

- buffer-move: Move window
- buf-move-right: swap buffer with one right
- buf-move-left: swap buffer with one left

## Frames

- C-x 5 2: Create a new frame
- C-x 5 0: Delete current frame
- C-x 5 o: change to other frame
- C-x 5 1: Delete all but current frame

## Bookmarks

- C-x r m: set bookmark at cursor
- C-x r b: jump to bookmark
- M-x bookmark-rename:
- M-x bookmark-delete:
- M-x bookmark-save:
- M-x bookmark-write:
- M-x bookmark-load:
- C-x r 1: list bookmarks
  - d mark bookmark for deletion
  - r rename bookmark
  - s save all listed bookmarks
  - f show bookmark the cursor is over
  - m mark bookmarks to be shown in multiple window
  - v show marked bookmarks (or the one the cursor is over)
  - t toggle listing of the corresponding paths
  - w " path to this file
  - x delete marked bookmarks
  - Del ?
  - q quit bookmark list

## Shell

- M-x shell: starts shell modus
- C-c C-c: same as C-c in terminal (stop running job)
- C-d: delete char forward
- C-c C-d: Send EOF
- C-c C-z: same as C-z in terminal
- M-p: show previous commands

## Misc

- C-g: quit running command
- M-n: repeat command n times
- C-u: repeat the following command 4 times
- C-u n: repeat n times
- C-x u: undo
- M-x revert-buffer: revert to last save
- M-x recover-file: revert to autosavefile
- M-x recover-sessions: revert to autosave for all files

## Emacs

- C-z: suspend emacs
- C-x C-c: exit emacs

## Help

- C-h c: which command does <keystroke> invoke
- C-h k: which command does <keystroke> invoke and what does it do
- C-h l: last 100 typed keys
- C-h w: what key-combo does <command> have?
- C-h f: what does <function> do?
- C-h v: what is <var> and what is its value?
- C-h b: show key commands for buffer
- C-h t: start the emacs tutorial
- C-h i: start the info reader
- C-h C-k: start up info reader and go to a certain key-combo poin
- C-h F: show emacs FAQ

## Search/Replace

- C-s: search forward
- C-r: search backward
- C-g: return to where search started (if you are still in search mode)
- M-%: query replace
  - Space or y replace this occurence
  - Del or n don't replace
  - . only replace this and exit (replace)
  - , replace and pause (resume with Space or y)
  - ! replace all following occurences
  - ^ back to previous match
  - RETURN or q quit replace

https://gist.githubusercontent.com/k2052/4089827/raw/31673d54850142806a0c309dd3a8aafb36aae888/emacsPluginCommands.md
> Emacs commands for various plugins

## Textmate Mode

- ⌘T: Go to File
- ⇧⌘T: Go to Symbol
- ⌘L: Go to Line
- ⇧⌘L: Select Line (or expand Selection to select lines)
- ⌘/: Comment Line (or Selection/Region)
- ⌘]: Shift Right (currently indents region)
- ⌘[: Shift Left  (not yet implemented)
- ⌥⌘]: Align Assignments
- ⌥⌘[: Indent Line
- ⌥↑: Column Up
- ⌥↓: Column Down
- ⌘RET:  Insert Newline at Line's End
- ⌥⌘T:  Reset File Cache (for Go to File)

## DDIRectory EDitor (dired)

- C-x d: launch dired
- C(large C not CRTL): copy
- d: mark for erase
- D: delete 
- f: open
- g: reread directory structure
- G: change permissions for group (chgrp)
- k: remove listing from screen but don't actually delete
- m: mark with *
- n: move to next line
- o: open file in new window and make window active
- C-o: open file in new window but don't go there
- P: print
- q: quite dired
- Q: find-replace in marked files
- R: rename file
- u: remove mark
- v: view contents (probably different from open views inline I bet)
- x: delete files marked with D
- z: compress file
- M-Del: remove all marks
- ~: mark backup files for deletion
- #: mark auto-save files for deletion
- */: mark directory with * (C-u * removes that mark again)
- =: compare this file with marked file
- M-=: compare this file with it's backup file
- !: apply shell command to file
- % d: mark files described through regular expression for deletion
- % m: " (with *)
- +: create directory
- >: changed to next dir
- <: change to previous dir
- s: toggle between sorting by name or date

## Speedbar

- M-x speedbar: launch speedbar

## Text Mode

- M-s: center line
- M-s: center paragraph
- M-x center-region:

## Programming modes

- M C-\: indent region between cursor and mark
- M-m: move to first non-space
- M-^: attach line to previous
- M-a: beginning of statement
- M-e: end of statement
- M C-a: beginning of function
- M C-e: end of function
- M-x outline-minor-mode: collaspe
- M-x show-subtree: uncollaspe
- M-.: got to method/function definition

## Version Control

- C-x v d: show all registered files in this dir
- C-x v =: show diff between versions
- C-x v u: remove all changes since last checkin
- C-x v ~: show certain version in different window
- C-x v l: print log
- C-x v i: mark file for version control add
- C-x v h: insert version control header into file
- C-x v r: check out named snapshot
- C-x v s: create named snapshot

## Aquamacs

- ⌘N   new-frame-with-new-scratch       Open a new empty window/frame
- ⌘O   mac-find-file-other-frame        Open a new window/frame with a file
- ⇧⌘S mac-key-save-file-as             Save as (using file panel)
- ⇧⌘O mac-key-open-file-other-frame    Find file in another frame (using file panel)
- ⌘A   mark-whole-buffer                Select all text
- ⌘V   cua-paste(yank)                  Paste text
- ⌘C   clipboard-kill-ring-save         Copy text
- ⌘X   clipboard-kill-region            Cut text
- ⌘S   mac-key-save-file                Save file
- ⌘L   goto-line                        Go to specified line
- ⌘F   isearch-forward                  Search
- ⌘G   isearch-repeat-forward           Repeat search
- ⌘W   close-window                     Close window
- ⌘M   iconify-or-deiconify-frame       Minimize window to the Dock
- ⌘Q   aquamacs-save-buffers-kill-emacs Save file, exit program
- ⌘Z   undo                             Undo
- ⇧⌘Z redo                             Redo
- ⌘    spellcheck-now                   Interactive spell-checking
- ^     toggle-pass-option-to-system     Toggle: allow input of special characters with Option key / use Option key as Emacs Meta key

To access tabs quickly, the key commands Command-0,1,2 through 9 may be used; A-1 (normally: Command-1) will select the first, leftmost tab in the window.1
C-x v a: create changelog file in gnu-style
