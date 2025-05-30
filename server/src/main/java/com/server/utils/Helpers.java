package com.server.utils;

import java.util.function.Consumer;

public class Helpers {
	
	public static <T> void updateFieldEntityIfChanged(T newValue, T currentValue, Consumer<T> setter) {
		if (newValue != null && !newValue.equals(currentValue)) {
			setter.accept(newValue);
		}
	}
	
}
