{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 309.0, 88.0, 680.0, 454.0 ],
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
		"style" : "default",
		"subpatcher_template" : "Default Max 7",
		"assistshowspatchername" : 0,
		"title" : "Moduły muzyczne",
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-4",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 196.0, 23.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 164.0, 53.0, 22.0 ],
									"text" : "sel start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 132.0, 85.0, 22.0 ],
									"text" : "route the_end"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 207.0, 22.0 ],
									"text" : "r sysX.engine.z_centrum_sterowania"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-33",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 246.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 54.0, 532.0, 76.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p THE_END"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-28",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -21.0, -9.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 191.0, 282.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
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
									"id" : "obj-26",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.0, 293.5, 324.0, 49.0 ],
									"text" : "długie f;\rsysXi 0 view text, 0 text title długie f, 0 text text przytrzymaj f ' (brzmiące) na długim diminuendzie al niente",
									"textcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 203.0, 394.0, 150.0, 33.0 ],
									"text" : "po 12 sekundach przejście dalej"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "stop" ],
									"patching_rect" : [ 199.0, 314.0, 40.0, 22.0 ],
									"text" : "t stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 182.0, 367.0, 63.0, 22.0 ],
									"text" : "del 12000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 182.0, 254.0, 36.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.0, 78.0, 107.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 25.5, 7.5, 107.0, 20.0 ],
									"text" : " --- Last note ---",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 553.0, 210.0, 480.0, 288.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 266.0, 168.0, 24.0, 22.0 ],
													"text" : "t 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 240.0, 168.0, 24.0, 22.0 ],
													"text" : "t 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 255.0, 214.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 34.0, 35.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 77.0, 36.0, 22.0 ],
													"text" : "dalej"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"patching_rect" : [ 214.0, 118.0, 97.0, 22.0 ],
													"text" : "sel init start stop"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 124.0, 107.0, 22.0 ],
													"text" : "prepend last_note"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 261.0, 65.0, 90.0, 22.0 ],
													"text" : "route last_note"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-31",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 156.0, 143.0, 49.0 ],
													"text" : "s sysX.engine.do_centrum_sterowania"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 261.0, 35.0, 207.0, 22.0 ],
													"text" : "r sysX.engine.z_centrum_sterowania"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 214.0, 35.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"fontsize" : [ 14.0 ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "niebieski",
												"default" : 												{
													"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
													"bgfillcolor" : 													{
														"type" : "color",
														"color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
														"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
														"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
														"angle" : 268.517702999999983,
														"proportion" : 0.525821,
														"autogradient" : 0
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "zielony",
												"default" : 												{
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"fontsize" : [ 14.0 ],
													"textjustification" : [ 0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"fontname" : [ "Lato Regular" ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
													"fontface" : [ 0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 182.0, 212.0, 223.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p obsługa_centrum_sterowania-lastnote"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 109.436156999999994, 35.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 102.5, 29.5, 35.0, 22.0 ],
									"text" : "stop",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 377.5, 109.436156999999994, 38.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 60.0, 29.5, 38.0, 22.0 ],
									"text" : "start",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 343.0, 109.436156999999994, 29.5, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 25.5, 29.5, 29.5, 22.0 ],
									"text" : "init",
									"textjustification" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 191.5, 405.0, 148.0, 405.0, 148.0, 173.0, 191.5, 173.0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-11", 0 ]
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
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"fontsize" : [ 14.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
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
										"angle" : 268.517702999999983,
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
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"fontsize" : [ 14.0 ],
									"textjustification" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontname" : [ "Lato Regular" ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 503.0, 388.5, 120.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 435.0, 250.0, 120.0, 49.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"bgcolor2" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"bgfillcolor_angle" : 268.517702999999983,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.341176, 0.027451, 0.023529, 1.0 ],
					"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
					"bgfillcolor_proportion" : 0.525821,
					"bgfillcolor_pt1" : [ 0.490099, 0.478261 ],
					"bgfillcolor_pt2" : [ 0.475248, 1.052174 ],
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-27",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 54.0, 572.5, 295.0, 35.0 ],
					"text" : "koniec;\rsysXi 0 view text, 0 text title Koniec, 0 text text (cisza)",
					"textcolor" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"bgcolor2" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"bgfillcolor_angle" : 268.517702999999983,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.639216, 0.458824, 0.070588, 1.0 ],
					"bgfillcolor_color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
					"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
					"bgfillcolor_proportion" : 0.525821,
					"bgfillcolor_pt1" : [ 0.490099, 0.478261 ],
					"bgfillcolor_pt2" : [ 0.475248, 1.052174 ],
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 54.0, 471.5, 284.0, 35.0 ],
					"text" : "tacet;\rsysXi 0 view text, 0 text title tacet, 0 text text (cisza)",
					"textcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-32",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -21.0, -9.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 191.0, 282.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 212.0, 273.0, 306.0, 35.0 ],
									"text" : ";\rsysXi 0 view text, 0 text title (tacet), 0 text body (tape B)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 212.0, 241.0, 36.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 175.0, 126.0, 22.0 ],
									"text" : "r tape_B_from_player"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 241.0, 114.0, 22.0 ],
									"text" : "s tape_B_to_player"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 197.0, 73.0, 107.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 25.5, 7.5, 107.0, 20.0 ],
									"text" : " --- Tape_B ---",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 553.0, 210.0, 480.0, 288.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 266.0, 168.0, 24.0, 22.0 ],
													"text" : "t 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 240.0, 168.0, 24.0, 22.0 ],
													"text" : "t 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 255.0, 214.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 35.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 77.0, 36.0, 22.0 ],
													"text" : "dalej"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"patching_rect" : [ 214.0, 118.0, 97.0, 22.0 ],
													"text" : "sel init start stop"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 124.0, 96.0, 22.0 ],
													"text" : "prepend tape_B"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 261.0, 65.0, 79.0, 22.0 ],
													"text" : "route tape_B"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-31",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 156.0, 143.0, 49.0 ],
													"text" : "s sysX.engine.do_centrum_sterowania"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 261.0, 35.0, 207.0, 22.0 ],
													"text" : "r sysX.engine.z_centrum_sterowania"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 214.0, 35.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"fontsize" : [ 14.0 ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "niebieski",
												"default" : 												{
													"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
													"bgfillcolor" : 													{
														"type" : "color",
														"color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
														"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
														"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
														"angle" : 268.517702999999983,
														"proportion" : 0.525821,
														"autogradient" : 0
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "zielony",
												"default" : 												{
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"fontsize" : [ 14.0 ],
													"textjustification" : [ 0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"fontname" : [ "Lato Regular" ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
													"fontface" : [ 0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 31.0, 207.0, 213.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p obsługa_centrum_sterowania-tapeB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 104.436156999999994, 35.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 102.5, 29.5, 35.0, 22.0 ],
									"text" : "stop",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.5, 104.436156999999994, 38.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 60.0, 29.5, 38.0, 22.0 ],
									"text" : "start",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 104.436156999999994, 29.5, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 25.5, 29.5, 29.5, 22.0 ],
									"text" : "init",
									"textjustification" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"fontsize" : [ 14.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
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
										"angle" : 268.517702999999983,
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
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"fontsize" : [ 14.0 ],
									"textjustification" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontname" : [ "Lato Regular" ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 351.0, 377.0, 120.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 305.0, 250.0, 120.0, 49.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-11",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -21.0, -9.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 191.0, 282.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 212.0, 273.0, 305.0, 35.0 ],
									"text" : ";\rsysXi 0 view text, 0 text title (tacet), 0 text body (tape A)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 212.0, 241.0, 36.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 175.0, 126.0, 22.0 ],
									"text" : "r tape_A_from_player"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 241.0, 114.0, 22.0 ],
									"text" : "s tape_A_to_player"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 197.0, 73.0, 107.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 25.5, 7.5, 107.0, 20.0 ],
									"text" : " --- Tape_A ---",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 553.0, 210.0, 480.0, 288.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 266.0, 168.0, 24.0, 22.0 ],
													"text" : "t 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 240.0, 168.0, 24.0, 22.0 ],
													"text" : "t 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 255.0, 214.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 35.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 77.0, 36.0, 22.0 ],
													"text" : "dalej"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"patching_rect" : [ 214.0, 118.0, 97.0, 22.0 ],
													"text" : "sel init start stop"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 124.0, 96.0, 22.0 ],
													"text" : "prepend tape_A"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 261.0, 65.0, 79.0, 22.0 ],
													"text" : "route tape_A"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-31",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 156.0, 143.0, 49.0 ],
													"text" : "s sysX.engine.do_centrum_sterowania"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 261.0, 35.0, 207.0, 22.0 ],
													"text" : "r sysX.engine.z_centrum_sterowania"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 214.0, 35.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"fontsize" : [ 14.0 ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "niebieski",
												"default" : 												{
													"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
													"bgfillcolor" : 													{
														"type" : "color",
														"color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
														"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
														"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
														"angle" : 268.517702999999983,
														"proportion" : 0.525821,
														"autogradient" : 0
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "zielony",
												"default" : 												{
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"fontsize" : [ 14.0 ],
													"textjustification" : [ 0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"fontname" : [ "Lato Regular" ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
													"fontface" : [ 0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 31.0, 207.0, 213.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p obsługa_centrum_sterowania-tapeA"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 104.436156999999994, 35.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 102.5, 29.5, 35.0, 22.0 ],
									"text" : "stop",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.5, 104.436156999999994, 38.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 60.0, 29.5, 38.0, 22.0 ],
									"text" : "start",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 104.436156999999994, 29.5, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 25.5, 29.5, 29.5, 22.0 ],
									"text" : "init",
									"textjustification" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"fontsize" : [ 14.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
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
										"angle" : 268.517702999999983,
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
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"fontsize" : [ 14.0 ],
									"textjustification" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontname" : [ "Lato Regular" ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 27.0, 342.0, 120.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 250.0, 120.0, 49.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -13.0, -9.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 400.0, 112.0, 640.0, 480.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 248.0, 72.0, 22.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-7",
									"maxclass" : "flonum",
									"maximum" : 20.0,
									"minimum" : -6.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 77.5, 297.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 15.25, 64.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 358.0, 41.0, 22.0 ],
									"text" : "dbtoa"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 303.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 71.5, 58.5, 97.0, 33.0 ],
									"text" : "extra volume control (dB)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.5, 431.0, 119.0, 22.0 ],
									"text" : "s aftergame.extravol"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-60",
									"maxclass" : "flonum",
									"maximum" : 10.0,
									"minimum" : 0.5,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 61.5, 392.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 176.0, 329.0, 35.0 ],
									"text" : ";\rsysXi 0 view text, 0 text title (tacet), 0 text body (after game)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 45.0, 107.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 25.5, 7.5, 107.0, 20.0 ],
									"text" : " --- AfterGame ---",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 11,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 553.0, 210.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 417.0, 196.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 316.0, 36.0, 22.0 ],
													"text" : "dalej"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 43.0, 281.0, 64.0, 22.0 ],
													"text" : "sel koniec"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
													"fontsize" : 9.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 370.333344000000011, 145.0, 103.0, 19.0 ],
													"text" : "s sysX.aftergame.reset",
													"textcolor" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
													"fontsize" : 9.0,
													"id" : "obj-333",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 151.0, 103.0, 19.0 ],
													"text" : "s sysX.aftergame.reset",
													"textcolor" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-332",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 206.666672000000005, 192.5, 188.0, 22.0 ],
													"text" : "s sysX.au.game.rec.start_players"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-267",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 239.666672000000005, 166.5, 150.0, 20.0 ],
													"text" : "STEROWANIE CZĘŚCIĄ"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-115",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 206.666672000000005, 159.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
													"id" : "obj-176",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 251.0, 127.0, 22.0 ],
													"text" : "r sysX.aftergame.stan"
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 363.0, 112.0, 22.0 ],
													"text" : "prepend aftergame"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 138.0, 56.0, 95.0, 22.0 ],
													"text" : "route aftergame"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.71909, 0.639109, 0.045021, 1.0 ],
													"fontface" : 2,
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 395.0, 217.0, 22.0 ],
													"text" : "s sysX.engine.do_centrum_sterowania"
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
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
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-332", 0 ],
													"order" : 1,
													"source" : [ "obj-115", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"order" : 0,
													"source" : [ "obj-115", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-176", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-115", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-333", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "ak.bigger",
												"default" : 												{
													"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
													"fontsize" : [ 14.0 ],
													"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
													"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "niebieski",
												"default" : 												{
													"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
													"bgfillcolor" : 													{
														"type" : "color",
														"color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
														"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
														"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
														"angle" : 268.517702999999983,
														"proportion" : 0.525821,
														"autogradient" : 0
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "zielony",
												"default" : 												{
													"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
													"fontsize" : [ 14.0 ],
													"textjustification" : [ 0 ],
													"color" : [ 0.4, 1.0, 0.4, 1.0 ],
													"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
													"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
													"fontname" : [ "Lato Regular" ],
													"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
													"fontface" : [ 0 ],
													"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
													"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
													"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 14.0, 122.0, 177.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p obsługa_centrum_sterowania"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 91.0, 76.436156999999994, 35.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 102.5, 29.5, 35.0, 22.0 ],
									"text" : "stop",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 48.5, 76.436156999999994, 38.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 60.0, 29.5, 38.0, 22.0 ],
									"text" : "start",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 76.436156999999994, 29.5, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 25.5, 29.5, 29.5, 22.0 ],
									"text" : "init",
									"textjustification" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"fontsize" : [ 14.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
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
										"angle" : 268.517702999999983,
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
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"fontsize" : [ 14.0 ],
									"textjustification" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontname" : [ "Lato Regular" ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 174.0, 361.0, 129.0, 86.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 159.0, 250.0, 138.0, 91.0 ],
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
					"id" : "obj-34",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -5.0, -10.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 11,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 513.0, 161.0, 855.0, 687.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 442.5, 570.0, 73.0, 22.0 ],
									"text" : "loadmess --"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 19.0, 159.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 6.0, 10.0, 140.0, 20.0 ],
									"text" : "--- centr. sterowania ---"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 355.5, 453.0, 202.0, 20.0 ],
									"text" : "wyświetlanie nazwy aktywnej części"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgcolor2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_color1" : [ 0.439216, 0.74902, 0.254902, 1.0 ],
									"bgfillcolor_color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "gradient",
									"fontface" : 1,
									"fontsize" : 18.0,
									"gradient" : 1,
									"id" : "obj-70",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 783.0, 28.0, 52.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.0, 78.0, 126.0, 29.0 ],
									"text" : "start",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 353.0, 639.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 18.0, 112.0, 116.0, 20.0 ],
									"text" : "--"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 353.0, 605.0, 74.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 353.0, 570.0, 65.0, 22.0 ],
									"text" : "route start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 353.0, 539.0, 39.0, 22.0 ],
									"text" : "zl rev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 353.0, 508.0, 57.0, 22.0 ],
									"text" : "zl.slice 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 353.0, 478.0, 207.0, 22.0 ],
									"text" : "r sysX.engine.z_centrum_sterowania"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 243.0, 78.0, 22.0 ],
									"text" : "flocking start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 46.0, 134.0, 65.0, 22.0 ],
									"text" : "route start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 357.0, 21.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 52.0, 39.5, 82.0, 33.0 ],
									"text" : "włącz sterowanie"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 867.0, 199.0, 55.0, 22.0 ],
									"text" : "sel dalej"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 867.0, 243.0, 81.0, 22.0 ],
									"text" : "the_end start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 332.0, 19.0, 24.0, 24.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 26.0, 44.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 69.0, 34.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 750.0, 243.0, 86.0, 22.0 ],
									"text" : "last_note start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 659.0, 243.0, 71.0, 22.0 ],
									"text" : "waves start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 544.0, 243.0, 75.0, 22.0 ],
									"text" : "tape_B start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 429.0, 243.0, 100.0, 22.0 ],
									"text" : "phrasebook start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 332.0, 243.0, 91.0, 22.0 ],
									"text" : "aftergame start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 233.0, 243.0, 67.0, 22.0 ],
									"text" : "game start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 750.0, 199.0, 55.0, 22.0 ],
									"text" : "sel dalej"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 659.0, 199.0, 55.0, 22.0 ],
									"text" : "sel dalej"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 544.0, 199.0, 55.0, 22.0 ],
									"text" : "sel dalej"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 429.0, 199.0, 55.0, 22.0 ],
									"text" : "sel dalej"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 332.0, 199.0, 55.0, 22.0 ],
									"text" : "sel dalej"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 233.0, 199.0, 55.0, 22.0 ],
									"text" : "sel dalej"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 867.0, 134.0, 90.0, 22.0 ],
									"text" : "route last_note"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 750.0, 134.0, 75.0, 22.0 ],
									"text" : "route waves"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 332.0, 134.0, 71.0, 22.0 ],
									"text" : "route game"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 544.0, 134.0, 104.0, 22.0 ],
									"text" : "route phrasebook"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 429.0, 134.0, 95.0, 22.0 ],
									"text" : "route aftergame"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 659.0, 134.0, 79.0, 22.0 ],
									"text" : "route tape_B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 234.0, 134.0, 79.0, 22.0 ],
									"text" : "route tape_A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 243.0, 75.0, 22.0 ],
									"text" : "tape_A start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 138.0, 199.0, 62.0, 22.0 ],
									"text" : "sel taśma"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 138.0, 134.0, 82.0, 22.0 ],
									"text" : "route flocking"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 525.0, 4.0, 67.0, 20.0 ],
									"text" : "notyfikacje"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 525.0, 28.0, 215.0, 22.0 ],
									"text" : "r sysX.engine.do_centrum_sterowania"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 510.0, 334.0, 209.0, 22.0 ],
									"text" : "s sysX.engine.z_centrum_sterowania"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 31,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 46.0, 319.0, 233.0, 422.0 ],
									"text" : "przechodzenie między częsciami\n\ninicjowanie części\nuruchamianie części\n\nsiłowe kończenie części\n\n\ninterfejs części:\n\ninit\nstart\nstop\n\ninterfejs centrum sterowania - przyjmuje notyfikacje o stanie poszczególnych części w postaci:\n\n<nazwa części> początek\n<nazwa części> koniec\n<nazwa części> [inny dowolny] - określenie innego punktu w czasie\n\nnazwy części:\n- flocking\n- phrasebook\n- game\n- waves\n- tape_A\n- tape_B\n- aftergame"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"grad1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
									"grad2" : [ 0.836576, 0.903148, 0.643029, 1.0 ],
									"id" : "obj-1",
									"maxclass" : "panel",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 21.0, 48.0, 53.0, 46.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 6.0, 5.0, 140.0, 132.0 ],
									"proportion" : 0.39
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 2,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 4,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 3,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 5,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 7,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"order" : 8,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 6,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"fontsize" : [ 14.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "zielony",
								"default" : 								{
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"fontsize" : [ 14.0 ],
									"textjustification" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontname" : [ "Lato Regular" ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
									"fontface" : [ 0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 16.0, 6.0, 142.0, 129.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 310.0, 142.0, 129.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 547.0, 565.5, 131.0, 20.0 ],
					"text" : "AfterGame Emergency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 672.0, 873.0, 111.0, 22.0 ],
					"text" : "send~ tape.out4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 640.0, 843.0, 111.0, 22.0 ],
					"text" : "send~ tape.out3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 610.0, 810.0, 111.0, 22.0 ],
					"text" : "send~ tape.out2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 580.0, 775.0, 111.0, 22.0 ],
					"text" : "send~ tape.out1"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"channelcount" : 4,
					"clipheight" : 45.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "sysX-tape3a.wav",
								"filename" : "sysX-tape3a.wav",
								"filekind" : "audiofile",
								"id" : "u787002252",
								"loop" : 0,
								"content_state" : 								{
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
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-16",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 7,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 580.0, 635.0, 203.0, 45.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.101961, 0.101961, 1.0 ],
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "sysX.waves.engine.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 503.0, 143.5, 226.0, 226.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 439.0, 15.0, 228.0, 226.0 ],
					"varname" : "sysX.waves.engine",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "sysX.game.engine.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -17.0, -7.0 ],
					"patching_rect" : [ 168.0, 149.0, 148.0, 194.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 167.0, 15.0, 124.0, 210.0 ],
					"varname" : "game",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.101961, 0.101961, 1.0 ],
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "sysX.phrasebook.engine.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 721.0, 381.0, 132.0, 215.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 302.0, 15.0, 122.0, 219.0 ],
					"varname" : "phrasedict",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "sysX.flocking.engine.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ -9.0, -6.0 ],
					"patching_rect" : [ 23.5, 149.0, 127.0, 177.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 15.0, 150.0, 179.0 ],
					"varname" : "flocking",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-16", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-16", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "ak.bigger",
				"default" : 				{
					"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
					"fontsize" : [ 14.0 ],
					"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
,
					"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "niebieski",
				"default" : 				{
					"textcolor_inverse" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.086275, 0.309804, 0.52549, 1.0 ],
						"color1" : [ 0.0, 0.501961, 0.25098, 1.0 ],
						"color2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
						"angle" : 268.517702999999983,
						"proportion" : 0.525821,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "zielony",
				"default" : 				{
					"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
					"fontsize" : [ 14.0 ],
					"textjustification" : [ 0 ],
					"color" : [ 0.4, 1.0, 0.4, 1.0 ],
					"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
					"fontname" : [ "Lato Regular" ],
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ],
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
,
					"fontface" : [ 0 ],
					"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
					"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ]
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

}
