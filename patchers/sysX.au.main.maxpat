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
		"rect" : [ 307.0, 215.0, 705.0, 446.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
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
		"style" : "",
		"subpatcher_template" : "",
		"globalpatchername" : "audio",
		"title" : "Konfiguracja audio",
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-48",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 13.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-49",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 146.0, 22.0, 162.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 139.0, 7.0, 148.0, 33.0 ],
					"style" : "",
					"text" : "Wybrać interface audio!\nprzemapować wejścia!",
					"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 200.0, 175.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "stop" ],
									"patching_rect" : [ 52.0, 99.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "t stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 35.0, 63.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 35.0, 144.0, 63.0, 22.0 ],
									"style" : "",
									"text" : "del 36000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 191.5, 128.0, 22.0 ],
									"style" : "",
									"text" : "s tape_B_from_player"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 22.0, 112.0, 22.0 ],
									"style" : "",
									"text" : "r tape_B_to_player"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 292.0, 385.5, 111.0, 22.0 ],
									"style" : "",
									"text" : "send~ tape.out4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 254.0, 355.5, 111.0, 22.0 ],
									"style" : "",
									"text" : "send~ tape.out3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 216.0, 321.5, 111.0, 22.0 ],
									"style" : "",
									"text" : "send~ tape.out2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 178.0, 284.5, 111.0, 22.0 ],
									"style" : "",
									"text" : "send~ tape.out1"
								}

							}
, 							{
								"box" : 								{
									"channelcount" : 4,
									"clipheight" : 168.0,
									"data" : 									{
										"clips" : [ 											{
												"filename" : "/Users/andrzej/Documents/bieżące sprawy/dr/sysX/tapes/sysX-tape2.wav",
												"filekind" : "audiofile",
												"loop" : 0,
												"content_state" : 												{
													"basictuning" : [ 440 ],
													"originallengthms" : [ 0.0 ],
													"pitchshift" : [ 1.0 ],
													"formantcorrection" : [ 0 ],
													"timestretch" : [ 0 ],
													"speed" : [ 1.0 ],
													"originaltempo" : [ 120.0 ],
													"slurtime" : [ 0.0 ],
													"play" : [ 0 ],
													"mode" : [ "basic" ],
													"formant" : [ 1.0 ],
													"followglobaltempo" : [ 0 ],
													"quality" : [ "basic" ],
													"originallength" : [ 0.0, "ticks" ],
													"pitchcorrection" : [ 0 ]
												}

											}
 ]
									}
,
									"id" : "obj-16",
									"maxclass" : "playlist~",
									"numinlets" : 1,
									"numoutlets" : 7,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "", "dictionary" ],
									"patching_rect" : [ 178.0, 70.5, 247.0, 169.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 307.0, 311.0, 247.0, 169.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-16", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-16", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"bgfillcolor" : 									{
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
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato" ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "niebieski",
								"default" : 								{
									"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517703,
										"proportion" : 0.525821,
										"autogradient" : 0
									}

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "zielony",
								"default" : 								{
									"textjustification" : [ 0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontface" : [ 0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517703,
										"proportion" : 0.525821,
										"autogradient" : 0,
										"pt1" : [ 0.490099, 0.478261 ],
										"pt2" : [ 0.475248, 1.052174 ]
									}
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato Regular" ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 924.0, 268.5, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p tape_B_player"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 59.0, 103.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "stop" ],
									"patching_rect" : [ 52.0, 99.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "t stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 35.0, 63.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 35.0, 144.0, 63.0, 22.0 ],
									"style" : "",
									"text" : "del 70000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 191.5, 128.0, 22.0 ],
									"style" : "",
									"text" : "s tape_A_from_player"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 22.0, 112.0, 22.0 ],
									"style" : "",
									"text" : "r tape_A_to_player"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 283.0, 432.0, 111.0, 22.0 ],
									"style" : "",
									"text" : "send~ tape.out4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 251.0, 402.0, 111.0, 22.0 ],
									"style" : "",
									"text" : "send~ tape.out3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 221.0, 369.0, 111.0, 22.0 ],
									"style" : "",
									"text" : "send~ tape.out2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 334.0, 111.0, 22.0 ],
									"style" : "",
									"text" : "send~ tape.out1"
								}

							}
, 							{
								"box" : 								{
									"channelcount" : 4,
									"clipheight" : 168.0,
									"data" : 									{
										"clips" : [ 											{
												"filename" : "/Users/andrzej/Documents/bieżące sprawy/dr/sysX/tapes/sysX-tape1 4ch-mix.wav",
												"filekind" : "audiofile",
												"loop" : 0,
												"content_state" : 												{
													"basictuning" : [ 440 ],
													"originallengthms" : [ 0.0 ],
													"pitchshift" : [ 1.0 ],
													"formantcorrection" : [ 0 ],
													"timestretch" : [ 0 ],
													"speed" : [ 1.0 ],
													"originaltempo" : [ 120.0 ],
													"slurtime" : [ 0.0 ],
													"play" : [ 0 ],
													"mode" : [ "basic" ],
													"formant" : [ 1.0 ],
													"followglobaltempo" : [ 0 ],
													"quality" : [ "basic" ],
													"originallength" : [ 0.0, "ticks" ],
													"pitchcorrection" : [ 0 ]
												}

											}
 ]
									}
,
									"id" : "obj-16",
									"maxclass" : "playlist~",
									"numinlets" : 1,
									"numoutlets" : 7,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "", "dictionary" ],
									"patching_rect" : [ 191.0, 99.0, 247.0, 169.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 307.0, 311.0, 247.0, 169.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-16", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-16", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"bgfillcolor" : 									{
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
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato" ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "niebieski",
								"default" : 								{
									"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517703,
										"proportion" : 0.525821,
										"autogradient" : 0
									}

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "zielony",
								"default" : 								{
									"textjustification" : [ 0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontface" : [ 0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517703,
										"proportion" : 0.525821,
										"autogradient" : 0,
										"pt1" : [ 0.490099, 0.478261 ],
										"pt2" : [ 0.475248, 1.052174 ]
									}
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato Regular" ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 924.0, 226.0, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p tape_A_player"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 904.0, 471.0, 96.0, 22.0 ],
					"style" : "",
					"text" : "ak.del_zero 300"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 904.0, 439.0, 77.0, 22.0 ],
					"style" : "",
					"text" : "route enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 904.0, 408.0, 67.0, 22.0 ],
					"style" : "",
					"text" : "r gamesnd"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.942002, 0.835362, 0.578313, 1.0 ],
					"bgmode" : 2,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-38",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 337.0, 109.0, 472.0, 587.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 397.5, 367.0, 83.0, 22.0 ],
									"style" : "",
									"text" : "loadmess -70"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontsize" : 9.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 427.0, 238.0, 32.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 37.0, 260.0, 32.0, 17.0 ],
									"style" : "",
									"text" : "delay"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontsize" : 9.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 423.0, 317.0, 47.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.0, 294.0, 47.0, 17.0 ],
									"style" : "",
									"text" : "feedback"
								}

							}
, 							{
								"box" : 								{
									"channels" : 4,
									"id" : "obj-10",
									"maxclass" : "live.gain~",
									"numinlets" : 4,
									"numoutlets" : 7,
									"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 143.0, 125.0, 181.0, 141.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 13.0, 59.0, 83.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_linknames" : 1,
											"parameter_longname" : "pingpong_vol[1]",
											"parameter_shortname" : "PINGPONG",
											"parameter_type" : 0,
											"parameter_mmin" : -70.0,
											"parameter_mmax" : 6.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "pingpong_vol[1]"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-9",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 423.0, 288.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.5, 276.0, 50.0, 22.0 ],
									"style" : "",
									"varname" : "feedback"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-8",
									"maxclass" : "flonum",
									"maximum" : 2000.0,
									"minimum" : 50.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 423.0, 257.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.5, 241.0, 50.0, 22.0 ],
									"style" : "",
									"varname" : "delay"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 143.0, 282.5, 181.0, 22.0 ],
									"style" : "",
									"text" : "ak.pingpong4~ 2000 0.3 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 514.0, 72.000031, 108.0, 22.0 ],
									"style" : "",
									"text" : "receive~ sysX.in.4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 385.0, 82.000031, 108.0, 22.0 ],
									"style" : "",
									"text" : "receive~ sysX.in.3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 263.0, 77.000031, 108.0, 22.0 ],
									"style" : "",
									"text" : "receive~ sysX.in.2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 143.0, 77.000031, 108.0, 22.0 ],
									"style" : "",
									"text" : "receive~ sysX.in.1"
								}

							}
, 							{
								"box" : 								{
									"channels" : 4,
									"id" : "obj-7",
									"maxclass" : "live.gain~",
									"numinlets" : 4,
									"numoutlets" : 7,
									"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 143.0, 325.0, 181.0, 141.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 98.0, 71.0, 141.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_linknames" : 1,
											"parameter_longname" : "pingpong_vol",
											"parameter_shortname" : "PINGPONG",
											"parameter_type" : 0,
											"parameter_mmin" : -70.0,
											"parameter_mmax" : 6.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "pingpong_vol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 487.0, 100.0, 22.0 ],
									"style" : "",
									"text" : "sysX.au.out4"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 3 ],
									"source" : [ "obj-10", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 2 ],
									"source" : [ "obj-10", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 3 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 3 ],
									"source" : [ "obj-3", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"source" : [ "obj-3", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 3 ],
									"source" : [ "obj-7", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 2 ],
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 4 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 5 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"bgfillcolor" : 									{
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
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato" ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "zielony",
								"default" : 								{
									"textjustification" : [ 0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontface" : [ 0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517703,
										"proportion" : 0.525821,
										"autogradient" : 0,
										"pt1" : [ 0.490099, 0.478261 ],
										"pt2" : [ 0.475248, 1.052174 ]
									}
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato Regular" ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 139.5, 100.0, 79.0, 307.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 95.5, 109.0, 74.0, 315.0 ],
					"varname" : "pingpong",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-42",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 34.0, 338.0, 435.0, 380.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"channels" : 4,
									"id" : "obj-7",
									"maxclass" : "live.gain~",
									"numinlets" : 4,
									"numoutlets" : 7,
									"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 148.0, 243.0, 181.0, 141.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 4.0, 71.0, 141.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_linknames" : 1,
											"parameter_longname" : "tape_amp",
											"parameter_shortname" : "TAPE",
											"parameter_type" : 0,
											"parameter_mmin" : -70.0,
											"parameter_mmax" : 6.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "tape_amp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 148.0, 405.0, 100.0, 22.0 ],
									"style" : "",
									"text" : "sysX.au.out4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 310.0, 195.0, 110.0, 22.0 ],
									"style" : "",
									"text" : "receive~ tape.out4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 256.0, 171.0, 110.0, 22.0 ],
									"style" : "",
									"text" : "receive~ tape.out3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 202.0, 147.0, 110.0, 22.0 ],
									"style" : "",
									"text" : "receive~ tape.out2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 148.0, 118.0, 110.0, 22.0 ],
									"style" : "",
									"text" : "receive~ tape.out1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 3 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 3 ],
									"source" : [ "obj-7", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 2 ],
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"bgfillcolor" : 									{
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
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato" ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "zielony",
								"default" : 								{
									"textjustification" : [ 0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontface" : [ 0 ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517703,
										"proportion" : 0.525821,
										"autogradient" : 0,
										"pt1" : [ 0.490099, 0.478261 ],
										"pt2" : [ 0.475248, 1.052174 ]
									}
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato Regular" ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 21.0, 278.0, 79.0, 157.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.5, 289.0, 74.0, 151.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 943.5, 132.0, 150.0, 33.0 ],
					"style" : "",
					"text" : "MUTE Sigmund DETECTORS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 917.0, 132.0, 24.0, 24.0 ],
					"style" : "",
					"varname" : "det_mute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 917.0, 165.0, 194.0, 22.0 ],
					"style" : "",
					"text" : "s sysX.au.det_sigmund.mute_anal"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 715.5, 446.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 897.5, 573.0, 60.0, 20.0 ],
					"style" : "",
					"text" : "gamesnd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 743.5, 481.0, 103.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 419.0, 103.0, 20.0 ],
					"style" : "",
					"text" : "gamesnd_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 715.5, 481.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 415.0, 24.0, 24.0 ],
					"style" : "",
					"varname" : "gamesnd_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 715.5, 515.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "=="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 715.5, 573.0, 174.0, 22.0 ],
					"style" : "",
					"text" : "poly~ sysX.au.game_sounds 1",
					"varname" : "gamesnd"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 715.5, 541.0, 64.0, 22.0 ],
					"style" : "",
					"text" : "mute 1 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 462.5, 446.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 151.5, 446.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 644.5, 573.0, 57.0, 20.0 ],
					"style" : "",
					"text" : "gamerec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.5, 481.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 392.0, 100.0, 20.0 ],
					"style" : "",
					"text" : "gamerec_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 462.5, 481.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 389.0, 24.0, 24.0 ],
					"style" : "",
					"varname" : "gamerec_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 462.5, 515.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "=="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 462.5, 573.0, 180.0, 22.0 ],
					"style" : "",
					"text" : "poly~ sysX.au.game_recorder 1",
					"varname" : "gamerec"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 462.5, 541.0, 64.0, 22.0 ],
					"style" : "",
					"text" : "mute 1 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.5, 481.0, 84.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 366.0, 84.0, 20.0 ],
					"style" : "",
					"text" : "drone_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 542.0, 218.0, 20.0 ],
					"style" : "",
					"text" : "-> nr instancji = wysyła stan z thispoly~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 151.5, 481.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 364.0, 24.0, 24.0 ],
					"style" : "",
					"varname" : "drone_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 151.5, 515.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "=="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 151.5, 573.0, 177.0, 22.0 ],
					"style" : "",
					"text" : "poly~ sysX.au.flocking_drone 1",
					"varname" : "drone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 632.0, 5.0, 91.0, 22.0 ],
					"style" : "",
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 557.0, 5.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "recall 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.0, 5.0, 47.0, 22.0 ],
					"style" : "",
					"text" : "store 1"
				}

			}
, 			{
				"box" : 				{
					"active" : 					{
						"det::visualization::enable" : 0,
						"drone.1" : 0,
						"drone.1::flocking_drone" : 0
					}
,
					"autorestore" : "audio_settings.json",
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.0, 38.0, 155.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 1189, 44, 1572, 406 ],
						"parameter_enable" : 0,
						"storage_rect" : [ 583, 69, 1151, 469 ]
					}
,
					"style" : "",
					"text" : "pattrstorage audio_settings",
					"varname" : "audio_settings"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 268.0, 13.0, 109.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 34.5, 36.0, 109.0, 20.0 ],
					"style" : "",
					"text" : "enable audio input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 242.0, 11.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.5, 34.0, 24.0, 24.0 ],
					"style" : "",
					"varname" : "input_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 970.5, 59.5, 96.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ 779.0, 221.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 231.0, 282.0, 72.0, 22.0 ],
									"style" : "",
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 398.0, 80.0, 22.0 ],
									"style" : "",
									"text" : "sysX.au.out4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 120.5, 41.0, 22.0 ],
									"style" : "",
									"text" : "$1 $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 15.0, 269.0, 73.0, 22.0 ],
									"style" : "",
									"text" : "sysX.au.in4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 69.0, 150.0, 20.0 ],
									"style" : "",
									"text" : "matrixctrl"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 391.0, 53.0, 26.0, 20.0 ],
									"style" : "",
									"text" : "vol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 391.0, 149.0, 30.0, 22.0 ],
									"style" : "",
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 77.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 264.0, 206.0, 39.0, 22.0 ],
									"style" : "",
									"text" : "* 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 209.0, 206.0, 39.0, 22.0 ],
									"style" : "",
									"text" : "* 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 154.0, 206.0, 39.0, 22.0 ],
									"style" : "",
									"text" : "* 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 99.0, 206.0, 39.0, 22.0 ],
									"style" : "",
									"text" : "* 128"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 99.0, 149.0, 239.0, 22.0 ],
									"style" : "",
									"text" : "route 0 1 2 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "gain~",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 123.0, 322.0, 22.0, 43.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "gain~",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 85.0, 322.0, 22.0, 43.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "gain~",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 48.0, 322.0, 22.0, 43.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "gain~",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 15.0, 322.0, 22.0, 43.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 99.0, 62.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 3,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 1 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 1 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-27", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-27", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"order" : 3,
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"order" : 3,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"order" : 2,
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"order" : 2,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"order" : 1,
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"order" : 0,
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-9", 3 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"bgfillcolor" : 									{
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
,
									"fontsize" : [ 14.0 ],
									"fontname" : [ "Lato" ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 916.5, 92.5, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p mic->spkr"
				}

			}
, 			{
				"box" : 				{
					"columns" : 4,
					"id" : "obj-24",
					"maxclass" : "matrixctrl",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "list" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 916.5, 20.5, 113.0, 35.0 ],
					"rows" : 1,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 399.0, 69.0, 109.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 325.0, 2.0, 109.0, 27.0 ],
					"style" : "",
					"text" : "DETECTOR"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 649.0, 69.0, 85.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 46.0, 7.0, 62.0, 27.0 ],
					"style" : "",
					"text" : "INPUT"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 45.0, 85.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 34.5, 76.0, 85.0, 27.0 ],
					"style" : "",
					"text" : "OUTPUT"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 11.0, 105.0, 22.0 ],
					"style" : "",
					"text" : "pattrmarker audio"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "sysX.au.det_setup.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -6.0, -3.0 ],
					"patching_rect" : [ 360.0, 100.0, 503.0, 313.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 176.0, 42.0, 508.0, 310.0 ],
					"varname" : "det",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 133.0, 11.0, 102.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 52.0, 102.0, 22.0 ],
					"style" : "",
					"text" : "sysX.au.in_setup",
					"varname" : "in"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "sysX.au.out_setup.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 21.0, 94.0, 79.0, 171.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.5, 105.0, 79.0, 171.0 ],
					"varname" : "out",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 151.5, 541.0, 64.0, 22.0 ],
					"style" : "",
					"text" : "mute 1 $1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "ak.bigger",
				"default" : 				{
					"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
					"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
					"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
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
,
					"fontsize" : [ 14.0 ],
					"fontname" : [ "Lato" ],
					"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
