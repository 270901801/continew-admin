-- ${businessName}管理菜单
INSERT INTO `sys_menu`
(`title`, `parent_id`, `type`, `path`, `name`, `component`, `redirect`, `icon`, `is_external`, `is_cache`, `is_hidden`, `permission`, `sort`, `status`, `create_user`, `create_time`)
VALUES
('${businessName}管理', 1000, 2, '/${apiModuleName}/${apiName}', '${classNamePrefix}', '${apiModuleName}/${apiName}/index', NULL, NULL, b'0', b'0', b'0', NULL, 1, 1, 1, NOW());

SET @parentId = LAST_INSERT_ID();

-- ${businessName}管理按钮
INSERT INTO `sys_menu`
(`title`, `parent_id`, `type`, `permission`, `sort`, `status`, `create_user`, `create_time`)
VALUES
('列表', @parentId, 3, '${apiModuleName}:${apiName}:list', 1, 1, 1, NOW()),
('详情', @parentId, 3, '${apiModuleName}:${apiName}:detail', 2, 1, 1, NOW()),
('新增', @parentId, 3, '${apiModuleName}:${apiName}:add', 3, 1, 1, NOW()),
('修改', @parentId, 3, '${apiModuleName}:${apiName}:update', 4, 1, 1, NOW()),
('删除', @parentId, 3, '${apiModuleName}:${apiName}:delete', 5, 1, 1, NOW()),
('导出', @parentId, 3, '${apiModuleName}:${apiName}:export', 6, 1, 1, NOW());


<#---- PostgreSQL（切换 PostgreSQL 数据库时请注释掉其他数据库脚本，并解开此段注释）-->
<#---- 创建序列（如果还不存在的话）-->
<#--CREATE SEQUENCE IF NOT EXISTS sys_menu_id_seq;-->

<#---- ${businessName}管理菜单-->
<#--WITH inserted_menu AS (-->
<#--INSERT INTO "sys_menu"-->
<#--("id", "title", "parent_id", "type", "path", "name", "component", "redirect", "icon", "is_external", "is_cache", "is_hidden", "permission", "sort", "status", "create_user", "create_time")-->
<#--VALUES-->
<#--(nextval('sys_menu_id_seq'), '${businessName}管理', 1000, 2, '/${apiModuleName}/${apiName}', '${classNamePrefix}', '${apiModuleName}/${apiName}/index', NULL, NULL, false, false, false, NULL, 1, 1, 1, NOW()) RETURNING id-->
<#--)-->

<#---- ${businessName}管理按钮-->
<#--INSERT INTO "sys_menu"-->
<#--("id", "title", "parent_id", "type", "permission", "sort", "status", "create_user", "create_time")-->
<#--SELECT nextval('sys_menu_id_seq'), title, (SELECT id FROM inserted_menu), type, permission, sort, status, create_user, create_time-->
<#--FROM (VALUES-->
<#--('列表', 3, '${apiModuleName}:${apiName}:list', 1, 1, 1, NOW()),-->
<#--('详情', 3, '${apiModuleName}:${apiName}:detail', 2, 1, 1, NOW()),-->
<#--('新增', 3, '${apiModuleName}:${apiName}:add', 3, 1, 1, NOW()),-->
<#--('修改', 3, '${apiModuleName}:${apiName}:update', 4, 1, 1, NOW()),-->
<#--('删除', 3, '${apiModuleName}:${apiName}:delete', 5, 1, 1, NOW()),-->
<#--('导出', 3, '${apiModuleName}:${apiName}:export', 6, 1, 1, NOW())-->
<#--) AS t(title, type, permission, sort, status, create_user, create_time);-->

