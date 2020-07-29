/*!
 * Modernizr v2.6.2pre
 * Modernizr v2.6.2
 * www.modernizr.com
 *
 * Copyright (c) Faruk Ates, Paul Irish, Alex Sexton
@@ -24,7 +24,7 @@

window.Modernizr = (function( window, document, undefined ) {

    var version = '2.6.2pre',
    var version = '2.6.2',

    Modernizr = {},

@@ -141,7 +141,7 @@ window.Modernizr = (function( window, document, undefined ) {
          docElement.style.overflow = docOverflow;
      } else {
          div.parentNode.removeChild(div);
      } 
      }

      return !!ret;

@@ -1009,35 +1009,35 @@ window.Modernizr = (function( window, document, undefined ) {
    /*jshint evil:true */
/** Preset options */
var options = window.html5 || {};


/** Used to skip problem elements */
var reSkip = /^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i;


/** Not all elements can be cloned in IE **/
var saveClones = /^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i;


/** Detect whether the browser supports default html5 styles */
var supportsHtml5Styles;


/** Name of the expando, to work with multiple documents or to re-shiv one document */
var expando = '_html5shiv';


/** The id for the the documents expando */
var expanID = 0;


/** Cached data for each document */
var expandoData = {};


/** Detect whether the browser supports unknown elements */
var supportsUnknownElements;


(function () {
    try {
        var a = document.createElement('a');
        a.innerHTML = '<xyz></xyz>';
        //if the hidden property is implemented we can assume, that the browser supports basic HTML5 Styles
        supportsHtml5Styles = ('hidden' in a);


        supportsUnknownElements = a.childNodes.length == 1 || (function () {
            // assign a false positive if unable to shiv
            (document.createElement)('a');
            @@ -1052, 11 + 1052, 11 @@window.Modernizr = (function (window, document, undefined) {
                supportsHtml5Styles = true;
                supportsUnknownElements = true;
            }
    

      }());


        /*--------------------------------------------------------------------------*/


        /**
         * Creates a style sheet with the given CSS text and adds it to the document.
         * @private
  @@ -1067,11 +1067,11 @@ window.Modernizr = (function( window, document, undefined ) {
        function addStyleSheet(ownerDocument, cssText) {
          var p = ownerDocument.createElement('p'),
              parent = ownerDocument.getElementsByTagName('head')[0] || ownerDocument.documentElement;
      
  
          p.innerHTML = 'x<style>' + cssText + '</style>';
          return parent.insertBefore(p.lastChild, parent.firstChild);
        }
      
  
        /**
         * Returns the value of `html5.elements` as an array.
         * @private
  @@ -1081,7 +1081,7 @@ window.Modernizr = (function( window, document, undefined ) {
          var elements = html5.elements;
          return typeof elements == 'string' ? elements.split(' ') : elements;
        }
        
  
          /**
         * Returns the data associated to the given document
         * @private
  @@ -1098,7 +1098,7 @@ window.Modernizr = (function( window, document, undefined ) {
          }
          return data;
        }
      
  
        /**
         * returns a shived element for the given nodeName and document
         * @memberOf html5
  @@ -1117,15 +1117,15 @@ window.Modernizr = (function( window, document, undefined ) {
              data = getExpandoData(ownerDocument);
          }
          var node;
      
  
          if (data.cache[nodeName]) {
              node = data.cache[nodeName].cloneNode();
          } else if (saveClones.test(nodeName)) {
              node = (data.cache[nodeName] = data.createElem(nodeName)).cloneNode();
          } else {
              node = data.createElem(nodeName);
          }
      
  
          // Avoid adding some elements to fragments in IE < 9 because
          // * Attributes like `name` or `type` cannot be set/changed once an element
          //   is inserted into a document/fragment
  @@ -1135,7 +1135,7 @@ window.Modernizr = (function( window, document, undefined ) {
          //   or `text` property is set
          return node.canHaveChildren && !reSkip.test(nodeName) ? data.frag.appendChild(node) : node;
        }
      
  
        /**
         * returns a shived DocumentFragment for the given document
         * @memberOf html5
  @@ -1159,7 +1159,7 @@ window.Modernizr = (function( window, document, undefined ) {
          }
          return clone;
        }
      
  
        /**
         * Shivs the `createElement` and `createDocumentFragment` methods of the document.
         * @private
  @@ -1173,16 +1173,16 @@ window.Modernizr = (function( window, document, undefined ) {
              data.createFrag = ownerDocument.createDocumentFragment;
              data.frag = data.createFrag();
          }
      
      
  
  
          ownerDocument.createElement = function(nodeName) {
            //abort shiv
            if (!html5.shivMethods) {
                return data.createElem(nodeName);
            }
            return createElement(nodeName, ownerDocument, data);
          };
      
  
          ownerDocument.createDocumentFragment = Function('h,f', 'return function(){' +
            'var n=f.cloneNode(),c=n.createElement;' +
            'h.shivMethods&&(' +
  @@ -1195,9 +1195,9 @@ window.Modernizr = (function( window, document, undefined ) {
            ');return n}'
          )(html5, data.frag);
        }
      
  
        /*--------------------------------------------------------------------------*/


        /**
         * Shivs the given document.
         * @memberOf html5
  @@ -1209,7 +1209,7 @@ window.Modernizr = (function( window, document, undefined ) {
              ownerDocument = document;
          }
          var data = getExpandoData(ownerDocument);
      
  
          if (html5.shivCSS && !supportsHtml5Styles && !data.hasCSS) {
            data.hasCSS = !!addStyleSheet(ownerDocument,
              // corrects block display not defined in IE6/7/8/9
  @@ -1223,9 +1223,9 @@ window.Modernizr = (function( window, document, undefined ) {
          }
          return ownerDocument;
        }
      
  
        /*--------------------------------------------------------------------------*/


        /**
         * The `html5` object is exposed so that more elements can be shived and
         * existing shiving can be detected on iframes.
  @@ -1236,61 +1236,61 @@ window.Modernizr = (function( window, document, undefined ) {
         * html5 = { 'elements': 'mark section', 'shivCSS': false, 'shivMethods': false };
         */
        var html5 = {


            /**
             * An array or space separated string of node names of the elements to shiv.
             * @memberOf html5
             * @type Array|String
             */
            'elements': options.elements || 'abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video',


            /**
             * A flag to indicate that the HTML5 style sheet should be inserted.
             * @memberOf html5
             * @type Boolean
             */
            'shivCSS': (options.shivCSS !== false),


            /**
             * Is equal to true if a browser supports creating unknown/HTML5 elements
             * @memberOf html5
             * @type boolean
             */
            'supportsUnknownElements': supportsUnknownElements,


            /**
             * A flag to indicate that the document's `createElement` and `createDocumentFragment`
             * methods should be overwritten.
             * @memberOf html5
             * @type Boolean
             */
            'shivMethods': (options.shivMethods !== false),


            /**
             * A string to describe the type of `html5` object ("default" or "default print").
             * @memberOf html5
             * @type String
             */
            'type': 'default',


            // shivs the document according to the specified `html5` object options
            'shivDocument': shivDocument,


            //creates a shived element
            createElement: createElement,


            //creates a shived documentFragment
            createDocumentFragment: createDocumentFragment
        };


        /*--------------------------------------------------------------------------*/


        // expose html5
        window.html5 = html5;


        // shiv the document
        shivDocument(document);


    }(this, document));
    /*>>shiv*/

