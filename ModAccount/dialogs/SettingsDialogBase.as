// Copyright 2011 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS-IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
package dialogs {
	import com.adobe.utils.StringUtil;
	
	import containers.Dialog;
	import containers.ResizingDialog;
	import containers.TabNavigatorPlus;
	
	import flash.display.DisplayObject;
	import flash.events.KeyboardEvent;
	import flash.events.TextEvent;
	import flash.ui.Keyboard;
	
	import mx.containers.Canvas;
	import mx.core.Container;
	import mx.core.UIComponent;
	
	public class SettingsDialogBase extends ResizingDialog {
		[Bindable] public var _myAccount:MyAccountContent;
		
		override protected function OnKeyDown(evt:KeyboardEvent): void {
			if (evt.keyCode == Keyboard.ESCAPE) {
				Hide();
			}
		}	
		
		override protected function OnShow():void {
			super.OnShow();
			_myAccount.OnActivate();
		}
		
		override protected function OnHide(): void {
			_myAccount.OnDeactivate();
			super.OnHide();
		}
	}
}
