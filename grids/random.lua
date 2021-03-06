------------------------------------------------
--                                      Preamble
------------------------------------------------
--[[
Uniform psuedorandom input grid.

Authored: 2015-09-18 (jwilson)
Modified: 2015-09-18
--]]

---------------- External Dependencies
------------------------------------------------
--                                        random
------------------------------------------------
local grid, parent = torch.class('grids.random', 'grids.metagrid')

function grid:__init(config)
  parent.__init(self)
  self.config = config or {}
end

function grid.generate(config)
  local X = torch.rand(config.size, config.dims)
        X:cmul((config.maxes - config.mins):expandAs(X)):add(config.mins:expandAs(X)) 
  return X
end