-- The MIT License (MIT)

-- Copyright (c) 2019 Mine Little Pony

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

-- For third-party compatibility.
CSteps = true

local MOVEMODE_WALK = 1
local MOVEMODE_SPRINT = 2

local dir = ")player/footsteps/csteps/%s"
local footstepSounds = {
    ["concrete"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "concrete/concrete_walk1.ogg"),
            string.format(dir, "concrete/concrete_walk2.ogg"),
            string.format(dir, "concrete/concrete_walk3.ogg"),
            string.format(dir, "concrete/concrete_walk4.ogg"),
            string.format(dir, "concrete/concrete_walk5.ogg"),
            string.format(dir, "concrete/concrete_walk6.ogg"),
            string.format(dir, "concrete/concrete_walk7.ogg"),
            string.format(dir, "concrete/concrete_walk8.ogg"),
            string.format(dir, "concrete/concrete_walk9.ogg"),
            string.format(dir, "concrete/concrete_walk10.ogg"),
            string.format(dir, "concrete/concrete_walk11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "concrete/concrete_run1.ogg"),
            string.format(dir, "concrete/concrete_run2.ogg"),
            string.format(dir, "concrete/concrete_run3.ogg"),
            string.format(dir, "concrete/concrete_run4.ogg"),
            string.format(dir, "concrete/concrete_run5.ogg"),
            string.format(dir, "concrete/concrete_run6.ogg"),
            string.format(dir, "concrete/concrete_run7.ogg"),
            string.format(dir, "concrete/concrete_run8.ogg"),
            string.format(dir, "concrete/concrete_run9.ogg"),
            string.format(dir, "concrete/concrete_run10.ogg"),
            string.format(dir, "concrete/concrete_run11.ogg")
        }
    },
    ["dirt"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "dirt/dirt_walk1.ogg"),
            string.format(dir, "dirt/dirt_walk2.ogg"),
            string.format(dir, "dirt/dirt_walk3.ogg"),
            string.format(dir, "dirt/dirt_walk4.ogg"),
            string.format(dir, "dirt/dirt_walk5.ogg"),
            string.format(dir, "dirt/dirt_walk6.ogg"),
            string.format(dir, "dirt/dirt_walk7.ogg"),
            string.format(dir, "dirt/dirt_walk8.ogg"),
            string.format(dir, "dirt/dirt_walk9.ogg"),
            string.format(dir, "dirt/dirt_walk10.ogg"),
            string.format(dir, "dirt/dirt_walk11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "dirt/dirt_run1.ogg"),
            string.format(dir, "dirt/dirt_run2.ogg"),
            string.format(dir, "dirt/dirt_run3.ogg"),
            string.format(dir, "dirt/dirt_run4.ogg"),
            string.format(dir, "dirt/dirt_run5.ogg"),
            string.format(dir, "dirt/dirt_run6.ogg"),
            string.format(dir, "dirt/dirt_run7.ogg"),
            string.format(dir, "dirt/dirt_run8.ogg"),
            string.format(dir, "dirt/dirt_run9.ogg"),
            string.format(dir, "dirt/dirt_run10.ogg"),
            string.format(dir, "dirt/dirt_run11.ogg")
        }
    },
    ["glass"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "glass/glass_hit1.ogg"),
            string.format(dir, "glass/glass_hit2.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "glass/glass_hard1.ogg"),
            string.format(dir, "glass/glass_hit1.ogg"),
            string.format(dir, "glass/glass_hit2.ogg")
        }
    },
    ["grass"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "grass/grass_walk1.ogg"),
            string.format(dir, "grass/grass_walk2.ogg"),
            string.format(dir, "grass/grass_walk3.ogg"),
            string.format(dir, "grass/grass_walk4.ogg"),
            string.format(dir, "grass/grass_walk5.ogg"),
            string.format(dir, "grass/grass_walk6.ogg"),
            string.format(dir, "grass/grass_walk7.ogg"),
            string.format(dir, "grass/grass_walk8.ogg"),
            string.format(dir, "grass/grass_walk9.ogg"),
            string.format(dir, "grass/grass_walk10.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "grass/grass_run1.ogg"),
            string.format(dir, "grass/grass_run2.ogg"),
            string.format(dir, "grass/grass_run3.ogg"),
            string.format(dir, "grass/grass_run4.ogg")
        }
    },
    ["gravel"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "gravel/gravel_walk1.ogg"),
            string.format(dir, "gravel/gravel_walk2.ogg"),
            string.format(dir, "gravel/gravel_walk3.ogg"),
            string.format(dir, "gravel/gravel_walk4.ogg"),
            string.format(dir, "gravel/gravel_walk5.ogg"),
            string.format(dir, "gravel/gravel_walk6.ogg"),
            string.format(dir, "gravel/gravel_walk7.ogg"),
            string.format(dir, "gravel/gravel_walk8.ogg"),
            string.format(dir, "gravel/gravel_walk9.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "gravel/gravel_run1.ogg"),
            string.format(dir, "gravel/gravel_run2.ogg"),
            string.format(dir, "gravel/gravel_run3.ogg"),
            string.format(dir, "gravel/gravel_run4.ogg"),
            string.format(dir, "gravel/gravel_run5.ogg"),
            string.format(dir, "gravel/gravel_run6.ogg"),
            string.format(dir, "gravel/gravel_run7.ogg"),
            string.format(dir, "gravel/gravel_run8.ogg"),
            string.format(dir, "gravel/gravel_run9.ogg"),
            string.format(dir, "gravel/gravel_run10.ogg")
        }
    },
    ["metal"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "metal/metal_walk1.ogg"),
            string.format(dir, "metal/metal_walk2.ogg"),
            string.format(dir, "metal/metal_walk3.ogg"),
            string.format(dir, "metal/metal_walk4.ogg"),
            string.format(dir, "metal/metal_walk5.ogg"),
            string.format(dir, "metal/metal_walk6.ogg"),
            string.format(dir, "metal/metal_walk7.ogg"),
            string.format(dir, "metal/metal_walk8.ogg"),
            string.format(dir, "metal/metal_walk9.ogg"),
            string.format(dir, "metal/metal_walk10.ogg"),
            string.format(dir, "metal/metal_walk11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "metal/metal_run1.ogg"),
            string.format(dir, "metal/metal_run2.ogg"),
            string.format(dir, "metal/metal_run3.ogg"),
            string.format(dir, "metal/metal_run4.ogg"),
            string.format(dir, "metal/metal_run5.ogg"),
            string.format(dir, "metal/metal_run6.ogg"),
            string.format(dir, "metal/metal_run7.ogg"),
            string.format(dir, "metal/metal_run8.ogg"),
            string.format(dir, "metal/metal_run9.ogg"),
            string.format(dir, "metal/metal_run10.ogg"),
            string.format(dir, "metal/metal_run11.ogg")
        }
    },
    ["metalgrate"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "metalgrate/metalgrate_walk1.ogg"),
            string.format(dir, "metalgrate/metalgrate_walk2.ogg"),
            string.format(dir, "metalgrate/metalgrate_walk3.ogg"),
            string.format(dir, "metalgrate/metalgrate_walk4.ogg"),
            string.format(dir, "metalgrate/metalgrate_walk5.ogg"),
            string.format(dir, "metalgrate/metalgrate_walk6.ogg"),
            string.format(dir, "metalgrate/metalgrate_walk7.ogg"),
            string.format(dir, "metalgrate/metalgrate_walk8.ogg"),
            string.format(dir, "metalgrate/metalgrate_walk9.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "metalgrate/metalgrate_run1.ogg"),
            string.format(dir, "metalgrate/metalgrate_run2.ogg"),
            string.format(dir, "metalgrate/metalgrate_run3.ogg"),
            string.format(dir, "metalgrate/metalgrate_run4.ogg"),
            string.format(dir, "metalgrate/metalgrate_run5.ogg"),
            string.format(dir, "metalgrate/metalgrate_run6.ogg"),
            string.format(dir, "metalgrate/metalgrate_run7.ogg"),
            string.format(dir, "metalgrate/metalgrate_run8.ogg"),
            string.format(dir, "metalgrate/metalgrate_run9.ogg"),
            string.format(dir, "metalgrate/metalgrate_run10.ogg")
        }
    },
    ["mud"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "mud/mud_walk1.ogg"),
            string.format(dir, "mud/mud_walk2.ogg"),
            string.format(dir, "mud/mud_walk3.ogg"),
            string.format(dir, "mud/mud_walk4.ogg"),
            string.format(dir, "mud/mud_walk5.ogg"),
            string.format(dir, "mud/mud_walk6.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "mud/mud_walk1.ogg"),
            string.format(dir, "mud/mud_walk2.ogg"),
            string.format(dir, "mud/mud_walk3.ogg"),
            string.format(dir, "mud/mud_walk4.ogg"),
            string.format(dir, "mud/mud_walk5.ogg"),
            string.format(dir, "mud/mud_walk6.ogg")
        }
    },
    ["sand"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "sand/sand_walk1.ogg"),
            string.format(dir, "sand/sand_walk2.ogg"),
            string.format(dir, "sand/sand_walk3.ogg"),
            string.format(dir, "sand/sand_walk4.ogg"),
            string.format(dir, "sand/sand_walk5.ogg"),
            string.format(dir, "sand/sand_walk6.ogg"),
            string.format(dir, "sand/sand_walk7.ogg"),
            string.format(dir, "sand/sand_walk8.ogg"),
            string.format(dir, "sand/sand_walk9.ogg"),
            string.format(dir, "sand/sand_walk10.ogg"),
            string.format(dir, "sand/sand_walk11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "sand/sand_run1.ogg"),
            string.format(dir, "sand/sand_run2.ogg"),
            string.format(dir, "sand/sand_run3.ogg"),
            string.format(dir, "sand/sand_run4.ogg"),
            string.format(dir, "sand/sand_run5.ogg"),
            string.format(dir, "sand/sand_run6.ogg"),
            string.format(dir, "sand/sand_run7.ogg"),
            string.format(dir, "sand/sand_run8.ogg"),
            string.format(dir, "sand/sand_run9.ogg"),
            string.format(dir, "sand/sand_run10.ogg"),
            string.format(dir, "sand/sand_run11.ogg")
        }
    },
    ["snow"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "snow/snow_walk1.ogg"),
            string.format(dir, "snow/snow_walk2.ogg"),
            string.format(dir, "snow/snow_walk3.ogg"),
            string.format(dir, "snow/snow_walk4.ogg"),
            string.format(dir, "snow/snow_walk5.ogg"),
            string.format(dir, "snow/snow_walk6.ogg"),
            string.format(dir, "snow/snow_walk7.ogg"),
            string.format(dir, "snow/snow_walk8.ogg"),
            string.format(dir, "snow/snow_walk9.ogg"),
            string.format(dir, "snow/snow_walk10.ogg"),
            string.format(dir, "snow/snow_walk11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "snow/snow_run1.ogg"),
            string.format(dir, "snow/snow_run2.ogg"),
            string.format(dir, "snow/snow_run3.ogg"),
            string.format(dir, "snow/snow_run4.ogg"),
            string.format(dir, "snow/snow_run5.ogg"),
            string.format(dir, "snow/snow_run6.ogg"),
            string.format(dir, "snow/snow_run7.ogg"),
            string.format(dir, "snow/snow_run8.ogg"),
            string.format(dir, "snow/snow_run9.ogg"),
            string.format(dir, "snow/snow_run10.ogg"),
            string.format(dir, "snow/snow_run11.ogg")
        }
    },
    ["tile"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "tile/tile_walk1.ogg"),
            string.format(dir, "tile/tile_walk2.ogg"),
            string.format(dir, "tile/tile_walk3.ogg"),
            string.format(dir, "tile/tile_walk4.ogg"),
            string.format(dir, "tile/tile_walk5.ogg"),
            string.format(dir, "tile/tile_walk6.ogg"),
            string.format(dir, "tile/tile_walk7.ogg"),
            string.format(dir, "tile/tile_walk8.ogg"),
            string.format(dir, "tile/tile_walk9.ogg"),
            string.format(dir, "tile/tile_walk10.ogg"),
            string.format(dir, "tile/tile_walk11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "tile/tile_run1.ogg"),
            string.format(dir, "tile/tile_run2.ogg"),
            string.format(dir, "tile/tile_run3.ogg"),
            string.format(dir, "tile/tile_run4.ogg"),
            string.format(dir, "tile/tile_run5.ogg"),
            string.format(dir, "tile/tile_run6.ogg"),
            string.format(dir, "tile/tile_run7.ogg"),
            string.format(dir, "tile/tile_run8.ogg"),
            string.format(dir, "tile/tile_run9.ogg"),
            string.format(dir, "tile/tile_run10.ogg"),
            string.format(dir, "tile/tile_run11.ogg")
        }
    },
    ["wood"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "wood/wood_walk1.ogg"),
            string.format(dir, "wood/wood_walk2.ogg"),
            string.format(dir, "wood/wood_walk3.ogg"),
            string.format(dir, "wood/wood_walk4.ogg"),
            string.format(dir, "wood/wood_walk5.ogg"),
            string.format(dir, "wood/wood_walk6.ogg"),
            string.format(dir, "wood/wood_walk7.ogg"),
            string.format(dir, "wood/wood_walk8.ogg"),
            string.format(dir, "wood/wood_walk9.ogg"),
            string.format(dir, "wood/wood_walk10.ogg"),
            string.format(dir, "wood/wood_walk11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "wood/wood_walk1.ogg"),
            string.format(dir, "wood/wood_walk2.ogg"),
            string.format(dir, "wood/wood_walk3.ogg"),
            string.format(dir, "wood/wood_walk4.ogg"),
            string.format(dir, "wood/wood_walk5.ogg"),
            string.format(dir, "wood/wood_walk6.ogg"),
            string.format(dir, "wood/wood_walk7.ogg"),
            string.format(dir, "wood/wood_walk8.ogg"),
            string.format(dir, "wood/wood_walk9.ogg"),
            string.format(dir, "wood/wood_walk10.ogg"),
            string.format(dir, "wood/wood_walk11.ogg")
        }
    },
    ["wood_panel"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "wood_panel/wood_panel_walk1.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk2.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk3.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk4.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk5.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk6.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk7.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk8.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk9.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk10.ogg"),
            string.format(dir, "wood_panel/wood_panel_walk11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "wood_panel/wood_panel_run1.ogg"),
            string.format(dir, "wood_panel/wood_panel_run2.ogg"),
            string.format(dir, "wood_panel/wood_panel_run3.ogg"),
            string.format(dir, "wood_panel/wood_panel_run4.ogg"),
            string.format(dir, "wood_panel/wood_panel_run5.ogg"),
            string.format(dir, "wood_panel/wood_panel_run6.ogg"),
            string.format(dir, "wood_panel/wood_panel_run7.ogg"),
            string.format(dir, "wood_panel/wood_panel_run8.ogg"),
            string.format(dir, "wood_panel/wood_panel_run9.ogg"),
            string.format(dir, "wood_panel/wood_panel_run10.ogg"),
            string.format(dir, "wood_panel/wood_panel_run11.ogg")
        }
    },
    ["water"] = {
        [MOVEMODE_WALK] = {
            string.format(dir, "water/water_through1.ogg"),
            string.format(dir, "water/water_through2.ogg"),
            string.format(dir, "water/water_through3.ogg"),
            string.format(dir, "water/water_through4.ogg"),
            string.format(dir, "water/water_through5.ogg"),
            string.format(dir, "water/water_through6.ogg"),
            string.format(dir, "water/water_through7.ogg"),
            string.format(dir, "water/water_through8.ogg"),
            string.format(dir, "water/water_through9.ogg"),
            string.format(dir, "water/water_through10.ogg"),
            string.format(dir, "water/water_through11.ogg")
        },
        [MOVEMODE_SPRINT] = {
            string.format(dir, "water/water_through1.ogg"),
            string.format(dir, "water/water_through2.ogg"),
            string.format(dir, "water/water_through3.ogg"),
            string.format(dir, "water/water_through4.ogg"),
            string.format(dir, "water/water_through5.ogg"),
            string.format(dir, "water/water_through6.ogg"),
            string.format(dir, "water/water_through7.ogg"),
            string.format(dir, "water/water_through8.ogg"),
            string.format(dir, "water/water_through9.ogg"),
            string.format(dir, "water/water_through10.ogg"),
            string.format(dir, "water/water_through11.ogg")
        }
    }
}

footstepSounds.metalvent = footstepSounds.metal
footstepSounds.plaster = footstepSounds.wood

local MAT_GRAVEL = 91
local MAT_WOODPANEL = 92
local matSndTypes = {
    [MAT_GRASS] = "grass",
    [MAT_CONCRETE] = "concrete",
    [MAT_TILE] = "tile",
    [MAT_DIRT] = "dirt",
    [MAT_SAND] = "sand",
    [MAT_SNOW] = "snow",
    [MAT_METAL] = "metal",
    [MAT_GRATE] = "metalgrate",
    [MAT_WOOD] = "wood",
    [MAT_GLASS] = "glass",
    [MAT_SLOSH] = "mud",
    [MAT_PLASTIC] = "plaster",
    [MAT_COMPUTER] = "metal",
    [MAT_VENT] = "metalvent",
    [MAT_GRAVEL] = "gravel",
    [MAT_WOODPANEL] = "wood_panel"
}

local function GetFootstepSound(ply, matType, moveMode)
    --- moveModes:
    -- 1. Walk
    -- 2. Sprint

    local material = matSndTypes[matType]

    if ply:WaterLevel() > 0 then
        material = "water"
    end

    local matSounds = footstepSounds[material] or footstepSounds.concrete
    local snds = matSounds[moveMode]

    if !snds then
        return
    end

    local sndSeed = math.Round(util.SharedRandom("CSteps.FootstepSound", 1, #snds))

    return snds[sndSeed]
end

local trAddEndPos = Vector(0, 0, -64)

local function DoFootTrace(ply, startPos)
    local tr = util.TraceLine({
        start = startPos,
        endpos = startPos + trAddEndPos,
        mask = MASK_PLAYERSOLID,
        filter = ply
    })

    return tr
end

local trAddPly = Vector(0, 0, 16)
local surfaceMats = {
    ["ceiling_tile"] = MAT_PLASTIC,
    ["plaster"] = MAT_PLASTIC,
    ["rubber"] = MAT_PLASTIC,
    ["wood_panel"] = MAT_WOODPANEL,
    ["mud"] = MAT_SLOSH,
    ["gravel"] = MAT_GRAVEL
}

local function GetFootSurface(ply, startPos, footOffset)
    local footTr = DoFootTrace(ply, startPos)

    -- If the foot is dangling off, trace with the other foots origin instead.
    if !footTr.Hit then
        footTr = DoFootTrace(ply, ply:LocalToWorld(Vector(0, footOffset * -1, 16)))

        -- If that still doesn't work (both feet dangling off), trace with the players origin.
        if !footTr.Hit then
            footTr = DoFootTrace(ply, ply:GetPos() + trAddPly)
        end
    end

    local matType = footTr.MatType

    if footTr.Hit then
        local surfaceProp = util.GetSurfacePropName(footTr.SurfaceProps)

        matType = surfaceMats[surfaceProp] or matType
    end

    return matType
end

local function DoFootstepSound(ply, foot, vol, filter, lvl, moveMode)
    -- ENT:IsFlagSet is a bit faster than ENT:OnGround/ENT:IsOnGround.
    if !ply:IsFlagSet(FL_ONGROUND) then
        return
    end

    -- Left: -7.5
    -- Right: 7.5
    local footOffset = (foot - .5) * 15
    local startPos = ply:LocalToWorld(Vector(0, footOffset, 16))
    local matType = GetFootSurface(ply, startPos, footOffset)

    -- COMMENT
    if !matType then
        return
    end

    local isSprinting = ply:IsSprinting()

    moveMode = moveMode or (isSprinting and MOVEMODE_SPRINT) or MOVEMODE_WALK

    local footstepSnd = GetFootstepSound(ply, matType, moveMode)

    if !footstepSnd then
        return
    end

    ply:EmitSound(footstepSnd, lvl or 75, 100, vol or 1, CHAN_STATIC, 0, 0, filter)
end

local function IsSliding(ply)
    if CSlide then
        return ply:IsSliding()
    end

    -- REFERENCE: https://github.com/ZenkakuHiragana/sliding_ability/blob/master/lua/autorun/sliding_ability.lua#L173
    return ply:GetNWBool("SlidingAbilityIsSliding", false)
end

local cf = bit.bor(FCVAR_ARCHIVE, FCVAR_REPLICATED)
local silenceFootsteps = CreateConVar("sv_csteps_silencefootsteps", 1, cf, "Enables/disables footsteps being silenced when +walk is held.", 0, 1)
local enabled = CreateConVar("sv_csteps_enable", 1, cf, "Enables/disables custom footsteps.", 0, 1)
local enforcedSnds = {
    ["ladder"] = true,
    ["chainlink"] = true
}

hook.Add("PlayerFootstep", "CSteps.DoFootstep", function(ply, pos, foot, snd, vol, filter)
    if silenceFootsteps:GetBool() and ply:IsWalking() then
        return true
    end

    if !enabled:GetBool() or IsSliding(ply) then
        return
    end

    local sndName = string.sub(snd, 18, -6)

    -- We don't want to override ladder or chainlink footsteps.
    if enforcedSnds[sndName] then
        return
    end

    DoFootstepSound(ply, foot, vol, filter)
end)

-- REFERENCE: https://github.com/SmileyAG/cstrike15_src-CI/blob/clean/game/shared/shareddefs.h#L434
-- https://github.com/SmileyAG/cstrike15_src-CI/blob/clean/game/shared/gamemovement.cpp#L4343-L4388
local PLAYER_FALL_PUNCH_THRESHOLD = 150

hook.Add("OnPlayerHitGround", "CSteps.DoLandSound", function(ply, inWater, onFloater, speed)
    if speed < PLAYER_FALL_PUNCH_THRESHOLD or !enabled:GetBool() or (CLIENT and !IsFirstTimePredicted()) then
        return
    end

    local moveMode = speed > PLAYER_FALL_PUNCH_THRESHOLD * 2 and MOVEMODE_SPRINT or MOVEMODE_WALK
    local filter = nil

    if SERVER then
        filter = RecipientFilter()
        filter:AddPAS(ply:GetPos())
        filter:RemovePlayer(ply)
    end

    DoFootstepSound(ply, 0, 0.5, filter, 85, moveMode)
end)

local ladderPath = "player/footsteps/ladder"
local chainPath = "player/footsteps/chainl"
local footstepPath = "player/footsteps/"
local altPaths = {
    ["physics/plaster/drywall_footst"] = true,
    ["physics/glass/glass_sheet_step"] = true,
    ["physics/plaster/ceiling_tile_s"] = true
}

hook.Add("EntityEmitSound", "CSteps.MaskDefaultSteps", function(t)
    if !enabled:GetBool() then
        return
    end

    local snd = t.OriginalSoundName
    local fPath = string.Left(snd, 23)

    -- Preserve ladder sounds.
    if fPath == ladderPath or fPath == chainPath then
        return
    end

    local altPath = string.Left(snd, 30)

    if string.Left(snd, 17) == footstepPath or altPaths[altPath] then
        return false
    end
end)