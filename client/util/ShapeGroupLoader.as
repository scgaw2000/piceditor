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
package util
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class ShapeGroupLoader extends DataLoader
	{
		public function ShapeGroupLoader(): void {
		}
		
		public static function LoadGroup(strGroupId:String, strAreaPrefix:String, fnComplete:Function): void {
			var strUrl:String = PicnikBase.StaticUrl(ShapeManager.ShapesBasePath() + "shapesV2/" + strAreaPrefix + "Shapes_" + strGroupId + ".xml");
			DataLoader.LoadData(strUrl, fnComplete, ShapeGroupLoader);
		}
		
		// Given obData, set _obResult and _strError accordingly
		protected override function ProcessResults(obData:Object):void {
			var xml:XML = new XML(obData);
			_obResult = xml;
		}
	}
}
