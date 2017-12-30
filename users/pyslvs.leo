<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20171226103610.1"><vh>@settings</vh>
<v t="leo.20171226103610.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20171226103610.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20171226112331.1"><vh>@button mingw32-make</vh></v>
<v t="leo.20171226171936.1"><vh>Debug</vh>
<v t="leo.20171226172138.1"><vh>check filesystem encoding</vh></v>
</v>
<v t="leo.20171230225441.1" a="E"><vh>github submodule</vh>
<v t="leo.20171230225951.1"><vh>update submodule</vh></v>
<v t="leo.20171230230231.1"><vh>git clone with submodule</vh></v>
</v>
<v t="leo.20171230225718.1" a="E"><vh>@path ./../</vh>
<v t="leo.20171230225731.1"><vh>@edit .gitmodules</vh></v>
</v>
<v t="leo.20171226113126.1" a="E"><vh>@path ./../Pyslvs-PyQt5</vh>
<v t="leo.20171226113135.1"><vh>@edit Makefile</vh></v>
</v>
<v t="leo.20171226103559.1"><vh>importer script</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20171226103559.1">'''Recursively import all ['.cpp'] files in a directory and clean the result.'''

# Latest change: use c.recursiveImport.

c.recursiveImport(
    dir_ = r'./../',
    kind = '@clean',
    safe_at_file = True,
    theTypes = ['.py']
)</t>
<t tx="leo.20171226103610.1"></t>
<t tx="leo.20171226103610.2">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20171226103610.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20171226112331.1">@language python
# 利用執行緒執行 mingw32-make 指令
import os
import threading

def domake():
    os.chdir("./../Pyslvs-PyQt5")
    os.system("mingw32-make clean")
    os.system("mingw32-make")
    g.es("pyslvsk mingw32-make done")

make = threading.Thread(target=domake)
make.start()</t>
<t tx="leo.20171226113126.1"></t>
<t tx="leo.20171226171936.1">fatal python error py_initialize unable to load the file system codec unknown encoding utf-8

check

https://bugs.python.org/issue27054</t>
<t tx="leo.20171226172138.1">import sys
g.es(sys.getfilesystemencoding())</t>
<t tx="leo.20171230225441.1">Create submodule

git submodule add https://github.com/KmolYuan/Pyslvs-PyQt5 Pyslvs-PyQt5

cd Pyslvs-PyQt5

git checkout dev0.9

refresh @edit Makefile

execute mingw32-make button</t>
<t tx="leo.20171230225718.1"></t>
<t tx="leo.20171230225951.1">git submodule update --init --recursive</t>
<t tx="leo.20171230230231.1">git clone --recursive &lt;project url&gt;</t>
</tnodes>
</leo_file>
