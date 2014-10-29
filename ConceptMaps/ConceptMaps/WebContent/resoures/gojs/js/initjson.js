function init() {
    if (window.goSamples) goSamples();  // init for these samples -- you don't need to call this
    var $ = go.GraphObject.make;  // for conciseness in defining templates

    myDiagram =
      $(go.Diagram, "myDiagram",  // must name or refer to the DIV HTML element
        {
          // start everything in the middle of the viewport
          initialContentAlignment: go.Spot.Center,
          // have mouse wheel events zoom in and out instead of scroll up and down
          "toolManager.mouseWheelBehavior": go.ToolManager.WheelZoom,
          // support double-click in background creating a new node
          "clickCreatingTool.archetypeNodeData": { text: "New Concept" },
          // enable undo & redo
          "undoManager.isEnabled": true
        });

    // when the document is modified, add a "*" to the title and enable the "Save" button
    myDiagram.addDiagramListener("Modified", function(e) {
      var button = document.getElementById("SaveButton");
      if (button) button.disabled = !myDiagram.isModified;
      var idx = document.title.indexOf("*");
      if (myDiagram.isModified) {
        if (idx < 0) document.title += "*";
      } else {
        if (idx >= 0) document.title = document.title.substr(0, idx); 
      }
    });

    // define the Node template
    myDiagram.nodeTemplate =
      $(go.Node, "Auto",
        new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
        // define the node's outer shape, which will surround the TextBlock
        $(go.Shape, "RoundedRectangle",
          {
            parameter1: 20,  // the corner has a large radius
            fill: $(go.Brush, go.Brush.Linear, { 0: "rgb(254, 201, 0)", 1: "rgb(254, 162, 0)" }),
            stroke: "black",
            portId: "",
            fromLinkable: true,
            fromLinkableSelfNode: true,
            fromLinkableDuplicates: true,
            toLinkable: true,
            toLinkableSelfNode: true,
            toLinkableDuplicates: true,
            cursor: "pointer"
          }),
        $(go.TextBlock,
          {
        	margin: 3,
            font: "bold 11pt helvetica, bold arial, sans-serif",
            editable: true  // editing the text automatically updates the model data
          },
          new go.Binding("text", "text").makeTwoWay())
      );

    // unlike the normal selection Adornment, this one includes a Button
    myDiagram.nodeTemplate.selectionAdornmentTemplate =
      $(go.Adornment, "Spot",
        $(go.Panel, "Auto",
          $(go.Shape, { fill: null, stroke: "blue", strokeWidth: 2 }),
          $(go.Placeholder)  // this represents the selected Node
        ),
        // the button to create a "next" node, at the top-right corner
        $("Button",
          {
            alignment: go.Spot.TopRight,
            click: addNodeAndLink  // this function is defined below
          },
          $(go.Shape, "PlusLine", { desiredSize: new go.Size(6, 6) })
        ) // end button
      ); // end Adornment

    // clicking the button inserts a new node to the right of the selected node,
    // and adds a link to that new node
    function addNodeAndLink(e, obj) {
      var adorn = obj.part;
      e.handled = true;
      var diagram = adorn.diagram;
      diagram.startTransaction("Add State");

      // get the node data for which the user clicked the button
      var fromNode = adorn.adornedPart;
      var fromData = fromNode.data;
      // create a new "State" data object, positioned off to the right of the adorned Node
      var toData = { text: "new" };
      var p = fromNode.location.copy();
      p.x += 200;
      toData.loc = go.Point.stringify(p);  // the "loc" property is a string, not a Point object
      // add the new node data to the model
      var model = diagram.model;
      model.addNodeData(toData);
      
      // create a link data from the old node data to the new node data
      var linkdata = {
        from: model.getKeyForNodeData(fromData),  // or just: fromData.id
        to: model.getKeyForNodeData(toData),
        text: "transition"
      };
      // and add the link data to the model
      model.addLinkData(linkdata);
      
      // select the new Node
      var newnode = diagram.findNodeForData(toData);
      diagram.select(newnode);
      
      diagram.commitTransaction("Add State");
      
      // if the new node is off-screen, scroll the diagram to show the new node
      diagram.scrollToRect(newnode.actualBounds);
    }

    // replace the default Link template in the linkTemplateMap
    myDiagram.linkTemplate =
      $(go.Link,  // the whole link panel
        { curve: go.Link.Bezier, adjusting: go.Link.Stretch, reshapable: true },
        new go.Binding("points").makeTwoWay(),
        new go.Binding("curviness", "curviness"),
        $(go.Shape,  // the link shape
          { isPanelMain: true, stroke: "black", strokeWidth: 1.5 }),
        $(go.Shape,  // the arrowhead
          { toArrow: "standard", stroke: null }),
        $(go.Panel, "Auto",
          $(go.Shape,  // the link shape
            {
              fill: $(go.Brush, go.Brush.Radial,
                      { 0: "rgb(240, 240, 240)", 0.3: "rgb(240, 240, 240)", 1: "rgba(240, 240, 240, 0)" }),
              stroke: null
            }),
          $(go.TextBlock, "transition",  // the label
            {
              textAlign: "center",
              font: "10pt helvetica, arial, sans-serif",
              stroke: "black",
              margin: 4,
              editable: true  // editing the text automatically updates the model data
            },
            new go.Binding("text", "text").makeTwoWay())
        )
      );
    
    model.undoManager.isEnabled = true;
    
 // **********************************************************
    // A third diagram is on this page to display the undo state.
    // It functions as a tree view, showing the Transactions
    // in the UndoManager history.
    // **********************************************************

    var undoDisplay =
      $(go.Diagram, "undoDisplay",
        {
          allowMove: false,
          maxSelectionCount: 1,
          layout:
            $(go.TreeLayout,
              {
                alignment: go.TreeLayout.AlignmentStart,
                angle: 0,
                compaction: go.TreeLayout.CompactionNone,
                layerSpacing: 16,
                layerSpacingParentOverlap: 1,
                nodeIndent: 2,
                nodeIndentPastParent: 0.88,
                nodeSpacing: 0,
                setsPortSpot: false,
                setsChildPortSpot: false,
                arrangementSpacing: new go.Size(2, 2)
              }),
          "animationManager.isEnabled": false
        });

    undoDisplay.nodeTemplate =
      $(go.Node,
        $("TreeExpanderButton",
          { width: 14, "ButtonBorder.fill": "whitesmoke" }),
        $(go.Panel, "Horizontal",
          { position: new go.Point(16, 0) },
          new go.Binding("background", "color"),
          $(go.TextBlock, {margin: 2},
            new go.Binding("text", "text"))
        )
      );

    undoDisplay.linkTemplate = $(go.Link);  // not really used

    var undoModel =
      $(go.TreeModel,  // initially empty
        { isReadOnly: true });
    undoDisplay.model = undoModel;

    // ******************************************************
    // Add an undo listener to the main model
    // ******************************************************

    var changedLog = document.getElementById("modelChangedLog");
    var editToRedo = null; // a node in the undoDisplay
    var editList = [];

    model.addChangedListener(function(e) {
      // do not display some uninteresting kinds of transaction notifications
      if (e.change === go.ChangedEvent.Transaction) {
        if (e.propertyName === "CommittingTransaction" || e.modelChange === "SourceChanged") return;
        // do not display any layout transactions
        if (e.oldValue === "Layout") return;
      }  // You will probably want to use e.isTransactionFinished instead

      // Add entries into the log
      var changes = e.toString();
      if (changes[0] !== "*") changes = "&nbsp;&nbsp;" + changes;
      changedLog.innerHTML += changes + "<br/>";
      changedLog.scrollTop = changedLog.scrollHeight;

      // Modify the undoDisplay Diagram, the tree view
      if (e.propertyName === "CommittedTransaction") {
        if (editToRedo != null) {
          // remove from the undo display diagram all nodes after editToRedo
          for (var i = editToRedo.data.index+1; i < editList.length; i++) {
            undoDisplay.remove(editList[i]);
          }
          editList = editList.slice(0, editToRedo.data.index);
          editToRedo = null;
        }

        var tx = e.object;
        var txname = (tx !== null ? e.object.name : "");
        var parentData = {text: txname, tag: e.object, index: editList.length - 1};
        undoModel.addNodeData(parentData)
        var parentKey = undoModel.getKeyForNodeData(parentData);
        var parentNode = undoDisplay.findNodeForKey(parentKey);
        editList.push(parentNode);
        if (tx !== null) {
          var allChanges = tx.changes;
          var odd = true;
          allChanges.each(function(change) {
              var childData = {
                color: (odd ? "white" : "#E0FFED"),
                text: change.toString(),
                parent: parentKey
              };
              undoModel.addNodeData(childData)
              odd = !odd;
            });
          undoDisplay.commandHandler.collapseTree(parentNode);
        }
      } else if (e.propertyName === "FinishedUndo" || e.propertyName === "FinishedRedo") {
        var undoManager = model.undoManager;
        if (editToRedo !== null) {
          editToRedo.isSelected = false;
          editToRedo = null;
        }
        // Find the node that represents the undo or redo state and select it
        var nextEdit = undoManager.transactionToRedo;
        if (nextEdit !== null) {
          var itr = undoDisplay.nodes;
          while (itr.next()) {
            var node = itr.value;
            if (node.data.tag === nextEdit) {
              node.isSelected = true;
              editToRedo = node;
              break;
            }
          }
        }
      }
    }); // end model changed listener

    model.addChangedListener(function(e) {
      if (e.isTransactionFinished) {
        var tx = e.object;
        if (tx instanceof go.Transaction && console) {
          console.log(tx.toString());
          tx.changes.each(function(c) {
            if (c.model) console.log("  " + c.toString());
          });
        }
      }
    });

    // read in the JSON-format data from the "mySavedModel" element
    load();
  }

  // Show the diagram's model in JSON format
  function save() {
    document.getElementById("mySavedModel").value = myDiagram.model.toJson();
    myDiagram.isModified = false;
    document.getElementById("drawform").submit();
    
  }
  function load() {
	  /*var x = document.getElementById("selectConcept").selectedIndex;
	  var value = document.getElementById("selectConcept").value;
	  return value;*/
	  
//	  var concept = '{ "class": "go.GraphLinksModel",' +
//	  				'"nodeDataArray": [ {"text":"New Concept", "key":-1, "loc":"165 109"},{"text":"New Concept", "key":-2, "loc":"104 208"}], "linkDataArray": [  ]}';
//
//	  
    myDiagram.model = go.Model.fromJson(document.getElementById("mySavedModel").value);
  }
  
  function undo() {
	  myDiagram.undoManager.undo()
	}

	function redo() {
		myDiagram.undoManager.redo()
	}
