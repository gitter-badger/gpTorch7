------------------------------------------------
--                                      Preamble
------------------------------------------------
--[[
Initialization file for gpTorch7 acquisition
functions class (scores).

Authored: 2015-09-17 (jwilson)
Modified: 2015-09-21
--]]

------------------------------------------------
--                                   Initializer
------------------------------------------------
scores = {}
include('metascore.lua')
include('expected_improvement.lua')
include('confidence_bound.lua')
return scores