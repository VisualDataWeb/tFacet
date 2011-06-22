/*******************************************************************************
 * Copyright (c) 2011 Sören Brunk.
 * This file is part of tFacet.
 * 
 * tFacet is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * tFacet is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with tFacet.  If not, see <http://www.gnu.org/licenses/>.
*******************************************************************************/

package model.rdf
{
	/**
	 * A Literal with an associated language 
	 */
	public class LanguageLiteral implements ILiteral
	{
		private var _value:String;
		private var _language:String;
		public function LanguageLiteral(value:String, language:String) {
			_language = language;
			_value = value;
		}
		public function get value():String {
			return _value;
		}
		public function set value(value:String):void {
			_value = value;
		}
		public function toString():String {
			return _value;
		}
		public function get label():String {
			return _value;
		}
		public function get language():String {
			return _language;
		}
		public function toTurtleString():String {
			return '"' + _value + '"@' + language;
		}
		public function equals(literal:ILiteral):Boolean
		{
			return (
				literal is LanguageLiteral
				&& value == (literal as LanguageLiteral).value
				&& language == (literal as LanguageLiteral).language);
		}
	}
}
