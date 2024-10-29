<?xml version="1.0" encoding="UTF-8"?>
<!--
     Copyright 2024 Antenna House, Inc.

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.
-->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
	xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	queryBinding="xslt2">

<phase id="axs">
  <active pattern="axs-pattern" />
</phase>

<pattern id="axs-pattern">

<rule context="formatter-settings/@inherit-svg-fill-color">
  <report test="true()" role="Error" sqf:fix="formatter-settings-inherit-svg-fill-color-fix">'inherit-svg-fill-color' moved to &lt;svg-render-settings&gt;' in V7.3.</report>
  <sqf:fix id="formatter-settings-inherit-svg-fill-color-fix">
    <let name="inherit-svg-fill-color" value="string(.)" />
    <sqf:description>
      <sqf:title>Move 'inherit-svg-fill-color' to &lt;svg-render-settings&gt;</sqf:title>
    </sqf:description>
    <sqf:add match="/*/(formatter-settings, font-settings, pdf-settings, ps-settings, svg-settings)[last()]" node-type="element" position="after" target="svg-render-settings" use-when="empty(/*/svg-render-settings)">
      <xsl:attribute name="inherit-svg-fill-color" select="$inherit-svg-fill-color" />
    </sqf:add>
    <sqf:add match="/*/svg-render-settings" node-type="attribute" target="inherit-svg-fill-color" select="$inherit-svg-fill-color" use-when="exists(../following-sibling::svg-render-settings)" />
    <sqf:delete />
  </sqf:fix>
</rule>

<rule context="formatter-settings/@responsive-svg-size">
  <report test="true()" role="Error" sqf:fix="formatter-settings-responsive-svg-size-fix">'responsive-svg-size' moved to &lt;svg-render-settings&gt;' in V7.3.</report>
  <sqf:fix id="formatter-settings-responsive-svg-size-fix">
    <let name="responsive-svg-size" value="string(.)" />
    <sqf:description>
      <sqf:title>Move 'responsive-svg-size' to &lt;svg-render-settings&gt;</sqf:title>
    </sqf:description>
    <sqf:add match="/*/(formatter-settings, font-settings, pdf-settings, ps-settings, svg-settings)[last()]" node-type="element" position="after" target="svg-render-settings" use-when="empty(/*/svg-render-settings)">
      <xsl:attribute name="responsive-svg-size" select="$responsive-svg-size" />
    </sqf:add>
    <sqf:add match="/*/svg-render-settings" node-type="attribute" target="responsive-svg-size" select="$responsive-svg-size" use-when="exists(../following-sibling::svg-render-settings)" />
    <sqf:delete />
  </sqf:fix>
</rule>

<rule context="pdf-settings/@gs-add-options">
  <report test="true()" role="Error" sqf:fix="gs-add-options-fix">'gs-add-options' changed to 'gs-options' in V7.1.</report>
  <sqf:fix id="gs-add-options-fix">
    <sqf:description>
      <sqf:title>Change 'gs-add-options' to 'gs-options'</sqf:title>
    </sqf:description>
    <sqf:add node-type="attribute" target="gs-options" select="string(.)"/>
    <sqf:delete />
  </sqf:fix>
</rule>

<rule context="pdf-settings/@image-downsampling">
  <report test="true()" role="Error" sqf:fix="image-downsampling-fix">'image-downsampling' changed to 'color-downsampling' in V6.3.</report>
  <sqf:fix id="image-downsampling-fix">
    <sqf:description>
      <sqf:title>Change 'image-downsampling' to 'color-downsampling'</sqf:title>
    </sqf:description>
    <sqf:add node-type="attribute" target="color-downsampling" select="string(.)"/>
    <sqf:delete />
  </sqf:fix>
</rule>

<rule context="pdf-settings/@image-downsampling-above-dpi">
  <report test="true()" role="Error" sqf:fix="image-downsampling-above-dpi-fix">'image-downsampling-above-dpi' changed to 'color-downsampling-above-dpi' in V6.3.</report>
  <sqf:fix id="image-downsampling-above-dpi-fix">
    <sqf:description>
      <sqf:title>Change 'image-downsampling-above-dpi' to 'color-downsampling-above-dpi'</sqf:title>
    </sqf:description>
    <sqf:add node-type="attribute" target="color-downsampling-above-dpi" select="string(.)"/>
    <sqf:delete />
  </sqf:fix>
</rule>

<rule context="pdf-settings/@image-downsampling-target-dpi">
  <report test="true()" role="Error" sqf:fix="image-downsampling-target-dpi-fix">'image-downsampling-target-dpi' changed to 'color-downsampling-target-dpi' in V6.3.</report>
  <sqf:fix id="image-downsampling-target-dpi-fix">
    <sqf:description>
      <sqf:title>Change 'image-downsampling-target-dpi' to 'color-downsampling-target-dpi'</sqf:title>
    </sqf:description>
    <sqf:add node-type="attribute" target="color-downsampling-target-dpi" select="string(.)"/>
    <sqf:delete />
  </sqf:fix>
</rule>

<rule context="pdf-settings/@image-downsampling-default">
  <report test="true()" role="Error" sqf:fix="image-downsampling-default-fix">'image-downsampling-default' changed to 'color-downsampling-default' in V6.3.</report>
  <sqf:fix id="image-downsampling-default-fix">
    <sqf:description>
      <sqf:title>Change 'image-downsampling-default' to 'color-downsampling-default'</sqf:title>
    </sqf:description>
    <sqf:add node-type="attribute" target="color-downsampling-default" select="string(.)"/>
    <sqf:delete />
  </sqf:fix>
</rule>

<rule context="pdf-settings/@jpeg-quality">
  <report test="true()" role="Error" sqf:fix="jpeg-quality-fix">'jpeg-quality' changed to 'color-jpeg-quality' and 'grayscale-jpeg-quality' in V7.0.</report>
  <sqf:fix id="jpeg-quality-fix">
    <sqf:description>
      <sqf:title>Change 'jpeg-quality' to 'color-jpeg-quality' and 'grayscale-jpeg-quality'</sqf:title>
    </sqf:description>
    <sqf:add node-type="attribute" target="color-jpeg-quality" select="string(.)"/>
    <sqf:add node-type="attribute" target="grayscale-jpeg-quality" select="string(.)"/>
    <sqf:delete />
  </sqf:fix>
</rule>

</pattern>
</schema>

<!-- Local Variables:  -->
<!-- mode: nxml        -->
<!-- End:              -->
