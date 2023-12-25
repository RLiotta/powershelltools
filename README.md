# PowerShell Tools

ALWAYS CREATE SYSTEM RESTORE POINT BEFORE MODIFYING 
1. click on start menu type system restore
2. Now press create... and name it anything that you like.
3. if anything breaks (which it shouldnt) you can easily and safely revert back by clicking the system restore button

The first one, Razer Killer, is just to stop Razer's services from starting. 
If you want to change any settings in Synapse, just turn them back on; 
you shouldn't have to restart. 
So for the service killer, it's just going to turn off as much as possible for gaming performance. 
I can't guarantee, but this lowers my startup processes. 
This sets services to manual so if something needs to start it should. 
edit the script as you like.

You may have to adjust your execution policy;
you can do that by opening PowerShell.
Select Start > All Programs > Windows PowerShell version > Windows PowerShell. 
Type `Get-ExecutionPolicy` to verify the current settings for the execution policy. 
Type `Set-ExecutionPolicy RemoteSigned` to set the policy to RemoteSigned.

- RemoteSigned: Requires that all scripts and configuration files downloaded from the Internet be signed by a trusted publisher.
- Unrestricted: Loads all configuration files and runs all scripts.

I don't recommend Unrestricted, but if you do RemoteSigned:
1. You will have to just copy the text from the script.
2. Paste it into a text document and save it.
3. Go to the file location, right-click and rename, and change the file type from `(serviceSlayerv1-2.txt)` to `(serviceSlayerv1-2.ps1)`.
4. At this point, you can right-click and run with PowerShell.
5. Recommended.
6. For more details, you can launch an elevated PowerShell by searching for PowerShell in the Start menu, right-clicking, and selecting "Run as admin."
7. Then, you'll right-click on `serviceSlayerv1-2.ps1`, then select Properties.
8. Click the Security tab and copy that object name—the whole thing from the name of the drive to the end of the file type.
9. Now paste that into PowerShell and follow the prompts.
