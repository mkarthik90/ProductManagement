package com.witty.service;

import java.util.List;
import java.util.Map;

import com.wity.command.EventCommand;

public interface IEventManagementDAO {
	//public void showEmployee();
	public List<EventCommand> showEmployee();
//public List<Map<String, Object>> showEmployee();
	public List<EventCommand> showproductname();
	public List<EventCommand> showeventname();
}
