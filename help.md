- Basic movement: hjkl
- h - up level/close; j - next; k - previous; l - down level/open
- e - expand (more)
- Q - exit
- Current status
	- ~~Expect it blow up any time~~
	- Looks like it's working
- Browsing mode keys
	- h, j, k, l - level-aware movement
	- h, j - scrolling current entry when in partial view mode
	- n, m - visual movement
	- JK - move current entry down/up
	- HL - de/indent current entry
	- In other words hjkl is normal movement, HJKL is 'dragging' movement
	- e, c - expand (more/all), collapse all
	- d - toggle entry done (cross-out)
	- D - delete current entry
	- File operations
		- r - reload current file
		- s - save current file
		- o - open another file
		- S - save current list as
	- Additional functions
		- F1 - show absolute path to current file
		- F2 - show version and legal information
	- <enter> - edit current entry, switches to edit mode
	- i - insert new entry, switches to edit mode
- Editing mode keys
	- <home>, <end> - move the cursor to beginning, end
	- <cursor keys> - line-aware movement
	- <enter> - finish editing
- Configuration
	- Most stuff can be configured by editing user.h
		- You can adjust bullet glyphs there
		- And also translate most of the UI
	- You can modify colors in colors.c
	- Changing key bindings is somewhat more involved, but feel free to extract the currently hard-coded ones into a separate header file (e.g. keys.h)
- File format information
	- Markdown compatible (uses '~~' for crossed-out items, so technically the format is GFM - GitHub Flavoured Markdown)
	- It is very important to use tabs for indentation
	- The file should be encoded according to the current locale
- Bugs/Features
	- You'll need to write file paths by hand, like on the C64
	- When opening a file the file access error also includes non-existent file, so first check if the path is ok
	- Resizing will work only when in browsing mode, and may still be rather wonky
	- While you should be able to browse wide-character lists (e.g. Japanese), editing won't work, probably
	- No word-wrapping
	- No spell-checking
	- Expand function works funny. It's 'expand more' with a fresh file, and then turns into 'expand all'
- Unicode test... (bonus)
	- Jak się masz? Świetnie!
	- Как дела? Отлично!
	- ¿Cómo estás? ¡Genial!
	- Comment ça va? Super!
