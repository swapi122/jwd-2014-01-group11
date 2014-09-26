package conceptmaps.model;

public class DatabaseManagement {
	public boolean login(String name, String password)
	{
		if(name.equalsIgnoreCase("hmtri92@gmail.com") && password.equals("12345"))
		{
			return true;
		}
		else
			return false;
	}
}
