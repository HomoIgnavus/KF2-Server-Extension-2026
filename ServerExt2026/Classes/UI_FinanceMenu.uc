class UI_FinanceMenu extends UI_MidGameMenu;

function InitMenu()
{
	local int i;
	local KFGUI_Button B;

	PageSwitcher = KFGUI_SwitchMenuBar(FindComponentID('Pager'));
	Super(KFGUI_Page).InitMenu();

	// AddMenuButton('Mapvote',MapVoteButtonText,MapVoteButtonToolTip);
	// AddMenuButton('Settings',SettingsButtonText,SettingsButtonToolTip);
	// SkipTraderButton = AddMenuButton('SkipTrader',SkipTraderButtonText,SkipTraderButtonToolTip);
	AddMenuButton('Close', CloseButtonText, CloseButtonToolTip);
	// AddMenuButton('Disconnect',DisconnectButtonText,DisconnectButtonToolTip);
	// SpectateButton = AddMenuButton('Spectate',SpectateButtonText,SpectateButtonToolTip);
	// AddMenuButton('Exit',ExitButtonText,ExitButtonToolTip);

	for (i=0; i<Pages.Length; ++i)
	{
		PageSwitcher.AddPage(Pages[i],B).InitMenu();
		if (Pages[i]==Class'UIP_AdminMenu')
			AdminButton = B;
	}
}