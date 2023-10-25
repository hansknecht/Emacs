# Build in Emacs
## Movement
**C-f** - forward one character
**M-f** - forward one word
**M-e** - forward one sentence
**M-}** - forward on paragraph
**C-b** - backward one character
**M-b** - backward one word
**M-a** - backward one sentence
**M-{** - backward on paragraph
**C-p** - previous line
**C-n** - next line
**C-a** move to the beginning of the line
**C-e** move to the end of the line

**M-<** goto the beginning of the file
**M->** goto the end of the file
**C-v** - scroll forward one screen (leaving a couple lines)
**M-v** - scroll backward one screen (leaving a couple lines)
**C-l** - move position to the center of the screen
**M-x goto-line** goto a line
**M-x goto-char** goto a character
**M-_n_** - repeat the next command _n_ times

## Marking, Region and Kill Ring
**C-k** - Kill line from the current point
**C-Shift-backspace** - kill the whole line
**C-space** - mark the current position
**C-w** - kill region (cut)
**M-w** - place region on kill ring (copy)
**C-y** - yank current ring (paste)
- [ ] How does the kill ring work?
**C-x r s R** - place region into register **R**
**C-x r i R** - yank text from register **R**
## Editing Text
**C-\_** - undo last edit
**C-x u** - undo last edit
**C-d** - delete a character
**M-d** - delete the next word (kill word)
**M-Del** - delete the previous word
**M-k** - kill sentence
**C-x Del** - kill previous sentence
**C-k** - Kill line 
**C-space** or **C-@**- set selection
**C-x C-x** swap your position on the selection
**C-w** - kill selection
**M-w** - copy selection
**M-h** - mark a paragraph
**C-x h** - marks the entire buffer
**C-x r s R** - copy region into register *R* (copy-to-register)
**C-x r i R**- insert text from register *R* (insert-register)

**C-y** yank (paste the whole kill ring)
_to add to the kill ring you perform a kill action. Once a non-kill action is performed the kill ring is flushed_
**M-y** - delete the text you just yanked and past the second to last entry. Repeating the command pastes the third and then fourth entry.

**C-t** - transposes characters
**M-t** - transpose two words
**C-x C-t** - transposes two line (place cursor on second line to start)

*Add to .emacs to set this behavior as automatic*
(delete-selection-mode 1)
## Search
**M-x rgrep** - search - enter seach string - enter path
## Tabs
Tabs line up with the text in the previous line
**C-q Tab** - insert a fixed tab
**M-x edit-tab-stops** brings up the tab editor. Set the row with **:** where you want a tab stop. **C-c C-c** to set the tab stops
**(setq-default tab-width 4)** add to .emacs file to update the size of the tabs
**C-x .** set-fill-prefix. On the first line move to the start of the code. The text to the left will be used for the fill in future lines. Move to the left edge and use **C-x .** to cancel the fill prefix

## Outline Mode
**M-x outline-mode** - enter outline mode
**C-c C-n** - moves to the next heading or sub heading
**C-c C-p** - move to the previous one. 
**C-c C-f** - moves to the next heading of the same level
**C-c C-b** - moves to the previous heading of the same level
**C-c C-u** - move up a level in the outline
**C-c C-t** - hide-body - hide all of the body. 
**C-c C-a** - show-all - unhide the body
**C-c @** - mark the section of an outline
**C-c C-^** - Move a section up the outline
**C-c C-v** - moves a section down the outline

**M-x outline-minor-mode** - in this mode you need to use **C-c @** to prefix an action

## Rectangle Editing
Need to clean up setup by using **M-x untabity** to replace tabs with spaces.

Mark the start and end of the region (the shading will show the full highlight)
**C-x r k** - kill-rectangle - to place the rectangle onto the kill-ring
**C-x r y** - yank-rectangle - to place the text back down.
**C-x r o** - open-rectangle - insert a blank rectangle where the region starts
**M-x clear-rectangle** - removes the contents of the region without deleting the space. 

## Picture Mode
**M-x edit-picture** - enter picture mode
**C-c C-c** -exits picture mode
Set Direction
``` text
          C-c ^
     C-c `     C-c '
C-c <               C-c >
     C-c /     C-c \
          C-c .
```
**C-c C-f** - moves in the default direction
**C-c C-b** - moves backward in the default direction
**Enter** - moves to the next line and does not insert a newline
**C-o** - inserts a new line

**M-x artist-mode** - enter artistic mode

## Files
**C-x C-f** - File Open
**C-x C-s** - Save file

## Dired Commands
**C-x d** - Open Dired
**g** - update the entire contents
**l** - update the specific file
**s** - toggle between alphabetical and date/time order
**Space**, **C-n**, **n** - move to the next entry
**Del**, **C-p**, **p** - move to the previous file
**v** - view file in read only **C-c** or **q** to return to the directory listing
	**s** - in view will start an incremental search
	**Enter** - moves down a line
**C-x b** followed by the directory name will open it up in dired
**d** - flag the file for delete
**u** - unmarks the file if it is flagged and moves to the next line
**x** - commit the actions on the marked files
**#** - flags all auto-save files for deletion
**~** - flags all temporary files for deletion
**^** - move up a directory level
**D** - directly delete a file
**C** - copy a file. Emacs will ask for the new file name
**R** - Rename/Move a file
**+** - create a directory
## Windows / Buffers
**C-x o** - Switch between 
**C-x k** - Kill a buffer
**C-x C-w** - Save to a file (work like save as when it's an open file)
**C-x 2** - Split the window vertically (make two horizontal windows)
**C-x 3** - Split the window horizontally (make two vertical windows)
**C-x o** - Move between open windows
**C-x 4 f** - Run the C-f command, or other command, in another window. will open a new window if only one window is open. 
**C-x 0** - Close the current window
**C-x 1** - Close all other windows
### Change window size
**C-x ^** - Enlarge the window vertically
**M-x shrink-window** - Shrink the window vertically
**C-x {** - Shrink the window horizontally
**C-x }** - Enlarge the window horizontally
**C-u** - before the previous command to use four steps rather than one per action
### Buffer List
**C-x b** - Buffer list (or enter a name to go directly to that buffer)
	**n** - move to next buffer
	**p** - move to previous buffer
	**k** | **d** - mark buffer for deletion
	**s** - save buffer
	**u** - unmark buffer
	**x** - execute marked items
	**~** - marke buffer as unmodified
	**%** - toggle read-only status of buffer
	**1** - display buffer in full screen
	**2** - display buffer and next one in horizontal windows
	**f** - replace the buffer list with this buffer
	**0** - replace other window with this buffer
	**m** - mark buffer to be displayed in windows
	**v** - view buffers marked for display (use as many windows as needed)
	**q** - quit the buffer list

*Frames are full GUIs while windows are the areas showing a buffer*
## Version Control

## Shell Commands

**M-x shell** - Open a shell into the buffer
**C-c M-o** - clears the shell buffer. (leaving the prompt line)
M-x erase-buffer - clears the whole buffer. 
**M-p** - repeat the last command
# Magit

## Basic command
**C-x g**  - **M-x magit-status** - status _When inside a magit buffer you only need to type_ g _to refresh the buffer_
### Inside magit buffer
**g** - refresh the status
**P** - backward
**n** - forward
**tab** - close/open section
**s** - stage - magit-stage
**S** - stage all changed files - magit-stage-modified
**u** - unstage - unstage magit-unstage
**U** - remove all unstage - magit-unstage-
**x** - magit-reset-quickly
**X h** - magit-reset-hard



# Markdown Mode
[Markdown Mode for Emacs (jblevins.org)](https://jblevins.org/projects/markdown-mode/)

## Document formatting
**M-** - indent-for-comment - 
**M-x html-mode** - enter html mode
**C-c C-t** - sgml-tag - enter a tag with a built in helper; html for a sample document, table for a sample table.
**C-c C-f** - move forward a tag
**C-c C-b** - move to the previous tag
**C-c C-h** - insert href tag
**C-c Tab** - hide tags
**C-c C-v** - url-of-buffer - view in a browser
**C-c C-n &** - Will replace the character '&' with the encoding
**C-c 8** - enter ISO accents mode

# Compilation
When inside the \*compilation\* buffer
**C-`** - next-error - Move to the next erro message and visit the corresponding source code
**M-n** - compilation-next-error - Move to the next error message
**M-p** - compilation-previous-error - Moe to the previous error message
**C-c C-c** - compilation-goto-error - Visit the source code for the current error message
**Space** - scroll-down - Scroll down one screen
**Del** - scroll-up - Scroll up one screen
