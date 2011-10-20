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
	/** IPendingAsset
	 * This class represents a fid which is now or was recently in-progress
	 * For example, an import or an upload
	 * Calls to GetFileProperties will wait for the import/upload to finish before returning.
	 */
	public interface IPendingAsset
	{
		// public function fnComplete(err:Number, strError:String, dctProps:Array=null): void
		function GetFileProperties(strProps:String, fnComplete:Function): void;
	}
}