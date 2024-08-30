<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>11.3.0.1</version>
    </saved-by-versions>
    <file-type>robot</file-type>
    <referenced-types>
      <type name="MonDic"/>
    </referenced-types>
    <triggers/>
    <sub-robots/>
    <device-mappings/>
    <comment/>
    <tags/>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="dic" type-name="MonDic"/>
    </typed-variables>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">longText</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="1">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="2">longText2</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">dic</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">MonDic</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="lan_id" class="AttributeAssignment">
            <property name="attributeValue" class="String">2</property>
            <property name="currentlyAssigned" class="Boolean" id="3">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="4">kapow.robot.plugin.common.domain.IntegerAttributeType</property>
          </property>
          <property name="word_id" class="AttributeAssignment">
            <property name="attributeValue" class="String">1102</property>
            <property name="currentlyAssigned" idref="3"/>
            <property name="lastKnownAttributeType" idref="4"/>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="5">integer</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">7</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">0</property>
            <property name="currentlyAssigned" idref="3"/>
            <property name="lastKnownAttributeType" idref="4"/>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="6">query1</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="7">query2</property>
      <property name="global" idref="3"/>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="8">excel</property>
      <property name="global" idref="3"/>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">150</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="9">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="9"/>
  <property name="privateHTTPCacheEnabled" idref="3"/>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="tags" class="RobotTagList"/>
  <property name="humanProcessingTime">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="9"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="10"/>
    <steps class="ArrayList">
      <object class="BranchPoint" id="11"/>
      <object class="Transition" serializationversion="3" id="12">
        <property name="name" class="String" id="13">Load File</property>
        <property name="stepAction" class="LoadFile">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.FileNameValueStringExpression">
            <property name="value" class="String">C:\Users\site.cha\Documents\Book1.xlsx</property>
          </property>
          <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToVariableOutputSpecification" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="8"/>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27">
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="14"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="15">
        <property name="name" class="String">Open Excel</property>
        <property name="stepAction" class="OpenVariable">
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="8"/>
          </property>
        </property>
        <property name="elementFinders" idref="14"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="BranchPoint" id="16"/>
      <object class="Transition" serializationversion="3" id="17">
        <property name="name" class="String">Loop Rows</property>
        <property name="stepAction" class="LoopInExcel">
          <property name="loopDirection" class="LoopInExcel$LoopDirection">
            <property name="enum-name" class="String">ROWS</property>
          </property>
          <property name="firstIndex" class="Integer" id="18">1</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="SpecifiedRangeCellFinderDetail">
              <property name="range" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Sheet1!</property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="19">
        <property name="name" class="String">Extract Word</property>
        <property name="stepAction" class="ExtractCell">
          <property name="dataConverters" class="DataConverters">
            <element class="RemoveSpaces"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">dic.word</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="NamedRangeCellFinderDetail">
              <property name="rangeName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
              <property name="usage" class="ColumnFromRange"/>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="20">
        <property name="name" class="String">Extract Defi</property>
        <property name="stepAction" class="ExtractCell">
          <property name="dataConverters" class="DataConverters">
            <element class="AdvancedExtract2">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">(.*?)(\(.*\))</property>
              </property>
              <property name="outputExpression" class="String">$1</property>
            </element>
            <element class="RemoveSpaces"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">dic.defi</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="NamedRangeCellFinderDetail">
              <property name="rangeName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
              <property name="usage" class="ColumnFromRange">
                <property name="columnId" class="ByIndexExcelColumnId">
                  <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                    <property name="value" idref="18"/>
                  </property>
                </property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="21">
        <property name="name" class="String">Extract Example</property>
        <property name="stepAction" class="ExtractCell">
          <property name="dataConverters" class="DataConverters">
            <element class="AdvancedExtract2">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">(.*?)(\(.*\))</property>
              </property>
              <property name="outputExpression" class="String">$1</property>
            </element>
            <element class="RemoveSpaces"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">dic.example</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="NamedRangeCellFinderDetail">
              <property name="rangeName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
              <property name="usage" class="ColumnFromRange">
                <property name="columnId" class="ByIndexExcelColumnId">
                  <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                    <property name="value" class="Integer" id="22">2</property>
                  </property>
                </property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" idref="9"/>
          <property name="reportingViaLog" idref="9"/>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="23">
        <property name="name" class="String">Extract Long Text</property>
        <property name="stepAction" class="ExtractCell">
          <property name="dataConverters" class="DataConverters">
            <element class="RemoveSpaces"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="NamedRangeCellFinderDetail">
              <property name="rangeName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
              <property name="usage" class="ColumnFromRange">
                <property name="columnId" class="ByIndexExcelColumnId">
                  <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                    <property name="value" class="Integer">3</property>
                  </property>
                </property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="24">
        <property name="name" class="String">Extract Long Text 2</property>
        <property name="stepAction" class="ExtractCell">
          <property name="dataConverters" class="DataConverters">
            <element class="RemoveSpaces"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="2"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="NamedRangeCellFinderDetail">
              <property name="rangeName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
              <property name="usage" class="ColumnFromRange">
                <property name="columnId" class="ByIndexExcelColumnId">
                  <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                    <property name="value" class="Integer">4</property>
                  </property>
                </property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="25">
        <property name="name" class="String">Assign Query 1</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddText">
                <property name="text" class="String">		Animal(
            name: [.english: "@en", .thai: "@th", .japanese: "@jp", .myanmar: "@mm", .mon: "@mn"],
            soundFileNames: [.english: "@eg_en", .thai: "@eg_th", .japanese: "@eg_jp", .myanmar: "@eg_my", .mon: "@eg_mon"],
            imageName: "@eg"
        )</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(@en)</property>
                </property>
                <property name="replaceExp" class="String">dic.word</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(@eg)</property>
                </property>
                <property name="replaceExp" class="String">toLowerCase(dic.word)</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(@th)</property>
                </property>
                <property name="replaceExp" class="String">dic.defi</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(@jp)</property>
                </property>
                <property name="replaceExp" class="String">dic.example</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(@mm)</property>
                </property>
                <property name="replaceExp" class="String">longText</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(@mn)</property>
                </property>
                <property name="replaceExp" class="String">longText2</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="6"/>
          </property>
        </property>
        <property name="elementFinders" idref="14"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="26">
        <property name="name" class="String">Assign Query 2</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">query2+",\n"+query1</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="7"/>
          </property>
        </property>
        <property name="elementFinders" idref="14"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="27"/>
      <object class="End" id="28"/>
      <object class="Transition" serializationversion="3" id="29">
        <property name="name" class="String">Stop</property>
        <property name="stepAction" class="Stop"/>
        <property name="elementFinders" class="ElementFinders" id="30"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="31">
        <property name="name" idref="13"/>
        <property name="stepAction" class="LoadFile">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.FileNameValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Synonym Qyery.txt</property>
          </property>
          <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToVariableOutputSpecification" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="0"/>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27">
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
          </property>
        </property>
        <property name="elementFinders" idref="30"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="32">
        <property name="name" class="String">Repeat</property>
        <property name="stepAction" class="Repeat"/>
        <property name="elementFinders" idref="30"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="BranchPoint" id="33"/>
      <object class="Transition" serializationversion="3" id="34">
        <property name="name" class="String" id="35">Convert Variables</property>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(\W\()(\d\d\d)(.*?\))\n.*</property>
                  </property>
                  <property name="outputExpression" class="String">$1+(toInteger($2)+209)+$3</property>
                </element>
                <element class="RemoveSpaces"/>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.word</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" idref="0"/>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(\W\()(\d\d\d)(.*?\))\n(.*)</property>
                  </property>
                  <property name="outputExpression" class="String">trim($4)</property>
                </element>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" idref="0"/>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" idref="30"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" idref="9"/>
          <property name="reportingViaLog" idref="9"/>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$BreakLoop"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="36">
        <property name="name" class="String" id="37">Write File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Synonym Qyery4.sql</property>
          </property>
          <property name="fileContentExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">dic.word+"\n"</property>
          </property>
          <property name="appendToFile" idref="3"/>
        </property>
        <property name="elementFinders" idref="30"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="38"/>
      <object class="Transition" serializationversion="3" id="39">
        <property name="name" class="String">Next</property>
        <property name="stepAction" class="Next"/>
        <property name="elementFinders" idref="30"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="40"/>
      <object class="Transition" serializationversion="3" id="41">
        <property name="name" idref="13"/>
        <property name="stepAction" class="LoadFile">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.FileNameValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Library\SourceTest.txt</property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27">
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="42"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="43">
        <property name="name" class="String">Extract Long Text</property>
        <property name="stepAction" class="ExtractSourceStepAction">
          <property name="sourceSpecification" class="kapow.robot.plugin.common.support.TextSourceSpecification">
            <property name="encoding" class="Encoding">
              <property name="encoding" class="String">UTF-8</property>
            </property>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" idref="42"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="44">
        <property name="name" class="String" id="45">For Each Text Part</property>
        <property name="stepAction" class="ForEachTextPart">
          <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="0"/>
            </property>
          </property>
          <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="2"/>
          </property>
        </property>
        <property name="elementFinders" idref="42"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="46">
        <property name="name" class="String">Get Iteration</property>
        <property name="stepAction" class="GetIteration">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="5"/>
          </property>
        </property>
        <property name="elementFinders" idref="42"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="47">
        <property name="name" class="String">Assign Word Id</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">dic.word_id+integer</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">dic.word_id</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="48"/>
      <object class="Transition" serializationversion="3" id="49">
        <property name="name" class="String">Convert POSID</property>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText2</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(.*?)\((.*?)\).*</property>
                  </property>
                  <property name="outputExpression" class="String">$2</property>
                </element>
                <element class="RemoveSpaces"/>
                <element class="ConvertUsingList">
                  <property name="mapString" class="String">န=1
စန=2
ကြိ=3
နဝိ=4
ကြိဝိ=5
ဝိ=6
သမ=7
ဆဝ=8
လပ=9
ပည=10
န/ကြိ=11
စည်း=12
ပါ=14
ကြိ/နဝိ=15
န/နဝိ=16
နဝိ/ကြိ=17
ပါသက်=18
သသက်=19
ကြိ/ကြိဝိ=20
</property>
                  <property name="mode" idref="22"/>
                  <property name="defaultValue" class="String">21</property>
                </element>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.pos_id</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" idref="9"/>
          <property name="reportingViaLog" idref="9"/>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="50">
        <property name="name" class="String">Convert Word</property>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText2</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(.*?)\((.*.)\).*</property>
                  </property>
                  <property name="outputExpression" class="String">$1</property>
                </element>
                <element class="RemoveSpaces"/>
                <element class="AddText">
                  <property name="text" class="String">'</property>
                </element>
                <element class="AddText">
                  <property name="text" class="String">'</property>
                  <property name="addTextStrategy" class="kapow.robot.plugin.common.stringprocessor.addtext.AddTextAfterStrategy"/>
                </element>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.word</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Try" id="51"/>
      <object class="Transition" serializationversion="3" id="52">
        <property name="name" class="String">Convert Defination with  Example</property>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText2</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(.*?)\((.*?)\)(.*?)(/.*?)</property>
                  </property>
                  <property name="outputExpression" class="String">$3</property>
                </element>
                <element class="RemoveSpaces"/>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.defi</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" idref="9"/>
          <property name="reportingViaLog" idref="9"/>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment" class="String">Defination Containg Example</property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="BranchPoint" id="53"/>
      <object class="Transition" serializationversion="3" id="54">
        <property name="name" class="String">Word and synonym</property>
        <property name="stepAction" class="Wait2"/>
        <property name="elementFinders" class="ElementFinders" id="55"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="56">name</element>
        </property>
      </object>
      <object class="Try" id="57"/>
      <object class="Transition" serializationversion="3" id="58">
        <property name="name" class="String">Test Variables </property>
        <property name="stepAction" class="TestVariables" serializationversion="0">
          <property name="conditions" class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterConditions">
            <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.word</property>
              </property>
              <property name="binaryPredicate" class="kapow.robot.plugin.common.support.predicate.binary.ContainsBinaryPredicate"/>
              <property name="expression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">၊</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" idref="55"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" idref="9"/>
          <property name="reportingViaLog" idref="9"/>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment" class="String">synonym</property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="56"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="59">
        <property name="name" idref="35"/>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.word</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="ReplaceText">
                  <property name="textToReplace" class="String">၊</property>
                  <property name="replacementText" class="String">,</property>
                </element>
                <element class="ReplaceText">
                  <property name="textToReplace" class="String">'</property>
                </element>
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">.*?,(.*)</property>
                  </property>
                  <property name="outputExpression" class="String">$1</property>
                </element>
                <element class="RemoveSpaces"/>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.word</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="ReplaceText">
                  <property name="textToReplace" class="String">၊</property>
                  <property name="replacementText" class="String">,</property>
                </element>
                <element class="ReplaceText">
                  <property name="textToReplace" class="String">'</property>
                </element>
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(.*?),(.*)</property>
                  </property>
                  <property name="outputExpression" class="String">$1</property>
                </element>
                <element class="RemoveSpaces"/>
                <element class="AddText">
                  <property name="text" class="String">'</property>
                </element>
                <element class="AddText">
                  <property name="text" class="String">'</property>
                  <property name="addTextStrategy" class="kapow.robot.plugin.common.stringprocessor.addtext.AddTextAfterStrategy"/>
                </element>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.word</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" idref="55"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="BranchPoint" id="60"/>
      <object class="Transition" serializationversion="3" id="61">
        <property name="name" idref="45"/>
        <property name="stepAction" class="ForEachTextPart">
          <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="0"/>
            </property>
          </property>
          <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="2"/>
          </property>
        </property>
        <property name="elementFinders" idref="55"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="62">
        <property name="name" idref="35"/>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" idref="2"/>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="RemoveSpaces"/>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" idref="2"/>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" idref="55"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="63">
        <property name="name" class="String">Assign Query 1</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddText">
                <property name="text" class="String">(@word_id,2,@synonym)</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">((@word_id)(,2,)(@synonym))</property>
                </property>
                <property name="replaceExp" class="String">(dic.word_id)+$3+"'"+(longText2)+"'"</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="6"/>
          </property>
        </property>
        <property name="elementFinders" idref="55"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="64">
        <property name="name" class="String">Write Synonym File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Synonym Qyery.sql</property>
          </property>
          <property name="fileContentExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">query1+"\n,"</property>
          </property>
          <property name="appendToFile" idref="3"/>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="56"/>
        </property>
      </object>
      <object class="End" id="65"/>
      <object class="Transition" serializationversion="3" id="66">
        <property name="name" class="String">Assign Query 1</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddText">
                <property name="text" class="String">(word_id,word,null,language_id)</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(word_id)(,)(word)(,)(null,)(language_id)</property>
                </property>
                <property name="replaceExp" class="String">dic.word_id+$2+dic.word+$4+$5+dic.lan_id</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">query1</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="67">
        <property name="name" class="String">Write Word File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Word Qyery.sql</property>
          </property>
          <property name="fileContentExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">query1+"\n,"</property>
          </property>
          <property name="appendToFile" idref="3"/>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="56"/>
        </property>
      </object>
      <object class="End" id="68"/>
      <object class="Transition" serializationversion="3" id="69">
        <property name="name" class="String">Defination and Example</property>
        <property name="stepAction" class="Wait2"/>
        <property name="elementFinders" idref="55"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="56"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="70">
        <property name="name" idref="35"/>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText2</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(.*?)\((.*?)\)(.*?)/(.*?)</property>
                  </property>
                  <property name="outputExpression" class="String">$4</property>
                </element>
                <element class="RemoveSpaces"/>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="71">
        <property name="name" idref="45"/>
        <property name="stepAction" class="ForEachTextPart">
          <property name="input" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="0"/>
            </property>
          </property>
          <property name="delimiter" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">/</property>
          </property>
          <property name="output" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">dic.example</property>
          </property>
        </property>
        <property name="elementFinders" idref="42"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="72">
        <property name="name" idref="35"/>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.example</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="RemoveSpaces"/>
                <element class="AddText">
                  <property name="text" class="String">'</property>
                </element>
                <element class="AddText">
                  <property name="text" class="String">'</property>
                  <property name="addTextStrategy" class="kapow.robot.plugin.common.stringprocessor.addtext.AddTextAfterStrategy"/>
                </element>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.example</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="73">
        <property name="name" class="String">Assign Query 2</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddText">
                <property name="text" class="String">('word_id','language_id','pos_id','definition','example')</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(\()('word_id')(,)('language_id')(,)('pos_id')(,')(definition)(',)('example')(\))</property>
                </property>
                <property name="replaceExp" class="String">$1+dic.word_id+$3+"4"+$5+dic.pos_id+$7+dic.defi+$9+(dic.example!=""?dic.example:"null")+$11</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="7"/>
          </property>
        </property>
        <property name="elementFinders" idref="42"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="74">
        <property name="name" class="String">Write Defination File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Defination Qyery.sql</property>
          </property>
          <property name="fileContentExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">query2+"\n,"</property>
          </property>
          <property name="appendToFile" idref="3"/>
        </property>
        <property name="elementFinders" idref="42"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="56"/>
        </property>
      </object>
      <object class="End" id="75"/>
      <object class="Transition" serializationversion="3" id="76">
        <property name="name" class="String">Convert Defination no Example</property>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText2</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(.*?)\((.*?)\)(.*)</property>
                  </property>
                  <property name="outputExpression" class="String">$3</property>
                </element>
                <element class="RemoveSpaces"/>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">dic.defi</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Defination not Containg Example</property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="BranchPoint" id="77"/>
      <object class="Transition" serializationversion="3" id="78">
        <property name="name" class="String">Convert POSID</property>
        <property name="stepAction" class="ConvertVariables">
          <property name="entries" class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntries">
            <object class="kapow.robot.plugin.common.stateprocessor.attributeconverter.AttributeConverterEntry" serializationversion="0">
              <property name="fromAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">longText2</property>
              </property>
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">(.*?)\((.*?)\).*</property>
                  </property>
                  <property name="outputExpression" class="String">$2</property>
                </element>
                <element class="RemoveSpaces"/>
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" idref="0"/>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" idref="9"/>
          <property name="reportingViaLog" idref="9"/>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="79">
        <property name="name" idref="37"/>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\pos.txt</property>
          </property>
          <property name="fileContentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddText">
                <property name="text" class="String">('unkonw','unkonw','pos_Monname','pos_Monname',null,null)</property>
              </element>
              <element class="ReplacePattern">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PartialInputMatchingPatternValueStringExpression">
                  <property name="value" class="String">(pos_Monname)</property>
                </property>
                <property name="replaceExp" class="String">longText</property>
              </element>
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">INPUT+"\n,"</property>
              </element>
            </property>
          </property>
          <property name="appendToFile" idref="3"/>
          <property name="executeInRoboMaker" idref="3"/>
        </property>
        <property name="elementFinders" idref="42"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="80"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="11"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="12"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="29"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="41"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="12"/>
        <to idref="15"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="15"/>
        <to idref="16"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="16"/>
        <to idref="17"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="16"/>
        <to idref="28"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="19"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="21"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="23"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="25"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="25"/>
        <to idref="26"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="27"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="29"/>
        <to idref="31"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="31"/>
        <to idref="32"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="32"/>
        <to idref="33"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="33"/>
        <to idref="34"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="33"/>
        <to idref="39"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="34"/>
        <to idref="36"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="36"/>
        <to idref="38"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="39"/>
        <to idref="40"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="41"/>
        <to idref="43"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="43"/>
        <to idref="44"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="44"/>
        <to idref="46"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="46"/>
        <to idref="47"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="47"/>
        <to idref="48"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="48"/>
        <to idref="49"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="48"/>
        <to idref="78"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="49"/>
        <to idref="50"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="50"/>
        <to idref="51"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="51"/>
        <to idref="52"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="51"/>
        <to idref="76"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="52"/>
        <to idref="53"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="53"/>
        <to idref="54"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="53"/>
        <to idref="69"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="54"/>
        <to idref="57"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="57"/>
        <to idref="58"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="57"/>
        <to idref="66"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="58"/>
        <to idref="59"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="59"/>
        <to idref="60"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="60"/>
        <to idref="61"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="60"/>
        <to idref="66"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="61"/>
        <to idref="62"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="62"/>
        <to idref="63"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="63"/>
        <to idref="64"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="64"/>
        <to idref="65"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="66"/>
        <to idref="67"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="67"/>
        <to idref="68"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="69"/>
        <to idref="70"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="70"/>
        <to idref="71"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="71"/>
        <to idref="72"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="72"/>
        <to idref="73"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="73"/>
        <to idref="74"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="74"/>
        <to idref="75"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="76"/>
        <to idref="77"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="77"/>
        <to idref="73"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="77"/>
        <to idref="54"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="78"/>
        <to idref="79"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="79"/>
        <to idref="80"/>
        <name/>
        <comment/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27"/>
</object>
