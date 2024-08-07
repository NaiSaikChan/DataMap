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
            <property name="attributeValue" class="String">606</property>
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
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
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
  <property name="usePre96DefaultWaiting" class="Boolean" id="8">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="8"/>
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
  <property name="avoidExternalReExecution" idref="8"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="9"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="10">
        <property name="name" class="String">Load File</property>
        <property name="stepAction" class="LoadFile">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.FileNameValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Library\SourceTest.txt</property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27">
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="11"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="12">
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
        <property name="elementFinders" idref="11"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="BranchPoint" id="13"/>
      <object class="Transition" serializationversion="3" id="14">
        <property name="name" class="String" id="15">For Each Text Part</property>
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
        <property name="elementFinders" idref="11"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="16">
        <property name="name" class="String">Get Iteration</property>
        <property name="stepAction" class="GetIteration">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="5"/>
          </property>
        </property>
        <property name="elementFinders" idref="11"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="17">
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
      <object class="Try" id="18"/>
      <object class="Transition" serializationversion="3" id="19">
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
                  <property name="mode" class="Integer">2</property>
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
          <property name="reportingViaAPI" idref="8"/>
          <property name="reportingViaLog" idref="8"/>
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
      <object class="Transition" serializationversion="3" id="20">
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
      <object class="Try" id="21"/>
      <object class="Transition" serializationversion="3" id="22">
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
          <property name="reportingViaAPI" idref="8"/>
          <property name="reportingViaLog" idref="8"/>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment" class="String">Defination Containg Example</property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="BranchPoint" id="23"/>
      <object class="Transition" serializationversion="3" id="24">
        <property name="name" class="String">Word and synonym</property>
        <property name="stepAction" class="Wait2"/>
        <property name="elementFinders" class="ElementFinders" id="25"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="26">name</element>
        </property>
      </object>
      <object class="Try" id="27"/>
      <object class="Transition" serializationversion="3" id="28">
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
        <property name="elementFinders" idref="25"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" idref="8"/>
          <property name="reportingViaLog" idref="8"/>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment" class="String">synonym</property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="26"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="29">
        <property name="name" class="String" id="30">Convert Variables</property>
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
        <property name="elementFinders" idref="25"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="BranchPoint" id="31"/>
      <object class="Transition" serializationversion="3" id="32">
        <property name="name" idref="15"/>
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
        <property name="elementFinders" idref="25"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="33">
        <property name="name" idref="30"/>
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
        <property name="elementFinders" idref="25"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="34">
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
        <property name="elementFinders" idref="25"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="35">
        <property name="name" class="String">Write Synonym File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Synonym Qyery.txt</property>
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
          <element idref="26"/>
        </property>
      </object>
      <object class="End" id="36"/>
      <object class="Transition" serializationversion="3" id="37">
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
      <object class="Transition" serializationversion="3" id="38">
        <property name="name" class="String">Write Word File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Word Qyery.txt</property>
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
          <element idref="26"/>
        </property>
      </object>
      <object class="End" id="39"/>
      <object class="Transition" serializationversion="3" id="40">
        <property name="name" class="String">Defination and Example</property>
        <property name="stepAction" class="Wait2"/>
        <property name="elementFinders" idref="25"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="26"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="41">
        <property name="name" idref="30"/>
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
      <object class="Transition" serializationversion="3" id="42">
        <property name="name" idref="15"/>
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
        <property name="elementFinders" idref="11"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="43">
        <property name="name" idref="30"/>
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
      <object class="Transition" serializationversion="3" id="44">
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
                <property name="replaceExp" class="String">$1+dic.word_id+$3+dic.lan_id+$5+dic.pos_id+$7+dic.defi+$9+(dic.example!=""?dic.example:"null")+$11</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="7"/>
          </property>
        </property>
        <property name="elementFinders" idref="11"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="45">
        <property name="name" class="String">Write Defination File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">D:\Mon Data\Mon Dictionary\DataMap\Defination Qyery.txt</property>
          </property>
          <property name="fileContentExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">query2+"\n,"</property>
          </property>
          <property name="appendToFile" idref="3"/>
        </property>
        <property name="elementFinders" idref="11"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="26"/>
        </property>
      </object>
      <object class="End" id="46"/>
      <object class="Transition" serializationversion="3" id="47">
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
      <object class="BranchPoint" id="48"/>
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
              </property>
              <property name="toAttributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" idref="0"/>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" idref="8"/>
          <property name="reportingViaLog" idref="8"/>
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
      <object class="Transition" serializationversion="3" id="50">
        <property name="name" class="String">Write File</property>
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
        <property name="elementFinders" idref="11"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="51"/>
      <object class="End" id="52"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="10"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="12"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="12"/>
        <to idref="13"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="52"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
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
        <from idref="17"/>
        <to idref="18"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="19"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="49"/>
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
        <to idref="22"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="47"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
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
        <from idref="23"/>
        <to idref="40"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="27"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="27"/>
        <to idref="28"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="27"/>
        <to idref="37"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="28"/>
        <to idref="29"/>
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
        <from idref="31"/>
        <to idref="37"/>
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
        <from idref="34"/>
        <to idref="35"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="35"/>
        <to idref="36"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="37"/>
        <to idref="38"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="38"/>
        <to idref="39"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="40"/>
        <to idref="41"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="41"/>
        <to idref="42"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="42"/>
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
        <to idref="45"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="45"/>
        <to idref="46"/>
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
        <to idref="44"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="48"/>
        <to idref="24"/>
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
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27"/>
</object>
