/*    */ package net.md_5.bungee.command;
/*    */ 
/*    */ import net.md_5.bungee.api.ChatColor;
/*    */ import net.md_5.bungee.api.CommandSender;
/*    */ import net.md_5.bungee.api.ProxyServer;
/*    */ import net.md_5.bungee.api.plugin.Command;
/*    */ 
/*    */ public class CommandBungee extends Command {
/*    */   public CommandBungee() {
/* 10 */     super("bungee");
/*    */   }
/*    */   
/*    */   public void execute(CommandSender paramCommandSender, String[] paramArrayOfString) {
/* 14 */     String str = ProxyServer.getInstance().getVersion();
/* 15 */     paramCommandSender.sendMessage(ChatColor.RED + "This server is running " + String.valueOf(ChatColor.WHITE) + "FlexCord" + 
/* 16 */         String.valueOf(ChatColor.RED) + " version " + String.valueOf(ChatColor.YELLOW) + str + 
/* 17 */         String.valueOf(ChatColor.RED) + " by SeaEclipse " + String.valueOf(ChatColor.AQUA) + "(patch by SeaEclipse)");
/*    */   }
/*    */ }


/* Location:              /home/scarlet/Scrivania/CustomFlameCord/!/net/md_5/bungee/command/CommandBungee.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.1.3
 */
