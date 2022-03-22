// @galacticfurball 03/22/2022
#version 3.7;
global_settings{ assumed_gamma 1.2 }
#include "colors.inc"
#include "textures.inc"
#include "metals.inc"
 
camera { perspective angle 75 location <0.0,1.2 ,-3.0> right x*image_width/image_height look_at <0.0,1.0,0.0> }

light_source{< 3000,3000,-3000> color White}
 
sky_sphere { pigment { gradient <0,1,0> color_map {
 [0.00 rgb <1,1,0.3>]
 [0.35 rgb <1,0,0.5>*0.5]
 [0.65 rgb <1,0,1>*0.2]
 [1.00 rgb <1,1,1>]}
 scale 2}}
                    
fog { fog_type 2 distance 50 color Pink*2 fog_offset 0.1 fog_alt 0.5 }

plane { <0,1,0>, 0  texture{ Polished_Chrome normal { bumps 0.15 scale <0.35,0.25,0.25>*0.5 } finish { reflection 1.0 }}}
               
julia_fractal{ <-0.083,0.0,-0.83,-0.025> quaternion sqr max_iteration 8 precision 20
  texture{ pigment{ color rgb<0.85,0.1,0.6>} finish { phong 1 reflection 0.2}}
  rotate<0,0,90>
  translate<0,0.5,1>
}

sphere { <0,0,0>, 1 texture {T_Gold_1C finish { phong 1 } } translate<0,2.5,3> }
