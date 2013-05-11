/* 
    Copyright 2012 Julien Lavergne <gilir@ubuntu.com>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace LDefaultApps
{
    [DBus(name = "org.lxde.SessionManager")]
    public interface DbusLxsession : GLib.Object
    {
        public abstract void PanelReload () throws IOError;
        public abstract void PanelCommandSet (string arg) throws IOError;
        public abstract void PanelSessionSet (string arg) throws IOError;
        public abstract string PanelCommandGet () throws IOError;
        public abstract string PanelSessionGet () throws IOError;
        public abstract void DockReload () throws IOError;
        public abstract void DockCommandSet (string arg) throws IOError;
        public abstract void DockSessionSet (string arg) throws IOError;
        public abstract string DockCommandGet () throws IOError;
        public abstract string DockSessionGet () throws IOError;
        public abstract void WindowsManagerReload () throws IOError;
        public abstract void WindowsManagerCommandSet (string arg) throws IOError;
        public abstract void WindowsManagerSessionSet (string arg) throws IOError;
        public abstract void WindowsManagerExtrasSet (string arg) throws IOError;
        public abstract string WindowsManagerCommandGet () throws IOError;
        public abstract string WindowsManagerSessionGet () throws IOError;
        public abstract string WindowsManagerExtrasGet () throws IOError;
        public abstract void ScreensaverReload () throws IOError;
        public abstract void ScreensaverCommandSet (string arg) throws IOError;
        public abstract string ScreensaverCommandGet () throws IOError;
        public abstract void PowerManagerReload () throws IOError;
        public abstract void PowerManagerCommandSet (string arg) throws IOError;
        public abstract string PowerManagerCommandGet () throws IOError;
        public abstract void FileManagerReload () throws IOError;
        public abstract void FileManagerCommandSet (string arg) throws IOError;
        public abstract void FileManagerSessionSet (string arg) throws IOError;
        public abstract void FileManagerExtrasSet (string arg) throws IOError;
        public abstract string FileManagerCommandGet () throws IOError;
        public abstract string FileManagerSessionGet () throws IOError;
        public abstract string FileManagerExtrasGet () throws IOError;
        public abstract void DesktopReload () throws IOError;
        public abstract void DesktopCommandSet (string arg) throws IOError;
        public abstract void DesktopWallpaperSet (string arg) throws IOError;
        public abstract string DesktopCommandGet () throws IOError;
        public abstract string DesktopWallpaperGet () throws IOError;
        public abstract void CompositeManagerReload () throws IOError;
        public abstract void CompositeManagerCommandSet (string arg) throws IOError;
        public abstract void CompositeManagerAutostartSet (string arg) throws IOError;
        public abstract string CompositeManagerCommandGet () throws IOError;
        public abstract string CompositeManagerAutostartGet () throws IOError;
        public abstract void PolkitReload () throws IOError;
        public abstract void PolkitCommandSet (string arg) throws IOError;
        public abstract string PolkitCommandGet () throws IOError;
        public abstract void NetworkGuiReload () throws IOError;
        public abstract void NetworkGuiCommandSet (string arg) throws IOError;
        public abstract string NetworkGuiCommandGet () throws IOError;
        public abstract void AudioManagerLaunch () throws IOError;
        public abstract void AudioManagerCommandSet (string arg) throws IOError;
        public abstract string AudioManagerCommandGet () throws IOError;
        public abstract void QuitManagerLaunch () throws IOError;
        public abstract void QuitManagerCommandSet (string arg) throws IOError;
        public abstract void QuitManagerImageSet (string arg) throws IOError;
        public abstract void QuitManagerLayoutSet (string arg) throws IOError;
        public abstract string QuitManagerCommandGet () throws IOError;
        public abstract string QuitManagerImageGet () throws IOError;
        public abstract string QuitManagerLayoutGet () throws IOError;
        public abstract void WorkspaceManagerLaunch () throws IOError;
        public abstract void WorkspaceManagerCommandSet (string arg) throws IOError;
        public abstract string WorkspaceManagerCommandGet () throws IOError;
        public abstract void LauncherManagerLaunch () throws IOError;
        public abstract void LauncherManagerCommandSet (string arg) throws IOError;
        public abstract string LauncherManagerCommandGet () throws IOError;
        public abstract void TerminalManagerLaunch () throws IOError;
        public abstract void TerminalManagerCommandSet (string arg) throws IOError;
        public abstract string TerminalManagerCommandGet () throws IOError;
        public abstract void ScreenshotManagerLaunch () throws IOError;
        public abstract void ScreenshotManagerCommandSet (string arg) throws IOError;
        public abstract string ScreenshotManagerCommandGet () throws IOError;
        public abstract void UpgradeManagerLaunch () throws IOError;
        public abstract void UpgradeManagerCommandSet (string arg) throws IOError;
        public abstract string UpgradeManagerCommandGet () throws IOError;
        public abstract void ClipboardActivate () throws IOError;
        public abstract void ClipboardCommandSet (string arg) throws IOError;
        public abstract string ClipboardCommandGet () throws IOError;
    }

    public class DbusBackend : GLib.Object
    {
        DbusLxsession dbus_lxsession = null;

        public DbusBackend ()
        {
            dbus_lxsession = GLib.Bus.get_proxy_sync(BusType.SESSION,
                                            "org.lxde.SessionManager",
                                            "/org/lxde/SessionManager");
        }

        public void PanelReload()
        {
            try
            {
                dbus_lxsession.PanelReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void PanelCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.PanelCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void PanelSessionSet(string arg)
        {
            try
            {
                dbus_lxsession.PanelSessionSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string PanelCommandGet()
        {
            try
            {
                return dbus_lxsession.PanelCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string PanelSessionGet()
        {
            try
            {
                return dbus_lxsession.PanelSessionGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void DockReload()
        {
            try
            {
                dbus_lxsession.DockReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void DockCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.DockCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void DockSessionSet(string arg)
        {
            try
            {
                dbus_lxsession.DockSessionSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string DockCommandGet()
        {
            try
            {
                return dbus_lxsession.DockCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string DockSessionGet()
        {
            try
            {
                return dbus_lxsession.DockSessionGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void WindowsManagerReload()
        {
            try
            {
                dbus_lxsession.WindowsManagerReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void WindowsManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.WindowsManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void WindowsManagerSessionSet(string arg)
        {
            try
            {
                dbus_lxsession.WindowsManagerSessionSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void WindowsManagerExtrasSet(string arg)
        {
            try
            {
                dbus_lxsession.WindowsManagerExtrasSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string WindowsManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.WindowsManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string WindowsManagerSessionGet()
        {
            try
            {
                return dbus_lxsession.WindowsManagerSessionGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string WindowsManagerExtrasGet()
        {
            try
            {
                return dbus_lxsession.WindowsManagerExtrasGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void ScreensaverReload()
        {
            try
            {
                dbus_lxsession.ScreensaverReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void ScreensaverCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.ScreensaverCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string ScreensaverCommandGet()
        {
            try
            {
                return dbus_lxsession.ScreensaverCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void PowerManagerReload()
        {
            try
            {
                dbus_lxsession.PowerManagerReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void PowerManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.PowerManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string PowerManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.PowerManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void FileManagerReload()
        {
            try
            {
                dbus_lxsession.FileManagerReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void FileManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.FileManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void FileManagerSessionSet(string arg)
        {
            try
            {
                dbus_lxsession.FileManagerSessionSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void FileManagerExtrasSet(string arg)
        {
            try
            {
                dbus_lxsession.FileManagerExtrasSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string FileManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.FileManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string FileManagerSessionGet()
        {
            try
            {
                return dbus_lxsession.FileManagerSessionGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string FileManagerExtrasGet()
        {
            try
            {
                return dbus_lxsession.FileManagerExtrasGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void DesktopReload()
        {
            try
            {
                dbus_lxsession.DesktopReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void DesktopCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.DesktopCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void DesktopWallpaperSet(string arg)
        {
            try
            {
                dbus_lxsession.DesktopWallpaperSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string DesktopCommandGet()
        {
            try
            {
                return dbus_lxsession.DesktopCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string DesktopWallpaperGet()
        {
            try
            {
                return dbus_lxsession.DesktopWallpaperGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void CompositeManagerReload()
        {
            try
            {
                dbus_lxsession.CompositeManagerReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void CompositeManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.CompositeManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void CompositeManagerAutostartSet(string arg)
        {
            try
            {
                dbus_lxsession.CompositeManagerAutostartSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string CompositeManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.CompositeManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string CompositeManagerAutostartGet()
        {
            try
            {
                return dbus_lxsession.CompositeManagerAutostartGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void PolkitReload()
        {
            try
            {
                dbus_lxsession.PolkitReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void PolkitCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.PolkitCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string PolkitCommandGet()
        {
            try
            {
                return dbus_lxsession.PolkitCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void NetworkGuiReload()
        {
            try
            {
                dbus_lxsession.NetworkGuiReload();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void NetworkGuiCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.NetworkGuiCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string NetworkGuiCommandGet()
        {
            try
            {
                return dbus_lxsession.NetworkGuiCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }
        public void AudioManagerLaunch()
        {
            try
            {
                dbus_lxsession.AudioManagerLaunch();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void AudioManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.AudioManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string AudioManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.AudioManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }
        public void QuitManagerLaunch()
        {
            try
            {
                dbus_lxsession.QuitManagerLaunch();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void QuitManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.QuitManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void QuitManagerImageSet(string arg)
        {
            try
            {
                dbus_lxsession.QuitManagerImageSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void QuitManagerLayoutSet(string arg)
        {
            try
            {
                dbus_lxsession.QuitManagerLayoutSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string QuitManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.QuitManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string QuitManagerImageGet()
        {
            try
            {
                return dbus_lxsession.QuitManagerImageGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public string QuitManagerLayoutGet()
        {
            try
            {
                return dbus_lxsession.QuitManagerLayoutGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void WorkspaceManagerLaunch()
        {
            try
            {
                dbus_lxsession.WorkspaceManagerLaunch();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void WorkspaceManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.WorkspaceManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string WorkspaceManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.WorkspaceManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }
        public void LauncherManagerLaunch()
        {
            try
            {
                dbus_lxsession.LauncherManagerLaunch();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void LauncherManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.LauncherManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string LauncherManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.LauncherManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void TerminalManagerLaunch()
        {
            try
            {
                dbus_lxsession.TerminalManagerLaunch();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void TerminalManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.TerminalManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string TerminalManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.TerminalManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }
        public void ScreenshotManagerLaunch()
        {
            try
            {
                dbus_lxsession.ScreenshotManagerLaunch();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void ScreenshotManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.ScreenshotManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string ScreenshotManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.ScreenshotManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void UpgradeManagerLaunch()
        {
            try
            {
                dbus_lxsession.UpgradeManagerLaunch();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void UpgradeManagerCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.UpgradeManagerCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string UpgradeManagerCommandGet()
        {
            try
            {
                return dbus_lxsession.UpgradeManagerCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

        public void ClipboardActivate()
        {
            try
            {
                dbus_lxsession.ClipboardActivate();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public void ClipboardCommandSet(string arg)
        {
            try
            {
                dbus_lxsession.ClipboardCommandSet(arg);
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
            }
        }

        public string ClipboardCommandGet()
        {
            try
            {
                return dbus_lxsession.ClipboardCommandGet();
            }
            catch (GLib.IOError err)
            {
                warning (err.message);
                return "";
            }
        }

    }
}