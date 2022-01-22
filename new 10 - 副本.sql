
#用例名称： 取消符合要求的信息内容
UPDATE tcsteps 
    SET tcsteps.`actions` = CASE id 
      WHEN 351 THEN '<p>点击新增模拟面试</p>'
      WHEN 353 THEN '<p>1、点击添加按钮</p><p>2、输入三个有效的标签内容</p>'
      WHEN 355 THEN '<p>浏览本地图片</p><p>点击上传图片按钮</p>'
      WHEN 362 THEN '<p>输入预约须知内容</p>'       
    END, 
    tcsteps.`expected_results` = CASE id        
         WHEN 362 THEN '<p>1、默认显示固定提示信息内容</p>' 
    END
 WHERE id IN (351,353,355,362)
 
 #用例名称：输入的主题名称为空-保存
 UPDATE tcsteps 
    SET tcsteps.`actions` = CASE id 
      WHEN 368 THEN '<p>点击模拟面试管理</p>'
      WHEN 369 THEN '<p>点击新增模拟面试</p>'
      WHEN 370 THEN '<p>输入的主题名称为空</p>'
      WHEN 371 THEN '<p>其它字段项，输入有效的内容</p>'
      WHEN 372 THEN '<p>点击保存按钮</p>'       
    END, 
    tcsteps.`expected_results` = CASE id  
         WHEN 368 THEN '<p>进入模拟面试管理界面</p>'	
		 WHEN 369 THEN '<p>1、进入新增界面</p><p>2、必填项用红星标识（主题名称。专场时间，封面，活动，相关介绍，预约须知）</p>'
         WHEN 372 THEN '<p>1、保存失败，弹出提示：&quot;必须按要求完成所有必填项才可以提交。&quot;</p>' 
    END
 WHERE id IN (368,369,370,371,372)
 
 #用例名称：设置的专场时间为空-保存
 UPDATE tcsteps 
    SET tcsteps.`actions` = CASE id 
	  WHEN 391 THEN '<p>点击模拟面试管理</p>'
      WHEN 392 THEN '<p>点击新增模拟面试</p>'
      WHEN 393 THEN '<p>输入的主题名称为空</p>'
      WHEN 394 THEN '<p>其它字段项，输入有效的内容</p>'
      WHEN 395 THEN '<p>点击保存按钮</p>'       
    END, 
    tcsteps.`expected_results` = CASE id  
         WHEN 391 THEN '<p>进入模拟面试管理界面</p>'	
		 WHEN 392 THEN '<p>1、进入新增界面</p><p>2、必填项用红星标识（主题名称。专场时间，封面，活动，相关介绍，预约须知）</p>'
         WHEN 395 THEN '<p>1、保存失败，弹出提示：&quot;必须按要求完成所有必填项才可以提交。&quot;</p>' 
    END
 WHERE id IN (391,392,393,394,395)
 