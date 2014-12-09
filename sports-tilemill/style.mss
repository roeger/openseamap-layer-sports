@serif:"Times New Roman Regular","FreeSerif Medium","DejaVu Serif Book";
@serif_italic:"Times New Roman Italic","FreeSerif Italic","DejaVu Serif Italic";
@sans:"Arial Regular","Liberation Sans Regular","DejaVu Sans Book";
@sans-bold:"Arial Bold","Liberation Sans Bold","DejaVu Sans Bold";

@sport_point_base:18;
@whitewater-marker-width-12:18;
@whitewater_line_width_9:4;

#osm_whitewater_point[zoom>=12] {
    [whitewater=~"put_in|egress|hazard|rapid|put_in;egress|egress;put_in"] {
      marker-width:@whitewater-marker-width-12;
  	[zoom>=13] { marker-width: @whitewater-marker-width-12+2; }
    [zoom>=14] { marker-width: @whitewater-marker-width-12+4; }
    [zoom>=15] { marker-width: @whitewater-marker-width-12+6; }
    [zoom>=16] { marker-width: @whitewater-marker-width-12+8; }
    [zoom>=17] { marker-width: @whitewater-marker-width-12+10; }
    [zoom>=18] { marker-width: @whitewater-marker-width-12+12; }
    [zoom>=19] { marker-width: @whitewater-marker-width-12+14; }
      marker-allow-overlap:true;
      [whitewater="put_in"] { marker-file:url(symbols/put_in.svg); }    
      [whitewater="egress"] { marker-file:url(symbols/egress.svg); }    
      [whitewater="hazard"] { marker-file:url(symbols/hazard.svg); }
      [whitewater="rapid"] { marker-file:url(symbols/rapid.svg); }    
      [whitewater=~"put_in;egress|egress;put_in"] { marker-file:url(symbols/put_in_egress.svg); }
    }
    ["whitewater:rapid_grade"=~"4|5|6"] {
      marker-width:15;
      marker-allow-overlap:true;
      ["whitewater:rapid_grade"="4"] { marker-file:url(symbols/rapid_4.svg); }    
      ["whitewater:rapid_grade"="5"] { marker-file:url(symbols/rapid_5.svg); }    
      ["whitewater:rapid_grade"="6"] { marker-file:url(symbols/rapid_6.svg); }    
    }
}

#osm_whitewater_line[zoom>=9] {
    line-color: #999999;
  	[zoom=9] { line-width: @whitewater_line_width_9; }
  	[zoom>=10] { line-width: @whitewater_line_width_9+0.5; }
    [zoom>=11] { line-width: @whitewater_line_width_9+1; }
    [zoom>=12] { line-width: @whitewater_line_width_9+1.5; }
    [zoom>=13] { line-width: @whitewater_line_width_9+2; }
    [zoom>=14] { line-width: @whitewater_line_width_9+2.5; }
    [zoom>=15] { line-width: @whitewater_line_width_9+3; }
    [zoom>=16] { line-width: @whitewater_line_width_9+3.5; }
    line-join: round;
    line-cap: round;
    opacity: 0.75;
    ["whitewater:section_grade"=~"0"] { line-color: #0080ff; }
    ["whitewater:section_grade"=~"1|1+|1-|0-1"] { line-color: #00d400; }
    ["whitewater:section_grade"=~"2|2+|2-|1-2"] { line-color: #ffd400; }
    ["whitewater:section_grade"=~"3|3+|3-|2-3"] { line-color: #ff8000; }
    ["whitewater:section_grade"=~"4|4+|4-|3-4"] { line-color: #ff0000; }
    ["whitewater:section_grade"=~"5|5+|5-|4-5"] { line-color: #8000ff; }
    ["whitewater:section_grade"=~"6|6+|6-|5-6"] { line-color: #a000a0; }
  [zoom>=12] {
  text-name:"[whitewater:section_name]" ;
  text-face-name:@sans-bold;
  text-size:11;
  text-halo-radius:1;
  text-halo-fill: fadeout(white, 30%);
  text-placement: line;
//  [whitewater=~"portage|portage_way"] { marker-file:url(symbols/TODO.svg); }    
}}

#osm_sport_line[zoom>=12] {
  	line-width: 2;
    text-name:"[name]" ;
    text-face-name:@sans-bold;
    text-size:11;
    text-halo-radius:1;
    text-halo-fill: fadeout(white, 30%);
    [sport=~"canoe|canoeing"] { marker-file:url(symbols/canoeing.svg); }
    [sport="fishing"] { marker-file:url(symbols/kitesurfing.svg); }
    [sport="kite_surfing"] { marker-file:url(symbols/kitesurfing.svg); }
    [sport="rowing"] { marker-file:url(symbols/rowing.svg); }
    [sport="sailing"] { marker-file:url(symbols/sailing.svg); }
    [sport="scuba_diving"] { marker-file:url(symbols/scuba_diving.svg); }
    [sport="windsurfing"] { marker-file:url(symbols/windsurfing.svg); }
    [sport="surfing"] { marker-file:url(symbols/surfing.svg); }
    [sport="water_ski"] { marker-file:url(symbols/waterskiing.svg); }
}


#osm_sport_point[zoom>=12] {
    marker-width: @sport_point_base;
  	[zoom>=13] { marker-width: @sport_point_base+2; }
    [zoom>=14] { marker-width: @sport_point_base+4; }
    [zoom>=15] { marker-width: @sport_point_base+6; }
    [zoom>=16] { marker-width: @sport_point_base+8; }
    [zoom>=17] { marker-width: @sport_point_base+10; }
    [zoom>=18] { marker-width: @sport_point_base+12; }
    [zoom>=19] { marker-width: @sport_point_base+14; }
    marker-allow-overlap:true;
    [sport=~"canoe|canoeing"] { marker-file:url(symbols/canoeing.svg); }
    [sport="fishing"] { marker-file:url(symbols/kitesurfing.svg); }
    [sport="kite_surfing"] { marker-file:url(symbols/kitesurfing.svg); }
    [sport="rowing"] { marker-file:url(symbols/rowing.svg); }
    [sport="sailing"] { marker-file:url(symbols/sailing.svg); }
    [sport="scuba_diving"] { marker-file:url(symbols/scuba_diving.svg); }
    [sport="swimming"] { marker-file:url(symbols/swimming.svg); }
    [sport="windsurfing"] { marker-file:url(symbols/windsurfing.svg); }
    [sport="surfing"] { marker-file:url(symbols/surfing.svg); }
    [sport="water_ski"] { marker-file:url(symbols/waterskiing.svg); }
}