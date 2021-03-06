package models;

public class Edge
{
	private Node 	node1;
	private Node 	node2;
	private float 	weight;
	
	public Edge()
	{
		super();
	}

	public Edge(Node node1, Node node2, float weight)
	{
		super();
		this.node1 = node1;
		this.node2 = node2;
		this.weight = weight;
	}

	public Node getNode1()
	{
		return node1;
	}

	public void setNode1(Node node1)
	{
		this.node1 = node1;
	}

	public Node getNode2()
	{
		return node2;
	}

	public void setNode2(Node node2)
	{
		this.node2 = node2;
	}

	public float getWeight()
	{
		return weight;
	}

	public void setWeight(float weight)
	{
		this.weight = weight;
	}
}
