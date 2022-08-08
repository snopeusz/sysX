{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 175.0, 145.0, 468.0, 536.0 ],
		"bgcolor" : [ 0.794242, 0.927147, 0.936164, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 14.0,
		"default_fontface" : 0,
		"default_fontname" : "Lato",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "ak.bigger",
		"subpatcher_template" : "Default Max 7",
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 6.271897,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 202.0, 471.0, 25.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.356415, 0.0, 25.5, 14.0 ],
					"style" : "",
					"text" : "YIN~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 393.253723, 7.0, 38.435791, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 270.5, 175.356415, 8.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 246.0, 160.0, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.356415, 278.5, 150.0, 23.0 ],
					"style" : "",
					"text" : "mute detectors"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 225.314331, 168.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.356415, 280.5, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.314331, 133.0, 213.0, 25.0 ],
					"style" : "",
					"text" : "r sysX.au.det_sigmund.mute_anal"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 176.981003, 12.0, 68.0, 25.0 ],
					"restore" : 					{
						"1-hi" : [ 66.0 ],
						"1-lo" : [ 64.0 ],
						"2-hi" : [ 59.0 ],
						"2-lo" : [ 57.0 ],
						"3-hi" : [ 77.0 ],
						"3-lo" : [ 72.0 ],
						"4-hi" : [ 69.0 ],
						"4-lo" : [ 63.700001 ],
						"min_lo_time" : [ 40.0 ]
					}
,
					"style" : "",
					"text" : "autopattr",
					"varname" : "u103005381"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 377.815857, 90.0, 157.0, 25.0 ],
					"style" : "",
					"text" : "s #0-sendpitchstream"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 406.030334, 58.0, 119.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.356415, 239.0, 150.0, 23.0 ],
					"style" : "",
					"text" : "send pitch stream"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 377.815857, 58.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.356415, 239.0, 24.0, 24.0 ],
					"style" : "",
					"varname" : "pch_stream"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.793396, 378.0, 261.0, 25.0 ],
					"style" : "",
					"text" : "poly~ sysX.au.det_yin_1instr args #0 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.935791, 383.0, 261.0, 25.0 ],
					"style" : "",
					"text" : "poly~ sysX.au.det_yin_1instr args #0 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.793396, 257.0, 261.0, 25.0 ],
					"style" : "",
					"text" : "poly~ sysX.au.det_yin_1instr args #0 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.935791, 257.0, 261.0, 25.0 ],
					"style" : "",
					"text" : "poly~ sysX.au.det_yin_1instr args #0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 193.314331, 89.0, 149.0, 25.0 ],
					"style" : "",
					"text" : "s #0-sendenvstream"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.935791, 121.0, 117.0, 25.0 ],
					"style" : "",
					"text" : "s #0-minlotime"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.435791, 91.0, 79.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.856415, 16.0, 77.0, 23.0 ],
					"style" : "",
					"text" : "min lo time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 81.871582, 155.0, 28.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 122.217026, 40.0, 23.0, 23.0 ],
					"style" : "",
					"text" : "hi\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.935791, 155.0, 28.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, 40.0, 22.0, 23.0 ],
					"style" : "",
					"text" : "lo"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.935791, 91.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.856415, 16.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "min_lo_time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 221.528809, 57.0, 110.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.356415, 215.0, 150.0, 23.0 ],
					"style" : "",
					"text" : "send env stream"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 193.314331, 57.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.356415, 213.0, 24.0, 24.0 ],
					"style" : "",
					"varname" : "env_stream"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 20,
					"id" : "obj-1",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 18.935791, 49.0, 104.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.856415, 178.0, 150.0, 29.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-16", "flonum", "float", 45.0, 5, "obj-24", "flonum", "float", 61.0, 5, "obj-44", "flonum", "float", 45.0, 5, "obj-43", "flonum", "float", 58.0, 5, "obj-79", "flonum", "float", 53.0, 5, "obj-78", "flonum", "float", 69.0, 5, "obj-62", "flonum", "float", 48.0, 5, "obj-61", "flonum", "float", 62.0, 5, "obj-7", "flonum", "float", 40.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-78", "flonum", "float", 66.300003, 5, "obj-79", "flonum", "float", 53.0, 5, "obj-61", "flonum", "float", 62.0, 5, "obj-62", "flonum", "float", 54.0, 5, "obj-24", "flonum", "float", 61.0, 5, "obj-16", "flonum", "float", 51.0, 5, "obj-43", "flonum", "float", 58.0, 5, "obj-44", "flonum", "float", 49.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-78", "flonum", "float", 66.300003, 5, "obj-79", "flonum", "float", 53.0, 5, "obj-61", "flonum", "float", 62.0, 5, "obj-62", "flonum", "float", 54.0, 5, "obj-24", "flonum", "float", 61.0, 5, "obj-16", "flonum", "float", 51.0, 5, "obj-43", "flonum", "float", 58.0, 5, "obj-44", "flonum", "float", 49.0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-16", "flonum", "float", 57.0, 5, "obj-24", "flonum", "float", 59.0, 5, "obj-44", "flonum", "float", 64.0, 5, "obj-43", "flonum", "float", 66.0, 5, "obj-79", "flonum", "float", 63.700001, 5, "obj-78", "flonum", "float", 69.0, 5, "obj-62", "flonum", "float", 72.0, 5, "obj-61", "flonum", "float", 77.0, 5, "obj-7", "flonum", "float", 40.0 ]
						}
 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-96",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 473.964233, 338.0, 37.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.856415, 150.0, 27.0, 23.0 ],
					"style" : "",
					"text" : "vc"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-95",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 118.94574, 349.0, 37.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.856415, 121.0, 27.0, 23.0 ],
					"style" : "",
					"text" : "vn"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-94",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 468.904907, 222.0, 37.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.856415, 92.0, 27.0, 23.0 ],
					"style" : "",
					"text" : "cl"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-93",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.935791, 213.0, 37.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.856415, 62.0, 27.0, 23.0 ],
					"style" : "",
					"text" : "fl"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.935791, 349.0, 81.935791, 25.0 ],
					"style" : "",
					"text" : "pak f f"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"format" : 6,
					"id" : "obj-61",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 81.871582, 314.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.458191, 120.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "3-hi"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"format" : 6,
					"id" : "obj-62",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.935791, 314.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 120.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "3-lo"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 369.793396, 338.0, 96.458252, 25.0 ],
					"style" : "",
					"text" : "pak f f"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"format" : 6,
					"id" : "obj-78",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.251648, 304.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.458252, 150.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "4-hi"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"format" : 6,
					"id" : "obj-79",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 369.793396, 304.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 150.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "4-lo"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.935791, 213.0, 77.0, 25.0 ],
					"style" : "",
					"text" : "pak f f"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"format" : 6,
					"id" : "obj-43",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 76.935791, 180.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.717026, 62.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "1-hi"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"format" : 6,
					"id" : "obj-44",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.935791, 180.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 62.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "1-lo"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 369.793396, 222.0, 85.356445, 25.0 ],
					"style" : "",
					"text" : "pak f f"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"format" : 6,
					"id" : "obj-24",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 436.149841, 186.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.458191, 92.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "2-hi"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"format" : 6,
					"id" : "obj-16",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 369.793396, 186.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 92.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "2-lo"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-107",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.935791, 12.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.314331, 202.0, 74.0, 25.0 ],
					"style" : "",
					"text" : "mute 0 $1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 3,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 2,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "sysX.au.det_yin_1instr.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.onemess.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/ak/patchers/messages juggling",
				"patcherrelativepath" : "../../../../../Max 7/Packages/ak/patchers/messages juggling",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.tst.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/ak/patchers/timed",
				"patcherrelativepath" : "../../../../../Max 7/Packages/ak/patchers/timed",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "yin~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "ak.bigger",
				"default" : 				{
					"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
					"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
					"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
					"fontsize" : [ 14.0 ],
					"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
					"fontname" : [ "Lato" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
						"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
						"angle" : 277.842322,
						"proportion" : 0.484956,
						"autogradient" : 0,
						"pt1" : [ 0.485149, 0.026087 ],
						"pt2" : [ 0.559406, 0.565217 ]
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
		"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
		"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
		"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
		"bgfillcolor_color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_angle" : 277.842322,
		"bgfillcolor_proportion" : 0.484956
	}

}
