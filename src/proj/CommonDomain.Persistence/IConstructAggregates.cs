namespace CommonDomain.Persistence
{
	using System;

	public interface IConstructAggregates
	{
		IAggregate Build(Type type, Guid id, Action<IAggregate, IMemento> applyStreamFunc, IMemento snapshot);
	}
}