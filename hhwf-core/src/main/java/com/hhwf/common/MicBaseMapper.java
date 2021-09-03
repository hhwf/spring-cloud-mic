package com.hhwf.common;

import tk.mybatis.mapper.common.*;

public interface MicBaseMapper<T> extends BaseMapper<T>, MySqlMapper<T>, IdsMapper<T>, ConditionMapper<T>, ExampleMapper<T> {



}
