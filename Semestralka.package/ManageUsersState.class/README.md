I'm a state class for deleting existing users. I'm available only for AdminUsers. 

An admin user can delete a selected user using my butttonDelete. The admin cannot delete himself from database (he can't even see his nickname in the list).
An admin can also change a role of a selected user, always switching from NormalUser to AdminUser and vice versa.