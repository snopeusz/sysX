{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 48.0, 78.0, 1161.0, 633.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
		"style" : "default",
		"subpatcher_template" : "Default Max 7",
		"globalpatchername" : "flocking_engine",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 871.998047000000042, 90.5, 21.0, 22.0 ],
					"text" : "t f"
				}

			}
, 			{
				"box" : 				{
					"displaystopped" : 0,
					"id" : "obj-38",
					"indeterminate" : 0,
					"maxclass" : "progress",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 871.998047000000042, 126.0, 57.0, 57.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 61.0, 57.0, 57.0 ],
					"range" : [ 0.0, 300.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-311",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 871.998047000000042, 61.5, 135.0, 22.0 ],
					"text" : "r sysX.flocking.zegar"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 602.0, 210.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 274.0, 114.0, 22.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.333344000000011, 168.0, 194.0, 35.0 ],
									"text" : ";\rsysX.flocking.stan faza 0 0, koniec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.666672000000005, 168.0, 117.0, 49.0 ],
									"text" : ";\rsysX.flocking.stan faza 0 0, początek"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 168.0, 153.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim init;\rsysX.flocking.stan faza 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"patching_rect" : [ 43.0, 112.0, 510.0, 22.0 ],
									"text" : "sel init start stop"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
									"fontface" : 2,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 327.0, 100.0, 22.0 ],
									"text" : "prepend flocking"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
									"fontface" : 2,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 138.0, 56.0, 100.0, 22.0 ],
									"text" : "route flocking"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
									"fontface" : 2,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 43.0, 359.0, 217.0, 22.0 ],
									"text" : "s sysX.engine.do_centrum_sterowania"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
									"fontface" : 2,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 26.0, 207.0, 22.0 ],
									"text" : "r sysX.engine.z_centrum_sterowania"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 29.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-4", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
										"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
										"angle" : 277.842322000000024,
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
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517702999999983,
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
 ]
					}
,
					"patching_rect" : [ 32.0, 120.666686999999996, 222.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p obsługa_centrum_sterowania-flocking"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 109.0, 55.5, 33.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.5, 29.5, 33.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.5, 55.5, 34.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 29.5, 34.0, 22.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 55.5, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.5, 29.5, 29.5, 22.0 ],
					"text" : "init"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 602.0, 187.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 319.0, 181.5, 150.0, 20.0 ],
									"text" : "clocker?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 249.0, 103.0, 24.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 201.0, 103.0, 24.0, 22.0 ],
									"text" : "t 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 279.5, 287.0, 114.0 ],
									"text" : "PUNKTY W CZASIE\nfaza 0 - przed rozpoczęciem (reset) (gotowość)\npoczątek - przejście do pierwszej fazy (czas start)\nfaza 1 - blok\nfaza 2 - cisza\nfaza 3 - epilog\ntaśma - moment włączenia odtwarzania taśmy\nkoniec - koniec części  (czas stop) (faza 0)"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 201.0, 219.0, 126.0, 22.0 ],
									"text" : "s sysX.flocking.zegar"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.279696, 0.304029, 0.26257, 1.0 ],
									"bgmode" : 2,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-31",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "ak.bp.clocker_gui.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ 3.333333, 2.0 ],
									"outlettype" : [ "int" ],
									"patching_rect" : [ 201.0, 174.0, 96.0, 35.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 43.5, 142.0, 106.0, 35.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 66.0, 219.0, 120.0, 22.0 ],
									"text" : "s sysX.flocking.reset",
									"textcolor" : [ 0.925490021705627, 0.364706009626389, 0.341176003217697, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 66.0, 74.0, 64.0, 22.0 ],
									"text" : "route faza"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 36.0, 114.0, 22.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"id" : "obj-177",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 201.0, 74.0, 115.0, 22.0 ],
									"text" : "sel początek koniec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 66.0, 110.0, 36.0, 22.0 ],
									"text" : "sel 0"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-177", 0 ],
									"order" : 0,
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 0,
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"order" : 1,
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-177", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
										"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
										"angle" : 277.842322000000024,
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
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517702999999983,
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
 ]
					}
,
					"patching_rect" : [ 291.0, 90.166686999999996, 127.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"inicjowanie i zegar\""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 698.5, 61.5, 151.0, 22.0 ],
					"text" : "r sysX.flocking.solo_instr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 420.0, 101.0, 822.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 14.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato Regular",
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
						"style" : "zielony",
						"subpatcher_template" : "Green on Black",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 191.0, 198.0, 69.0, 25.0 ],
									"text" : "unpack i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 191.0, 104.0, 128.0, 25.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 191.0, 158.0, 72.0, 25.0 ],
									"text" : "route faza"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 241.0, 239.0, 56.0, 25.0 ],
									"text" : "/ 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 70.0, 150.0, 23.0 ],
									"text" : "podgląd stanu:"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 324.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 241.0, 324.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
										"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
										"angle" : 277.842322000000024,
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
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517702999999983,
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
						"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
						"editing_bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
					}
,
					"patching_rect" : [ 512.998047000000042, 61.5, 102.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
						"fontname" : "Lato Regular",
						"fontsize" : 14.0,
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
						"style" : "zielony",
						"tags" : ""
					}
,
					"text" : "p podgląd_Stanu"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"id" : "obj-16",
					"items" : [ "--", ",", "fl", ",", "cl", ",", "vn", ",", "vc" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 695.998047000000042, 138.0, 37.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.5, 124.5, 47.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 640.998047000000042, 112.5, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.5, 157.0, 22.0, 20.0 ],
					"text" : "s"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"id" : "obj-7",
					"items" : [ "--", ",", "blok", ",", "cisza", ",", "epilog" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 512.998047000000042, 111.5, 55.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.5, 157.0, 65.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 595.998047000000042, 111.5, 40.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.5, 157.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 29.666687, 137.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.5, 4.5, 108.0, 20.0 ],
					"text" : "--- flocking  ---",
					"textcolor" : [ 0.019608000293374, 0.254902005195618, 0.035294000059366, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-325",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 27.666687, 172.0, 22.0 ],
					"text" : "pattrmarker flocking_engine"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.741176, 0.356863, 0.047059, 1.0 ],
					"id" : "obj-312",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 113.0, 79.0, 1006.0, 676.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "default",
						"subpatcher_template" : "Default Max 7",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1027.0, 843.5, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 319.5, 817.0, 89.0, 33.0 ],
									"text" : "losowanie bez powtarzania"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.625, 155.0, 135.0, 22.0 ],
									"text" : "r sysX.flocking.zegar"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
									"id" : "obj-183",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.5, 445.5, 121.0, 22.0 ],
									"text" : "r sysX.flocking.zegar"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1706.0, 789.5, 122.0, 47.0 ],
									"text" : "START -> 10s narastania głośności drone'a dal niente"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1691.0, 590.0, 49.0, 20.0 ],
									"text" : "START"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1691.0, 612.0, 114.0, 22.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"id" : "obj-177",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1691.0, 644.0, 77.0, 22.0 ],
									"text" : "sel początek"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "stop" ],
									"patching_rect" : [ 1888.0, 676.0, 46.0, 22.0 ],
									"text" : "t i stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-318",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "stop" ],
									"patching_rect" : [ 1691.0, 676.0, 88.0, 22.0 ],
									"text" : "t b stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-313",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1691.0, 707.0, 89.0, 22.0 ],
									"text" : "-70., -1. 10000"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-314",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 1691.0, 758.0, 78.0, 22.0 ],
									"text" : "line 0. 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1198.0, 34.0, 104.0, 20.0 ],
									"text" : "START i KONIEC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-169",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1198.0, 56.0, 114.0, 22.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-165",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1273.166748000000098, 139.5, 99.0, 20.0 ],
									"text" : "wł./wył. drone'a"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1198.0, 174.0, 194.0, 22.0 ],
									"text" : "pattrforward ::audio::drone_enable"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-161",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1240.0, 138.5, 24.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1198.0, 138.5, 24.0, 22.0 ],
									"text" : "t 1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"id" : "obj-159",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1198.0, 98.0, 127.0, 22.0 ],
									"text" : "route początek koniec"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 759.0, 258.0, 173.0, 22.0 ],
									"text" : "s sysX.flocking.interaktywność"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 416.166687000000024, 108.0, 171.0, 22.0 ],
									"text" : "r sysX.flocking.interaktywność"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-145",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1088.0, 813.0, 101.0, 33.0 ],
									"text" : "losuj numer instrumentu solo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1027.0, 817.0, 59.0, 22.0 ],
									"text" : "urn-jb 4"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-147",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1027.0, 867.5, 156.0, 35.0 ],
									"text" : ";\rsysX.flocking.solo_instr $1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-144",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 32.5, 5.0, 228.0, 20.0 ],
									"text" : "Jakie parametry i kiedy się zmieniają?"
								}

							}
, 							{
								"box" : 								{
									"blinkcolor" : [ 0.541176, 0.815686, 0.913725, 1.0 ],
									"id" : "obj-142",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"parameter_enable" : 0,
									"patching_rect" : [ 878.0, 390.0, 66.0, 66.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2572.0, 739.0, 150.0, 33.0 ],
									"text" : "odczekaj 85% czasu epilogu i uruchom taśmę A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-135",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2528.0, 862.0, 143.0, 35.0 ],
									"text" : ";\rsysX.flocking.stan taśma"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1636.0, 75.0, 95.0, 22.0 ],
									"text" : "send delay stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 2528.0, 745.5, 29.5, 22.0 ],
									"text" : "del"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 2528.0, 715.5, 42.0, 22.0 ],
									"text" : "* 0.85"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-127",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 2152.199951000000056, 930.0, 150.0, 49.0 ],
									"restore" : [ 0.12 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr @bindto ::audio::drone::drone_rate @thru 0 @invisible 1",
									"varname" : "u235004950"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2152.199951000000056, 894.0, 112.0, 22.0 ],
									"text" : "scale 0. 1. 0.2 0.01"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-59",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 2208.0, 833.0, 152.0, 49.0 ],
									"restore" : [ 0.12 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr @bindto ::audio::drone::drone_rate @thru 0 @invisible 1",
									"varname" : "u941004952"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-128",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1888.0, 930.0, 139.0, 49.0 ],
									"restore" : [ 0.015748 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr @bindto ::audio::drone::out_mix @thru 0 @invisible 1",
									"varname" : "u887004954"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "int", "bang", "bang", "bang", "int" ],
									"patching_rect" : [ 1888.0, 624.0, 659.0, 22.0 ],
									"text" : "t i b b b i"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-56",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1938.40002400000003, 833.0, 136.0, 49.0 ],
									"restore" : [ 0.015748 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "pattr @bindto ::audio::drone::out_mix @thru 0 @invisible 1",
									"varname" : "u285004956"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1888.0, 894.0, 103.0, 22.0 ],
									"text" : "scale 0. 1. 0. -70."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1888.0, 721.0, 54.0, 22.0 ],
									"text" : "0., 1. $1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 1888.0, 758.0, 68.0, 22.0 ],
									"text" : "line 0. 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 313.5, 256.5, 185.0, 60.0 ],
									"text" : "preset drone'u zmienia się z czasem w sposób ciągły (w zakresie 1-10), a w fazie 'epilog' przyjmuje stałą wartość 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.625, 284.0, 29.5, 22.0 ],
									"text" : "20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 3,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"subpatcher_template" : "Default Max 7",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-11",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 86.0, 333.0, 150.0, 33.0 ],
													"text" : "przepuść komunikaty jeżeli inna faza"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 249.5, 326.0, 150.0, 20.0 ],
													"text" : "bang jeżeli epilog"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 236.0, 170.0, 34.0, 22.0 ],
													"text" : "t b 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-106",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 236.0, 137.0, 61.5, 22.0 ],
													"text" : "sel 3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 278.5, 170.0, 24.0, 22.0 ],
													"text" : "t 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 236.0, 61.0, 114.0, 22.0 ],
													"text" : "r sysX.flocking.stan"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 236.0, 92.0, 64.0, 22.0 ],
													"text" : "route faza"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 108.0, 217.0, 44.0, 22.0 ],
													"text" : "gate 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 236.0, 283.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-3",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 108.0, 284.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 133.0, 61.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-106", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-106", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-106", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
													"fontsize" : [ 14.0 ],
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
													"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
													"fontname" : [ "Lato" ],
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
														"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
														"angle" : 277.842322000000024,
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
													"fontface" : [ 0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"fontsize" : [ 14.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"textjustification" : [ 0 ],
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
													"fontname" : [ "Lato Regular" ],
													"bgfillcolor" : 													{
														"type" : "color",
														"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
														"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
														"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
														"angle" : 268.517702999999983,
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
 ]
									}
,
									"patching_rect" : [ 240.625, 256.5, 59.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p epilog?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.166687000000003, 224.0, 150.0, 33.0 ],
									"text" : "maxvel rośnie przez cały czas trwania częsci?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 781.0, 136.0, 238.0, 33.0 ],
									"text" : "wł/wył elementów interaktywnych przed ustawieniem innych parametrów"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 694.0, 141.0, 84.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2368.0, 901.0, 150.0, 60.0 ],
									"text" : "ustawienie parametrów mapowania, które też przenoszą się do generatora drone'a"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1908.0, 602.0, 213.0, 20.0 ],
									"text" : "Epilog - przejmuje sterowanie czasem"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 6,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2368.0, 808.0, 156.0, 89.0 ],
									"text" : ";\rsysX.flocking.sim mm_pch_map_root 5, mm_pch_map_scale 1, mm_pch_map_quantize 1, mm_pch_map_steps 7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1664.0, 28.0, 150.0, 47.0 ],
									"text" : "reset zatrzymuje wszystkie obiekty [line] i [delay]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 827.0, 183.0, 202.0, 20.0 ],
									"text" : "aktywny tylko w fazie \"blok\" i \"cisza\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 793.5, 214.5, 26.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 759.0, 176.0, 53.5, 22.0 ],
									"text" : "sel 1 2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 438.166687000000024, 138.5, 144.0, 20.0 ],
									"text" : "wł./wył. symulacji"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 416.166687000000024, 160.5, 212.0, 35.0 ],
									"text" : "pattrforward ::flocking_engine::simulation::enabled"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 759.0, 214.5, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1541.5, 75.0, 85.0, 22.0 ],
									"text" : "send line stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1590.5, 117.5, 69.0, 22.0 ],
									"text" : "universal 1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1541.5, 28.0, 118.0, 22.0 ],
									"text" : "r sysX.flocking.reset",
									"textcolor" : [ 0.925490021705627, 0.364706009626389, 0.341176003217697, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"blinkcolor" : [ 0.936553, 0.9512, 0.726506, 1.0 ],
									"id" : "obj-102",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1814.0, 654.0, 66.0, 66.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 32.5, 29.0, 573.0, 47.0 ],
									"text" : "Ten patcher zdalnie steruje parametrami symulacji (wysyłka na symbol \"sysX.flocking.sim\", zmiany presetów parametrów symulacji, bezpośrednie sterowanie parametrem symulacji \"maxvel\" oraz płynne interpolowane zmiany presetów w generatorze drone'ów."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1258.0, 946.0, 175.0, 33.0 ],
									"text" : "parametr wyliczany na podstawie ilości faz \"blok'"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 417.0, 959.0, 175.0, 20.0 ],
									"text" : "parametry generowane losowo"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"id" : "obj-96",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1258.0, 981.0, 165.421082000000013, 19.0 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"id" : "obj-95",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 981.0, 1128.0, 19.0 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 820.0, 330.0, 122.0, 47.0 ],
									"text" : "czas trwania właśnie rozpoczętej fazy \"cisza\" (niebieski)",
									"textcolor" : [ 0.086274996399879, 0.309803992509842, 0.525489985942841, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 637.5, 371.0, 117.0, 47.0 ],
									"text" : "czas trwania właśnie rozpoczętej fazy \"blok\" (zielony)",
									"textcolor" : [ 0.04313699901104, 0.364706009626389, 0.094117999076843, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 900.0, 491.0, 247.0, 33.0 ],
									"text" : "ciągła zmiana progu mapowania pionowej współrzędnej agentów symulacji"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 416.166687000000024, 604.0, 247.0, 33.0 ],
									"text" : "ciągła zmiania ilości stopni w skali - w obrębie trwania fazy \"blok\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 206.0, 508.5, 150.0, 33.0 ],
									"text" : "dodanie losowej wartości w zakresie 0-4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 58.5, 473.0, 188.0, 33.0 ],
									"text" : "próbkowanie wartości czasu, który upłyną od początku części"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 573.5, 165.0, 20.0 ],
									"text" : "wybór presetu w pattrstorage"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 807.5, 35.0, 20.0 ],
									"text" : "25%"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 73.0, 877.5, 35.0, 20.0 ],
									"text" : "33%"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 694.5, 170.0, 33.0 ],
									"text" : "-> jeżeli dyn_decay jest zbypassowany, to dyn_fix też"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-52",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 123.0, 853.5, 130.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_dyn_decay_bp $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-51",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 920.69482400000004, 110.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_dyn_fix_bp $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 454.0, 826.69482400000004, 67.0, 20.0 ],
									"text" : "= 0 lub 0.5"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-48",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 286.0, 853.5, 117.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_pch_line_bp $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-47",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 413.5, 853.5, 134.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_pch_line_target $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-43",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 878.0, 853.5, 134.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_dyn_sah_mode $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-42",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 731.0, 853.5, 134.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_pch_sah_mode $1"
								}

							}
, 							{
								"box" : 								{
									"blinkcolor" : [ 0.702269, 0.811747, 0.303388, 1.0 ],
									"id" : "obj-41",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"outlinecolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"parameter_enable" : 0,
									"patching_rect" : [ 694.0, 616.0, 66.0, 66.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-39",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 559.0, 853.5, 154.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_pch_map_quantize $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-38",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.5, 634.5, 137.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_pch_map_steps $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-37",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 770.0, 502.0, 128.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_sah_threshold $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1321.0, 789.5, 127.0, 33.0 ],
									"text" : "licznik ilości wystąpień fazy \"blok\""
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-31",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1258.0, 853.5, 139.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_pch_map_scale $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1279.0, 759.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.52549, 0.062745, 0.003922, 1.0 ],
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1279.0, 724.5, 118.0, 22.0 ],
									"text" : "r sysX.flocking.reset",
									"textcolor" : [ 0.925490021705627, 0.364706009626389, 0.341176003217697, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1258.0, 824.0, 122.0, 22.0 ],
									"text" : "expr ($i1 / 3) % 3 + 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 1258.0, 795.0, 61.0, 22.0 ],
									"text" : "counter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 694.0, 301.0, 424.0, 22.0 ],
									"text" : "route 1 2 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 694.0, 23.0, 114.0, 22.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 694.0, 108.0, 64.0, 22.0 ],
									"text" : "route faza"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 542.0, 301.0, 150.0, 33.0 ],
									"text" : "aktualizacja parametrów przy zmianie fazy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.5, 111.5, 154.0, 47.0 ],
									"text" : "zegar - liczba sekund od rozpoczęcia części, aktualizowana co sekundę"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-251",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 27.0, 541.5, 158.5, 22.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-250",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 508.5, 107.0, 22.0 ],
									"text" : "zmap 0 200 10 18"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-249",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 573.5, 62.0, 22.0 ],
									"text" : "clip 10 22"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-248",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 166.5, 508.5, 61.0, 22.0 ],
									"text" : "random 5"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"id" : "obj-247",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 27.0, 421.5, 158.5, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
									"id" : "obj-246",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 27.0, 478.5, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.630609, 0.277737, 0.179169, 1.0 ],
									"id" : "obj-245",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 605.5, 276.0, 22.0 ],
									"text" : "pattrforward ::flocking_engine::simulation::flocking"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-237",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.625, 193.0, 105.0, 22.0 ],
									"text" : "scale 0 150 1. 10."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-236",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.625, 223.0, 145.0, 22.0 ],
									"text" : "pong 1. 10. @mode wrap"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-54",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.625, 320.0, 98.666686999999996, 49.0 ],
									"text" : "pattrforward ::audio::drone::flocking_drone"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-233",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.5, 200.0, 112.0, 22.0 ],
									"text" : "scale 0 200 0.3 0.8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-232",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 846.19482400000004, 29.5, 22.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-231",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 47.0, 734.5, 95.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-229",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 877.5, 29.5, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-230",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 47.0, 800.19482400000004, 61.0, 22.0 ],
									"text" : "random 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-221",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 123.0, 800.19482400000004, 29.5, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-222",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 123.0, 769.19482400000004, 51.0, 22.0 ],
									"text" : "urn-jb 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-217",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 413.5, 822.0, 29.5, 22.0 ],
									"text" : "/ 2."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-216",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 413.5, 792.0, 61.0, 22.0 ],
									"text" : "random 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-212",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 286.0, 822.0, 29.5, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-213",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 286.0, 792.0, 51.0, 22.0 ],
									"text" : "urn-jb 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-211",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 731.0, 826.0, 61.0, 22.0 ],
									"text" : "random 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-210",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 878.0, 825.0, 61.0, 22.0 ],
									"text" : "random 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-200",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 829.0, 425.5, 34.0, 22.0 ],
									"text" : "1 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-199",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 829.0, 390.0, 29.5, 22.0 ],
									"text" : "/ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-171",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 559.0, 822.0, 29.5, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-170",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 559.0, 792.0, 51.0, 22.0 ],
									"text" : "urn-jb 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 558.5, 542.0, 85.0, 22.0 ],
									"text" : "ak.rrand -5 15"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 509.25, 508.0, 85.0, 22.0 ],
									"text" : "ak.rrand -5 15"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"id" : "obj-164",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 361.5, 463.5, 216.0, 22.0 ],
									"text" : "t i b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-162",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.5, 508.0, 47.0, 22.0 ],
									"text" : "0, 1 $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
									"fontface" : 1,
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 361.5, 542.0, 68.0, 22.0 ],
									"text" : "line 1. 250"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.5, 576.0, 265.25, 22.0 ],
									"text" : "scale 1. 0. -2 15"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.5, 604.0, 55.0, 22.0 ],
									"text" : "clip 1 12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 770.0, 425.5, 47.0, 22.0 ],
									"text" : "1, 0 $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
									"fontface" : 1,
									"id" : "obj-146",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 770.0, 469.5, 68.0, 22.0 ],
									"text" : "line 1. 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 845.0, 469.5, 260.0, 20.0 ],
									"text" : "1. -> 0. (dla granego dźwięku) - przez cały blok"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.630609, 0.277737, 0.179169, 1.0 ],
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.5, 267.5, 112.0, 49.0 ],
									"text" : "pattrforward ::flocking_engine::simulation::maxvel"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
									"id" : "obj-311",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.5, 160.5, 135.0, 22.0 ],
									"text" : "r sysX.flocking.zegar"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"border" : 5,
									"bordercolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"id" : "obj-185",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1019.0, 802.0, 175.0, 116.0 ],
									"proportion" : 0.39
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"order" : 1,
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 0,
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-106", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-106", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-113", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-119", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-129", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.862745, 0.741176, 0.137255, 0.9 ],
									"destination" : [ "obj-102", 0 ],
									"order" : 1,
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"source" : [ "obj-129", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"order" : 0,
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-129", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-129", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.862745, 0.741176, 0.137255, 0.9 ],
									"destination" : [ "obj-129", 0 ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 0.9 ],
									"destination" : [ "obj-142", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-149", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-164", 0 ],
									"order" : 2,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 0.9 ],
									"destination" : [ "obj-199", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-247", 0 ],
									"order" : 3,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-41", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"order" : 1,
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"midpoints" : [ 1897.5, 824.0, 2161.699951000000056, 824.0 ],
									"order" : 0,
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"source" : [ "obj-159", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"order" : 1,
									"source" : [ "obj-164", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"order" : 0,
									"source" : [ "obj-164", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 3 ],
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 4 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-159", 0 ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-314", 0 ],
									"source" : [ "obj-174", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-177", 0 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-318", 0 ],
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 0.9 ],
									"destination" : [ "obj-246", 1 ],
									"source" : [ "obj-183", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 0.9 ],
									"destination" : [ "obj-237", 0 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-200", 0 ],
									"source" : [ "obj-199", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 2 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-200", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-210", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-211", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-212", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-212", 0 ],
									"source" : [ "obj-213", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-217", 0 ],
									"source" : [ "obj-216", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-217", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-232", 1 ],
									"order" : 1,
									"source" : [ "obj-221", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"order" : 0,
									"source" : [ "obj-221", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-221", 0 ],
									"source" : [ "obj-222", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-229", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-232", 0 ],
									"source" : [ "obj-230", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-222", 0 ],
									"source" : [ "obj-231", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-230", 0 ],
									"source" : [ "obj-231", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-229", 0 ],
									"source" : [ "obj-232", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-233", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-236", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-236", 0 ],
									"source" : [ "obj-237", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-250", 0 ],
									"source" : [ "obj-246", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-246", 0 ],
									"source" : [ "obj-247", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-248", 0 ],
									"source" : [ "obj-247", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-251", 1 ],
									"source" : [ "obj-248", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-245", 0 ],
									"source" : [ "obj-249", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-251", 0 ],
									"source" : [ "obj-250", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-249", 0 ],
									"source" : [ "obj-251", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 0.9 ],
									"destination" : [ "obj-233", 0 ],
									"source" : [ "obj-311", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-314", 0 ],
									"source" : [ "obj-313", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"midpoints" : [ 1700.5, 921.5, 1897.5, 921.5 ],
									"source" : [ "obj-314", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-318", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-313", 0 ],
									"source" : [ "obj-318", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-16", 0 ],
									"order" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-17", 0 ],
									"order" : 1,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-170", 0 ],
									"order" : 4,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-210", 0 ],
									"order" : 2,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-211", 0 ],
									"order" : 3,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-213", 0 ],
									"order" : 6,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-216", 0 ],
									"order" : 5,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.0, 0.533333, 0.168627, 0.9 ],
									"destination" : [ "obj-231", 0 ],
									"order" : 7,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 3 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 3 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
										"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
										"angle" : 277.842322000000024,
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
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517702999999983,
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
						"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ]
					}
,
					"patching_rect" : [ 291.0, 120.666686999999996, 171.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
						"style" : "default",
						"tags" : ""
					}
,
					"text" : "p \"mapowanie parametrów\"",
					"varname" : "parametry"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 367.0, 132.0, 875.0, 621.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "default",
						"subpatcher_template" : "Green on Black",
						"title" : "(Flocking) Organizacja czasu",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 496.0, 53.5, 150.0, 60.0 ],
									"text" : "początek (start) zaczyna od przejścia do fazy 2 (wywołanie działania \"po fazie 1\")"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 415.0, 53.5, 77.0, 22.0 ],
									"text" : "sel początek"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 225.0, 253.5, 135.0, 22.0 ],
									"text" : "r sysX.flocking.zegar"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 599.0, 289.0, 145.0, 35.0 ],
									"text" : ";\rsysX.flocking.stan koniec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 13.5, 60.0, 20.0 ],
									"text" : "rev. 2017"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.52549, 0.062745, 0.003922, 1.0 ],
									"id" : "obj-317",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.5, 53.5, 118.0, 22.0 ],
									"text" : "r sysX.flocking.reset",
									"textcolor" : [ 0.925490021705627, 0.364706009626389, 0.341176003217697, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 13.5, 169.0, 20.0 ],
									"text" : "UWAGA PĘTLA! (sprzężenie)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 137.0, 13.5, 114.0, 22.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 394.0, 587.5, 213.0, 20.0 ],
									"text" : ">> faza <nr fazy> <czas trwania fazy>"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 415.0, 84.0, 29.5, 22.0 ],
									"text" : "1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 225.0, 473.0, 99.0, 20.0 ],
									"text" : "faza 3 stały czas"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 179.0, 327.5, 191.0, 20.0 ],
									"text" : "czy minął czas do epilogu (5min)?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 603.0, 183.0, 218.0, 33.0 ],
									"text" : "wejście do fazy 3 (epilog) kończy fazową organizację czasu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 616.5, 253.5, 63.0, 20.0 ],
									"text" : "po fazie 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 382.5, 253.5, 63.0, 20.0 ],
									"text" : "po fazie 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 152.0, 253.5, 63.0, 20.0 ],
									"text" : "po fazie 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 156.0, 189.5, 182.0, 20.0 ],
									"text" : "faza N zakończona - co robimy?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 203.0, 53.5, 196.0, 20.0 ],
									"text" : "faza <nr fazy> <czas trwania fazy>"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 193.0, 147.5, 283.0, 20.0 ],
									"text" : "czekamy - czas trwania fazy dołączony jako 2 atom"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 255.0, 586.5, 116.0, 22.0 ],
									"text" : "s sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"patching_rect" : [ 137.0, 222.5, 712.0, 22.0 ],
									"text" : "select 1 2 3"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 18.880051000000002,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 137.0, 142.5, 50.0, 30.0 ],
									"text" : "pipe"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.5, 95.5, 33.0, 22.0 ],
									"text" : "stop",
									"textcolor" : [ 0.925490021705627, 0.364706009626389, 0.341176003217697, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.0, 452.5, 109.0, 20.0 ],
									"text" : "czas fazy 2 (cisza)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 415.0, 453.0, 104.0, 20.0 ],
									"text" : "czas fazy 1 (blok)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 368.0, 453.0, 45.0, 22.0 ],
									"text" : "* 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 368.0, 418.5, 88.0, 22.0 ],
									"text" : "ak.rrand 10 25"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 137.0, 452.5, 45.0, 22.0 ],
									"text" : "* 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 137.0, 418.5, 81.0, 22.0 ],
									"text" : "ak.rrand 3 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 368.0, 494.0, 60.0, 22.0 ],
									"text" : "faza 1 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 213.0, 495.0, 80.0, 22.0 ],
									"text" : "faza 3 30000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 137.0, 368.5, 171.0, 22.0 ],
									"text" : "sel 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 137.0, 327.5, 41.0, 22.0 ],
									"text" : "> 300"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 137.0, 289.0, 107.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 137.0, 495.0, 60.0, 22.0 ],
									"text" : "faza 2 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 137.0, 53.5, 64.0, 22.0 ],
									"text" : "route faza"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.0,
									"id" : "obj-7",
									"linecount" : 14,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 570.0, 360.0, 285.0, 163.0 ],
									"text" : "Uproszczenie silnika:\n- trzy fazy:\n1) blok\n2) cisza\n3) epilog\n\nsekwencja zaczyna się od ciszy \n2 1 [2 1]* 3\n\nprzejście do 3 gdy spełnione są warunki:\n- pierwsze przejście do ciszy po 5 min. (300 sek.) -> przy przejściu na (2) sprawdzamy, czy czas jest większy niż (300s) - jeżeli tak -> (3), jeżeli nie -> (2)\n "
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-317", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"source" : [ "obj-44", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 0,
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 1 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
										"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
										"angle" : 277.842322000000024,
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
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517702999999983,
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
						"bgcolor" : [ 0.85098, 0.85098, 0.823529, 1.0 ],
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ]
					}
,
					"patching_rect" : [ 291.0, 58.666687000000003, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.85098, 0.85098, 0.823529, 1.0 ],
						"style" : "default",
						"tags" : ""
					}
,
					"text" : "p \"organizacja czasu\"",
					"varname" : "flocking-organizacja_czasu"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 41.0, 343.0, 1201.0, 412.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "default",
						"subpatcher_template" : "Green on Black",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 215.0, 397.0, 227.0, 20.0 ],
									"text" : "\"wyzerowanie\" wartości w widoku instant"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 722.0, 375.0, 227.0, 20.0 ],
									"text" : "\"wyzerowanie\" wartości w widoku instant"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"bgcolor2" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 702.5, 397.0, 169.0, 35.0 ],
									"text" : ";\rsysXi i 0 instant pchdyn 65. 0.",
									"textcolor" : [ 0.925490021705627, 0.364706009626389, 0.341176003217697, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"bgcolor2" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 211.0, 360.0, 176.0, 35.0 ],
									"text" : ";\rsysXi i $1 instant pchdyn 65. 0.",
									"textcolor" : [ 0.925490021705627, 0.364706009626389, 0.341176003217697, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 29.5, 59.0, 20.0 ],
									"suppressinlet" : 1,
									"text" : "początek",
									"underline" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-59",
									"maxclass" : "comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 903.0, 29.5, 172.0, 20.0 ],
									"suppressinlet" : 1,
									"text" : "interaktywne dane z symulacji",
									"underline" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-58",
									"maxclass" : "comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 733.0, 29.5, 88.0, 20.0 ],
									"suppressinlet" : 1,
									"text" : "faza 3 \"epilog\"",
									"underline" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 547.0, 29.5, 83.0, 20.0 ],
									"suppressinlet" : 1,
									"text" : "faza 2 \"cisza\"",
									"underline" : 1
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 952.0, 171.0, 162.0, 22.0 ],
									"text" : "r sysX.flocking.solo_instr"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 211.0, 75.0, 162.0, 22.0 ],
									"text" : "r sysX.flocking.solo_instr"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"id" : "obj-54",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 562.5, 180.0, 80.0, 49.0 ],
									"text" : "r sysX.flocking.solo_instr"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 74.0, 129.0, 22.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 3,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 467.0, 324.0, 775.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
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
										"style" : "default",
										"subpatcher_template" : "Green on Black",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-48",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 51.0, 281.0, 72.0, 20.0 ],
													"text" : "instr. solo"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-94",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 157.0, 281.0, 72.0, 20.0 ],
													"text" : "inne instr."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "bang", "int" ],
													"patching_rect" : [ 72.0, 69.5, 125.0, 22.0 ],
													"text" : "t i b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-71",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 157.0, 146.0, 40.0, 22.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 125.0, 111.0, 51.0, 22.0 ],
													"text" : "uzi 4 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-49",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 72.0, 17.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-50",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 178.0, 249.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-51",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 72.0, 249.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"source" : [ "obj-69", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-71", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-73", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 1 ],
													"source" : [ "obj-73", 2 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
													"fontsize" : [ 14.0 ],
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
													"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
													"fontname" : [ "Lato" ],
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
														"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
														"angle" : 277.842322000000024,
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
													"fontface" : [ 0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"fontsize" : [ 14.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"textjustification" : [ 0 ],
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
													"fontname" : [ "Lato Regular" ],
													"bgfillcolor" : 													{
														"type" : "color",
														"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
														"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
														"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
														"angle" : 268.517702999999983,
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
										"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
										"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ]
									}
,
									"patching_rect" : [ 211.0, 108.5, 98.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ],
										"globalpatchername" : "",
										"locked_bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
										"style" : "default",
										"tags" : ""
									}
,
									"text" : "p solo-pozostałe"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"linecount" : 10,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 237.5, 189.0, 141.0 ],
									"text" : "wyświetlanie notacji:\n- początek - instant dla wszystkich\n- blok - solo tekst (długi dźwięk), reszta instant\n- cisza - solo tekst (cisza), reszta instant-bez zmian\n- epilog - tekst o zatrzymaniu dźwięku dla wszystkich instrumentalistów"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 551.0, 147.0, 322.0, 22.0 ],
									"text" : "sel 2 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 915.0, 85.5, 150.0, 33.0 ],
									"text" : "dane z mapowania symulacji na notację (js)"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 12.0, 108.5, 77.0, 22.0 ],
									"text" : "sel początek"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgcolor2" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_angle" : 268.517702999999983,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"bgfillcolor_proportion" : 0.525821,
									"bgfillcolor_pt1" : [ 0.490099, 0.478261 ],
									"bgfillcolor_pt2" : [ 0.475248, 1.052174 ],
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-22",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 153.0, 139.0, 35.0 ],
									"text" : ";\rsysXi i 0 view instant",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 551.0, 75.0, 129.0, 22.0 ],
									"text" : "r sysX.flocking.stan"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 551.0, 115.5, 73.0, 22.0 ],
									"text" : "route faza"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgcolor2" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_angle" : 268.517702999999983,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"bgfillcolor_proportion" : 0.525821,
									"bgfillcolor_pt1" : [ 0.490099, 0.478261 ],
									"bgfillcolor_pt2" : [ 0.475248, 1.052174 ],
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-45",
									"linecount" : 5,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 722.0, 285.0, 162.0, 76.0 ],
									"text" : ";\rsysXi i 0 view text, i 0 text title wyciszenie, i 0 text text zatrzymaj i spokojnie wycisz ostatni dźwięk (jeżeli grałeś)",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 722.0, 234.0, 151.0, 47.0 ],
									"text" : "epilog - wszystkie instrumenty ->tekst\n+ komentarz \"epilog\""
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgcolor2" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_angle" : 268.517702999999983,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"bgfillcolor_proportion" : 0.525821,
									"bgfillcolor_pt1" : [ 0.490099, 0.478261 ],
									"bgfillcolor_pt2" : [ 0.475248, 1.052174 ],
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-8",
									"linecount" : 4,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 551.0, 285.0, 139.0, 62.0 ],
									"text" : ";\rsysXi i $1 view text, i $1 text title tacet, i $1 text text (cisza)",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 551.0, 237.5, 30.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 551.0, 348.0, 151.0, 47.0 ],
									"text" : "rozpoczynami fragment ciszy - instrument solo ma tacet"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.701961, 0.415686, 0.886275, 0.22 ],
									"id" : "obj-2",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.5, 9.5, 197.0, 60.0 ],
									"text" : "nr instr solo otrzymywany w momencie rozpoczęcia kolejnego segmentu z instrumentem solo\n= początek fazy \"blok\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 211.0, 256.0, 57.0, 22.0 ],
									"text" : "pack i s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 249.0, 191.0, 70.0, 22.0 ],
									"text" : "random 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 211.0, 153.0, 57.0, 22.0 ],
									"text" : "t i b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 249.0, 227.0, 288.0, 22.0 ],
									"text" : "zl lookup NISKIM ŚRODKOWYM WYSOKIM"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgcolor2" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_angle" : 268.517702999999983,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"bgfillcolor_proportion" : 0.525821,
									"bgfillcolor_pt1" : [ 0.490099, 0.478261 ],
									"bgfillcolor_pt2" : [ 0.475248, 1.052174 ],
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-99",
									"linecount" : 4,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 233.0, 292.0, 276.0, 62.0 ],
									"text" : ";\rsysXi i $1 view text, i $1 text title Długi dźwięk, i $1 text text Zagraj długi dźwięk w rejestrze $2 o profilu dynamicznym narastającym i opadającym.",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-97",
									"maxclass" : "comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 29.5, 78.0, 20.0 ],
									"suppressinlet" : 1,
									"text" : "faza 1 \"blok\"",
									"underline" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgcolor2" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_angle" : 268.517702999999983,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"bgfillcolor_proportion" : 0.525821,
									"bgfillcolor_pt1" : [ 0.490099, 0.478261 ],
									"bgfillcolor_pt2" : [ 0.475248, 1.052174 ],
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-67",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 140.0, 147.0, 35.0 ],
									"text" : ";\rsysXi i $1 view instant",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 915.0, 207.0, 56.0, 22.0 ],
									"text" : "route 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 977.0, 207.0, 167.0, 20.0 ],
									"text" : "odfiltrowanie instrumentu solo"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"bgcolor2" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-44",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 952.0, 245.5, 176.0, 35.0 ],
									"text" : ";\rsysXi i $1 instant pchdyn $2 $3",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 915.0, 124.0, 168.0, 20.0 ],
									"text" : "<nr_instr> <pitch> <dyn>"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"color" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 915.0, 147.0, 148.0, 22.0 ],
									"text" : "r sysX.flocking.to-instr",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 1 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-101", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"order" : 0,
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.764706, 0.592157, 0.101961, 0.9 ],
									"destination" : [ "obj-45", 0 ],
									"order" : 0,
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 0.9 ],
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 0.9 ],
									"destination" : [ "obj-38", 1 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
										"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
										"angle" : 277.842322000000024,
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
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517702999999983,
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
						"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ]
					}
,
					"patching_rect" : [ 291.0, 180.16668701171875, 146.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
						"style" : "default",
						"tags" : ""
					}
,
					"text" : "p \"generowanie partytury\""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 444.0, 122.0, 798.0, 687.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "default",
						"subpatcher_template" : "Green on Black",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 370.0, 512.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 620.0, 522.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 359.25, 148.5, 29.5, 22.0 ],
									"text" : "=="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 359.25, 179.5, 194.0, 22.0 ],
									"text" : "s sysX.au.det_sigmund.mute_anal"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 380.0, 337.0, 198.0, 20.0 ],
									"text" : "analiza  dźwięku instrumentu \"solo\""
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"gradient" : 1,
									"id" : "obj-10",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.0, 545.5, 132.0, 49.0 ],
									"text" : ";\rsysX.flocking.sim mm_pch_map_root $1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
									"id" : "obj-155",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 77.0, 171.0, 22.0 ],
									"text" : "r sysX.flocking.interaktywność"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 210.5, 243.0, 22.0 ],
									"text" : "pattrforward ::audio::det::setup::pch_stream"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 179.5, 243.0, 22.0 ],
									"text" : "pattrforward ::audio::det::setup::env_stream"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-151",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 105.5, 118.0, 180.0, 20.0 ],
									"text" : "wł./wył. analizatorów dźwięku"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 24.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.0, 28.825503999999999, 144.0, 33.0 ],
									"text" : "Konfiguracja"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 24.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 46.0, 261.825499999999977, 411.0, 33.0 ],
									"text" : "Mapowanie danych z analizy dźwięku"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.0, 307.0, 160.0, 22.0 ],
									"text" : "r sysX.flocking.solo_instr"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 324.5, 390.0, 95.5, 33.0 ],
									"text" : "skale instrumentów"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.0, 504.0, 36.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.0, 374.0, 171.0, 22.0 ],
									"text" : "r sysX.flocking.interaktywność"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.25, 443.0, 152.0, 22.0 ],
									"text" : "scale 30 100 2000 400"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.25, 482.0, 255.0, 22.0 ],
									"text" : "pattrforward ::audio::drone::pp-del-slow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 67.0, 466.0, 92.0, 22.0 ],
									"text" : "speedlim 200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 211.0, 458.0, 83.0, 22.0 ],
									"text" : "split 36 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 221.0, 595.0, 362.0, 20.0 ],
									"text" : "podłączenie detektor dźwięku > środek ciężkości droidów"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 311.5, 458.0, 52.0, 22.0 ],
									"text" : "unpack"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.466667, 0.254902, 0.607843, 1.0 ],
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 272.0, 336.0, 97.0, 22.0 ],
									"text" : "t i i i",
									"textcolor" : [ 0.701960980892181, 0.415686011314392, 0.886274993419647, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 4,
										"data" : [ 											{
												"key" : 1,
												"value" : [ 60, 90 ]
											}
, 											{
												"key" : 2,
												"value" : [ 48, 82 ]
											}
, 											{
												"key" : 3,
												"value" : [ 55, 84 ]
											}
, 											{
												"key" : 4,
												"value" : [ 36, 67 ]
											}
 ]
									}
,
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 311.5, 420.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll @embed 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 211.0, 520.0, 121.0, 22.0 ],
									"text" : "zmap 60 90 0 127"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 559.0, 166.0, 22.0 ],
									"text" : "s sysX.flocking.det>pos_x"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 429.25, 561.0, 166.0, 22.0 ],
									"text" : "s sysX.flocking.det>pos_y"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 429.25, 522.0, 121.0, 22.0 ],
									"text" : "zmap 40 80 0 127"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 212.0, 407.0, 81.0, 35.0 ],
									"text" : "sysX.au.det1 pch 1",
									"textcolor" : [ 0.960784018039703, 0.82745099067688, 0.156863003969193, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 429.25, 401.0, 124.0, 22.0 ],
									"text" : "sysX.au.det1 env 1",
									"textcolor" : [ 0.960784018039703, 0.82745099067688, 0.156863003969193, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"order" : 2,
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"order" : 1,
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 0,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"order" : 1,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 0.9 ],
									"destination" : [ "obj-72", 1 ],
									"midpoints" : [ 359.5, 383.0, 543.75, 383.0 ],
									"source" : [ "obj-83", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 0.9 ],
									"destination" : [ "obj-76", 1 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 0.9 ],
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-83", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 2 ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 1 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.701961, 0.415686, 0.886275, 0.9 ],
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"midpoints" : [ 220.5, 486.0, 172.0, 486.0, 172.0, 453.0, 76.5, 453.0 ],
									"order" : 1,
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"order" : 0,
									"source" : [ "obj-96", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
										"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
										"angle" : 277.842322000000024,
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
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517702999999983,
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
						"bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ],
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ]
					}
,
					"patching_rect" : [ 291.0, 150.166686999999996, 193.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ],
						"style" : "default",
						"tags" : ""
					}
,
					"text" : "p \"mapowanie analiza dźwięku\""
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
					"id" : "obj-2580",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -10.0, -5.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 619.0, 78.0, 616.0, 687.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"style" : "default",
						"subpatcher_template" : "Green on Black",
						"globalpatchername" : "flocking_sim",
						"title" : "Flocking Simulation",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 242.0, 599.0, 196.0, 33.0 ],
									"text" : " wysyła zdalnie dane do notacji na symbol 'sysX.flocking.to-instr'"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 211.0, 644.0, 150.0, 20.0 ],
									"text" : "[todo] do wizualizacji"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 448.5, 47.0, 164.0, 22.0 ],
									"text" : "pattrmarker flocking_sim"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 143.0, 605.5, 97.0, 20.0 ],
									"text" : "@varname sim"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"id" : "obj-70",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 455.5, 17.0, 72.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.0, 12.0, 70.0, 20.0 ],
									"text" : "Symulacja",
									"textcolor" : [ 0.011765000410378, 0.396077990531921, 0.752941012382507, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.833373999999999, 476.0, 61.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 19.5, 50.3497314453125, 59.0, 20.0 ],
									"text" : "enabled",
									"textcolor" : [ 0.011765000410378, 0.396077990531921, 0.752941012382507, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"checkedcolor" : [ 0.507548, 0.740231, 0.99897, 1.0 ],
									"id" : "obj-26",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.833373999999999, 497.0, 56.0, 56.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.0, 77.0, 54.0, 54.0 ],
									"uncheckedcolor" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"varname" : "enabled"
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_map_steps",
									"htricolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"id" : "obj-67",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 446.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 821.5, 170.0, 214.0, 22.0 ],
									"text_width" : 160.5,
									"textcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_map_scale",
									"htricolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"id" : "obj-66",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 415.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 821.5, 139.0, 214.0, 22.0 ],
									"text_width" : 160.5,
									"textcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_map_root",
									"htricolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"id" : "obj-65",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 384.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 821.5, 108.0, 214.0, 22.0 ],
									"text_width" : 160.5,
									"textcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_map_ranges",
									"htricolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"id" : "obj-64",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 353.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 821.5, 77.0, 214.0, 22.0 ],
									"text_width" : 160.5,
									"textcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_map_quantize",
									"htricolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
									"id" : "obj-63",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 322.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 821.5, 46.0, 214.0, 22.0 ],
									"text_width" : 160.5,
									"textcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_line_time",
									"id" : "obj-62",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 291.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 386.5, 170.0, 210.0, 22.0 ],
									"text_width" : 160.5
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_line_target",
									"id" : "obj-61",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 260.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 386.5, 139.0, 210.0, 22.0 ],
									"text_width" : 160.5
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_line_bp",
									"id" : "obj-60",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 229.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 386.5, 108.0, 210.0, 22.0 ],
									"text_width" : 160.5
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_pch_sah_mode",
									"id" : "obj-59",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 198.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 386.5, 46.0, 210.0, 22.0 ],
									"text_width" : 160.5,
									"textcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_dyn_decay_time",
									"id" : "obj-58",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 167.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 612.5, 170.0, 193.0, 22.0 ],
									"text_width" : 143.5
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_dyn_decay_bp",
									"id" : "obj-57",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 136.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 612.5, 139.0, 193.0, 22.0 ],
									"text_width" : 143.5
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_dyn_fix_level",
									"id" : "obj-56",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 105.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 612.5, 108.0, 193.0, 22.0 ],
									"text_width" : 143.5,
									"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_dyn_fix_bp",
									"id" : "obj-55",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 74.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 612.5, 77.0, 193.0, 22.0 ],
									"text_width" : 143.5,
									"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_dyn_sah_mode",
									"id" : "obj-54",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 43.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 612.5, 46.0, 193.0, 22.0 ],
									"text_width" : 143.5,
									"textcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 834.0, 385.5, 167.0, 22.0 ],
									"text" : "r sysX.flocking.det>pos_x"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 856.0, 420.0, 168.0, 22.0 ],
									"text" : "r sysX.flocking.det>pos_y"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.0, 565.5, 125.0, 22.0 ],
									"text" : "r sysX.flocking.sim"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 597.0, 640.0, 126.0, 22.0 ],
									"text" : "s sysX.flocking.sim"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.376187, 0.409384, 0.445165, 1.0 ],
									"bgmode" : 2,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-199",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "pattr-helper.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ -8.0, -7.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 448.5, 88.0, 271.0, 85.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 97.5, 123.0, 269.0, 85.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-198",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 727.0, 273.0, 70.0, 22.0 ],
									"restore" : 									{
										"alignment" : [ 0.085 ],
										"coherence" : [ 0.18 ],
										"friction" : [ 0.401 ],
										"gravity" : [ 0.27 ],
										"inertia" : [ 0.17 ],
										"separation" : [ 0.192 ],
										"septhresh" : [ 0.09 ]
									}
,
									"text" : "autopattr",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ],
									"varname" : "u925005076"
								}

							}
, 							{
								"box" : 								{
									"autorestore" : "flocking.json",
									"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 448.5, 191.0, 140.0, 22.0 ],
									"saved_object_attributes" : 									{
										"client_rect" : [ 1189, 44, 1572, 406 ],
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"storage_rect" : [ 583, 69, 1151, 469 ]
									}
,
									"text" : "pattrstorage flocking",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ],
									"varname" : "flocking"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.5, 644.0, 196.0, 22.0 ],
									"text" : "s sysX.flocking.from-boidroids"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 784.0, 552.0, 24.0, 22.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 817.666625999999951, 548.0, 152.0, 33.0 ],
									"text" : "punkt grawitacji z analizy:\nx wysokości, y - głośność"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 834.0, 495.0, 113.0, 22.0 ],
									"text" : "scale 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 834.0, 462.0, 41.0, 22.0 ],
									"text" : "pack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 597.0, 607.0, 24.0, 22.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 40.833373999999999, 565.5, 84.0, 22.0 ],
									"text" : "qmetro 50"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 784.0, 522.0, 121.0, 22.0 ],
									"text" : "pak gravpoint 0.5 0.5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"format" : 6,
									"id" : "obj-22",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : -1.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 740.0, 350.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 307.5, 67.082962036132812, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_mmin" : -1.0,
											"parameter_longname" : "gravity",
											"parameter_invisible" : 1,
											"parameter_mmax" : 1.0,
											"parameter_order" : 1,
											"parameter_shortname" : "gravity",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_linknames" : 1
										}

									}
,
									"varname" : "gravity"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"id" : "obj-20",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 740.0, 381.0, 63.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 242.5, 67.082962036132812, 61.0, 22.0 ],
									"text" : "gravity $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgcolor2" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_angle" : 268.517702999999983,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
									"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"bgfillcolor_proportion" : 0.525821,
									"bgfillcolor_pt1" : [ 0.490099, 0.478261 ],
									"bgfillcolor_pt2" : [ 0.475248, 1.052174 ],
									"bgfillcolor_type" : "color",
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"gradient" : 1,
									"id" : "obj-19",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 543.0, 522.0, 65.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 242.5, 92.939895629882812, 63.0, 22.0 ],
									"text" : "maxvel $1",
									"textcolor" : [ 0.317647010087967, 0.65490198135376, 0.97647100687027, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"id" : "obj-18",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 644.0, 451.0, 80.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 97.5, 92.939895629882812, 81.0, 22.0 ],
									"text" : "septhresh $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"id" : "obj-17",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 543.0, 381.0, 65.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 242.5, 12.0, 63.0, 22.0 ],
									"text" : "friction $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"id" : "obj-16",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 543.0, 451.0, 60.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 242.5, 38.6502685546875, 61.0, 22.0 ],
									"text" : "inertia $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"id" : "obj-15",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 429.0, 451.0, 83.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 97.5, 38.6502685546875, 81.0, 22.0 ],
									"text" : "coherence $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"id" : "obj-14",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 429.0, 381.0, 79.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 97.5, 12.0, 81.0, 22.0 ],
									"text" : "alignment $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"id" : "obj-13",
									"ignoreclick" : 1,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 644.0, 381.0, 83.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 97.5, 66.28961181640625, 81.0, 22.0 ],
									"text" : "separation $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"format" : 6,
									"htricolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 543.0, 491.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 307.5, 92.939895629882812, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "maxvel",
											"parameter_invisible" : 1,
											"parameter_mmax" : 1.0,
											"parameter_order" : 1,
											"parameter_shortname" : "maxvel",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_linknames" : 1
										}

									}
,
									"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"tricolor" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
									"varname" : "maxvel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"format" : 6,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"maximum" : 0.5,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 644.0, 420.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.5, 92.939895629882812, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "septhresh",
											"parameter_invisible" : 1,
											"parameter_mmax" : 0.5,
											"parameter_order" : 1,
											"parameter_shortname" : "septhresh",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_linknames" : 1
										}

									}
,
									"varname" : "septhresh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"format" : 6,
									"id" : "obj-9",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 543.0, 350.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 307.5, 12.0, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "friction",
											"parameter_invisible" : 1,
											"parameter_mmax" : 1.0,
											"parameter_order" : 1,
											"parameter_shortname" : "friction",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_linknames" : 1
										}

									}
,
									"varname" : "friction"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"format" : 6,
									"id" : "obj-8",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 543.0, 420.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 307.5, 38.6502685546875, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "inertia",
											"parameter_invisible" : 1,
											"parameter_mmax" : 1.0,
											"parameter_order" : 1,
											"parameter_shortname" : "inertia",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_linknames" : 1
										}

									}
,
									"varname" : "inertia"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"format" : 6,
									"id" : "obj-7",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 429.0, 420.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.5, 38.6502685546875, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "coherence",
											"parameter_invisible" : 1,
											"parameter_mmax" : 1.0,
											"parameter_order" : 1,
											"parameter_shortname" : "coherence",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_linknames" : 1
										}

									}
,
									"varname" : "coherence"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"format" : 6,
									"id" : "obj-6",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 429.0, 350.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.5, 12.0, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "alignment",
											"parameter_invisible" : 1,
											"parameter_mmax" : 1.0,
											"parameter_order" : 1,
											"parameter_shortname" : "alignment",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_linknames" : 1
										}

									}
,
									"varname" : "alignment"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 11.595186999999999,
									"format" : 6,
									"id" : "obj-5",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 644.0, 350.0, 53.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 180.5, 66.28961181640625, 50.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "separation",
											"parameter_invisible" : 1,
											"parameter_mmax" : 1.0,
											"parameter_order" : 1,
											"parameter_shortname" : "separation",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1,
											"parameter_linknames" : 1
										}

									}
,
									"varname" : "separation"
								}

							}
, 							{
								"box" : 								{
									"embedstate" : [ [ "mm_pch_map_steps", 12 ], [ "mm_dyn_decay_bp", 1 ], [ "mm_pch_map_ranges", 6 ], [ "mm_pch_sah_mode", 0 ], [ "mm_pch_map_scale", 1 ], [ "mm_pch_line_target", 0.5 ], [ "mm_pch_line_time", 500 ], [ "mm_dyn_decay_time", 500 ], [ "mm_dyn_fix_bp", 1 ], [ "mm_dyn_fix_level", 1 ], [ "mm_pch_map_quantize", 0 ], [ "mm_dyn_sah_mode", 0 ], [ "mm_pch_map_root", 0 ], [ "mm_pch_line_bp", 1 ], [ "mm_sah_threshold", 0 ] ],
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 605.5, 126.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "sysX.boidroids.js",
										"parameter_enable" : 0
									}
,
									"text" : "js sysX.boidroids.js",
									"varname" : "sim"
								}

							}
, 							{
								"box" : 								{
									"attr" : "mm_sah_threshold",
									"id" : "obj-50",
									"lock" : 1,
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 12.0, 398.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 386.5, 12.0, 210.0, 22.0 ],
									"text_width" : 160.5,
									"textcolor" : [ 1.0, 0.96957, 0.432532, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 653.5, 586.0, 606.5, 586.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 438.5, 586.0, 606.5, 586.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 438.5, 587.0, 606.5, 587.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 552.5, 586.0, 606.5, 586.0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 552.5, 586.0, 606.5, 586.0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 653.5, 586.0, 606.5, 586.0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 552.5, 587.5, 606.5, 587.5 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.317647, 0.654902, 0.976471, 0.9 ],
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-198", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 0,
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 2,
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 6,
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 5,
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 3,
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 4,
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"source" : [ "obj-199", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 749.5, 585.0, 606.5, 585.0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 793.5, 587.0, 606.5, 587.0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-93", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"fontname" : [ "Lato" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
										"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
										"angle" : 277.842322000000024,
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
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontsize" : [ 14.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
									"fontname" : [ "Lato Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
										"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
										"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
										"angle" : 268.517702999999983,
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
						"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
						"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ]
					}
,
					"patching_rect" : [ 12.0, 326.0, 1025.0, 213.0 ],
					"varname" : "simulation",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 718.496093999999971, 93.5, 56.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.5, 124.5, 59.0, 20.0 ],
					"text" : "instr solo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"maximum" : 4,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 698.5, 99.0, 18.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 68.5, 124.5, 23.0, 22.0 ],
					"triangle" : 0,
					"varname" : "lead_instr"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
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
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.701961, 0.415686, 0.886275, 0.9 ],
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "ak.bigger",
				"default" : 				{
					"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
					"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
					"fontsize" : [ 14.0 ],
					"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
					"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
					"fontname" : [ "Lato" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.580992, 0.600466, 0.396627, 1.0 ],
						"color2" : [ 0.326279, 0.337174, 0.223978, 1.0 ],
						"angle" : 277.842322000000024,
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
					"fontface" : [ 0 ],
					"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
					"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
					"color" : [ 0.4, 1.0, 0.4, 1.0 ],
					"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
					"fontsize" : [ 14.0 ],
					"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"textjustification" : [ 0 ],
					"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
					"fontname" : [ "Lato Regular" ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.067387, 0.339963, 0.132708, 1.0 ],
						"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
						"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
						"angle" : 268.517702999999983,
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
		"bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ],
		"editing_bgcolor" : [ 0.849443, 0.850169, 0.825753, 1.0 ]
	}

}
