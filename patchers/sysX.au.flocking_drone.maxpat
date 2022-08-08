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
		"rect" : [ 200.0, 81.0, 956.0, 580.0 ],
		"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
		"editing_bgcolor" : [ 0.046123, 0.046121, 0.046122, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 14.0,
		"default_fontface" : 0,
		"default_fontname" : "Lato Regular",
		"gridonopen" : 2,
		"gridsize" : [ 20.0, 20.0 ],
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
		"style" : "zielony",
		"subpatcher_template" : "Green on Black",
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 810.166626, 507.0, 86.0, 23.0 ],
					"style" : "",
					"text" : "drone_rate"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.0, 599.0, 86.0, 23.0 ],
					"style" : "",
					"text" : "rotation_rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 1405.0, 150.0, 40.0 ],
					"style" : "",
					"text" : "varname: out_mix\nramp time: 100ms"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1055.0, 502.0, 66.0, 25.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1055.0, 546.0, 118.0, 25.0 ],
					"style" : "",
					"text" : "magsmooth 4096"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 931.0, 183.876297, 45.0, 25.0 ],
					"style" : "",
					"text" : "% 12."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 386.0, 1531.0, 51.0, 25.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}
,
					"style" : "",
					"text" : "out~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1121.0, 114.952591, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
						"editing_bgcolor" : [ 0.046123, 0.046121, 0.046122, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 14.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato Regular",
						"gridonopen" : 2,
						"gridsize" : [ 20.0, 20.0 ],
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
						"style" : "zielony",
						"subpatcher_template" : "Green on Black",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 153.0, 60.0, 25.0 ],
									"style" : "",
									"text" : "gate 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 93.0, 25.0 ],
									"style" : "",
									"text" : "r #0-active"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 91.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-51",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 238.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-50", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"fontsize" : [ 14.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
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

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "zielony",
								"default" : 								{
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"fontface" : [ 0 ],
									"fontsize" : [ 14.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"textjustification" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
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

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ],
						"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ]
					}
,
					"patching_rect" : [ 711.5, 334.799988, 90.0, 25.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "zielony",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p active-gate",
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
						"editing_bgcolor" : [ 0.046123, 0.046121, 0.046122, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 14.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato Regular",
						"gridonopen" : 2,
						"gridsize" : [ 20.0, 20.0 ],
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
						"style" : "zielony",
						"subpatcher_template" : "Green on Black",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 153.0, 60.0, 25.0 ],
									"style" : "",
									"text" : "gate 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 93.0, 25.0 ],
									"style" : "",
									"text" : "r #0-active"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 91.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-51",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 238.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-50", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"fontsize" : [ 14.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
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

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "zielony",
								"default" : 								{
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"fontface" : [ 0 ],
									"fontsize" : [ 14.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"textjustification" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
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

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ],
						"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ]
					}
,
					"patching_rect" : [ 675.400024, 58.952591, 90.0, 25.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "zielony",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p active-gate",
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1155.0, 114.952591, 94.0, 25.0 ],
					"style" : "",
					"text" : "s #0-active",
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1155.0, 81.0, 29.5, 25.0 ],
					"style" : "",
					"text" : "=="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1187.0, 358.899994, 101.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.899986, 395.099854, 101.0, 23.0 ],
					"style" : "",
					"text" : "flocking_drone"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-22",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "pattr-helper.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -8.0, -7.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1187.0, 220.0, 269.0, 85.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.899986, 308.0, 269.0, 85.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"active" : 					{
						"drone_amp" : 0,
						"instr>pingpong" : 0,
						"out_mix" : 0,
						"pp-del-slow" : 0
					}
,
					"autorestore" : "flocking_drone.json",
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1187.0, 321.399994, 180.0, 25.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 893, 45, 1276, 407 ],
						"parameter_enable" : 0,
						"storage_rect" : [ 267, 66, 1015, 485 ]
					}
,
					"style" : "",
					"text" : "pattrstorage flocking_drone",
					"varname" : "flocking_drone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1107.0, 43.952591, 67.0, 25.0 ],
					"style" : "",
					"text" : "thispoly~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 211.0, 1003.949951, 110.0, 25.0 ],
					"style" : "",
					"text" : "r #0-bass_pch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 988.0, 331.0, 113.0, 25.0 ],
					"style" : "",
					"text" : "s #0-bass_pch"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 226.499969, 1531.0, 89.0, 25.0 ],
					"style" : "",
					"text" : "sysX.au.out4"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 780.400024, 803.0, 121.0, 25.0 ],
					"style" : "",
					"text" : "sysX.au.in4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 836.400024, 716.0, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 544.850098, 20.5, 95.399963, 40.0 ],
					"style" : "",
					"text" : "instr rotation rate (Hz)",
					"textcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"htricolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 746.400024, 709.400024, 82.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 551.550049, 61.199997, 82.0, 25.0 ],
					"style" : "",
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"tricolor" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
					"varname" : "instr_rotation_rate"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"focusbordercolor" : [ 0.043137, 0.364706, 0.094118, 1.0 ],
					"id" : "obj-10",
					"inactivecoldcolor" : [ 0.052926, 0.255664, 0.067549, 1.0 ],
					"inactivewarmcolor" : [ 0.05082, 0.38785, 0.108459, 1.0 ],
					"interp" : 100.0,
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 226.499969, 1344.099854, 159.0, 168.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 376.399963, 302.099854, 62.0, 116.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "out_mix",
							"parameter_shortname" : "out",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
					"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"tribordercolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"tricolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"trioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"varname" : "out_mix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 746.400024, 751.700012, 108.0, 25.0 ],
					"style" : "",
					"text" : "phasor~ 0.1813"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 746.400024, 851.700012, 155.0, 25.0 ],
					"style" : "",
					"text" : "gen~ @gen ak.rotapan4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 848.400024, 971.199951, 71.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 505.050049, 191.0, 71.0, 23.0 ],
					"style" : "",
					"text" : "delay (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1014.0, 1012.449951, 66.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 575.550049, 191.0, 66.0, 23.0 ],
					"style" : "",
					"text" : "feedback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 456.633301, 1076.599976, 68.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 532.150024, 163.549988, 69.900024, 23.0 ],
					"style" : "",
					"text" : "pingpong"
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.01,
					"id" : "obj-73",
					"justification" : 4,
					"linecolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.5, 22.749985, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 260.5, 9.549988, 118.0, 17.450012 ]
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.01,
					"id" : "obj-67",
					"justification" : 3,
					"linecolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 179.0, 22.749985, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 382.0, 257.5, 29.0, 49.0 ]
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.01,
					"id" : "obj-65",
					"justification" : 3,
					"linecolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 163.5, 22.749985, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 313.0, 261.5, 87.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"arrows" : 1,
					"border" : 2.01,
					"id" : "obj-63",
					"justification" : 4,
					"linecolor" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 15.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 453.5, 100.549988, 41.0, 47.450012 ]
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.01,
					"id" : "obj-64",
					"justification" : 3,
					"linecolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.899963, 11.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 407.399963, 100.549988, 41.0, 47.450012 ]
				}

			}
, 			{
				"box" : 				{
					"arrows" : 1,
					"border" : 2.01,
					"id" : "obj-62",
					"justification" : 4,
					"linecolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 132.0, 9.749985, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.399963, 261.5, 43.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.01,
					"id" : "obj-61",
					"justification" : 3,
					"linecolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 22.749985, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 256.5, 141.5, 46.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"focusbordercolor" : [ 0.043137, 0.364706, 0.094118, 1.0 ],
					"id" : "obj-60",
					"inactivecoldcolor" : [ 0.052926, 0.255664, 0.067549, 1.0 ],
					"inactivewarmcolor" : [ 0.05082, 0.38785, 0.108459, 1.0 ],
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 211.0, 1121.949951, 53.0, 104.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 358.0, 150.0, 53.0, 116.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "bass_amp",
							"parameter_shortname" : "bass",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
					"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"tribordercolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"tricolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"trioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"varname" : "bass_amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 903.400024, 803.0, 95.0, 23.0 ],
					"style" : "",
					"text" : "[ sysX.au.in4 ]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"focusbordercolor" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
					"id" : "obj-56",
					"inactivecoldcolor" : [ 0.0, 0.078431, 0.321569, 1.0 ],
					"inactivewarmcolor" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 746.400024, 886.099854, 155.0, 95.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 459.399963, 8.099976, 81.0, 93.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "instr>pingpong",
							"parameter_shortname" : "instr>pingpong",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.0, 0.078431, 0.321569, 1.0 ],
					"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"tribordercolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"tricolor" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
					"trioncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"varname" : "instr>pingpong"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"focusbordercolor" : [ 0.043137, 0.364706, 0.094118, 1.0 ],
					"id" : "obj-54",
					"inactivecoldcolor" : [ 0.052926, 0.255664, 0.067549, 1.0 ],
					"inactivewarmcolor" : [ 0.05082, 0.38785, 0.108459, 1.0 ],
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 532.133301, 867.099854, 94.0, 99.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 371.399963, 8.099976, 86.0, 93.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "drone>pingpong",
							"parameter_shortname" : "drone>pingpong",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
					"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"tribordercolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"tricolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"trioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"varname" : "drone>pingpong"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"focusbordercolor" : [ 0.043137, 0.364706, 0.094118, 1.0 ],
					"id" : "obj-48",
					"inactivecoldcolor" : [ 0.052926, 0.255664, 0.067549, 1.0 ],
					"inactivewarmcolor" : [ 0.05082, 0.38785, 0.108459, 1.0 ],
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 526.633301, 1121.949951, 165.0, 104.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 425.399963, 150.0, 55.0, 116.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "pingpong_amp",
							"parameter_shortname" : "pingpong",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
					"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"tribordercolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"tricolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"trioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"varname" : "pingpong_amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 600.0, 162.952591, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.299988, 61.199997, 150.0, 23.0 ],
					"style" : "",
					"text" : "frequency deviation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.800011, 404.0, 150.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 69.800011, 29.0, 197.0, 23.0 ],
					"style" : "",
					"text" : "drone envelope min. amp level"
				}

			}
, 			{
				"box" : 				{
					"channels" : 4,
					"focusbordercolor" : [ 0.043137, 0.364706, 0.094118, 1.0 ],
					"id" : "obj-43",
					"inactivecoldcolor" : [ 0.052926, 0.255664, 0.067549, 1.0 ],
					"inactivewarmcolor" : [ 0.05082, 0.38785, 0.108459, 1.0 ],
					"maxclass" : "live.gain~",
					"numinlets" : 4,
					"numoutlets" : 7,
					"outlettype" : [ "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 315.499969, 1121.949951, 82.0, 109.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.0, 150.0, 49.0, 116.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "drone_amp",
							"parameter_shortname" : "drone",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"slidercolor" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
					"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"tribordercolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"tricolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"trioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"varname" : "drone_amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 305.0, 572.799988, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.5, 258.400024, 150.0, 23.0 ],
					"style" : "",
					"text" : "rotation rate (Hz)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 862.166626, 532.0, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.5, 226.0, 150.0, 23.0 ],
					"style" : "",
					"text" : "drone mod. rate (Hz)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.0, 413.0, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.299988, 150.0, 150.0, 23.0 ],
					"style" : "",
					"text" : "number of octaves"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.0, 322.399994, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.299988, 122.0, 150.0, 23.0 ],
					"style" : "",
					"text" : "number of notes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.0, 220.0, 150.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.299988, 91.0, 150.0, 23.0 ],
					"style" : "",
					"text" : "random overtones"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 863.900024, 935.900024, 116.0, 25.0 ],
					"restore" : [ 1998.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "pattr pp-del-slow",
					"varname" : "pp-del-slow"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 281.0, 602.400024, 82.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.299988, 257.400024, 82.0, 25.0 ],
					"style" : "",
					"varname" : "rotation_rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 931.0, 287.5, 42.0, 25.0 ],
					"style" : "",
					"text" : "+ 24."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 284.799988, 162.952591, 68.0, 25.0 ],
					"restore" : 					{
						"bass_amp" : [ -64.16607 ],
						"drone>pingpong" : [ -35.367632 ],
						"drone_amp" : [ -10.022906 ],
						"drone_rate" : [ 0.12 ],
						"instr>pingpong" : [ -27.390962 ],
						"instr_rotation_rate" : [ 0.1813 ],
						"notes_num" : [ 5 ],
						"octaves" : [ 2.0 ],
						"out_mix" : [ 0.015748 ],
						"pingpong_amp" : [ -2.576951 ],
						"pitch_dev" : [ 0.01 ],
						"rand_overtones" : [ 0 ],
						"rotation_rate" : [ -0.1279 ]
					}
,
					"style" : "",
					"text" : "autopattr",
					"varname" : "u346000660"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 391.0, 317.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.299988, 120.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "notes_num"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 391.0, 372.0, 64.0, 25.0 ],
					"style" : "",
					"text" : "notes $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 675.400024, 239.800003, 51.0, 25.0 ],
					"style" : "",
					"text" : "sel 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 675.400024, 280.799988, 31.0, 25.0 ],
					"style" : "",
					"text" : "t 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 614.400024, 280.799988, 46.0, 25.0 ],
					"style" : "",
					"text" : "f 0.01"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 211.0, 1040.449951, 40.0, 25.0 ],
					"style" : "",
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 803.200012, 199.300003, 95.0, 25.0 ],
					"style" : "",
					"text" : "prepend scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 675.400024, 199.952591, 71.0, 25.0 ],
					"style" : "",
					"text" : "change -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 931.0, 239.800003, 71.0, 25.0 ],
					"style" : "",
					"text" : "change -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 803.200012, 162.952591, 68.0, 25.0 ],
					"style" : "",
					"text" : "zl change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 675.400024, 102.952591, 274.600006, 25.0 ],
					"style" : "",
					"text" : "dict.unpack quantize: scale: root:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"color" : [ 0.341176, 0.027451, 0.023529, 1.0 ],
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 675.400024, 14.0, 156.0, 25.0 ],
					"style" : "",
					"text" : "r sysX.flocking.to-drone",
					"textcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 165.049988, 355.0, 123.0, 42.0 ],
					"saved_object_attributes" : 					{
						"initial" : [ 0.1 ],
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "pattr minamplevel @initial 0.1",
					"varname" : "minamplevel"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-225",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 217.049988, 413.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.299988, 29.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "number[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 217.049988, 452.0, 139.0, 25.0 ],
					"style" : "",
					"text" : "s #0-minAmpLevel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 711.5, 406.0, 67.0, 25.0 ],
					"style" : "",
					"text" : "t b b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 711.5, 502.0, 43.0, 25.0 ],
					"style" : "",
					"text" : "zl reg"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-214",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 391.0, 413.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.299988, 150.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "octaves"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 391.0, 452.0, 77.0, 25.0 ],
					"style" : "",
					"text" : "octaves $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 391.0, 220.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.299988, 91.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "rand_overtones"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 391.0, 271.0, 119.0, 25.0 ],
					"style" : "",
					"text" : "randovertones $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-199",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 810.166626, 532.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.299988, 224.0, 82.0, 25.0 ],
					"style" : "",
					"varname" : "drone_rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1000.400024, 895.900024, 150.0, 57.0 ],
					"style" : "",
					"text" : "modulowanie czasem opóźnienia -> peakamp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1046.900024, 973.249878, 77.0, 25.0 ],
					"restore" : [ 0.63 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "pattr pp-fb",
					"varname" : "pp-fb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 912.400024, 1012.449951, 87.0, 25.0 ],
					"style" : "",
					"text" : "pack f 1000."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-193",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 912.400024, 971.199951, 77.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 502.050049, 213.0, 77.0, 25.0 ],
					"style" : "",
					"varname" : "number[1]"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-191",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1075.900024, 1012.449951, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 583.550049, 213.0, 50.0, 25.0 ],
					"style" : "",
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 526.633301, 1076.599976, 165.0, 25.0 ],
					"style" : "",
					"text" : "ak.pingpong4~ 2000 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 281.0, 638.0, 113.0, 25.0 ],
					"style" : "",
					"text" : "phasor~ -0.1279"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 315.499969, 711.0, 415.0, 25.0 ],
					"style" : "",
					"text" : "gen~ @gen ak.rotapan4"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 0.0 ],
					"format" : 4,
					"id" : "obj-174",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 931.0, 331.0, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 366.0, 122.0, 37.0, 25.0 ],
					"style" : "",
					"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 931.0, 369.5, 56.0, 25.0 ],
					"style" : "",
					"text" : "root $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 614.400024, 334.799988, 92.0, 25.0 ],
					"style" : "",
					"text" : "fdeviation $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 211.0, 1076.599976, 50.0, 25.0 ],
					"style" : "",
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-147",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 614.400024, 231.952591, 50.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.299988, 61.199997, 50.0, 25.0 ],
					"style" : "",
					"varname" : "pitch_dev"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 415.5, 542.0, 315.0, 25.0 ],
					"style" : "",
					"text" : "gate 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 711.5, 372.0, 56.0, 25.0 ],
					"style" : "",
					"text" : "zl nth 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 810.166626, 587.0, 96.0, 25.0 ],
					"style" : "",
					"text" : "phasor~ 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "signal", "list" ],
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
						"rect" : [ 34.0, 56.0, 1208.0, 710.0 ],
						"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
						"editing_bgcolor" : [ 0.046123, 0.046121, 0.046122, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 14.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato Regular",
						"gridonopen" : 2,
						"gridsize" : [ 20.0, 20.0 ],
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
						"style" : "zielony",
						"subpatcher_template" : "Green on Black",
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 675.5, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 631.5, 344.0, 73.0, 25.0 ],
									"style" : "",
									"text" : "funnel 4 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 239.0, 136.0, 640.0, 480.0 ],
										"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
										"editing_bgcolor" : [ 0.046123, 0.046121, 0.046122, 1.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 14.0,
										"default_fontface" : 0,
										"default_fontname" : "Lato Regular",
										"gridonopen" : 2,
										"gridsize" : [ 20.0, 20.0 ],
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
										"style" : "zielony",
										"subpatcher_template" : "Green on Black",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.25, 117.0, 123.0, 25.0 ],
													"style" : "",
													"text" : "r #0-minAmpLevel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 213.0, 252.0, 29.5, 25.0 ],
													"style" : "",
													"text" : ">~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 246.0, 70.0, 25.0 ],
													"style" : "",
													"text" : "clip~ 0. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 178.0, 117.0, 25.0 ],
													"style" : "",
													"text" : "scale~ 0.1 1. 0. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 134.5, 39.0, 25.0 ],
													"style" : "",
													"text" : "abs~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 213.0, 289.0, 48.0, 25.0 ],
													"style" : "",
													"text" : "edge~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 100.0, 50.0, 25.0 ],
													"style" : "",
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 289.0, 61.5, 25.0 ],
													"style" : "",
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-95",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-96",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 123.5, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-97",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 349.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-98",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 242.0, 349.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 102.0, 224.75, 222.5, 224.75 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"source" : [ "obj-66", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 1 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
													"fontsize" : [ 14.0 ],
													"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
													"fontname" : [ "Lato" ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "zielony",
												"default" : 												{
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"fontface" : [ 0 ],
													"fontsize" : [ 14.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
													"fontname" : [ "Lato Regular" ],
													"textjustification" : [ 0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"bgfillcolor" : 													{
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

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ],
										"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ]
									}
,
									"patching_rect" : [ 50.0, 263.5, 53.0, 25.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "zielony",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 239.0, 136.0, 640.0, 480.0 ],
										"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
										"editing_bgcolor" : [ 0.046123, 0.046121, 0.046122, 1.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 14.0,
										"default_fontface" : 0,
										"default_fontname" : "Lato Regular",
										"gridonopen" : 2,
										"gridsize" : [ 20.0, 20.0 ],
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
										"style" : "zielony",
										"subpatcher_template" : "Green on Black",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.25, 117.0, 123.0, 25.0 ],
													"style" : "",
													"text" : "r #0-minAmpLevel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 213.0, 252.0, 29.5, 25.0 ],
													"style" : "",
													"text" : ">~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 246.0, 70.0, 25.0 ],
													"style" : "",
													"text" : "clip~ 0. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 178.0, 117.0, 25.0 ],
													"style" : "",
													"text" : "scale~ 0.1 1. 0. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 134.5, 39.0, 25.0 ],
													"style" : "",
													"text" : "abs~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 213.0, 289.0, 48.0, 25.0 ],
													"style" : "",
													"text" : "edge~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 100.0, 50.0, 25.0 ],
													"style" : "",
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 289.0, 61.5, 25.0 ],
													"style" : "",
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-95",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-96",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 123.5, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-97",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 349.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-98",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 242.0, 349.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 102.0, 224.75, 222.5, 224.75 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"source" : [ "obj-66", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 1 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
													"fontsize" : [ 14.0 ],
													"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
													"fontname" : [ "Lato" ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "zielony",
												"default" : 												{
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"fontface" : [ 0 ],
													"fontsize" : [ 14.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
													"fontname" : [ "Lato Regular" ],
													"textjustification" : [ 0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"bgfillcolor" : 													{
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

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ],
										"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ]
									}
,
									"patching_rect" : [ 173.5, 267.0, 53.0, 25.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "zielony",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 239.0, 136.0, 640.0, 480.0 ],
										"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
										"editing_bgcolor" : [ 0.046123, 0.046121, 0.046122, 1.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 14.0,
										"default_fontface" : 0,
										"default_fontname" : "Lato Regular",
										"gridonopen" : 2,
										"gridsize" : [ 20.0, 20.0 ],
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
										"style" : "zielony",
										"subpatcher_template" : "Green on Black",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.25, 117.0, 123.0, 25.0 ],
													"style" : "",
													"text" : "r #0-minAmpLevel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 213.0, 252.0, 29.5, 25.0 ],
													"style" : "",
													"text" : ">~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 246.0, 70.0, 25.0 ],
													"style" : "",
													"text" : "clip~ 0. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 178.0, 117.0, 25.0 ],
													"style" : "",
													"text" : "scale~ 0.1 1. 0. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 134.5, 39.0, 25.0 ],
													"style" : "",
													"text" : "abs~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 213.0, 289.0, 48.0, 25.0 ],
													"style" : "",
													"text" : "edge~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 100.0, 50.0, 25.0 ],
													"style" : "",
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 289.0, 61.5, 25.0 ],
													"style" : "",
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-95",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-96",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 123.5, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-97",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 349.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-98",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 242.0, 349.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 102.0, 224.75, 222.5, 224.75 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"source" : [ "obj-66", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 1 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
													"fontsize" : [ 14.0 ],
													"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
													"fontname" : [ "Lato" ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "zielony",
												"default" : 												{
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"fontface" : [ 0 ],
													"fontsize" : [ 14.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
													"fontname" : [ "Lato Regular" ],
													"textjustification" : [ 0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"bgfillcolor" : 													{
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

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ],
										"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ]
									}
,
									"patching_rect" : [ 320.0, 267.0, 53.0, 25.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "zielony",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 7,
											"minor" : 3,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"rect" : [ 242.0, 166.0, 640.0, 480.0 ],
										"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
										"editing_bgcolor" : [ 0.046123, 0.046121, 0.046122, 1.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 14.0,
										"default_fontface" : 0,
										"default_fontname" : "Lato Regular",
										"gridonopen" : 2,
										"gridsize" : [ 20.0, 20.0 ],
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
										"style" : "zielony",
										"subpatcher_template" : "Green on Black",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 166.25, 117.0, 139.0, 25.0 ],
													"style" : "",
													"text" : "r #0-minAmpLevel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 213.0, 252.0, 29.5, 25.0 ],
													"style" : "",
													"text" : ">~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 246.0, 70.0, 25.0 ],
													"style" : "",
													"text" : "clip~ 0. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 178.0, 117.0, 25.0 ],
													"style" : "",
													"text" : "scale~ 0.1 1. 0. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 134.5, 39.0, 25.0 ],
													"style" : "",
													"text" : "abs~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 213.0, 289.0, 48.0, 25.0 ],
													"style" : "",
													"text" : "edge~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 92.5, 100.0, 50.0, 25.0 ],
													"style" : "",
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 289.0, 61.5, 25.0 ],
													"style" : "",
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-95",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-96",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 123.5, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-97",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 349.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-98",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 242.0, 349.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 102.0, 224.75, 222.5, 224.75 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"source" : [ "obj-66", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 1 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
													"fontsize" : [ 14.0 ],
													"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
													"fontname" : [ "Lato" ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "zielony",
												"default" : 												{
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"fontface" : [ 0 ],
													"fontsize" : [ 14.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
													"fontname" : [ "Lato Regular" ],
													"textjustification" : [ 0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"bgfillcolor" : 													{
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

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ],
										"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ]
									}
,
									"patching_rect" : [ 475.0, 267.0, 53.0, 25.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "zielony",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 675.5, 84.0, 48.0, 25.0 ],
									"style" : "",
									"text" : "*~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 675.5, 231.0, 66.0, 25.0 ],
									"style" : "",
									"text" : "+~ 0.125"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 675.5, 183.0, 66.0, 25.0 ],
									"style" : "",
									"text" : "+~ 0.125"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 675.5, 134.0, 66.0, 25.0 ],
									"style" : "",
									"text" : "+~ 0.125"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-127",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-128",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 173.5, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-129",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 320.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-130",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 475.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-131",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 429.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-132",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.5, 429.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-133",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 429.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-134",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 475.0, 429.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-135",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 631.5, 429.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 2 ],
									"source" : [ "obj-103", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 1 ],
									"source" : [ "obj-107", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-111", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 1 ],
									"order" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"order" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 1 ],
									"order" : 1,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"order" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 1 ],
									"order" : 1,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"order" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 3 ],
									"source" : [ "obj-99", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"fontsize" : [ 14.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
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

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "zielony",
								"default" : 								{
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"fontface" : [ 0 ],
									"fontsize" : [ 14.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"textjustification" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
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

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ],
						"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ]
					}
,
					"patching_rect" : [ 415.499969, 632.0, 413.666656, 25.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "zielony",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 711.5, 587.0, 92.0, 25.0 ],
					"style" : "",
					"text" : "ioscbank~ 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 612.833374, 587.0, 92.0, 25.0 ],
					"style" : "",
					"text" : "ioscbank~ 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 514.166626, 587.0, 92.0, 25.0 ],
					"style" : "",
					"text" : "ioscbank~ 32"
				}

			}
, 			{
				"box" : 				{
					"embedstate" : [ [ "fdeviation", 0.01 ], [ "scale", 0, 7, 3, 2, 10, 5, 8, 1, 9, 6, 11, 4 ], [ "randovertones", 0 ], [ "notes", 5 ], [ "root", 27 ], [ "octaves", 2 ] ],
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 735.5, 462.0, 155.0, 25.0 ],
					"saved_object_attributes" : 					{
						"filename" : "sysX.dron-ioscbank.js",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js sysX.dron-ioscbank.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 415.5, 587.0, 92.0, 25.0 ],
					"style" : "",
					"text" : "ioscbank~ 32"
				}

			}
, 			{
				"box" : 				{
					"angle" : 268.517703,
					"bgcolor" : [ 0.019608, 0.254902, 0.035294, 0.5 ],
					"id" : "obj-66",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.899963, 110.952591, 150.5, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.899986, 17.0, 253.900024, 276.0 ],
					"proportion" : 0.525821,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 268.517703,
					"bgcolor" : [ 0.019608, 0.254902, 0.035294, 0.5 ],
					"id" : "obj-80",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.899963, 125.952591, 150.5, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 486.049988, 158.5, 160.900024, 99.0 ],
					"proportion" : 0.525821,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 268.517703,
					"bgcolor" : [ 0.0, 0.078431, 0.321569, 0.5 ],
					"id" : "obj-4",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.049988, 26.5, 150.5, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 532.150024, 15.0, 119.799988, 82.0 ],
					"proportion" : 0.525821,
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 3 ],
					"source" : [ "obj-10", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 2 ],
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 4 ],
					"source" : [ "obj-136", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 3 ],
					"source" : [ "obj-136", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 2 ],
					"source" : [ "obj-136", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 1 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 819.666625, 681.0, 917.333336, 681.0, 917.333336, 321.0, 721.0, 321.0 ],
					"source" : [ "obj-136", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-139", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-139", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-139", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 940.5, 451.5, 745.0, 451.5 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 3 ],
					"midpoints" : [ 720.999969, 827.549927, 387.999969, 827.549927 ],
					"order" : 1,
					"source" : [ "obj-179", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 2 ],
					"midpoints" : [ 588.999969, 803.549927, 366.999969, 803.549927 ],
					"order" : 1,
					"source" : [ "obj-179", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"midpoints" : [ 456.999969, 788.549927, 345.999969, 788.549927 ],
					"order" : 1,
					"source" : [ "obj-179", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 1,
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 3 ],
					"order" : 0,
					"source" : [ "obj-179", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 2 ],
					"order" : 0,
					"source" : [ "obj-179", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"order" : 0,
					"source" : [ "obj-179", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"order" : 0,
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 3 ],
					"source" : [ "obj-185", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"source" : [ "obj-185", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"source" : [ "obj-185", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 5 ],
					"midpoints" : [ 1085.400024, 1068.75, 657.799968, 1068.75 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 4 ],
					"midpoints" : [ 921.900024, 1055.024963, 633.466634, 1055.024963 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-195", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 1 ],
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-220", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-219", 0 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-220", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-225", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-225", 0 ],
					"source" : [ "obj-226", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 3 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 2 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-219", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 3,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 2,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 3 ],
					"source" : [ "obj-43", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"source" : [ "obj-43", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 3 ],
					"source" : [ "obj-48", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"source" : [ "obj-48", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 3 ],
					"source" : [ "obj-54", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 2 ],
					"source" : [ "obj-54", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 1 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-55", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 3 ],
					"source" : [ "obj-56", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 2 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 1 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 4 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"order" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 4 ],
					"source" : [ "obj-7", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 3 ],
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 2 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 3 ],
					"source" : [ "obj-8", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 2 ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-43" : [ "drone_amp", "drone", 0 ],
			"obj-54" : [ "drone>pingpong", "drone>pingpong", 0 ],
			"obj-48" : [ "pingpong_amp", "pingpong", 0 ],
			"obj-56" : [ "instr>pingpong", "instr>pingpong", 0 ],
			"obj-60" : [ "bass_amp", "bass", 0 ],
			"obj-10" : [ "out_mix", "out", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "sysX.dron-ioscbank.js",
				"bootpath" : "~/Documents/bieżące sprawy/dr/sysX/sysX/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ak.rotapan4.gendsp",
				"bootpath" : "~/Documents/bieżące sprawy/dr/sysX/sysX/code",
				"patcherrelativepath" : "../code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "ak.pingpong4~.maxpat",
				"bootpath" : "~/Documents/Max 7/Packages/ak/patchers/audio",
				"patcherrelativepath" : "../../../../../Max 7/Packages/ak/patchers/audio",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.in4.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/sysX/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.out4.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/sysX/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "flocking_drone.json",
				"bootpath" : "~/Documents/bieżące sprawy/dr/sysX/sysX/data",
				"patcherrelativepath" : "../data",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pattr-helper.maxpat",
				"bootpath" : "./Max.app/Contents/Resources/Examples/utilities",
				"patcherrelativepath" : "../../../../../../../../Applications/Max.app/Contents/Resources/Examples/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "ak.bigger",
				"default" : 				{
					"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
					"fontsize" : [ 14.0 ],
					"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
					"fontname" : [ "Lato" ],
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

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "zielony",
				"default" : 				{
					"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"fontface" : [ 0 ],
					"fontsize" : [ 14.0 ],
					"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
					"fontname" : [ "Lato Regular" ],
					"textjustification" : [ 0 ],
					"color" : [ 0.4, 1.0, 0.4, 1.0 ],
					"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
					"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
					"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
					"bgfillcolor" : 					{
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

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ],
		"default_bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
		"color" : [ 0.4, 1.0, 0.4, 1.0 ],
		"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
		"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
		"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
		"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
		"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
		"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
		"bgfillcolor_type" : "color",
		"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
		"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
		"bgfillcolor_color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
		"bgfillcolor_angle" : 268.517703,
		"bgfillcolor_proportion" : 0.525821
	}

}
