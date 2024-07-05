{ pkgs, ... }:
{
	services.xserver.desktopManager.plasma5.enable = true;
	services.displayManager.sddm.enable = true;
	services.xserver.enable = true;

	environment.systemPackages = with pkgs; [
		libsForQt5.qt5.qtwebsockets
		kdeconnect
		konsave
	];
}