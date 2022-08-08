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
		"openrect" : [ 150.0, 65.0, 300.0, 123.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
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
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 300.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "<none>",
		"assistshowspatchername" : 0,
		"title" : "Układ X (A.Kopeć)",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 625.0, 548.0, 150.0, 20.0 ],
					"text" : "kontrolka serwera"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.8, 0.8, 0.0 ],
					"id" : "obj-33",
					"ignoreclick" : 1,
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"parameter_mappable" : 0,
					"patching_rect" : [ 599.0, 548.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 97.0, 24.0, 24.0 ],
					"thickness" : 50.0
				}

			}
, 			{
				"box" : 				{
					"align" : 2,
					"fontface" : 0,
					"hint" : "Enable HTTP server",
					"id" : "obj-32",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 599.0, 434.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 148.25, 99.0, 49.677215456962585, 20.0 ],
					"rounded" : 2.0,
					"text" : "HTTP",
					"textcolor" : [ 0.588235294117647, 0.509803921568627, 0.447058823529412, 1.0 ],
					"textjustification" : 2,
					"texton" : "HTTP",
					"textoncolor" : [ 0.63921568627451, 0.270588235294118, 0.062745098039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 599.0, 505.0, 58.0, 22.0 ],
					"text" : "sysX.http"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"linecolor" : [ 0.0, 0.0, 0.0, 0.1 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 155.0, 7.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 166.5, 10.699999999999999, 42.5, 13.848488 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecolor" : [ 0.0, 0.0, 0.0, 0.2 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 98.0, 13.5, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 155.5, 13.5, 60.5, 13.848488 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"linecolor" : [ 0.0, 0.0, 0.0, 0.2 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 102.5, 21.5, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.5, 20.0, 123.5, 13.848488 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"linecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 16.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.5, 16.5, 133.5, 13.848488 ]
				}

			}
, 			{
				"box" : 				{
					"hint" : "Open a web browser with operator view.",
					"id" : "obj-54",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 238.0, 446.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 99.0, 67.0, 20.0 ],
					"rounded" : 2.0,
					"text" : "Instrukcja",
					"textoncolor" : [ 0.450980392156863, 0.588235294117647, 0.372549019607843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"patching_rect" : [ 141.0, 495.0, 44.0, 22.0 ],
					"text" : "t open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 141.0, 526.0, 53.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
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
						"openrect" : [ 59.0, 153.0, 698.0, 541.0 ],
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
						"devicewidth" : 698.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "<none>",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 123.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"fontface" : 1,
									"fontsize" : 11.0,
									"id" : "obj-9",
									"ignoreclick" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 317.0, 251.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 322.0, 260.5, 20.0, 20.0 ],
									"rounded" : 100.0,
									"text" : "4",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"fontface" : 1,
									"fontsize" : 11.0,
									"id" : "obj-8",
									"ignoreclick" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 316.0, 5.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 322.0, 8.0, 20.0, 20.0 ],
									"rounded" : 100.0,
									"text" : "3",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"fontface" : 1,
									"fontsize" : 11.0,
									"id" : "obj-7",
									"ignoreclick" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 16.0, 245.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 13.0, 245.0, 20.0, 20.0 ],
									"rounded" : 100.0,
									"text" : "2",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"fontface" : 1,
									"fontsize" : 11.0,
									"id" : "obj-6",
									"ignoreclick" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 13.0, 66.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 13.0, 66.0, 20.0, 20.0 ],
									"rounded" : 100.0,
									"text" : "1",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
									"fontface" : 1,
									"fontsize" : 11.0,
									"id" : "obj-5",
									"ignoreclick" : 1,
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 437.0, 432.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 322.0, 417.5, 20.0, 20.0 ],
									"rounded" : 100.0,
									"text" : "!!",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 0.12 ],
									"fontface" : 1,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 392.0, 336.348479999999995, 161.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 332.0, 272.5, 351.0, 20.0 ],
									"text" : "Rozpoczęcie utworu"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 0.12 ],
									"fontface" : 1,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 62.0, 105.0, 145.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 76.0, 279.0, 20.0 ],
									"text" : "Konfiguracja dźwięku"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.65098, 0.666667, 0.662745, 0.2 ],
									"fontface" : 1,
									"fontsize" : 31.328696000000001,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 31.0, 164.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 12.842105999999999, 279.0, 41.0 ],
									"text" : "Instrukcja"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.92549, 0.364706, 0.341176, 0.12 ],
									"id" : "obj-49",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 409.0, 536.0, 364.0, 100.0 ],
									"presentation" : 1,
									"presentation_linecount" : 7,
									"presentation_rect" : [ 332.0, 427.0, 351.0, 100.0 ],
									"text" : "Uwaga! Sterowanie przebiegiem utworu jest automatyczne (nie wymaga interakcji operatora) za wyjątkiem części \"Phrasebook\", gdzie operator komputera za pomocą klawisza spacja powoduje wygenerowanie kolejnego systemu materiału nutowego dla wykonawców. Powinien to robić chwilę przed przejściem przez instrumentalistów do nowego systemu. Na początku części \"Phrasebook\" należy nacisnąć klawisz spacja dwukrotnie."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 0.12 ],
									"id" : "obj-47",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 529.0, 456.0, 150.0, 87.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 332.0, 310.5, 351.0, 47.0 ],
									"text" : "Rozmieść na ekranie komputera okna \"Moduły\" Maxa i przeglądarkę, tak aby okno przeglądarki było widoczne spod okna \"Moduły\"."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 0.12 ],
									"fontface" : 1,
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 456.0, -16.5, 161.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 332.0, 23.342106000000001, 351.0, 20.0 ],
									"text" : "Podłączenie do sieci"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 0.12 ],
									"id" : "obj-45",
									"linecount" : 16,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 414.0, 61.0, 155.0, 221.0 ],
									"presentation" : 1,
									"presentation_linecount" : 7,
									"presentation_rect" : [ 332.0, 160.342106000000001, 351.0, 100.0 ],
									"text" : "Urządzenie z przeglądarką internetową każdego wykoawcy należy podłączyć do wspólnej sieci komputerowej, następnie w przeglądarce wczytać stronę z adresu http://[adres IP tego komputera]:8080. Adres komputera można znaleźć w \"Preferencjach systemowych\" w zakłądce \"Sieć\". Po załadowaniu strony należy wybrać instrument i nacisnąć przycisk \"Connect\"."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 0.12 ],
									"id" : "obj-42",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 362.0, 356.5, 150.0, 47.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 332.0, 291.5, 351.0, 20.0 ],
									"text" : "Otwórz okno modułów muzycznych (przycisk \"Moduły\")"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 0.12 ],
									"id" : "obj-40",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 571.0, 47.0, 157.0, 154.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 332.0, 87.342106000000001, 351.0, 74.0 ],
									"text" : "po uruchomieniu serwera (okno terminala) wróć do głównego okna i naciśnij przycisk \"WebView\". Spowoduje to wyświetlenie w przeglądarce internetowej podglądu notacji do części 3 \"Phrasebook\".  Na wyświetlonej stronie klinij w przycisk \"Connect\"."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.960784, 0.827451, 0.156863, 0.12 ],
									"id" : "obj-39",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 538.0, 323.0, 151.0, 114.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 332.0, 355.5, 351.0, 60.0 ],
									"text" : "W oknie modułów włącz \"włącz sterowanie\" (zielone tło, lewy dolny róg)\n\nAby rozpocząć wykonanie naciśnij zielony przycisk \"start\"."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.952941, 0.564706, 0.098039, 0.12 ],
									"id" : "obj-36",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 606.0, 248.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 503.0, 290.0, 20.0 ],
									"text" : "Zamknij okno  \"Audio Setup\""
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.952941, 0.564706, 0.098039, 0.12 ],
									"id" : "obj-35",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 472.0, 258.0, 114.0 ],
									"presentation" : 1,
									"presentation_linecount" : 8,
									"presentation_rect" : [ 27.0, 390.0, 290.0, 114.0 ],
									"text" : "Dla każdego instrumentu powtórz procedurę:\n- instrumentalista gra krótkie dźwięki staccato o jednolitej głośności i różnych wysokościach\n- ustaw zakres czułości (czerwony pasek poniżej \"enable visualization\") tak, aby dla granych dźwięków zapalała się kontrolka obok odczytu wysokości dźwieku. Ważne, aby detektory innych instrumentów nie reagowały."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.952941, 0.564706, 0.098039, 0.12 ],
									"fontface" : 1,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 319.0, 164.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 27.0, 258.0, 290.0, 20.0 ],
									"text" : "Konfiguracja detektorów"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.952941, 0.564706, 0.098039, 0.12 ],
									"id" : "obj-30",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 340.0, 250.0, 127.0 ],
									"presentation" : 1,
									"presentation_linecount" : 8,
									"presentation_rect" : [ 27.0, 277.0, 290.0, 114.0 ],
									"text" : "Włącz przetwarzanie dźwięku w Maxie\notwórz konfigurację audio (przycisk \"Audio\" powyżej)\nW otwartym oknie:\nwłącz \"enable audio input\" (lewy górny róg)\nwłącz \"enable visualization\"\nwłącz \"send env stream\"\nwłącz \"send pitch stream\"\nwyłącz \"mute detectors\""
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.317647, 0.654902, 0.976471, 0.12 ],
									"id" : "obj-23",
									"linecount" : 13,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.0, 130.0, 150.0, 181.0 ],
									"presentation" : 1,
									"presentation_linecount" : 9,
									"presentation_rect" : [ 27.0, 95.0, 279.0, 127.0 ],
									"text" : "podłącz sygnały z mikrofonów do komputera w następujący sposób:\nkanał 1 - flet\nkanał 2 - klarnet\nkanał 3 - skrzypce\nkanał 4 - wiolonczela\n(w przypadku innej kolejności na wejściach sprzętowych przemapuj wejścia w oknie Audio Status (menu Options) -> \"Open I/O Mappings\")"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.439216, 0.74902, 0.254902, 0.12 ],
									"id" : "obj-31",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 467.0, 5.0, 150.0, 87.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 332.0, 41.342106000000001, 351.0, 47.0 ],
									"text" : "Uruchom serwer http przyciskiem „HTTP”. Prawidłowe uruchomienie oznajmiane jest zapaleniem kontrolki na przycisku."
								}

							}
 ],
						"lines" : [  ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-39", "obj-47", "obj-42", "obj-4", "obj-9" ]
							}
 ],
						"styles" : [ 							{
								"name" : "ak.bigger",
								"default" : 								{
									"fontsize" : [ 14.0 ],
									"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
									"fontname" : [ "Lato" ],
									"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
									"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
									"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
									"fontsize" : [ 14.0 ],
									"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
									"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
									"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
									"fontname" : [ "Lato Regular" ],
									"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
									"textjustification" : [ 0 ],
									"fontface" : [ 0 ],
									"color" : [ 0.4, 1.0, 0.4, 1.0 ],
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
									"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
									"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 141.0, 558.0, 72.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Instrukcja"
				}

			}
, 			{
				"box" : 				{
					"hint" : "Open audio/DSP setup window.",
					"id" : "obj-19",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 451.0, 383.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 255.0, 99.0, 41.0, 20.0 ],
					"rounded" : 2.0,
					"text" : "Audio"
				}

			}
, 			{
				"box" : 				{
					"hint" : "Open music modules window.",
					"id" : "obj-16",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 367.0, 163.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 202.624277114868164, 99.0, 46.0, 20.0 ],
					"rounded" : 2.0,
					"text" : "Moduły"
				}

			}
, 			{
				"box" : 				{
					"hint" : "Open a web browser with operator view.",
					"id" : "obj-13",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 85.0, 248.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.0, 99.0, 67.0, 20.0 ],
					"rounded" : 2.0,
					"text" : "WebView",
					"textoncolor" : [ 0.552941176470588, 0.513725490196078, 0.32156862745098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 296.0, 150.0, 33.0 ],
					"text" : "odtwórz podgląd w przeglądarce internetowej"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 41.0, 299.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 109.0, 150.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 73.5, 284.0, 20.0 ],
					"text" : "na flet, klarnet, skrzypce, wiolonczelę i komputer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.0, 383.0, 329.0, 35.0 ],
					"text" : ";\rmax launchbrowser http://localhost:8080/operator_view.html"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 85.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 6.5, 97.0, 20.0 ],
					"text" : "Andrzej Kopeć"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 39.649729999999998,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 313.0, 15.0, 52.0, 51.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 246.0, 31.848488, 50.0, 51.0 ],
					"text" : "v3"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 61.261870999999999,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.5, 3.0, 283.0, 75.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 11.5, 233.0, 75.0 ],
					"text" : "Układ X"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 437.0, 356.0, 150.0, 20.0 ],
					"text" : " okno konfiguracji dźwięku"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.0, 193.0, 150.0, 33.0 ],
					"text" : "otwórz okno przebiegu utworu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 405.0, 365.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 411.0, 199.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"patching_rect" : [ 405.0, 414.0, 44.0, 22.0 ],
					"text" : "t open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"patching_rect" : [ 410.0, 248.0, 44.0, 22.0 ],
					"text" : "t open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 445.0, 53.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 410.0, 279.0, 53.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 733.0, 120.0, 56.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 733.0, 85.0, 50.0, 22.0 ],
					"text" : "del 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 733.0, 155.0, 147.0, 22.0 ],
					"text" : "s sysX.loadbang_delayed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 733.0, 50.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 733.0, 196.0, 46.0, 22.0 ],
					"text" : "r sysXi"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 405.0, 481.0, 83.0, 22.0 ],
					"text" : "sysX.au.main",
					"varname" : "sysX.au.main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 733.0, 231.0, 123.0, 22.0 ],
					"text" : "sysX.webview-comm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 315.0, 76.0, 22.0 ],
					"text" : "sysX.engine",
					"varname" : "sysX.engine"
				}

			}
, 			{
				"box" : 				{
					"angle" : 267.392291,
					"background" : 1,
					"grad1" : [ 1.0, 1.0, 1.0, 0.42 ],
					"grad2" : [ 0.65098, 0.666667, 0.662745, 0.69 ],
					"id" : "obj-55",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 193.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 130.0 ],
					"proportion" : 0.500172,
					"pt1" : [ 0.40099, 0.286957 ],
					"pt2" : [ 0.381188, 0.721739 ],
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-1::obj-2580::obj-10" : [ "septhresh", "septhresh", 1 ],
			"obj-1::obj-1::obj-2580::obj-11" : [ "maxvel", "maxvel", 1 ],
			"obj-1::obj-1::obj-2580::obj-22" : [ "gravity", "gravity", 1 ],
			"obj-1::obj-1::obj-2580::obj-5" : [ "separation", "separation", 1 ],
			"obj-1::obj-1::obj-2580::obj-6" : [ "alignment", "alignment", 1 ],
			"obj-1::obj-1::obj-2580::obj-7" : [ "coherence", "coherence", 1 ],
			"obj-1::obj-1::obj-2580::obj-8" : [ "inertia", "inertia", 1 ],
			"obj-1::obj-1::obj-2580::obj-9" : [ "friction", "friction", 1 ],
			"obj-1::obj-6::obj-78::obj-16::obj-83" : [ "number[7]", "number[3]", 0 ],
			"obj-1::obj-6::obj-78::obj-16::obj-85" : [ "number[6]", "number[2]", 0 ],
			"obj-1::obj-6::obj-78::obj-16::obj-87" : [ "number[5]", "number[1]", 0 ],
			"obj-1::obj-6::obj-78::obj-16::obj-89" : [ "number[4]", "number", 0 ],
			"obj-1::obj-6::obj-78::obj-26::obj-83" : [ "number[10]", "number[3]", 0 ],
			"obj-1::obj-6::obj-78::obj-26::obj-85" : [ "number[9]", "number[2]", 0 ],
			"obj-1::obj-6::obj-78::obj-26::obj-87" : [ "number[8]", "number[1]", 0 ],
			"obj-1::obj-6::obj-78::obj-26::obj-89" : [ "number[1]", "number", 0 ],
			"obj-3::obj-1.1::obj-10" : [ "out_mix", "out", 0 ],
			"obj-3::obj-1.1::obj-43" : [ "drone_amp", "drone", 0 ],
			"obj-3::obj-1.1::obj-48" : [ "pingpong_amp", "pingpong", 0 ],
			"obj-3::obj-1.1::obj-54" : [ "drone>pingpong", "drone>pingpong", 0 ],
			"obj-3::obj-1.1::obj-56" : [ "instr>pingpong", "instr>pingpong", 0 ],
			"obj-3::obj-1.1::obj-60" : [ "bass_amp", "bass", 0 ],
			"obj-3::obj-25.1::obj-27" : [ "ag_players_vol", "Players", 0 ],
			"obj-3::obj-25.1::obj-307" : [ "ag_fx_vol", "AfterFX", 0 ],
			"obj-3::obj-34.1::obj-351" : [ "fx_vol", "game fx", 0 ],
			"obj-3::obj-34.1::obj-36" : [ "seq_gains", "gains", 0 ],
			"obj-3::obj-34.1::obj-363" : [ "fx_mode", "fx_mode", 0 ],
			"obj-3::obj-34.1::obj-364" : [ "fx_trem_interval", "trem.", 0 ],
			"obj-3::obj-34.1::obj-365" : [ "seq_dur", "dur", 0 ],
			"obj-3::obj-34.1::obj-93" : [ "seq_vol", "seq", 0 ],
			"obj-3::obj-38::obj-10" : [ "pingpong_vol[1]", "PINGPONG", 0 ],
			"obj-3::obj-38::obj-7" : [ "pingpong_vol", "PINGPONG", 0 ],
			"obj-3::obj-3::obj-7" : [ "master_amp", "Master", 0 ],
			"obj-3::obj-42::obj-7" : [ "tape_amp", "TAPE", 0 ],
			"obj-3::obj-4::obj-29" : [ "pre_gain[1]", "pre_gain[1]", 0 ],
			"obj-3::obj-4::obj-41" : [ "pre_gain[2]", "pre_gain[1]", 0 ],
			"obj-3::obj-4::obj-44" : [ "pre_gain[3]", "pre_gain[1]", 0 ],
			"obj-3::obj-4::obj-47" : [ "pre_gain[4]", "pre_gain[1]", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "sysX.engine.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.flocking.engine.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.boidroids.js",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "flocking.json",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/data",
				"patcherrelativepath" : "../data",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pattr-helper.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/utilities",
				"patcherrelativepath" : "../../../../../../Library/Application Support/Cycling '74/Max 8/Examples/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.det1.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.rrand.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/numerical",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/numerical",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "urn-jb.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/max-tricks/random_with_no_repeat",
				"patcherrelativepath" : "../../../../../../Library/Application Support/Cycling '74/Max 8/Examples/max-tricks/random_with_no_repeat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.bp.clocker_gui.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/timed",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/timed",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.bp.min_sec_gui.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/timed",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/timed",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.phrasebook.engine.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.phrasebook.gen_rand.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.phrasebook.gen_rand.instr_params.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.bin2dec.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/numerical",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/numerical",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.dec2bin.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/numerical",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/numerical",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.dynprofiles.txt",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/data",
				"patcherrelativepath" : "../data",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "gen_rand.json",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/data",
				"patcherrelativepath" : "../data",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "phrasedict_timeline.txt",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/data",
				"patcherrelativepath" : "../data",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "phrasedict-v2.js",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.game.engine.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.timestamp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/timed",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/timed",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.game.soundfx_reaction.js",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "game-engine-v2.js",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.waves.engine.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.waves.harm_det.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "4instr_3sine_snapshot.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "wave-gen-1sin-voice.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fale.instr_ranges.txt",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/data",
				"patcherrelativepath" : "../data",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ak.coll.interp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/utils",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/utils",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.round_interp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/numerical",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/numerical",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX-tape3a.wav",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.webview-comm.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.main.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.out_setup.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.in_setup.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.det_setup.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.det_yin.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.det_yin_1instr.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.onemess.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/messages juggling",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/messages juggling",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.tst.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/timed",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/timed",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.det_sigmunt_tst_visualization.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.in4.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.out4.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "audio_settings.json",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/data",
				"patcherrelativepath" : "../data",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.flocking_drone.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.dron-ioscbank.js",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ak.rotapan4.gendsp",
				"bootpath" : "~/Documents/Max 8/Packages/ak/code",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/code",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "ak.pingpong4~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/audio",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/audio",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "flocking_drone.json",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/data",
				"patcherrelativepath" : "../data",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.game_recorder.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ag.player.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pan4S.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/spatialization/panning/lib",
				"patcherrelativepath" : "../../../../../../Library/Application Support/Cycling '74/Max 8/Examples/spatialization/panning/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.bypass4~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/audio",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/audio",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.rrandi.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/numerical",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/numerical",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.game_sounds.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.au.game_sounds.fx_voice.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "M4L.bal1~.maxpat",
				"bootpath" : "C74:/patchers/m4l/Tools resources",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.bang2toggle.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/timed",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/timed",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.metrocounter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/timed",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/timed",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.zl.drip.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/deprecated",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/deprecated",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.pulse2bang~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/audio",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/audio",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.pan2~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/audio",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/audio",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.pan2s~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/audio",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/audio",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ak.del_zero.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/ak/patchers/timed",
				"patcherrelativepath" : "../../../../../Max 8/Packages/ak/patchers/timed",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX-tape1 4ch-mix.wav",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "sysX-tape2.wav",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "sysX.http.maxpat",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sysX_http_server.js",
				"bootpath" : "~/Documents/bieżące sprawy/dr/_UKŁAD X_v3a-2021/sysX/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mira.channel.mxo",
				"type" : "iLaX"
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
					"fontsize" : [ 14.0 ],
					"elementcolor" : [ 0.402827, 0.442342, 0.446734, 1.0 ],
					"fontname" : [ "Lato" ],
					"selectioncolor" : [ 0.532195, 0.84546, 0.169658, 1.0 ],
					"textcolor_inverse" : [ 0.959262, 0.956712, 0.966038, 1.0 ],
					"color" : [ 0.860949, 0.86278, 0.710083, 1.0 ],
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
					"fontsize" : [ 14.0 ],
					"accentcolor" : [ 0.086281, 0.464155, 0.176596, 1.0 ],
					"elementcolor" : [ 0.03764, 0.288409, 0.132402, 1.0 ],
					"bgcolor" : [ 0.178182, 0.194235, 0.179854, 1.0 ],
					"fontname" : [ "Lato Regular" ],
					"selectioncolor" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"textcolor_inverse" : [ 0.528927, 1.0, 0.272898, 1.0 ],
					"textjustification" : [ 0 ],
					"fontface" : [ 0 ],
					"color" : [ 0.4, 1.0, 0.4, 1.0 ],
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
					"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.9 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"toolbarexclusions" : [ "lessonbrowser", "browser_objects", "packagemanager", "omnibrowser", "object_menu", "message_menu", "comment" ],
		"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
		"editing_bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ]
	}

}
