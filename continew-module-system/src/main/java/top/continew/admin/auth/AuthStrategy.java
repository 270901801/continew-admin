/*
 * Copyright (c) 2022-present Charles7c Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package top.continew.admin.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import top.continew.admin.auth.enums.AuthTypeEnum;
import top.continew.admin.auth.model.req.AuthReq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 认证策略
 *
 * @author KAI
 * @author Charles7c
 * @since 2024/12/20 15:16
 */
@Component
public class AuthStrategy {

    private final Map<AuthTypeEnum, AuthHandler<? extends AuthReq>> handlerMap = new HashMap<>();

    @Autowired
    public AuthStrategy(List<AuthHandler<? extends AuthReq>> handlers) {
        for (AuthHandler<? extends AuthReq> handler : handlers) {
            handlerMap.put(handler.getAuthType(), handler);
        }
    }

    /**
     * 根据认证类型获取
     *
     * @param authType 认证类型
     * @return 认证处理器
     */
    public AuthHandler<AuthReq> getHandler(AuthTypeEnum authType) {
        return (AuthHandler<AuthReq>)handlerMap.get(authType);
    }
}