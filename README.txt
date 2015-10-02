"Strange new realms await..."

This is the mod pack I use when I can't sleep. A lot of it is a matter of 
worldgen, as I love exploring strange new worlds; I also like doing stuff
with what I find, so there's no lack of crafting in here too. 

This is mainly a submodule collection that keeps up with the repros of others,
along with my own coding in the 'get_along" directory that allows certain mods
to do interesting things together.

What's changed?
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯ 
* Being that this was originally based on what is now considered an old 
  version of minetest_game, it retains the light-colored theme, because I 
  don't like feeling like I live in a cave when I open a formspec.
* The Plantlife Modpack along with More Trees together add a huge amount 
  of variation to your landscape (as a result, they will add mapgen lag). 
  Active spawning of Horsetail ferns is disabled by default, and I've 
  added papyrus growth on dirt/grass with leaves (using a copy of the 
  default growth ABM)
* The standard inventory that comes with minetest_game has been overridden 
  in favor of RealBadAngel's Unified Inventory mod. This mod gives you a 
  much more powerful inventory, with crafting guide, bags, and more, and 
  it also means that if you're playing this game in creative mode, your 
  stacks are NOT infinite (and they shouldn't be).
* The default bones and TNT mods have been removed, with extreme 
  prejudice. They're not exactly useful for building stuff with.
* Stu's split-limb player model replaces the default one.
* The default hotbar HUD holds 16 items instead of 8, taken from the top 
  two rows of your inventory. The first 10 slots can be accessed by number 
  keys 1-9 and 0, the rest via your mouse wheel. You can use /hotbar ## to 
  change the number of slots from 1 to 23.
* The default lavacooling code has been supplanted by better, safer code 
  from my Gloopblocks mod. That mod also provides stone/cobble --> mossy 
  stone/cobble transformation in the presence of water.
* Paramat's Snowdrift mod is included to give the world some weather! Rain 
  and snow will fall, and snow will accumulate on suitable surfaces. The 
  snow and rain paramaters have been tweaked a bit to my taste. Rain has 
  been made to fall faster, and a new raindrop image has been added that 
  looks better imho. :-)
* An extensive selection of administration tools for single-player and 
  server use are included, such as areas, maptools, worldedit, xban, and 
  more.
* A few textures here and there are different.
* The mapgen won't spawn apples on default trees, only on the apple trees 
  supplied by the moretrees mod.
* A whole boatload of other mods have been added, which is where most of 
  the content actually comes from.

License of source code
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯ 
Copyright (C) 2010-2012 celeron55, Perttu Ahola <celeron55@gmail.com>
See README.txt in each mod directory for information about other authors.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

License of media (textures and sounds)
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯ 
Copyright (C) 2010-2012 celeron55, Perttu Ahola <celeron55@gmail.com>
See README.txt in each mod directory for information about other authors.

Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
http://creativecommons.org/licenses/by-sa/3.0/

License of menu/header.png
Copyright (C) 2013 BlockMen CC BY-3.0

Other license info
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
This is Dreambuilder, any differences between it and minetest_game and between
it and the various orginal mods that it started with are by Vanessa Ezekowitz
and are WTFPL.  I claim no authoriship of anyone else's code in this project,
only over my own changes.

License of mods/default/textures/default_desert_cobble.png
Copyright (C) 2014 brunob.santos CC-BY-SA 4.0
