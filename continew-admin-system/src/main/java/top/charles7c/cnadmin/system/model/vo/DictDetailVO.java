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

package top.charles7c.cnadmin.system.model.vo;

import lombok.Data;

import io.swagger.v3.oas.annotations.media.Schema;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;

import top.charles7c.cnadmin.common.base.BaseDetailVO;

/**
 * 字典详情信息
 *
 * @author Charles7c
 * @since 2023/9/11 21:29
 */
@Data
@ExcelIgnoreUnannotated
@Schema(description = "字典详情信息")
public class DictDetailVO extends BaseDetailVO {

    private static final long serialVersionUID = 1L;

    /**
     * 字典名称
     */
    @Schema(description = "字典名称", example = "公告类型")
    @ExcelProperty(value = "字典名称")
    private String name;

    /**
     * 字典编码
     */
    @Schema(description = "字典编码", example = "announcement_type")
    @ExcelProperty(value = "字典编码")
    private String code;

    /**
     * 描述
     */
    @Schema(description = "描述", example = "公告类型描述信息")
    @ExcelProperty(value = "描述")
    private String description;
}