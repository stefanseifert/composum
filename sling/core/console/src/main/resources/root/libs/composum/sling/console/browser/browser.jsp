<%@page session="false" pageEncoding="utf-8"%>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.2"%>
<%@taglib prefix="cpn" uri="http://sling.composum.com/cpnl/1.0"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sling:defineObjects/>
<cpn:component id="browser" type="com.composum.sling.core.browser.Browser" scope="request">
<html>
<sling:call script="head.jsp"/>
<body id="browser" class="console left-open top-open">
  <div id="ui">
    <sling:call script="dialogs.jsp"/>
    <sling:call script="/libs/composum/sling/console/page/navbar.jsp"/>
    <div id="content-wrapper">
      <div id="split-view-horizontal-split" class="split-pane horizontal-split fixed-left">
        <div class="split-pane-component left-pane">
          <div>
            <div class="tree-panel">
              <div id="browser-tree" data-selected="${browser.path}">
              </div>
            </div>
            <div class="tree-actions action-bar btn-toolbar" role="toolbar">
              <div class="menu btn-group btn-group-sm dropup" role="group">
                <button type="button" class="glyphicon-menu-hamburger glyphicon btn btn-default dropdown-toggle" data-toggle="dropdown" title="More actions..."><span class="label">More...</span></button>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#" class="lock" title="Lock/Unlock the selected node">Lock</a></li>
                  <li><a href="#" class="mixins" title="View/Change the nodes mixin types">Mixin Types...</a></li>
                  <li><a href="#" class="move" title="Move/Rename/Reorder the selected node">Move / Rename / Reorder</a></li>
                </ul>
              </div>
              <div class="btn-group btn-group-sm" role="group">
                <button type="button" class="create glyphicon-plus glyphicon btn btn-default" title="Create a new node"><span class="label">Create</span></button>
                <button type="button" class="delete glyphicon-minus glyphicon btn btn-default" title="Delete selected node"><span class="label">Delete</span></button>
              </div>
              <div class="btn-group btn-group-sm" role="group">
                <button type="button" class="copy fa fa-copy btn btn-default" title="Copy selecto node to clipboard"><span class="label">Copy</span></button>
                <button type="button" class="paste fa fa-paste btn btn-default" title="Paste node from clipboard into the selected node"><span class="label">Paste</span></button>
              </div>
              <div class="btn-group btn-group-sm" role="group">
                <button type="button" class="refresh glyphicon-refresh glyphicon btn btn-default" title="Refresh tree view"><span class="label">Refsh</span></button>
              </div>
              <div class="filter btn-group btn-group-sm align-right dropup" role="group">
                <label class="filter"><span>default</span></label>
                <button type="button" class="glyphicon-filter glyphicon btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" title="Filter for the tree"><span class="label">Filter</span></button>
                <ul class="dropdown-menu" role="menu">
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="split-pane-divider"><span class="fa fa-ellipsis-v"></span></div>
        <div class="split-pane-component right-pane">
          <div id="split-view-vertical-split" class="split-pane vertical-split fixed-top">
            <div class="split-pane-component top-pane">
              <div id="browser-query">
                <sling:call script="query.jsp"/>
              </div>
            </div>
            <div class="split-pane-divider"><span class="fa fa-ellipsis-h"></span></div>
            <div class="split-pane-component bottom-pane">
              <div id="browser-view">
                <sling:call script="view.jsp"/>
              </div>
              <div class="close-top"><a href="#" class="fa fa-angle-double-up" title="Collapse top panel"></a></div>
            </div>
            <div class="open-top"><a href="#" class="fa fa-angle-double-down" title="Restore top panel"></a></div>
          </div>
          <div class="close-left"><a href="#" class="fa fa-angle-double-left" title="Collapse left panel"></a></div>
        </div>
        <div class="open-left"><a href="#" class="fa fa-angle-double-right" title="Restore left panel"></a></div>
      </div>
    </div>
  </div>
<sling:call script="script.jsp"/>
</body>
</html>
</cpn:component>