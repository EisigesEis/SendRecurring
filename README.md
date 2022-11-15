# SendRecurring

This inefficient AutoHotkey Script will send a recurring digit or numerical sequence a select amount of times.<br>
**Editing your input or switching tabs may invalidate the sequence requiring you to re-type.**

### Installation
1. Install [AutoHotkey](https://www.autohotkey.com/) - *"Current Version" recommended.*
2. Put [Hotstrings.ahk](https://github.com/menixator/hotstring) into your script folder or the library folder within your AHK installation:<br>
`C:\Program Files\AutoHotkey\Lib`

### Usage
- Run `SendRecurringNum.ahk`
- Type:<br>
digit '<' ReapeatAmount '<'<br>
or:<br>'<' NumericalSequence '<' ReapeatAmount '<'

#### Examples
| Input | Output |
| --- | --- |
| 0<4<  | 0000 |
| <0121<3< | 012101210121 |

### Configuration
- You can customize the seperation and finish character `<` in line 2 and 3.
- At your own risk: You can increase the max iteration limit in line 6.
