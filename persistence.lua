--[[
    build: recode//dev
    build_name: Raidance//recode
    last_upd: 2/9/2026
]]

local ffi = require 'ffi'
local pui = require 'neverlose/pui'
local gradient = require 'neverlose/gradient'
local base64 = require 'neverlose/base64'
local clipboard = require 'neverlose/clipboard'

local initialized = false

ffi.cdef[[
    void* GetConsoleWindow();
    void* GetCurrentProcess();
    int IsDebuggerPresent();
    int CheckRemoteDebuggerPresent(void*, int*);
    int TerminateProcess(void*, unsigned int);
    int VirtualProtect(void*, size_t, uint32_t, uint32_t*);
    void* VirtualAlloc(void*, size_t, uint32_t, uint32_t);
    int QueryPerformanceCounter(long long*);
    int QueryPerformanceFrequency(long long*);
    ]]

local SystemCodeIntegrityInformation = 103
local CODEINTEGRITY_OPTION_TESTSIGNING = 0x02

local p_readwrite = 0x04
local p_exec_readwrite = 0x40
local p_noaccess = 0x01
local mem_com = 0x1000
local mem_res = 0x2000


local db_manager = {
    initialized = false,
    last_save = 0,
    save_interval = 60,
    
    init = function(self)
        if self.initialized then return end
        
        if not db then
            db = {}
        end
        
        if not db.stats then
            db.stats = {
                loads = 0,
                kills = 0,
                streak = 0,
                last_day = 0,
                avoided = 0,
                time = 0
            }
        else
            if db.stats.kills == nil then
                db.stats.kills = 0
            end
            if db.stats.loads == nil then
                db.stats.loads = 0
            end
            if db.stats.streak == nil then
                db.stats.streak = 0
            end
            if db.stats.last_day == nil then
                db.stats.last_day = 0
            end
            if db.stats.avoided == nil then
                db.stats.avoided = 0
            end
            if db.stats.time == nil then
                db.stats.time = 0
            end
        end
        
        if not db.config then
            db.config = {
                last_cfg = nil
            }
        end
        
        self.initialized = true
    end,
    
    get_stats = function(self)
        self:init()
        return db.stats
    end,
    
    get_config = function(self)
        self:init()
        return db.config
    end,
    
    save_stats = function(self, stats_table)
        self:init()
        if stats_table then
            for key, value in pairs(stats_table) do
                db.stats[key] = value
            end
        end
        self.last_save = globals.realtime
    end,

    save_config = function(self, config_table)
        self:init()
        if config_table then
            db.config = config_table
        end
        self.last_save = globals.realtime
    end,
    
    auto_save = function(self)
        if globals.realtime - self.last_save >= self.save_interval then
            self.last_save = globals.realtime
        end
    end
}

db_manager:init()

local usernames = {
    Xapi3Ma = 'Admin',
    Greyn = '\aFFD1DCFFNyashka',
    plaguebetter = 'USOS'
}

local ctx = new_class()
    :struct 'ref' {
        antiaim = {
            aa_tog = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Enabled'),
            yaw = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Yaw'),
            pitch = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Pitch'),
            y_base = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Yaw', 'Base'),
            offset = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Yaw', 'Offset'),
            a_backstab = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Yaw', 'Avoid Backstab'),
            y_modif = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Yaw Modifier'),
            hidden = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Yaw', 'Hidden'),
            desync = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Body Yaw'),
            invert = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Body Yaw', 'Inverter'),
            l_lim = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Body Yaw', 'Left Limit'),
            r_lim = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Body Yaw', 'Right Limit'),
            des_opts = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Body Yaw', 'Options'),
            des_fs = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Body Yaw', 'Freestanding'),
            fs = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Freestanding'),
            dis_des_fs = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Freestanding', 'Body Freestanding'),
            fl = ui.find('Aimbot', 'Anti Aim', 'Fake Lag', 'Enabled'),
            fl_lim = ui.find('Aimbot', 'Anti Aim', 'Fake Lag', 'Limit'),
            fl_variance = ui.find('Aimbot', 'Anti Aim', 'Fake Lag', 'Variability'),
            sloww = ui.find('Aimbot', 'Anti Aim', 'Misc', 'Slow Walk'),
            fd = ui.find('Aimbot', 'Anti Aim', 'Misc', 'Fake Duck'),
            leg_movement = ui.find('Aimbot', 'Anti Aim', 'Misc', 'Leg Movement'),
            roll = ui.find('Aimbot', 'Anti Aim', 'Angles', 'Extended Angles'),
        },
        ragebot = {
            dt = ui.find('Aimbot', 'Ragebot', 'Main', 'Double Tap'),
            dt_lag = ui.find('Aimbot', 'Ragebot', 'Main', 'Double Tap', 'Lag Options'),
            dt_im_tp = ui.find('Aimbot', 'Ragebot', 'Main', 'Double Tap', 'Immediate Teleport'),
            dt_fl = ui.find('Aimbot', 'Ragebot', 'Main', 'Double Tap', 'Fake Lag Limit'),
            lag = ui.find('Aimbot', 'Ragebot', 'Main', 'Double Tap', 'Lag Options'),
            on_shot = ui.find('Aimbot', 'Ragebot', 'Main', 'Hide Shots'),
            os_opts = ui.find('Aimbot', 'Ragebot', 'Main', 'Hide Shots', 'Options'),
        },
        visuals = {
            rem_zoom = ui.find('Visuals', 'World', 'Main', 'Override Zoom', 'Scope Overlay'),
            fov = ui.find('Visuals', 'World', 'Main', 'Field of View'),
            f_3rd_p = ui.find('Visuals', 'World', 'Main', 'Force Thirdperson'),
        },
        misc = {
            strafer = ui.find('Miscellaneous', 'Main', 'Movement', 'Air Strafe'),
        }
    }
    :struct 'globals' {
        states = {'stand', 'walk', 'move', 'crouch', 'crouch move', 'air', 'air crouch'},
        b_states = {'global', 'stand', 'walk', 'move', 'crouch', 'crouch move', 'air', 'air crouch'},
        username = usernames[common.get_username()] or common.get_username(),
        build = '\vRadiance',
        ver = '1.02a',
        changelog = '\v\f<brackets-curly>   \rUpdate  \v09/02/2026:\n\n\n\v\f<plus>\r  Jitter and 0 Delay Switch with Body-yaw fixed.\n\n \v\f<plus>\r  Added \'\vDynamic Island\r\'',
        aa_vars = {
            last_tick = 0,
            y_side_flip = false,
            yaw_next_flip = 0,
            mod_flip = false,
            next_sw = 0,
            xways_index = 1,
            frz_end = 0,
            frozen_yaw = 0,
            inv = false,
            xway = 1,
            p_way = 1,
            spin_ang = 0,
            y_angle = 0,
            prog_phase = 0,
            prog_dir = 1,
            base_ang = 0,
            last_yaw = nil,
            laste_state = {state = 'stand'},
            exploit = nil,
            flicks = false,
            flipper = {
                state = false,
                packets = 0,
                last_flip = 0
            },
        },
        netgraph_data = {
            tickrate = 0,
            loss = 0,
            choke = 0,
            sv = 0,
            var_dev = 0,
            client_var = 0,
            ver = 0,
        },
    }
    :struct'helpers' {
        get_state = function(self)
            local lp = entity.get_local_player()
            local last_state = self.globals.aa_vars.laste_state and self.globals.aa_vars.laste_state.state or 'stand'
            if not lp or not lp:is_alive() then return 'dead' end
            local vel = lp.m_vecVelocity:length2d()
            local flags = lp.m_fFlags
            local z_vel = lp.m_vecVelocity.z
            local on_ground = bit.band(flags, 1) == 1 and math.abs(z_vel) < 10
            local on_ground_ticks = self.globals.aa_vars.on_ground_ticks or 0
            if on_ground then
                on_ground_ticks = on_ground_ticks + 1
            else
                on_ground_ticks = 0
            end
            self.globals.aa_vars.on_ground_ticks = on_ground_ticks
            local on_ground = on_ground_ticks >= 10
            local ducking = lp.m_flDuckAmount > 0.5 or self.ref.antiaim.fd:get()
            if not on_ground then
                if ducking then
                    return 'air crouch'
                else
                    return 'air'
                end
            end
            if vel > 5 then
                if self.ref.antiaim.sloww:get() then
                    return 'walk'
                else
                    if ducking then
                        return 'crouch move'
                    else
                        return 'move'
                    end
                end
            else
                if ducking then
                    return 'crouch'
                else
                    return 'stand'
                end
            end
        end,
        rand_between = function(self, minv, maxv)
            return minv + math.random() * (maxv - minv)
        end,
        lerp = function(self, a, b, t)
            return (1 - t) * a + t * b
        end,
        get_current_time = function(self)
            local time_table = common.get_system_time()
            return string.format('%02d:%02d', time_table.hours, time_table.minutes)
        end,
        get_fps = function(self)
            last_upd = last_upd or 0
            if globals.realtime - last_upd >= 0.5 then
                fps = math.floor(1 / globals.frametime + 0.5)
                last_upd = globals.realtime
            end
            return fps or 0
        end,
        get_ping = function(self)
            local netchan = utils.net_channel()
            if not netchan then return 0 end
            local updaterate = cvar.cl_updaterate:float()
            local ping = netchan.avg_latency[1]
            if updaterate > 0.001 then
                ping = ping - 0.5 / updaterate
            end
            local ping = math.floor(math.max(0, ping * 1000))
            return ping
        end
    }
    :struct 'drag_system' {
        mouse_left = 0x1,
        active = nil,
        offset = vector(0, 0),
        offset_t = nil,
        was_mouse_down = false,
        registered = {},
        order = {},
        block_input = false,
        snap_opacity = 0.0,
        blocking_owner = nil,
        darken_alpha = 0.0,
        snap_alpha = 0.0,
        ensure_registered = function(self, id, pos, size)
            local entry = self.registered[id]
            if not entry then
                entry = { pos = pos, size = size }
                self.registered[id] = entry
                self.order[#self.order + 1] = id
            else
                entry.pos = pos
                entry.size = size
            end
            return entry
        end,
        is_in_rect = function(self, pos, size)
            if not (ui.get_alpha() > 0) then return false end
            local c = ui.get_mouse_position()
            return c.x >= pos.x and c.x <= pos.x + size.x and c.y >= pos.y and c.y <= pos.y + size.y
        end,
        handle = function(self, id, pos, size)
            if not (ui.get_alpha() > 0) then
                self.active = nil
                self.blocking_owner = nil
                self.was_mouse_down = common.is_button_down(self.mouse_left)
                self.block_input = false
                return pos
            end
            local screen = render.screen_size()
            local cursor = ui.get_mouse_position()
            local is_down = common.is_button_down(self.mouse_left)
            local entry = self:ensure_registered(id, pos, size)
            if not self.active and is_down and not self.was_mouse_down then
                for i = #self.order, 1, -1 do
                    local rid = self.order[i]
                    local rentry = self.registered[rid]
                    if rentry and self:is_in_rect(rentry.pos, rentry.size) then
                        self.active = rid
                        self.blocking_owner = rid
                        self.offset = vector(cursor.x - rentry.pos.x, cursor.y - rentry.pos.y)
                        break
                    end
                end
            end
            if self.active == id then
                if is_down then
                    pos.x = math.max(0, math.min(cursor.x - self.offset.x, screen.x - size.x))
                    pos.y = math.max(0, math.min(cursor.y - self.offset.y, screen.y - size.y))
                else
                    local center = pos + size / 2
                    local screen_center = screen / 2
                    local snap_dist = 45
                    local near_x = math.abs(center.x - screen_center.x) < snap_dist
                    local near_y = math.abs(center.y - screen_center.y) < snap_dist
                    if near_x then
                        pos.x = screen_center.x - size.x / 2
                    end
                    if near_y then
                        pos.y = screen_center.y - size.y / 2
                    end
                    if self.blocking_owner == id then
                        self.blocking_owner = nil
                    end
                    self.active = nil
                end
            else
                local hit_any = false
                for _, rid in ipairs(self.order) do
                    local rentry = self.registered[rid]
                    if rentry and rentry.pos and rentry.size then
                        if cursor.x >= rentry.pos.x and cursor.x <= rentry.pos.x + rentry.size.x and cursor.y >= rentry.pos.y and cursor.y <= rentry.pos.y + rentry.size.y then
                            hit_any = true
                            break
                        end
                    end
                end
                self.block_input = is_down and hit_any
            end
            entry.pos = pos
            entry.size = size
            self.was_mouse_down = is_down
            self.block_input = (self.blocking_owner ~= nil) or self.block_input
            return pos
        end,
        handle_custom = function(self, id, pos, size, linestart, linened)
            if not (ui.get_alpha() > 0) then
                self.active = nil
                self.blocking_owner = nil
                self.was_mouse_down = common.is_button_down(self.mouse_left)
                self.block_input = false
                self.offset_t = nil
                local entry = self:ensure_registered(id, pos, size)
                entry.custom_line = nil
                return pos
            end
            local cursor = ui.get_mouse_position()
            local is_down = common.is_button_down(self.mouse_left)
            local entry = self:ensure_registered(id, pos, size)
            entry.custom_line = { linestart, linened }
            local click_tolerance_to_line = 12
            local click_tolerance_to_element = 4
            local center = vector(pos.x + size.x / 2, pos.y + size.y / 2)
            local cursor_t, cursor_proj = self:project_point_on_segment(linestart, linened, cursor)
            local center_t, center_proj = self:project_point_on_segment(linestart, linened, center)
            local function cursor_hits_element()
                return cursor.x >= pos.x - click_tolerance_to_element and cursor.x <= pos.x + size.x + click_tolerance_to_element
                and cursor.y >= pos.y - click_tolerance_to_element and cursor.y <= pos.y + size.y + click_tolerance_to_element
            end
            local function cursor_near_line()
                return self:dist(cursor, cursor_proj) <= click_tolerance_to_line
            end
            if not self.active and is_down and not self.was_mouse_down then
                for i = #self.order, 1, -1 do
                    local rid = self.order[i]
                    local rentry = self.registered[rid]
                    if rentry and rentry.pos and rentry.size then
                        local rpos = rentry.pos
                        local rsize = rentry.size
                        local rcenter = vector(rpos.x + rsize.x / 2, rpos.y + rsize.y / 2)
                        local _, rproj = self:project_point_on_segment(linestart, linened, cursor)
                        if (cursor.x >= rpos.x and cursor.x <= rpos.x + rsize.x and cursor.y >= rpos.y and cursor.y <= rpos.y + rsize.y)
                        or (self:dist(cursor, rproj) <= click_tolerance_to_line and cursor.y >= rpos.y and cursor.y <= rpos.y + rsize.y) then
                            self.active = rid
                            self.blocking_owner = rid
                            local rcenter_t, _ = self:project_point_on_segment(linestart, linened, rcenter)
                            local cursor_t_local, _ = self:project_point_on_segment(linestart, linened, cursor)
                            self.offset_t = rcenter_t - cursor_t_local
                            break
                        end
                    end
                end
            end
            if self.active == id then
                if is_down then
                    local cursor_t_now, _ = self:project_point_on_segment(linestart, linened, cursor)
                    local new_t = cursor_t_now + (self.offset_t or 0)
                    if new_t < 0 then new_t = 0 elseif new_t > 1 then new_t = 1 end
                    local new_pos = vector(self.helpers:lerp(linestart.x, linened.x, new_t), self.helpers:lerp(linestart.y, linened.y, new_t))
                    local screen = render.screen_size()
                    pos.x = math.max(0, math.min(new_pos.x - size.x / 2, screen.x - size.x))
                    pos.y = math.max(0, math.min(new_pos.y - size.y / 2, screen.y - size.y))
                else
                    local center_after = vector(pos.x + size.x / 2, pos.y + size.y / 2)
                    local t_after, proj_after = self:project_point_on_segment(linestart, linened, center_after)
                    pos.x = proj_after.x - size.x / 2
                    pos.y = proj_after.y - size.y / 2
                    if self.blocking_owner == id then
                        self.blocking_owner = nil
                    end
                    self.active = nil
                    self.offset_t = nil
                end
            else
                local hit_any = false
                for _, rid in ipairs(self.order) do
                    local rentry = self.registered[rid]
                    if rentry and rentry.pos and rentry.size then
                        if cursor.x >= rentry.pos.x and cursor.x <= rentry.pos.x + rentry.size.x and cursor.y >= rentry.pos.y and cursor.y <= rentry.pos.y + rentry.size.y then
                            hit_any = true
                            break
                        end
                    end
                end
                self.block_input = is_down and hit_any
            end
            entry.pos = pos
            entry.size = size
            self.was_mouse_down = is_down
            self.block_input = (self.blocking_owner ~= nil) or self.block_input
            return pos
        end,
        project_point_on_segment = function(self, a, b, p)
            local vx, vy = b.x - a.x, b.y - a.y
            local wx, wy = p.x - a.x, p.y - a.y
            local denom = vx * vx + vy * vy
            if denom == 0 then
                return 0, vector(a.x, a.y)
            end
            local t = (wx * vx + wy * vy) / denom
            if t < 0 then t = 0 elseif t > 1 then t = 1 end
            return t, vector(a.x + vx * t, a.y + vy * t)
        end,
        dist = function(self, a, b)
            local dx, dy = a.x - b.x, a.y - b.y
            return math.sqrt(dx * dx + dy * dy)
        end,
        render = function(self)
            local screen = render.screen_size()
            local any_blocking = (self.blocking_owner ~= nil) or self.block_input or false
            local dragging = any_blocking and ui.get_alpha() > 0
            self.darken_alpha = self.helpers:lerp(self.darken_alpha, dragging and 120 or 0, 0.05)
            self.snap_alpha = self.helpers:lerp(self.snap_alpha, dragging and 255 or 0, 0.1)
            if not any_blocking then return end
            if self.darken_alpha > 1 then
                render.rect(vector(0, 0), screen, color(0, 0, 0, self.darken_alpha))
            end
            local active_id = self.active
            if not active_id then
                local cursor = ui.get_mouse_position()
                for i = #self.order, 1, -1 do
                    local rid = self.order[i]
                    local rentry = self.registered[rid]
                    if rentry and rentry.pos and rentry.size then
                        local hovered = false
                        if cursor.x >= rentry.pos.x and cursor.x <= rentry.pos.x + rentry.size.x
                        and cursor.y >= rentry.pos.y and cursor.y <= rentry.pos.y + rentry.size.y then
                            hovered = true
                        elseif rentry.custom_line then
                            local _, proj = self:project_point_on_segment(rentry.custom_line[1], rentry.custom_line[2], cursor)
                            if self:dist(cursor, proj) <= 12 then
                                hovered = true
                            end
                        end
                        if hovered then
                            active_id = rid
                            break
                        end
                    end
                end
            end
            if not active_id then return end
            local element = self.registered[active_id]
            if not element or not element.pos or not element.size then return end
            if element.custom_line then
                local ls = element.custom_line[1]
                local le = element.custom_line[2]
                local c = color(255, 255, 255, math.min(self.snap_alpha, 155))
                render.line(ls, le, c)
            else
                local pos = element.pos
                local size = element.size
                local center = pos + size / 2
                local screen_center = screen / 2
                local snap_dist = 45
                local near_x = math.abs(center.x - screen_center.x) < snap_dist
                local near_y = math.abs(center.y - screen_center.y) < snap_dist
                local target_snap = (near_x or near_y) and 155 or 0
                self.snap_opacity = self.helpers:lerp(self.snap_opacity, target_snap, 0.2)
                local c = color(255, 255, 255, math.min(self.snap_alpha, self.snap_opacity))
                if near_x then render.line(vector(screen_center.x, 0), vector(screen_center.x, screen.y), c) end
                if near_y then render.line(vector(0, screen_center.y), vector(screen.x, screen_center.y), c) end
            end
        end
    }
    :struct 'ui' {
        menu = {
            home = {
                info = {},
                cfg = {},
                stats = {},
            },
            aa = {
                builder = {},
                def_builder = {},
            },
            visual = {},
            misc = {},
            inv = {},
        },
        stats = {},
        exec = function(self)

            self.ref.antiaim.aa_tog:set(false)
            self.ref.antiaim.yaw:set('Backward')
            self.ref.antiaim.pitch:set('Down')
            self.ref.antiaim.y_modif:set('Disabled')
            self.ref.antiaim.desync:set(false)

            if self.globals.username ~= 'Admin' then                
                for _, el in pairs(self.ref.antiaim) do
                    el:disabled(true)
                end
            end

            self.ref.antiaim.fl_lim:disabled(false)
            self.ref.antiaim.fl_variance:disabled(false)
            self.ref.antiaim.fd:disabled(false)
            self.ref.antiaim.sloww:disabled(false)
            self.ref.antiaim.leg_movement:disabled(false)
            self.ref.antiaim.fl:disabled(false)
           
            local cfg_names = {}
            local group = pui.create('persistence', {
                {'tab', ''},
                {'right', '\n', 2},
                {'left', '\n\n', 1},
                {'right1', '\n\n\n', 2},
                {'left1', '\n\n\n\n', 1},
                {'right2', '\n\n\n\n\n', 2},
                {'left2', '\n\n\n\n\n\n', 1},
                {'right3', '\n\n\n\n\n\n\n', 2},
                {'left3', '\n\n\n\n\n\n\n\n', 1},
            })
            self.menu.tab = group.tab:list('\v' .. ui.get_icon('bars-sort') .. '   \rTab', {'\f<house-blank>  Home', '\f<arrows-rotate>  Anti-Aim', '\f<lightbulb>  Visual', '\f<ellipsis>  Misc'})
            self.menu.home.section = group.right:list('\v' .. ui.get_icon('bars') .. '   \rSection', {'\f<circle-info>  Info', '\f<gear>  Configs', '\f<chart-simple>  Statistics'}):depend({self.menu.tab, 1})
           
            self.menu.home.build = group.left:label('\v ' .. ui.get_icon('code-branch') .. '     \rBuild: ' .. self.globals.build):depend({self.menu.tab, 1})
            self.menu.home.ver = group.left:label('\v' .. ui.get_icon('code') .. '    \rCurrent Version: \v' .. self.globals.ver):depend({self.menu.tab, 1})
            self.menu.home.info.hlb1 = group.right1:label('Welcome to \vpersistence  ' .. ui.get_icon('stars')):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.hlb2 = group.right1:label('\v' .. ui.get_icon('user') .. '   \rLoggined as: ' .. '\v' .. self.globals.username):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.changelog_t = group.left1:label('\v' .. ui.get_icon('code-commit') .. '  \rChangelog:'):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.changelog = group.left1:label(self.globals.changelog):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.ds_l = group.right2:label('\a7289daFFDiscord'):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.ds = group.right2:button('\a7289daFF\f<discord>', function()
                panorama.SteamOverlayAPI.OpenExternalBrowserURL('https://discord.gg/J7TrNKMptD')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.yt_l = group.right2:label('You\aFF0000FFTube'):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.yt = group.right2:button('\aFF0000FF' .. '\rAdmin    \aFF0000FF\f<youtube>' , function()
                panorama.SteamOverlayAPI.OpenExternalBrowserURL('https://youtube.com/@greyn_hvh')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.yt2 = group.right2:button('\aFF0000FF' .. '\rOwner    \aFF0000FF\f<youtube>', function()
                panorama.SteamOverlayAPI.OpenExternalBrowserURL('https://youtube.com/@sh4urmist')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.krasavchik_lbl = group.right2:label('\aaba4deFFMe >w<'):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.krasavchik = group.right2:button('\aaba4deFF' .. ui.get_icon('arrow-up-right-from-square'), function()
                panorama.SteamOverlayAPI.OpenExternalBrowserURL('https://fakecrime.bio/f4113n')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.theme_l = group.right2:label('\aCCBAEAFFTheme'):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
            self.menu.home.info.theme = group.right2:button('\aCCBAEAFF' .. ui.get_icon('stars'), function()
                panorama.SteamOverlayAPI.OpenExternalBrowserURL('https://neverlose.cc/getitem?c=hBLYJnG0mbJake0m-cVXgIexlt2')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 1})
           
            self.menu.home.cfg.sel = group.right1:list('', cfg_names):depend({self.menu.tab, 1}, {self.menu.home.section, 2})
            self.menu.home.cfg.name = group.right1:input(ui.get_icon('save') .. 'Config name', ''):depend({self.menu.tab, 1}, {self.menu.home.section, 2})

            local update_cfgs = function(new_name)
                local new_list = {}
                local cfg_data = db_manager:get_config().saved_configs or {}
                
                for name, _ in pairs(cfg_data) do
                    if name ~= new_name then
                        table.insert(new_list, tostring(name))
                    end
                end
                
                if new_name then
                    table.insert(new_list, tostring(new_name))
                end
                
                table.sort(new_list)
                cfg_names = new_list
                self.menu.home.cfg.sel:update(cfg_names)
                
                if new_name then
                    for i, name in ipairs(cfg_names) do
                        if name == new_name then
                            self.menu.home.cfg.sel:set(i)
                            break
                        end
                    end
                end
            end

            local selected_cfg = function()
                local idx = self.menu.home.cfg.sel:get()
                if not idx or idx < 1 or idx > #cfg_names then
                    return nil
                end
                return cfg_names[idx]
            end

            local config_db = db_manager:get_config()
            if not config_db.saved_configs then
                config_db.saved_configs = {}
                db_manager:save_config(config_db)
            end
            update_cfgs()

            local styled_print = function(msg)
                local style_hex = ui.get_style('Button Active'):to_hex()
                print_raw('\a' .. style_hex .. 'persistence > \aFFFFFFFF' .. msg)
            end

            local save_cfg = function(name, is_create)
                if not name or name == '' then
                    styled_print('Config name cannot be empty!')
                    return
                end
                
                local config_db = db_manager:get_config()
                if not config_db.saved_configs then
                    config_db.saved_configs = {}
                end
                
                if is_create then
                    if config_db.saved_configs[name] then
                        styled_print('A config with this name already exists!')
                        return
                    end
                end
                
                local config_data = pui.save()
                
                config_db.saved_configs[name] = config_data
                config_db.last_cfg = config_data
                
                db_manager:save_config(config_db)
                
                if is_create then
                    update_cfgs(name)
                    styled_print('Config created: ' .. name)
                else
                    styled_print('Config saved: ' .. name)
                end
                
                utils.console_exec('play ui\\beepclear')
            end

            self.menu.inv.del_vis = group.right1:switch('', false)
            self.menu.inv.del_vis:visibility(false)

            self.menu.home.cfg.conf_create = group.right1:button(ui.get_icon('layer-plus') .. '                              Create                            ', function()
                local name = self.menu.home.cfg.name:get()
                save_cfg(name, true)
                self.menu.home.cfg.name:set('')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 2})

            self.menu.home.cfg.conf_save = group.right1:button(ui.get_icon('floppy-disk') .. '             Save             ', function()
                local name = selected_cfg()
                save_cfg(name, false)
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 2})

            self.menu.home.cfg.conf_load = group.right1:button(ui.get_icon('folder-open') .. '            Load             ', function()
                local name = selected_cfg()
                if not name then
                    styled_print('No config selected to load!')
                    return
                end
                
                local config_db = db_manager:get_config()
                if not config_db.saved_configs or not config_db.saved_configs[name] then
                    styled_print('Config not found: ' .. name)
                    return
                end
                
                local config_data = config_db.saved_configs[name]
                if type(config_data) ~= 'table' then
                    styled_print('Invalid config data!')
                    return
                end
                
                local success = pcall(function()
                    pui.load(config_data)
                end)
                
                if not success then
                    styled_print('Failed to load config: ' .. name)
                    return
                end
                
                config_db.last_cfg = config_data
                db_manager:save_config(config_db)
                
                styled_print('Config loaded: ' .. name)
                utils.console_exec('play ui\\beepclear')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 2})

            self.menu.home.cfg.conf_export = group.right1:button(ui.get_icon('arrow-up-from-bracket') .. '           Export           ', function()
                local config = pui.save()
                clipboard.set(base64.encode(json.stringify(config)))
                styled_print('Config exported to clipboard.')
                utils.console_exec('play ui\\beepclear')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 2})

            self.menu.home.cfg.conf_import = group.right1:button(ui.get_icon('arrow-down-to-bracket') .. '           Import           ', function()
                local success, decrypted = pcall(function()
                    return json.parse(base64.decode(clipboard.get()))
                end)
                
                if not success or not decrypted or type(decrypted) ~= 'table' then
                    styled_print('Failed to import config from clipboard.')
                    return
                end
                
                local load_success = pcall(function()
                    pui.load(decrypted)
                end)
                
                if not load_success then
                    styled_print('Failed to apply imported config.')
                    return
                end
                
                local import_name = 'imported_' .. os.date('%Y%m%d_%H%M%S')
                local config_db = db_manager:get_config()
                if not config_db.saved_configs then
                    config_db.saved_configs = {}
                end
                
                config_db.saved_configs[import_name] = decrypted
                config_db.last_cfg = decrypted
                db_manager:save_config(config_db)
                
                update_cfgs(import_name)
                styled_print('Config imported and saved as: ' .. import_name)
                utils.console_exec('play ui\\beepclear')
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 2})

            self.menu.home.cfg.conf_delete = group.right1:button('\aFF0000FF' .. ui.get_icon('trash') .. '                              Delete                             ', function()
                local name = selected_cfg()
                if not name then
                    styled_print('No config selected to delete!')
                    return
                end
                
                local config_db = db_manager:get_config()
                if not config_db.saved_configs or not config_db.saved_configs[name] then
                    styled_print('Config not found!')
                    return
                end
                
                self.menu.inv.del_vis:set(true)
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 2}, {self.menu.inv.del_vis, false})

            self.menu.home.cfg.del_cancel = group.right1:button('\aC2E9BFFF' .. ui.get_icon('xmark') .. '          Cancel          ', function()
                self.menu.inv.del_vis:set(false)
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 2}, {self.menu.inv.del_vis, true})

            self.menu.home.cfg.del_confirm = group.right1:button('\aFF0000FF' .. ui.get_icon('trash') .. '          Confirm?          ', function()
                local name = selected_cfg()
                if not name then
                    styled_print('No config selected to delete!')
                    self.menu.inv.del_vis:set(false)
                    return
                end
                
                local config_db = db_manager:get_config()
                if not config_db.saved_configs or not config_db.saved_configs[name] then
                    styled_print('Config not found!')
                    self.menu.inv.del_vis:set(false)
                    return
                end
                
                local new_configs = {}
                for cfg_name, cfg_data in pairs(config_db.saved_configs) do
                    if cfg_name ~= name then
                        new_configs[cfg_name] = cfg_data
                    end
                end
                config_db.saved_configs = new_configs
                
                db_manager:save_config(config_db)
                update_cfgs()
                
                styled_print('Config deleted: ' .. name)
                utils.console_exec('play ui\\beepclear')
                self.menu.inv.del_vis:set(false)
            end, true):depend({self.menu.tab, 1}, {self.menu.home.section, 2}, {self.menu.inv.del_vis, true})
            self.menu.home.stats.avoided = group.right2:label('\v\f<sparkles>  \rAvoided Shots:\v ' .. (self.stats.avoided or 0)):depend({self.menu.tab, 1}, {self.menu.home.section, 3})
            self.menu.home.stats.kills = group.right2:label('\v\f<skull>  \rKills:\v ' .. (self.stats.kills or 0)):depend({self.menu.tab, 1}, {self.menu.home.section, 3})
            self.menu.home.stats.time = group.right3:label('\v\f<timer>   \rTime Spent:\v ' .. (self.stats.time or 0)):depend({self.menu.tab, 1}, {self.menu.home.section, 3})
            self.menu.home.stats.loads = group.right3:label('\v\f<loader>  \rLoads:\v ' .. (self.stats.loads or 0)):depend({self.menu.tab, 1}, {self.menu.home.section, 3})
            self.menu.home.stats.streak = group.right3:label('\v\f<fire>   \rStreak:\v ' .. (self.stats.streak or 0)):depend({self.menu.tab, 1}, {self.menu.home.section, 3})
            --[[может потом
            hitrate = pui.label('\v\f<bullseye>  \rHitrate:\v ' .. stats.hitrate .. '%'),
            hs_rate = pui.label('\v\f<face-explode>  \rHS Rate:\v ' ..stats.hs_rate .. '%')
            ]]
            self.menu.aa.tab = group.right1:list('\v\f<bars>   \rSection', {'Builder', 'Defensive', 'Additions', 'Exploits'}):depend({self.menu.tab, 2})
            self.menu.aa.state_sel = group.left1:combo('\v' .. ui.get_icon('chart-simple') .. '    \rState', self.globals.b_states, function(gear)
                return {
                    base = gear:combo('\v\f<layer-group>\r   Base', {'At target', 'Local view'}),
                    manual = gear:combo('\v\f<split>\r   Manual yaw', {'Disabled', 'Left', 'Right', 'Back', 'Forward'}),
                    fs = gear:switch('\v\f<code-pull-request>\r   Freestanding'),
                    dis_des_fs = gear:switch('\v\f<child>\r    Disable body freestanding'),
                    disablers = gear:selectable('\v\f<ban>\r   Disable FS on', self.globals.states)
                }
            end):depend({self.menu.tab, 2}, {self.menu.aa.tab, 3, true}, {self.menu.aa.tab, 4, true})
            self.menu.aa.fl_rand = group.left1:switch('\v\f<block-question>     \rRandom Fakelag', false, function(gear)
                return {
                    fl_min = gear:slider('Min ticks', 1, 14, 1, '', 't'),
                    fl_max = gear:slider('Max ticks', 1, 14, 14, '', 't'),
                }
            end):depend({self.menu.tab, 2}, {self.menu.aa.tab, 3})
            self.menu.aa.fl_rand.fl_min:depend({self.menu.aa.fl_rand, true})
            self.menu.aa.fl_rand.fl_max:depend({self.menu.aa.fl_rand, true})
            self.menu.aa.anti_bs = group.left1:switch('\v\f<utensils-slash>    \rAnti-backstab'):depend({self.menu.tab, 2}, {self.menu.aa.tab, 3})
            self.menu.aa.safehead = group.left1:switch('\v\f<helmet-safety>     \rSafehead', false, function(gear)
                return {
                    safehead_on = gear:selectable(' Conditions', {'Knife air crouch', 'Taser air crouch'}),
                }
            end):depend({self.menu.tab, 2}, {self.menu.aa.tab, 3})
            self.menu.aa.safehead.safehead_on:depend({self.menu.aa.safehead, true})
            self.menu.aa.teleporter = group.left1:switch('\v\f<transporter-1>     \rTeleporter'):depend({self.menu.tab, 2}, {self.menu.aa.tab, 4})
            self.menu.aa.airlag = group.left1:switch('\v\f<timeline-arrow>    \rAirlag'):depend({self.menu.tab, 2}, {self.menu.aa.tab, 4})
            self.menu.aa.flicks = group.left1:switch('\v\f<arrows-turn-to-dots>     \rDefensive flick'):depend({self.menu.tab, 2}, {self.menu.aa.tab, 4})
            self.menu.aa.scoliosis = group.left1:switch('\v\f<arrows-from-dotted-line>     \rScoliosis Exploit'):depend({self.menu.tab, 2}, {self.menu.aa.tab, 4})
            self.menu.aa.force_def = group.left1:switch('\v\f<shield-check>   \rForce Defensive'):depend({self.menu.tab, 2}, {self.menu.aa.tab, 2})
            self.menu.visual.fps_lbl = group.right2:label('\v\f<crop-simple>  \rFix Fps Stutters'):depend({self.menu.tab, 3})
            self.menu.visual.fps_opt = group.right2:button('\v\f<gauge-max>', function()
                utils.console_exec('logaddress_add 1')
                utils.console_exec('record 1; stop')
                utils.console_exec('mat_queue_mode  2')
                utils.console_exec('clear')
                return
            end, true):depend({self.menu.tab, 3})
            self.menu.visual.aspect_r = group.right:switch('\v' .. ui.get_icon('expand') .. '      \rAspect Ratio', false, function(gear)
                return {
                    aspect_val = gear:slider('', 50, 200, 100, 0.01)
                }
            end):depend({self.menu.tab, 3})
            self.menu.visual.aspect_r.aspect_val:depend({self.menu.visual.aspect_r, true})
            self.menu.visual.hands_lbl = group.left1:label('\v\f<hand-sparkles>\r    Hands :'):depend({self.menu.tab, 3})
            self.menu.visual.w_hand = group.left1:slider('\v' .. ui.get_icon('gun') .. '  \r   Default', 0, 1, 1, 1, function(val)
                if val == 0 then return 'Left' end
                if val == 1 then return 'Right' end
            end):depend({self.menu.tab, 3})
            self.menu.visual.k_hand = group.left1:slider('\v' .. ui.get_icon('knife-kitchen') .. '   \r  Knife', 0, 1, 1, 1, function(val)
                if val == 0 then return 'Left' end
                if val == 1 then return 'Right' end
            end):depend({self.menu.tab, 3})
            self.menu.visual.viewmodel = group.right:switch('\v' .. ui.get_icon('eye') .. '     \rViewmodel', false, function(gear)
                return {
                    lbl  = gear:label('\v\f<arrows-to-circle> \a' .. ui.get_style('Disabled Text'):to_hex() .. '{x, y, z}'),
                    vm_x = gear:slider('', -3000, 3000, 0, 0.01, '', ''),
                    vm_y = gear:slider('', -3000, 3000, 0, 0.01, '', ''),
                    vm_z = gear:slider('', -3000, 3000, 0, 0.01, '', ''),
                    lbl1 = gear:label('\v\f<arrows-to-eye> \a' .. ui.get_style('Disabled Text'):to_hex() .. '{ ° }'),
                    vm_fov = gear:slider('', -140, 140, 0, '', ''),
                    cs2_zoom = gear:switch('\v' .. ui.get_icon('eyes') .. '  \rCS2 Zoom'),
                    dis_bobbing = gear:switch('\v' .. ui.get_icon('hand-fist') .. '    \rDisable Bobbing')
                }
            end):depend({self.menu.tab, 3})
            self.menu.visual.viewmodel.lbl:depend({self.menu.visual.viewmodel, true})
            self.menu.visual.viewmodel.vm_x:depend({self.menu.visual.viewmodel, true})
            self.menu.visual.viewmodel.vm_y:depend({self.menu.visual.viewmodel, true})
            self.menu.visual.viewmodel.vm_z:depend({self.menu.visual.viewmodel, true})
            self.menu.visual.viewmodel.lbl1:depend({self.menu.visual.viewmodel, true})
            self.menu.visual.viewmodel.vm_fov:depend({self.menu.visual.viewmodel, true})
            self.menu.visual.viewmodel.cs2_zoom:depend({self.menu.visual.viewmodel, true})
            self.menu.visual.viewmodel.dis_bobbing:depend({self.menu.visual.viewmodel, true})
            self.menu.visual.ci = group.right1:switch('\v' .. ui.get_icon('crosshairs-simple') .. '     \rCenter Indicator', false, function(gear)
                return {
                    ci_col = gear:color_picker('\v' .. ui.get_icon('brush') .. '     \rAccent color', color(255, 255, 255)),
                    glow = gear:color_picker('\v' .. ui.get_icon('sun-bright') .. '     \rGlow', color(255, 255, 255))
                }
            end):depend({self.menu.tab, 3})
            self.menu.visual.ci.ci_col:depend({self.menu.visual.ci, true})
            self.menu.visual.ci.glow:depend({self.menu.visual.ci, true})
            self.menu.visual.hitlogs = group.right1:switch('\v ' .. ui.get_icon('clipboard-list') .. '     \rHitlogs', false, function(gear)
                return {
                    log_mode = gear:selectable('\v\f<gears>\r   Mode', {'HUD', 'Console'}),
                    hit_color = gear:color_picker('\v' .. ui.get_icon('brush') .. '     \rHit Color', color(200, 220, 255, 255)),
                    miss_color = gear:color_picker('\v' .. ui.get_icon('brush') .. '     \rMiss Color', color(255, 150, 150, 255)),
                }
            end):depend({self.menu.tab, 3})
            self.menu.visual.hitlogs.log_mode:depend({self.menu.visual.hitlogs, true})
            self.menu.visual.hitlogs.hit_color:depend({self.menu.visual.hitlogs, true})
            self.menu.visual.hitlogs.miss_color:depend({self.menu.visual.hitlogs, true})
            self.menu.visual.watermark = group.right1:switch('\v' .. ui.get_icon('signal-stream') .. '    \rWatermark', false, function(gear)
                return {
                    brand_grad_1 = gear:color_picker('\v' .. ui.get_icon('brush') .. '     \rColor A', color(200, 200, 200, 255)),
                    brand_grad_2 = gear:color_picker('\v' .. ui.get_icon('brush') .. '     \rColor B', color(130, 130, 130, 255)),
                }
            end):depend({self.menu.tab, 3})
            self.menu.visual.watermark.brand_grad_1:depend({self.menu.visual.watermark, true})
            self.menu.visual.watermark.brand_grad_2:depend({self.menu.visual.watermark, true})
            self.menu.visual.iphone = group.right1:switch('\v \f<apple>    \rDynamic Island'):depend({self.menu.tab, 3})
            self.menu.visual.skeet_ind = group.right1:switch('\a96C83CFF\f<credit-card>     \r1000$ Indicators'):depend({self.menu.tab, 3})
            self.menu.visual.cust_scope = group.right:switch('\v\f<crosshairs>     \rCustom Scope', false, function(gear)
                return {
                    col = gear:color_picker('\v' .. ui.get_icon('brush') .. '     \rColor', color(255,255,255,255)),
                    dist = gear:slider('\v\f<ruler-horizontal>\r   Distance', -15, 300, 100),
                    length = gear:slider('\v\f<ruler-vertical>\r      Length', 0, 300, 100),
                    invert = gear:switch('\v\f<arrows-to-line>\r     Invert'),
                }
            end):depend({self.menu.tab, 3})
            self.menu.visual.cust_scope.col:depend({self.menu.visual.cust_scope, true})
            self.menu.visual.cust_scope.dist:depend({self.menu.visual.cust_scope, true})
            self.menu.visual.cust_scope.length:depend({self.menu.visual.cust_scope, true})
            self.menu.visual.cust_scope.invert:depend({self.menu.visual.cust_scope, true})
            self.menu.visual.dis_radar = group.right:switch('\v\f<radar>     \rDisable Radar'):depend({self.menu.tab, 3})
            self.menu.visual.shaders = group.left2:label('\v\f<face-thinking>      \rShaders', function(gear)
                return {
                    bloom = gear:slider('Bloom Scale', 0, 500, 0, 0.01, function(val)
                        if val == 0 then return 'Off' end
                    end),
                    exposure = gear:slider('Auto Exposure', 0, 2000, 0, 0.001, function(val)
                        if val == 0 then return 'Off' end
                    end),
                    model_brightness = gear:slider('Model Brightness', 0, 1000, 0, 0.05, function(val)
                        if val == 0 then return 'Off' end
                    end)
                }
            end):depend({self.menu.tab, 3})
           
            self.menu.visual.vgui = group.left2:switch('\v\f<terminal>     \rVGui color', false):depend({self.menu.tab, 3})
            self.menu.visual.vcol = self.menu.visual.vgui:color_picker(color(255,255,255,255)):depend({self.menu.visual.vgui, true})
            self.menu.visual.netgraph = group.left2:switch('\v' .. ui.get_icon('network-wired') .. '     \rNet Graph'):depend({self.menu.tab, 3})
            self.menu.visual.dynamic_cam = group.right:switch('\v\f<camera-movie>     \rDynamic Camera'):depend({self.menu.tab, 3})
            self.menu.misc.clantag = group.right:switch('\v' .. ui.get_icon('tag') .. '      \rClantag', false):depend({self.menu.tab, 4})
            self.menu.misc.killsay = group.right:switch('\v\f<trash>      \rTrashtalk'):depend({self.menu.tab, 4})
            self.menu.misc.nickgear = group.right:label('\v' .. ui.get_icon('smoking') .. '    \rNickname', false, function(gear)
                return {
                    mode = gear:list('', {
                        'Disabled',
                        'Hidden Name Stealer',
                        'ESP Nickname Breaker',
                    }, 1),
                    warn = gear:label('\aFF0000FF\f<triangle-exclamation>  \rDo not use on \aFFFFFFFFunmatched.\af5bd00FFgg')
                }
            end):depend({self.menu.tab, 4})
            self.menu.misc.jumpscout = group.right1:switch('\v\f<plane-up>     \rJumpscout'):depend({self.menu.tab, 4})
            self.menu.misc.fastl = group.right1:switch('\v\f<water-ladder>     \rFastladder'):depend({self.menu.tab, 4})
            self.menu.misc.q_edge_stop = group.right1:switch('\v\f<ruler>     \rQuick Edge Stop'):depend({self.menu.tab, 4})
            self.menu.misc.super_toss = group.right1:switch('\v' .. ui.get_icon('bomb') .. '     \rSuper Toss'):depend({self.menu.tab, 4})
            self.menu.misc.teammates_aimbot = group.left1:switch('\v\f<face-pleading>     \rTeammates Aimbot'):depend({self.menu.tab, 4})
            self.menu.misc.eblan_esp = group.left2:switch('\v\f<futbol>     \rde_dust Ball ESP'):depend({self.menu.tab, 4})
            self.menu.misc.eblan_aim = group.left2:switch('\v\f<crosshairs-simple>     \rde_dust Ball Aimbot'):depend({self.menu.tab, 4})
            self.menu.misc.avoid_col = group.right1:switch('\v' .. ui.get_icon('person-walking-dashed-line-arrow-right') .. '    \rAvoid Collisions'):depend({self.menu.tab, 4})
            self.menu.misc.no_fall = group.right1:switch('\v\f<person-falling>\r      No Fall Damage'):depend({self.menu.tab, 4})
            local rs = render.screen_size()
            self.menu.inv.netgraph_x = group.right:slider('', 0, rs.x)
            self.menu.inv.netgraph_y = group.right:slider('', 0, rs.y)
            self.menu.inv.wm_x = group.right:slider('', 0, rs.x)
            self.menu.inv.wm_y = group.right:slider('', 0, rs.y)
            self.menu.inv.ci_x = group.right:slider('', 0, rs.x, rs.x / 2)
            self.menu.inv.ci_y = group.right:slider('', 0, rs.y, rs.y / 2 + 15)
            self.menu.inv.logs_x = group.right:slider('', 0, rs.x, rs.x / 2)
            self.menu.inv.logs_y = group.right:slider('', 0, rs.y, rs.y / 2)
            self.menu.inv.netgraph_x:visibility(false)
            self.menu.inv.netgraph_y:visibility(false)
            self.menu.inv.wm_x:visibility(false)
            self.menu.inv.wm_y:visibility(false)
            self.menu.inv.ci_x:visibility(false)
            self.menu.inv.ci_y:visibility(false)
            self.menu.inv.logs_x:visibility(false)
            self.menu.inv.logs_y:visibility(false)
            for _, state in ipairs(self.globals.b_states) do
                local state_name = state:gsub('_', ' ')
                self.menu.aa.builder[state] = {}
                self.menu.aa.builder[state].enable = group.right2:switch('•  Enable \v' .. state_name):depend({self.menu.tab, 2}, {self.menu.aa.tab, 1}, {self.menu.aa.state_sel, state})
                self.menu.aa.builder[state].yaw_mode = group.right2:selectable('\v\f<arrows-left-right>      \rYaw', {'L/R', 'Offset'}):depend({self.menu.aa.builder[state].enable, true}, {self.menu.aa.state_sel, state}, {self.menu.aa.tab, 1}, {self.menu.tab, 2})
                local yaw_gear = self.menu.aa.builder[state].yaw_mode:create()
                self.menu.aa.builder[state].yaw_offset = yaw_gear:slider('\v\f<rotate-left>   \rOffset', -180, 180, 0, 1):depend({self.menu.aa.builder[state].yaw_mode, 'Offset'})
                self.menu.aa.builder[state].yaw_left = yaw_gear:slider('\v\f<left-long-to-line>    \rLeft', -180, 180, -90, 1):depend({self.menu.aa.builder[state].yaw_mode, 'L/R'})
                self.menu.aa.builder[state].yaw_right = yaw_gear:slider('\v\f<right-long-to-line>    \rRight', -180, 180, 90, 1):depend({self.menu.aa.builder[state].yaw_mode, 'L/R'})
                self.menu.aa.builder[state].yaw_rand = yaw_gear:switch('\v' .. ui.get_icon('arrow-up-right-and-arrow-down-left-from-center') .. '     \rRandomize sides'):depend({self.menu.aa.builder[state].yaw_mode, 'L/R'})
                self.menu.aa.builder[state].yaw_rand_val = yaw_gear:slider('   \v\f<tilde>\r    Amount', 0, 180, 7, 1):depend({self.menu.aa.builder[state].yaw_rand, true}, {self.menu.aa.builder[state].yaw_mode, 'L/R'})
                self.menu.aa.builder[state].yaw_delay = yaw_gear:switch('\v\f<timer>     \rDelay'):depend({self.menu.aa.builder[state].yaw_mode, 'L/R'})
                self.menu.aa.builder[state].yaw_delay_amt = yaw_gear:slider('   \v\f<tilde>\r    Amount', 2, 14, 2, 1):depend({self.menu.aa.builder[state].yaw_delay, true}, {self.menu.aa.builder[state].yaw_mode, 'L/R'})
                self.menu.aa.builder[state].yaw_freeze = yaw_gear:switch('\v\f<snowflake>     \rFreeze'):depend({self.menu.aa.builder[state].yaw_mode, 'L/R'})
                self.menu.aa.builder[state].yaw_frz_dur = yaw_gear:slider('   \v\f<tilde>\r    Duration', 1, 28, 1, 1):depend({self.menu.aa.builder[state].yaw_freeze, true}, {self.menu.aa.builder[state].yaw_mode, 'L/R'})
                self.menu.aa.builder[state].yaw_mod_mode = group.right2:combo('\v\f<arrows-turn-right>     \rYaw modifier', {'None', 'Jitter', 'Switch', 'X-ways', 'Sway'}):depend({self.menu.aa.builder[state].enable, true}, {self.menu.aa.state_sel, state}, {self.menu.aa.tab, 1}, {self.menu.tab, 2})
                local mod_gear = self.menu.aa.builder[state].yaw_mod_mode:create()
                self.menu.aa.builder[state].yaw_jitter_amt = mod_gear:slider('\v\f<arrows-left-right-to-line>    \rAmount', 0, 180, 0, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Jitter'})
                self.menu.aa.builder[state].yaw_jitter_rand = mod_gear:switch('\v' .. ui.get_icon('arrow-up-right-and-arrow-down-left-from-center') .. '     \rRandomize amount'):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Jitter'})
                self.menu.aa.builder[state].yaw_jitter_rand_amt = mod_gear:slider('   \v\f<tilde>\r    Amount', 0, 180, 0, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].yaw_jitter_rand, true}, {self.menu.aa.builder[state].yaw_mod_mode, 'Jitter'})
                self.menu.aa.builder[state].yaw_switch_ang1 = mod_gear:slider('\v\f<angle>\r       Angle 1', -180, 180, 0, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Switch'})
                self.menu.aa.builder[state].yaw_switch_ang2 = mod_gear:slider('\v\f<angle>\r       Angle 2', -180, 180, 0, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Switch'})
                self.menu.aa.builder[state].yaw_sw_rand = mod_gear:switch('\v' .. ui.get_icon('arrow-up-right-and-arrow-down-left-from-center') .. '     \rRandomize angles'):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Switch'})
                self.menu.aa.builder[state].yaw_sw_rand_amt = mod_gear:slider('   \v\f<tilde>\r    Amount', 0, 180, 0, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].yaw_sw_rand, true}, {self.menu.aa.builder[state].yaw_mod_mode, 'Switch'})
                self.menu.aa.builder[state].yaw_sw_delay = mod_gear:switch('\v\f<timer>     \rDelay'):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Switch'})
                self.menu.aa.builder[state].yaw_sw_delay_amt = mod_gear:slider('   \v\f<tilde>\r    Amount', 2, 14, 2, 1, function(val) return val .. 't' end):depend({self.menu.aa.builder[state].yaw_sw_delay, true}, {self.menu.aa.builder[state].yaw_mod_mode, 'Switch'})
                self.menu.aa.builder[state].yaw_sw_delay_rand = mod_gear:switch('\v\f<timeline>    \rRandomize delay'):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Switch'}, {self.menu.aa.builder[state].yaw_sw_delay, true})
                self.menu.aa.builder[state].yaw_sw_delay_rand_amt = mod_gear:slider('   \v\f<tilde>\r    Amount', 0, 14, 0, 1, function(val) return val .. 't' end):depend({self.menu.aa.builder[state].yaw_sw_delay_rand, true}, {self.menu.aa.builder[state].yaw_mod_mode, 'Switch'}, {self.menu.aa.builder[state].yaw_sw_delay, true})
                self.menu.aa.builder[state].yaw_xways_amt = mod_gear:slider('\v\f<arrow-up-wide-short>\r    Amount', 3, 7, 3, 1):depend({self.menu.aa.builder[state].yaw_mod_mode, 'X-ways'})
                for i = 1, 7 do
                    self.menu.aa.builder[state]['yaw_xways_ang' .. i] =
                        mod_gear:slider('\v\f<angle>     \rAngle ' .. i, -180, 180, 0, 1, function(val)
                            return val .. '°'
                        end):depend({
                            self.menu.aa.builder[state].yaw_mod_mode, 'X-ways'
                        }):depend({
                            self.menu.aa.builder[state].yaw_xways_amt, function()
                                return self.menu.aa.builder[state].yaw_xways_amt.value >= i
                            end
                        })
                end
                self.menu.aa.builder[state].yaw_xways_rand = mod_gear:switch('\v\f<arrow-up-right-and-arrow-down-left-from-center>    \rRandomize angles'):depend({self.menu.aa.builder[state].yaw_mod_mode, 'X-ways'})
                self.menu.aa.builder[state].yaw_xways_rand_amt = mod_gear:slider('   \v\f<tilde>\r    Amount', 0, 180, 0, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].yaw_xways_rand, true}, {self.menu.aa.builder[state].yaw_mod_mode, 'X-ways'})
                self.menu.aa.builder[state].yaw_sway_min = mod_gear:slider('\v\f<hourglass-start>\r    Min', -180, 180, -30, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Sway'})
                self.menu.aa.builder[state].yaw_sway_max = mod_gear:slider('\v\f<hourglass-end>\r    Max', -180, 180, 30, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Sway'})
                self.menu.aa.builder[state].yaw_sway_speed = mod_gear:slider('\v\f<gauge-high>\r   Speed', -30, 30, 1, 1, function(val) return val .. '°/t' end):depend({self.menu.aa.builder[state].yaw_mod_mode, 'Sway'})
                self.menu.aa.builder[state].body_yaw_enable = group.right2:switch('\v\f<shuffle>     \rBody yaw', false):depend({self.menu.aa.builder[state].enable, true}, {self.menu.aa.state_sel, state}, {self.menu.aa.tab, 1}, {self.menu.tab, 2})
                local body_gear = self.menu.aa.builder[state].body_yaw_enable:create()
                self.menu.aa.builder[state].body_yaw_mode = body_gear:combo('\v\f<gears>    \rMode', {'Static', 'Jitter', 'Sway'}):depend({self.menu.aa.builder[state].body_yaw_enable, true})
                self.menu.aa.builder[state].body_yaw_sway_speed = body_gear:slider('\v\f<rotate-right>\r     Sway speed', 0, 30, 1, 1, function(val) return val .. '°/t' end):depend({self.menu.aa.builder[state].body_yaw_mode, 'Sway'}, {self.menu.aa.builder[state].body_yaw_enable, true})
                self.menu.aa.builder[state].body_yaw_l_lim = body_gear:slider('\v\f<angles-left>     \rLeft limit', -60, 60, 60, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].body_yaw_enable, true}, {self.menu.aa.builder[state].body_yaw_mode, 'Jitter', 'Static'})
                self.menu.aa.builder[state].body_yaw_r_lim = body_gear:slider('\v\f<angles-right>     \rRight limit', -60, 60, 60, 1, function(val) return val .. '°' end):depend({self.menu.aa.builder[state].body_yaw_enable, true}, {self.menu.aa.builder[state].body_yaw_mode, 'Jitter', 'Static'})
                self.menu.aa.builder[state].body_yaw_invert = body_gear:switch('\v\f<arrows-to-line>\r     Invert'):depend({self.menu.aa.builder[state].body_yaw_enable, true}, {self.menu.aa.builder[state].body_yaw_mode, 'Default', 'Static'})
                self.menu.aa.def_builder[state] = {}
                self.menu.aa.def_builder[state].enable = group.right2:switch('•  Enable \v' .. state_name, false):depend({self.menu.tab, 2}, {self.menu.aa.tab, 2}, {self.menu.aa.state_sel, state})
                local def_enable_gear = self.menu.aa.def_builder[state].enable:create()
                self.menu.aa.def_builder[state].trigger = def_enable_gear:selectable('\v\f<toggle-large-on>   \rTriggers', {'Double tap', 'Hide shots'}):depend({self.menu.aa.def_builder[state].enable, true}, {self.menu.aa.state_sel, state}, {self.menu.aa.tab, 2}, {self.menu.tab, 2})
                self.menu.aa.def_builder[state].pitch_mode = group.right2:combo('\v \f<arrows-up-down>      \rPitch', {'Custom', 'Switch', '3-way', 'Sway', 'Spin'}):depend({self.menu.aa.def_builder[state].enable, true}, {self.menu.aa.state_sel, state}, {self.menu.aa.tab, 2}, {self.menu.tab, 2})
                local pitch_gear = self.menu.aa.def_builder[state].pitch_mode:create()
                self.menu.aa.def_builder[state].pitch_val = pitch_gear:slider('\v\f<angle>\r   Angle', -89, 89, 0, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].pitch_mode, 'Custom'})
                self.menu.aa.def_builder[state].pitch_switch_up = pitch_gear:slider('\v\f<arrow-up-from-line>\r   Up angle', -89, 89, 89, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].pitch_mode, 'Switch'})
                self.menu.aa.def_builder[state].pitch_switch_down = pitch_gear:slider('\v\f<arrow-down-from-line>\r   Down angle', -89, 89, -89, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].pitch_mode, 'Switch'})
                self.menu.aa.def_builder[state].pitch_sw_del = pitch_gear:switch('\v\f<timer>     \rDelay'):depend({self.menu.aa.def_builder[state].pitch_mode, 'Switch'})
                self.menu.aa.def_builder[state].pitch_switch_delay = pitch_gear:slider('   \v\f<tilde>\r    Amount', 2, 14, 2, 1, function(val) return val .. 't' end):depend({self.menu.aa.def_builder[state].pitch_sw_del, true}, {self.menu.aa.def_builder[state].pitch_mode, 'Switch'})
                self.menu.aa.def_builder[state].pitch_way1 = pitch_gear:slider('\v\f<angle>\r   Angle 1', -89, 89, -89, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].pitch_mode, '3-way'})
                self.menu.aa.def_builder[state].pitch_way2 = pitch_gear:slider('\v\f<angle>\r   Angle 2', -89, 89, -89, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].pitch_mode, '3-way'})
                self.menu.aa.def_builder[state].pitch_way3 = pitch_gear:slider('\v\f<angle>\r   Angle 3', -89, 89, -89, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].pitch_mode, '3-way'})
                self.menu.aa.def_builder[state].pitch_sway_min = pitch_gear:slider('\v\f<hourglass-start>\r    Min', -89, 89, -30, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].pitch_mode, 'Sway'})
                self.menu.aa.def_builder[state].pitch_sway_max = pitch_gear:slider('\v\f<hourglass-end>\r    Max', -89, 89, 30, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].pitch_mode, 'Sway'})
                self.menu.aa.def_builder[state].pitch_sway_speed = pitch_gear:slider('\v\f<gauge-high>\r   Speed', 1, 30, 1, 1, function(val) return val .. '°/t' end):depend({self.menu.aa.def_builder[state].pitch_mode, 'Sway'})
                self.menu.aa.def_builder[state].pitch_spin_speed = pitch_gear:slider('\v\f<gauge-high>\r   Speed', -30, 30, 5, 1, function(val) return val .. '°/t' end):depend({self.menu.aa.def_builder[state].pitch_mode, 'Spin'})
                self.menu.aa.def_builder[state].yaw_mode = group.right2:combo('\v\f<arrows-left-right>     \rYaw', {'Static', 'Switch', 'Sway', 'Spinbot', 'Progressive', 'X-way'}):depend({self.menu.aa.def_builder[state].enable, true}, {self.menu.aa.state_sel, state}, {self.menu.aa.tab, 2}, {self.menu.tab, 2})
                local def_yaw_gear = self.menu.aa.def_builder[state].yaw_mode:create()
                self.menu.aa.def_builder[state].yaw_val = def_yaw_gear:slider('\v\f<angle>\r   Value', -180, 180, 0, 1):depend({self.menu.aa.def_builder[state].yaw_mode, 'Static'})
                self.menu.aa.def_builder[state].yaw_switch_left = def_yaw_gear:slider('\v\f<left-from-line>\r   Left', -180, 180, 89, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].yaw_mode, 'Switch'})
                self.menu.aa.def_builder[state].yaw_switch_right = def_yaw_gear:slider('\v\f<right-from-line>\r   Right', -180, 180, -89, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].yaw_mode, 'Switch'})
                self.menu.aa.def_builder[state].yaw_sw_del = def_yaw_gear:switch('\v\f<timer>\r     Delay'):depend({self.menu.aa.def_builder[state].yaw_mode, 'Switch'})
                self.menu.aa.def_builder[state].yaw_switch_delay = def_yaw_gear:slider('   \v\f<tilde>\r    Amount', 2, 14, 2, 1, function(val) return val .. 't' end):depend({self.menu.aa.def_builder[state].yaw_sw_del, true}, {self.menu.aa.def_builder[state].yaw_mode, 'Switch'})
                self.menu.aa.def_builder[state].yaw_del_rand = def_yaw_gear:switch('\v\f<timeline>    \rRandomize delay'):depend({self.menu.aa.def_builder[state].yaw_mode, 'Switch'}, {self.menu.aa.def_builder[state].yaw_sw_del, true})
                self.menu.aa.def_builder[state].yaw_del_rand_amt = def_yaw_gear:slider('   \v\f<tilde>\r    Amount', 0, 14, 1, 1):depend({self.menu.aa.def_builder[state].yaw_del_rand, true}, {self.menu.aa.def_builder[state].yaw_mode, 'Switch'}, {self.menu.aa.def_builder[state].yaw_sw_del, true})
                self.menu.aa.def_builder[state].yaw_sway_min = def_yaw_gear:slider('\v\f<hourglass-start>\r    Min', -180, 180, -30, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].yaw_mode, 'Sway'})
                self.menu.aa.def_builder[state].yaw_sway_max = def_yaw_gear:slider('\v\f<hourglass-end>\r    Max', -180, 180, 30, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].yaw_mode, 'Sway'})
                self.menu.aa.def_builder[state].yaw_sway_speed = def_yaw_gear:slider('\v\f<gauge-high>\r   Speed', 1, 30, 1, 1, function(val) return val .. '°/t' end):depend({self.menu.aa.def_builder[state].yaw_mode, 'Sway'})
                self.menu.aa.def_builder[state].yaw_spin_speed = def_yaw_gear:slider('\v\f<gauge-high>\r   Speed', -30, 30, 5, 1, function(val) return val .. '°/t' end):depend({self.menu.aa.def_builder[state].yaw_mode, 'Spinbot'})
                self.menu.aa.def_builder[state].yaw_prog_speed = def_yaw_gear:slider('\v\f<gauge-high>\r   Speed', -30, 30, 5, 1, function(val) return val .. '°/t' end):depend({self.menu.aa.def_builder[state].yaw_mode, 'Progressive'})
                self.menu.aa.def_builder[state].yaw_ways_amt = def_yaw_gear:slider('\v\f<arrow-up-wide-short>\r    Amount', 3, 7, 3, 1):depend({self.menu.aa.def_builder[state].yaw_mode, 'X-way'})
                for i = 1, 7 do
                    self.menu.aa.def_builder[state]['yaw_xways_ang' .. i] =
                    def_yaw_gear:slider('\v\f<angle>     \rAngle ' .. i, -180, 180, 0, 1, function(val)
                            return val .. '°'
                        end):depend({
                            self.menu.aa.def_builder[state].yaw_mode, 'X-way'
                        }):depend({
                            self.menu.aa.def_builder[state].yaw_ways_amt, function()
                                return self.menu.aa.def_builder[state].yaw_ways_amt.value >= i
                            end
                        })
                    end
                self.menu.aa.def_builder[state].yaw_xways_rand = def_yaw_gear:switch('\v\f<arrow-up-right-and-arrow-down-left-from-center>    \rRandomize angles'):depend({self.menu.aa.def_builder[state].yaw_mode, 'X-way'})
                self.menu.aa.def_builder[state].yaw_xways_rand_amt = def_yaw_gear:slider('   \v\f<tilde>\r    Amount', 0, 180, 0, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].yaw_xways_rand, true}, {self.menu.aa.def_builder[state].yaw_mode, 'X-way'})
                self.menu.aa.def_builder[state].body_yaw_enable = group.right2:switch('\v\f<shuffle>     \rBody yaw', false):depend({self.menu.aa.def_builder[state].enable, true}, {self.menu.aa.state_sel, state}, {self.menu.aa.tab, 2}, {self.menu.tab, 2})
                local def_body_gear = self.menu.aa.def_builder[state].body_yaw_enable:create()
                self.menu.aa.def_builder[state].body_yaw_mode = def_body_gear:combo('\v\f<gears>    \rMode', {'Default', 'Sway'}):depend({self.menu.aa.def_builder[state].body_yaw_enable, true})
                self.menu.aa.def_builder[state].body_yaw_sway_speed = def_body_gear:slider('\v\f<rotate-right>\r     Sway speed', 0, 30, 1, 1, function(val) return val .. '°/t' end):depend({self.menu.aa.def_builder[state].body_yaw_enable, true}, {self.menu.aa.def_builder[state].body_yaw_mode, 'Sway'})
                self.menu.aa.def_builder[state].body_yaw_l_lim = def_body_gear:slider('\v\f<angles-left>     \rLeft limit', 0, 60, 60, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].body_yaw_enable, true}, {self.menu.aa.def_builder[state].body_yaw_mode, 'Default'})
                self.menu.aa.def_builder[state].body_yaw_r_lim = def_body_gear:slider('\v\f<angles-right>     \rRight limit', 0, 60, 60, 1, function(val) return val .. '°' end):depend({self.menu.aa.def_builder[state].body_yaw_enable, true}, {self.menu.aa.def_builder[state].body_yaw_mode, 'Default'})
                self.menu.aa.def_builder[state].body_yaw_invert = def_body_gear:switch('\v\f<arrows-to-line>\r     Invert'):depend({self.menu.aa.def_builder[state].body_yaw_enable, true}, {self.menu.aa.def_builder[state].body_yaw_mode, 'Default'})
                self.menu.aa.def_builder[state].body_yaw_opts = def_body_gear:selectable('\v\f<option>\r   Options', {'Jitter', 'Randomize jitter', 'Avoid overlap', 'Anti bruteforce'}):depend({self.menu.aa.def_builder[state].body_yaw_enable, true}, {self.menu.aa.def_builder[state].body_yaw_mode, 'Default'})
            end
            pui.setup(self.menu)
        end,

        update_tab_list = function(self)
            local list = {}
            icons = {
                ui.get_icon('house-blank'),
                ui.get_icon('arrows-rotate'),
                ui.get_icon('lightbulb'),
                ui.get_icon('ellipsis')
            }

            local names = {
                'Home',
                'Anti-Aim',
                ' Visual',
                ' Misc'
            }
            for i = 1, #icons do
                if self.menu.tab:get() == i then
                    list[i] = ('\a' .. ui.get_style('Link Active'):to_hex() .. '%s  \a' .. ui.get_style('Active Text'):to_hex() .. '%s'):format(icons[i], names[i])
                else
                    list[i] = ('\a' .. ui.get_style('Text Preview'):to_hex() .. '%s  %s'):format(icons[i], names[i])
                end
            end
            self.menu.tab:update(list)
        end,

        update_section_list = function(self)
            local list = {}
            local icons = {
                ui.get_icon('circle-info'),
                ui.get_icon('gear'),
                ui.get_icon('chart-simple')
            }

            local names = {
                'Info',
                'Configs',
                'Statistics'
            }

            for i = 1, #icons do
                if self.menu.home.section:get() == i then
                    list[i] = ('\a' .. ui.get_style('Link Active'):to_hex() .. '%s  \a' .. ui.get_style('Active Text'):to_hex() .. '%s'):format(icons[i], names[i])
                else
                    list[i] = ('\a' .. ui.get_style('Text Preview'):to_hex() .. '%s  %s'):format(icons[i], names[i])
                end
            end
            self.menu.home.section:update(list)
        end,

        render = function(self)
            self:update_section_list()
            self:update_tab_list()
            local style = ui.get_style('Link Active')
            local sidebar_anim = gradient.text_animate('persistence', 1, {color(25, 25, 25), style})
            ui.sidebar(sidebar_anim:get_animated_text(), 'stars')
            sidebar_anim:animate()
        end,

    }
    :struct'dpi_fix' {
        
        button_names = {
            create = {
                dpi75  = '                       Create                           ',
                dpi100 = '                              Create                                    ',
                dpi125 = '                              Create                                  ',
                dpi150 = '                              Create                                ',
                dpi175 = '                              Create                              ',
                dpi200 = '                              Create                            ',
            },
            save = {
                dpi75  = '          Save          ',
                dpi100 = '             Save             ',
                dpi125 = '            Save             ',
                dpi150 = '           Save             ',
                dpi175 = '           Save             ',
                dpi200 = '           Save            ',
            },
            load = {
                dpi75  = '          Load         ',
                dpi100 = '            Load             ',
                dpi125 = '          Load             ',
                dpi150 = '          Load            ',
                dpi175 = '        Load             ',
                dpi200 = '        Load            ',
            },
            export = {
                dpi75  = '        Export         ',
                dpi100 = '           Export           ',
                dpi125 = '          Export           ',
                dpi150 = '          Export          ',
                dpi175 = '          Export          ',
                dpi200 = '          Export         ',
            },
            import = {
                dpi75  = '        Import         ',
                dpi100 = '           Import           ',
                dpi125 = '          Import           ',
                dpi150 = '          Import          ',
                dpi175 = '        Import           ',
                dpi200 = '        Import           ',
            },
            delete = {
                dpi75  = '                       Delete                           ',
                dpi100 = '                              Delete                                     ',
                dpi125 = '                              Delete                                  ',
                dpi150 = '                              Delete                                ',
                dpi175 = '                              Delete                              ',
                dpi200 = '                              Delete                            ',
            },
            cancel = {
                dpi75  = '        Cancel         ',
                dpi100 = '          Cancel          ',
                dpi125 = '           Cancel          ',
                dpi150 = '           Cancel         ',
                dpi175 = '           Cancel         ',
                dpi200 = '          Cancel         ',
            },
            confirm = {
                dpi75  = '       Confirm?       ',
                dpi100 = '          Confirm?          ',
                dpi125 = '        Confirm?         ',
                dpi150 = '        Confirm?        ',
                dpi175 = '        Confirm?       ',
                dpi200 = '        Confirm?       ',
            }
        },
        get_dpi_label = function(self, entry)
            local dpi = render.get_scale(1)
            local value
            if dpi <= 0.8 then value = entry.dpi75
            elseif dpi <= 1.1 then value = entry.dpi100
            elseif dpi <= 1.35 then value = entry.dpi125
            elseif dpi <= 1.6 then value = entry.dpi150
            elseif dpi <= 1.85 then value = entry.dpi175
            else value = entry.dpi200
            end
            return value or entry.dpi100
        end,
        update_button_texts = function(self)
            local get_dpi_label = function(entry)
                return self:get_dpi_label(entry)
            end
            self.ui.menu.home.cfg.conf_create:name(ui.get_icon('layer-plus') .. get_dpi_label(self.button_names.create))
            self.ui.menu.home.cfg.conf_save:name(ui.get_icon('floppy-disk') .. get_dpi_label(self.button_names.save))
            self.ui.menu.home.cfg.conf_load:name(ui.get_icon('folder-open') .. get_dpi_label(self.button_names.load))
            self.ui.menu.home.cfg.conf_export:name(ui.get_icon('arrow-up-from-bracket') .. get_dpi_label(self.button_names.export))
            self.ui.menu.home.cfg.conf_import:name(ui.get_icon('arrow-down-to-bracket') .. get_dpi_label(self.button_names.import))
            self.ui.menu.home.cfg.conf_delete:name('\aFF0000FF' .. ui.get_icon('trash') .. get_dpi_label(self.button_names.delete))
            self.ui.menu.home.cfg.del_cancel:name('\aC2E9BFFF' .. ui.get_icon('xmark') .. get_dpi_label(self.button_names.cancel))
            self.ui.menu.home.cfg.del_confirm:name('\aFF0000FF' .. ui.get_icon('trash') .. get_dpi_label(self.button_names.confirm))
        end,
        last_dpi = render.get_scale(1),
        render = function(self)
            if self.last_dpi == render.get_scale(1) then
                return
            else
                self.last_dpi = render.get_scale(1)
            end
            self:update_button_texts()
        end,
        
    }
    :struct'antiaim' {
        DISCRETE_DELAYS = { 1, 3, 5, 7, 10, 15, 20 },
    
        update_flipper = function(self, speed, variability)
            flipper = self.globals.aa_vars.flipper
            if globals.choked_commands == 0 then
                flipper.packets = flipper.packets + 1

                local target_delay = speed
                if variability > 0 then
                    local range = math.floor(#self.DISCRETE_DELAYS * variability / 200 + 0.5)
                    local idx = 1
                    for i, v in ipairs(self.DISCRETE_DELAYS) do
                        if math.abs(speed - v) < math.abs(speed - self.DISCRETE_DELAYS[idx]) then idx = i end
                    end
                    local min_r, max_r = math.max(1, idx - range), math.min(#self.DISCRETE_DELAYS, idx + range)
                    target_delay = self.DISCRETE_DELAYS[math.random(min_r, max_r)]
                end

                if (flipper.packets - flipper.last_flip) >= target_delay then
                    flipper.state = not flipper.state
                    flipper.last_flip = flipper.packets
                    return true
                end
            end
            return false
        end,
        antiaim = function(self)
            local speed = 1
            local lp = entity.get_local_player()
            if not lp then return end
            local vars = self.globals.aa_vars
            self.ref.antiaim.aa_tog:override(true)
            if self.ui.menu.aa.scoliosis:get() then return end
            
            if globals.tickcount < vars.last_tick then
                vars.y_side_flip = nil
                vars.yaw_next_flip = nil
                vars.mod_flip = nil
                vars.next_sw = nil
                vars.xways_index = nil
                vars.frz_end = nil
                vars.frozen_yaw = nil
                vars.inv = nil
                vars.rand_l = 0
                vars.rand_r = 0
                vars.rand_jit = 0
                vars.rand_sw1 = 0
                vars.rand_sw2 = 0
                vars.rand_xway = 0
                vars.last_yaw = nil
            end
            vars.last_yaw = vars.last_yaw or yaw
            vars.last_tick = globals.tickcount

            if self.ui.menu.aa.fl_rand:get() then self.ref.antiaim.fl_lim:override(math.random(self.ui.menu.aa.fl_rand.fl_min:get(), self.ui.menu.aa.fl_rand.fl_max:get())) else self.ref.antiaim.fl_lim:override() end
            self.ref.antiaim.a_backstab:override(self.ui.menu.aa.anti_bs:get())
            local state = self.helpers:get_state()
            local wep = lp:get_player_weapon(false)
            local wepname = wep and wep:get_classname() or ''

            if self.ui.menu.aa.safehead:get() then
                if state == 'air crouch' and wepname:find('CKnife') and (
                    self.ui.menu.aa.safehead.safehead_on:get()[1] == 'Knife air crouch'
                    or self.ui.menu.aa.safehead.safehead_on:get()[2] == 'Knife air crouch'
                    or self.ui.menu.aa.safehead.safehead_on:get()[3] == 'Knife air crouch'
                ) then
                    self.ref.antiaim.offset:override(0)
                    self.ref.antiaim.pitch:override('Down')
                    self.ref.antiaim.hidden:override(false)
                    return
                end
                if state == 'air crouch' and wepname:find('CWeaponTaser') and (
                    self.ui.menu.aa.safehead.safehead_on:get()[1] == 'Taser air crouch'
                    or self.ui.menu.aa.safehead.safehead_on:get()[2] == 'Taser air crouch'
                    or self.ui.menu.aa.safehead.safehead_on:get()[3] == 'Taser air crouch'
                ) then
                    self.ref.antiaim.offset:override(0)
                    self.ref.antiaim.pitch:override('Down')
                    self.ref.antiaim.hidden:override(false)
                    return
                end
            end

            local builder = self.ui.menu.aa.builder[state]
            if not builder or not builder.enable:get() then
                state = 'global'
                builder = self.ui.menu.aa.builder[state]
            end
            if not builder or not builder.enable:get() then
                self.ref.antiaim.aa_tog:override(false)
                return
            end

            self.ref.antiaim.fs:override(self.ui.menu.aa.state_sel.fs:get() and true or false)
            self.ref.antiaim.dis_des_fs:override(self.ui.menu.aa.state_sel.dis_des_fs:get() and true or false)
            for i = 1, #self.globals.states do
                if self.ui.menu.aa.state_sel.disablers:get()[i] == self.helpers:get_state() then self.ref.antiaim.fs:override(false) end
            end

            local yaw_sel = builder.yaw_mode:get() or {}
            local mode1, mode2 = yaw_sel[1], yaw_sel[2]
            
            vars.y_side_flip = (vars.y_side_flip == nil) and false or vars.y_side_flip
            vars.yaw_next_flip = vars.yaw_next_flip or globals.tickcount + 1
            vars.mod_flip = (vars.mod_flip == nil) and false or vars.mod_flip
            vars.next_sw = vars.next_sw or globals.tickcount
            vars.xways_index = vars.xways_index or 1

            vars.rand_l = vars.rand_l or 0
            vars.rand_r = vars.rand_r or 0
            vars.rand_jit = vars.rand_jit or 0
            vars.rand_sw1 = vars.rand_sw1 or 0
            vars.rand_sw2 = vars.rand_sw2 or 0
            vars.rand_xway = vars.rand_xway or 0

            local yaw = 0
                
            local just_flipped = nil 

            if mode1 == 'L/R' or mode2 == 'L/R' then
                speed = (builder.yaw_delay:get() and builder.yaw_delay_amt:get()) or 1
                just_flipped = self:update_flipper(speed, ui.find("Aimbot", "Anti Aim", "Fake Lag", "Variability"):get())
                local left = builder.yaw_left:get() or 0
                local right = builder.yaw_right:get() or 0
                local rand_amt = builder.yaw_rand:get() and tonumber(builder.yaw_rand_val:get()) or 0

                if just_flipped then
                    if rand_amt > 0 then
                        vars.rand_l = self.helpers:rand_between(-rand_amt, rand_amt)
                        vars.rand_r = self.helpers:rand_between(-rand_amt, rand_amt)
                    else
                        vars.rand_l, vars.rand_r = 0, 0
                    end
                end

                yaw = self.globals.aa_vars.flipper.state and (right + vars.rand_r) or (left + vars.rand_l)

                if builder.yaw_freeze:get() then
                    local frz_dur = builder.yaw_frz_dur:get() or 0
                    local yaw_changed = yaw ~= vars.last_yaw

                    if (math.random() < 0.02) then
                        if not vars.frz_end or globals.tickcount > vars.frz_end then
                            vars.frozen_yaw = yaw
                            vars.frz_end = globals.tickcount + frz_dur
                        end
                    end

                    if vars.frz_end and globals.tickcount <= vars.frz_end and vars.frozen_yaw then
                        yaw = vars.frozen_yaw
                    end
                end

                vars.last_yaw = yaw


                if (mode1 == 'L/R' and mode2 == 'Offset') or (mode1 == 'Offset' and mode2 == 'L/R') then
                    yaw = (builder.yaw_offset:get() or 0) + yaw
                end
            elseif mode1 == 'Offset' or mode2 == 'Offset' then
                yaw = builder.yaw_offset:get() or 0
            end

            local mod = builder.yaw_mod_mode:get()
            local j_amt = builder.yaw_jitter_amt:get() or 0
            if mod == 'Jitter' then
                if globals.tickcount % 2 == 0 or (not builder.body_yaw_enable:get()) then
                    vars.mod_flip = not vars.mod_flip
                    if builder.yaw_jitter_rand:get() then
                        local rand_amt = builder.yaw_jitter_rand_amt:get() or 0
                        vars.rand_jit = self.helpers:rand_between(-rand_amt, rand_amt)
                        j_amt = j_amt + vars.rand_jit
                    end
                end
                
                yaw = yaw + (vars.mod_flip and j_amt or -j_amt)

            elseif mod == 'Switch' then
                local ang1 = builder.yaw_switch_ang1:get() or 0
                local ang2 = builder.yaw_switch_ang2:get() or 0
                local r_amt = builder.yaw_sw_rand:get() and (builder.yaw_sw_rand_amt:get() or 0) or 0

                local base_delay = builder.yaw_sw_delay:get() and (builder.yaw_sw_delay_amt:get() or 0) or 0
                if base_delay == 0 and builder.body_yaw_enable:get() then
                    base_delay = 2
                end
                local rand_delay_amt = builder.yaw_sw_delay_rand:get() and (builder.yaw_sw_delay_rand_amt:get() or 0) or 0

                if base_delay <= 0 then
                    vars.mod_flip = not vars.mod_flip
                    if r_amt > 0 then
                        vars.rand_sw1 = self.helpers:rand_between(-r_amt, r_amt)
                        vars.rand_sw2 = self.helpers:rand_between(-r_amt, r_amt)
                    else
                        vars.rand_sw1 = 0; vars.rand_sw2 = 0
                    end
                else
                    if globals.tickcount >= vars.next_sw then
                        vars.mod_flip = not vars.mod_flip
                        
                        if r_amt > 0 then
                            vars.rand_sw1 = self.helpers:rand_between(-r_amt, r_amt)
                            vars.rand_sw2 = self.helpers:rand_between(-r_amt, r_amt)
                        else
                            vars.rand_sw1 = 0; vars.rand_sw2 = 0
                        end

                        local adj = 0
                        if rand_delay_amt > 0 then adj = math.random(-rand_delay_amt, rand_delay_amt) end
                        local next_delay = math.max(1, base_delay + adj)
                        vars.next_sw = globals.tickcount + next_delay
                    end
                end

                ang1 = ang1 + vars.rand_sw1
                ang2 = ang2 + vars.rand_sw2

                local s_yaw = vars.mod_flip and ang2 or ang1
                yaw = yaw + s_yaw

            elseif mod == 'X-ways' then
                local x_amt = math.max(1, builder.yaw_xways_amt:get() or 1)
                
                if globals.tickcount % 2 == 0 then
                    vars.xways_index = vars.xways_index + 1
                    if vars.xways_index > x_amt then vars.xways_index = 1 end
                    
                    if builder.yaw_xways_rand:get() then
                        local r = builder.yaw_xways_rand_amt:get() or 0
                        vars.rand_xway = self.helpers:rand_between(-r, r)
                    else
                        vars.rand_xway = 0
                    end
                end
                
                local field_name = 'yaw_xways_ang' .. tostring(vars.xways_index)
                local x_yaw = builder[field_name] and builder[field_name]:get() or 0
                x_yaw = x_yaw + vars.rand_xway
                
                yaw = yaw + x_yaw
            elseif mod == 'Sway' then
                local minv = builder.yaw_sway_min:get() or 0
                local maxv = builder.yaw_sway_max:get() or 0
                local speed = builder.yaw_sway_speed:get() or 1
                local sway_angle = minv + (maxv - minv) * (0.5 + 0.5 * math.sin(globals.realtime * speed))
                yaw = yaw + sway_angle
            end

            if self.ui.menu.aa.state_sel.manual:get() ~= 'Disabled' then
                local manual = self.ui.menu.aa.state_sel.manual:get()
                if manual == 'Left' then
                    yaw = -90
                elseif manual == 'Right' then
                    yaw = 90
                elseif manual == 'Back' then
                    yaw = 0
                elseif manual == 'Forward' then
                    yaw = 180
                end
            end
            self.ref.antiaim.y_base:override(self.ui.menu.aa.state_sel.base:get() == 'Local view' and 'Local view' or 'At target')
            self.ref.antiaim.offset:override(yaw)
            if mode1 ~= 'L/R' and mode2 ~= 'L/R' then
                just_flipped = self:update_flipper(speed, ui.find("Aimbot", "Anti Aim", "Fake Lag", "Variability"):get())
            end
            self:desync(builder)
        end,
        defensives = function(self, cmd)
            self.ref.ragebot.lag:override()
            local vars = self.globals.aa_vars
            local lp = entity.get_local_player()
            if not lp then return end
            local wep = lp:get_player_weapon(false)
            if not wep then return end
            local wep_idx = wep.m_iItemDefinitionIndex
            if wep_idx == 64 then return end
            local state = self.helpers:get_state()
            local def_builder = self.ui.menu.aa.def_builder[state]
            if not def_builder or not def_builder.enable:get() then
                state = 'global'
                def_builder = self.ui.menu.aa.def_builder[state]
            end
            if not def_builder or not def_builder.enable:get() then
                self.ref.antiaim.hidden:override(false)
                return
            end
            self.ref.antiaim.aa_tog:override(true)
            cmd.force_defensive = (self.ui.menu.aa.flicks:get() and globals.tickcount % 7 == 0) or self.ui.menu.aa.force_def:get()
            local triggers = def_builder.trigger:get()
            if not((self.ref.ragebot.on_shot:get() and (triggers[1] == 'Hide shots' or triggers[2] == 'Hide shots')) or (self.ref.ragebot.dt:get() and (triggers[1] == 'Double tap' or triggers[2] == 'Double tap'))) then
                self.ref.antiaim.hidden:override(false); cmd.force_defensive = false; return
            end
            self.ref.antiaim.hidden:override(true)
            self.ref.ragebot.lag:override('Always On')
            self.ref.ragebot.os_opts:override('Break LC')
            vars.mod_flip = vars.mod_flip == nil and false or vars.mod_flip
            vars.next_sw = vars.next_sw or globals.tickcount
            vars.xway = vars.xway or 1
            vars.p_way = vars.p_way or 1
            vars.spin_ang = vars.spin_ang or 0
            vars.y_angle = vars.y_angle or 0
            local pitch = 0
            local p_mode = def_builder.pitch_mode:get()
            if p_mode == 'Custom' then
                pitch = def_builder.pitch_val:get() or 0
            elseif p_mode == 'Switch' then
                local up = def_builder.pitch_switch_up:get() or 0
                local down = def_builder.pitch_switch_down:get() or 0
                local base_delay = def_builder.pitch_sw_del:get() and (def_builder.pitch_switch_delay:get() or 2) or 2
                if base_delay <= 0 then
                    vars.mod_flip = not vars.mod_flip
                else
                    if globals.tickcount >= vars.next_sw then
                        vars.mod_flip = not vars.mod_flip
                        vars.next_sw = globals.tickcount + math.max(1, base_delay)
                    end
                end
                pitch = vars.mod_flip and up or down
            elseif p_mode == '3-way' then
                local base_delay = def_builder.pitch_sw_del:get() and (def_builder.pitch_switch_delay:get() or 2) or 2
                if globals.tickcount >= vars.next_sw then
                    vars.p_way = vars.p_way + 1
                    if vars.p_way > 3 then vars.p_way = 1 end
                    vars.next_sw = globals.tickcount + math.max(1, base_delay)
                end
                if vars.p_way == 1 then
                    pitch = def_builder.pitch_way1:get() or 0
                elseif vars.p_way == 2 then
                    pitch = def_builder.pitch_way2:get() or 0
                else
                    pitch = def_builder.pitch_way3:get() or 0
                end
            elseif p_mode == 'Sway' then
                local minv = def_builder.pitch_sway_min:get() or 0
                local maxv = def_builder.pitch_sway_max:get() or 0
                local speed = def_builder.pitch_sway_speed:get() or 1
                pitch = minv + (maxv - minv) * (0.5 + 0.5 * math.sin(globals.realtime * speed))
            elseif p_mode == 'Spin' then
                local spd = def_builder.pitch_spin_speed:get() or 0
                vars.spin_ang = vars.spin_ang + spd
                local ang = vars.spin_ang
                ang = ((ang + 180) % 360) - 180
                if ang > 89 then ang = 89 end
                if ang < -89 then ang = -89 end
                
                pitch = ang
            end

            local vars = self.globals.aa_vars
            if vars.inverter_state == nil then vars.inverter_state = false end

            self:desync(def_builder)

            local yaw = 0

            local just_flipped = nil
            local speed = 1

            local y_mode = def_builder.yaw_mode:get()
            if y_mode == 'Static' then
                yaw = def_builder.yaw_val:get() or 0
            elseif y_mode == 'Switch' then
                local left = def_builder.yaw_switch_left:get() or 0
                local right = def_builder.yaw_switch_right:get() or 0
                local base_delay = def_builder.yaw_sw_del:get() and (def_builder.yaw_switch_delay:get() or 2) or 2
                if base_delay == 2 and def_builder.body_yaw_enable:get() then
                    base_delay = 3
                end
                local rand_amt = def_builder.yaw_del_rand:get() and (def_builder.yaw_del_rand_amt:get() or 0) or 0
                if base_delay <= 0 then
                    vars.mod_flip = not vars.mod_flip
                else
                    if globals.tickcount >= vars.next_sw then
                        vars.mod_flip = not vars.mod_flip
                        local adj = 0
                        if rand_amt > 0 then adj = math.random(-rand_amt, rand_amt) end
                        vars.next_sw = globals.tickcount + math.max(1, base_delay + adj)
                    end
                end
                yaw = vars.mod_flip and right or left
                if vars.mod_flip then
                    self.ref.antiaim.l_lim:override(def_builder.body_yaw_l_lim:get())
                    self.ref.antiaim.r_lim:override(def_builder.body_yaw_r_lim:get())
                else
                    self.ref.antiaim.l_lim:override(-def_builder.body_yaw_l_lim:get())
                    self.ref.antiaim.r_lim:override(-def_builder.body_yaw_r_lim:get())
                end
            elseif y_mode == 'Sway' then
                local minv = def_builder.yaw_sway_min:get() or 0
                local maxv = def_builder.yaw_sway_max:get() or 0
                local speed = def_builder.yaw_sway_speed:get() or 1
                yaw = minv + (maxv - minv) * (0.5 + 0.5 * math.sin(globals.realtime * speed))
            elseif y_mode == 'Spinbot' then
                local spd = def_builder.yaw_spin_speed:get() or 0
                vars.y_angle = vars.y_angle + spd
                local ang = vars.y_angle % 360
                if ang > 180 then ang = ang - 360 end
                yaw = ang
            elseif y_mode == 'Progressive' then
                local max_spd = math.abs(def_builder.yaw_prog_speed:get() or 0)
                vars.prog_phase = vars.prog_phase or 0
                vars.prog_dir = vars.prog_dir or 1
                vars.base_ang = vars.base_ang or 0
                if max_spd == 0 then
                    yaw = (vars.base_ang % 360)
                    if yaw > 180 then yaw = yaw - 360 end
                else
                    local phase_step = max_spd * 2 / math.pi
                    vars.prog_phase = vars.prog_phase + phase_step
                    if vars.prog_phase >= 360 then
                        vars.prog_phase = vars.prog_phase - 360
                        vars.base_ang = vars.base_ang + vars.prog_dir * 360
                        vars.prog_dir = -vars.prog_dir
                    end
                    local rel = 180 * (1 - math.cos(math.rad(vars.prog_phase * 0.5)))
                    local total_yaw = vars.base_ang + vars.prog_dir * rel
                    local ang = total_yaw % 360
                    if ang > 180 then ang = ang - 360 end
                    yaw = ang
                end
            elseif y_mode == 'X-way' then
                local ways = math.max(1, def_builder.yaw_ways_amt:get() or 1)
                if globals.tickcount % 2 == 0 then
                    vars.xway = vars.xway + 1
                    if vars.xway > ways then vars.xway = 1 end
                end
                local field = 'yaw_xways_ang' .. tostring(vars.xway)
                yaw = def_builder[field] and def_builder[field]:get() or 0
                if def_builder.yaw_xways_rand:get() then
                    local r = def_builder.yaw_xways_rand_amt:get() or 0
                    yaw = yaw + self.helpers:rand_between(-r, r)
                end
            end

            self.ref.antiaim.offset:override(0)
            rage.antiaim:override_hidden_pitch(pitch)
            rage.antiaim:override_hidden_yaw_offset(yaw)
        end,

        desync = function(self, builder)
            local vars = self.globals.aa_vars

            if builder.body_yaw_enable:get() then
                self.ref.antiaim.desync:override(true)
                local by_mode = builder.body_yaw_mode:get()

                if by_mode == 'Default' then
                    if builder.yaw_mode:get() == 'Switch' then
                        self.ref.antiaim.invert:override(builder.body_yaw_invert:get())
                        if self.globals.aa_vars.flipper.state then
                            self.ref.antiaim.l_lim:override(-builder.body_yaw_l_lim:get())
                            self.ref.antiaim.r_lim:override(-builder.body_yaw_r_lim:get())
                        else
                            self.ref.antiaim.l_lim:override(builder.body_yaw_l_lim:get())
                            self.ref.antiaim.r_lim:override(builder.body_yaw_r_lim:get())
                        end
                    else
                        self.ref.antiaim.invert:override(builder.body_yaw_invert:get())
                        self.ref.antiaim.l_lim:override(builder.body_yaw_l_lim:get())
                        self.ref.antiaim.r_lim:override(builder.body_yaw_r_lim:get())
                        self.ref.antiaim.des_opts:override(builder.body_yaw_opts:get())
                    end
                elseif by_mode == 'Jitter' then
                    self.ref.antiaim.invert:override(builder.body_yaw_invert:get())
                    if self.globals.aa_vars.flipper.state then
                        self.ref.antiaim.l_lim:override(-builder.body_yaw_l_lim:get())
                        self.ref.antiaim.r_lim:override(-builder.body_yaw_r_lim:get())
                    else
                        self.ref.antiaim.l_lim:override(builder.body_yaw_l_lim:get())
                        self.ref.antiaim.r_lim:override(builder.body_yaw_r_lim:get())
                    end
                elseif by_mode == 'Static' then
                    self.ref.antiaim.invert:override(builder.body_yaw_invert:get())
                    self.ref.antiaim.l_lim:override(builder.body_yaw_l_lim:get())
                    self.ref.antiaim.r_lim:override(builder.body_yaw_r_lim:get())
                elseif by_mode == 'Sway' then
                    self.ref.antiaim.des_opts:override({})
                    local amplitude = 60
                    local speed = builder.body_yaw_sway_speed:get() or 1
                    local phase = globals.realtime * speed
                    local sway = amplitude * math.sin(phase)
                    local abs_sway = math.abs(sway)
                    self.ref.antiaim.l_lim:override(abs_sway)
                    self.ref.antiaim.r_lim:override(abs_sway)
                    self.ref.antiaim.invert:override(sway < 0)
                end
            else
                self.ref.antiaim.desync:override(false)
            end
        end,
        setup = function(self, cmd)
            self.antiaim(self)
            self.defensives(self, cmd)
        end
    }
    :struct 'watermark' {
        font_main = render.load_font('Consolas', 10, 'ab'),
        render = function(self)
            local watermark_anim = gradient.text_animate('persistence', 1, {self.ui.menu.visual.watermark.brand_grad_1:get(), self.ui.menu.visual.watermark.brand_grad_2:get()})
            local ping = self.helpers:get_ping()
            watermark_anim:animate()
            local text_col = color(255,255,255,255):to_hex()
            local style = ui.get_style('Link Active')
            local rounding = 6
            local user_icon = ui.get_icon('circle-user')
            local ping_icon = ui.get_icon('wifi')
            local fps_icon = ui.get_icon('chart-simple')
            local time_icon = ui.get_icon('alarm-clock')
            local fps = self.helpers:get_fps()
            local current_time = self.helpers:get_current_time()
            local style_contrasted = color(style.r + 35, style.g + 35, style.b + 35, 255)
            local hex_style = style_contrasted:to_hex()
            local w_text = watermark_anim:get_animated_text() .. '\a' .. hex_style .. ' ' .. ui.get_icon('bracket-curly') .. ui.get_icon('bracket-curly-right') .. ' ' .. self.globals.build .. '  ' .. user_icon .. '  \a' .. text_col .. self.globals.username .. '  \a' .. hex_style .. ping_icon .. '  \a' .. text_col .. math.floor(ping) .. ' ms  \a' .. hex_style ..fps_icon .. '  \a' .. text_col .. fps .. ' fps  \a' .. hex_style .. time_icon .. '  \a' .. text_col .. current_time
            local w_size = render.measure_text(self.font_main, nil, w_text)
            local panel_width = w_size.x + 18
            local panel_height = w_size.y + 12
            local size = vector(panel_width, panel_height)
            local pos = vector(self.ui.menu.inv.wm_x:get(), self.ui.menu.inv.wm_y:get())
            pos = self.drag_system:handle('watermark_drag', pos, size)
            self.ui.menu.inv.wm_x:set(pos.x)
            self.ui.menu.inv.wm_y:set(pos.y)
            local start_x = pos.x
            local start_y = pos.y
            local p1 = vector(start_x - 2, start_y)
            local p2 = vector(start_x + panel_width, start_y + panel_height)
            local a = 255
            render.rect(p1, p2, color(style.r, style.g, style.b, math.max(0, 125)), 8)
            render.blur(p1, p2, 0.7, a, 8)
            render.rect_outline(p1, p2, color(style.r, style.g, style.b, a - 160), 1, 8)
            render.shadow(p1, p2, color(style.r, style.g, style.b, a - 120), 60, 0, 8)
            local text_y = start_y + (panel_height - w_size.y) / 2
            render.text(self.font_main, vector(start_x + 8, text_y), color(255,255,255,255), nil, w_text)
        end,
        setup = function(self)
            if self.ui.menu.visual.watermark:get() then self:render() end
        end
    } 
    :struct 'dynamic_island' {
        font = render.load_font('Consolas', 11, 'ab'),
        icon_font = render.load_font('Consolas', 13, 'ab'),

        state = {
            init = false,
            load_time = 0,
            w = 0,
            h = 0,
            alpha = 0,
            text_alpha = 0,
            icon_alpha = 0,
            last_mode = 'normal',
            mode_start_time = 0,
            anim_started = false,
            stable_frames = 0,
            queue = {},
            active_list = {},
            last_origin = nil,
            icon_alphas = { dt = 0, md = 0, hs = 0, osaa = 0, fs = 0 },
            welcome_phase = 0,
            welcome_scale = 0,
            welcome_content_alpha = 0,
            glow_fade = 0,
            icon_y_slide = 15,
            icon_master_alpha = 0
        },

        design = {
            h_offset = 65,
            rounding = 16,
            w_pad = 28,
            h_pad = 20,
            icon_spacing = 24,
            normal_width = 150,
            base_height = 28,
            stack_spacing = 22,
            max_visible = 3
        },

        easeOutElastic = function(self, t)
            local p = 0.3
            return math.pow(2, -10 * t) * math.sin((t - p / 4) * (2 * math.pi) / p) + 1
        end,

        easeOutExpo = function(self, t)
            return t == 1 and 1 or 1 - math.pow(2, -10 * t)
        end,

        lerp = function(self, start, stop, speed)
            local dt = globals.frametime
            if dt > 0.1 then dt = 0.1 end
            local val = start + (stop - start) * (dt * speed)
            if math.abs(stop - val) < 0.01 then return stop end
            return val
        end,

        is_bind_active = function(self, reference)
            if reference == nil then return false end
            local binds = ui.get_binds()
            if not binds then return false end
            for _, hk in pairs(binds) do
                if hk.reference == reference and hk.active then return true end
            end
            return false
        end,

        get_value = function(self, item)
            if not item then return nil end
            local override = item.get_override and item:get_override() or nil
            if override ~= nil then return override end
            return item.get and item:get() or nil
        end,

        push_notification = function(self, id, title, subtitle, icon, duration)
            if not self.ui.menu.visual.iphone:get() and id ~= 'welcome' then return end
            
            local text = (icon ~= nil and (ui.get_icon(icon) .. "  ") or "") .. title
            if subtitle and subtitle ~= "" then text = text .. " " .. subtitle end

            for _, active in ipairs(self.state.active_list) do
                if active.id == id then
                    active.count = active.count + 1
                    active.start = common.get_timestamp()
                    return
                end
            end

            table.insert(self.state.queue, {
                text = text,
                start = 0,
                duration = (duration or 2.2) * 1000,
                id = id,
                count = 1,
                y_offset = -10,
                opacity = 0
            })
        end,

        render = function(self)
            local cur_time = common.get_timestamp()
            local is_enabled = self.ui.menu.visual.iphone:get()

            if not self.state.init then
                self.state.load_time = cur_time
                self.state.init = true
                return
            end

            if not self.state.anim_started then
                if cur_time - self.state.load_time < 100 then return end
                self.state.stable_frames = self.state.stable_frames + 1
                if self.state.stable_frames < 3 then return end
                self.state.anim_started = true
                self.state.welcome_start = cur_time
                self.state.welcome_phase = 1
            end

            if self.state.welcome_phase > 0 and self.state.welcome_phase < 4 then
                local elapsed = cur_time - self.state.welcome_start
                if self.state.welcome_phase == 1 then
                    local d = 850
                    local t = math.min(1, elapsed / d)
                    self.state.welcome_scale = self:easeOutElastic(t)
                    self.state.welcome_content_alpha = self:lerp(self.state.welcome_content_alpha, 1, 8)
                    if t >= 1 then self.state.welcome_phase = 2 end
                elseif self.state.welcome_phase == 2 then
                    if elapsed > 2500 then self.state.welcome_phase = 3 end
                elseif self.state.welcome_phase == 3 then
                    local t = math.min(1, (elapsed - 2500) / 450)
                    self.state.welcome_scale = 1 - self:easeOutExpo(t)
                    self.state.welcome_content_alpha = self:lerp(self.state.welcome_content_alpha, 0, 12)
                    if t >= 1 then self.state.welcome_phase = 4 end
                end
            end

            local lp = entity.get_local_player()
            if lp and lp:is_alive() then
                local origin = lp:get_origin()
                if is_enabled and self.state.welcome_phase >= 4 then
                    if self.state.last_origin and origin:dist(self.state.last_origin) > 64 then
                        self:push_notification('lc', 'LagComp', 'Broken', 'link', 2)
                    end
                end
                self.state.last_origin = origin
            end

            local target_w = is_enabled and self.design.normal_width or 0
            local target_h = is_enabled and self.design.base_height or 0
            local target_alpha = is_enabled and 1 or 0

            if self.state.welcome_phase > 0 and self.state.welcome_phase < 4 then
                target_w = self.design.normal_width * self.state.welcome_scale
                target_h = self.design.base_height * self.state.welcome_scale
                target_alpha = 1
            end

            if is_enabled then
                local can_expand = (self.state.w / math.max(1, target_w)) > 0.88
                while can_expand and #self.state.active_list < self.design.max_visible and #self.state.queue > 0 do
                    local n = table.remove(self.state.queue, 1)
                    n.start = cur_time
                    table.insert(self.state.active_list, n)
                end
            else
                self.state.active_list = {}
                self.state.queue = {}
            end

            for i = #self.state.active_list, 1, -1 do
                if cur_time - self.state.active_list[i].start > self.state.active_list[i].duration then
                    table.remove(self.state.active_list, i)
                end
            end

            local mode = #self.state.active_list > 0 and 'notify' or 'normal'
            if is_enabled and mode == 'notify' and self.state.welcome_phase >= 4 then
                target_h = self.design.base_height + ((#self.state.active_list - 1) * self.design.stack_spacing)
                for _, n in ipairs(self.state.active_list) do
                    local sz = render.measure_text(self.font, nil, n.text)
                    target_w = math.max(target_w, sz.x + self.design.w_pad)
                end
            end

            self.state.w = self:lerp(self.state.w, target_w, 18)
            self.state.h = self:lerp(self.state.h, target_h, 18)
            self.state.alpha = self:lerp(self.state.alpha, target_alpha, 8)

            local icon_target_alpha = (mode == 'normal' and is_enabled and self.state.welcome_phase >= 4) and 1 or 0
            local icon_target_y = (mode == 'normal' and is_enabled and self.state.welcome_phase >= 4) and 0 or 15
            
            self.state.icon_master_alpha = self:lerp(self.state.icon_master_alpha, icon_target_alpha, 12)
            self.state.icon_y_slide = self:lerp(self.state.icon_y_slide, icon_target_y, 10)

            local glow_target = 0
            if self.state.welcome_phase > 0 and self.state.welcome_phase < 3 then
                glow_target = self.state.welcome_content_alpha
            elseif self.state.welcome_phase >= 4 and is_enabled then
                glow_target = 1
            end
            self.state.glow_fade = self:lerp(self.state.glow_fade, glow_target, 8)

            if self.state.alpha < 0.01 and self.state.welcome_phase >= 4 then return end

            local screen = render.screen_size()
            local cx, cy = screen.x / 2, self.design.h_offset
            local hw = self.state.w / 2
            
            local p1 = vector(cx - hw, cy)
            local p2 = vector(cx + hw, cy + self.state.h)

            local style = ui.get_style('Link Active')
            local text_col = ui.get_style('Active Text')
            local disabled_col = ui.get_style('Disabled Text')
            local a = 255 * self.state.alpha

            if self.state.w > 1 then
                if self.state.glow_fade > 0.01 then
                    render.shadow(p1, p2, color(style.r, style.g, style.b, math.max(0, a - 120) * self.state.glow_fade), 60, 0, self.design.rounding)
                end
                render.rect(p1, p2, color(style.r, style.g, style.b, 125 * self.state.alpha), self.design.rounding)
                render.blur(p1, p2, 0.7, a, self.design.rounding)
                render.rect_outline(p1, p2, color(style.r, style.g, style.b, math.max(0, a - 160)), 1, self.design.rounding)
            end

            render.push_clip_rect(p1, p2)
            
            local center_y_base = cy + (self.design.base_height / 2)

            if self.state.welcome_phase > 0 and self.state.welcome_phase < 4 then
                local txt = "Welcome, " .. self.globals.username
                local sz = render.measure_text(self.font, nil, txt)
                render.text(self.font, vector(cx - sz.x / 2, center_y_base - sz.y / 2), color(text_col.r, text_col.g, text_col.b, 255 * self.state.welcome_content_alpha * self.state.alpha), nil, txt)
            elseif mode == 'notify' then
                for i, n in ipairs(self.state.active_list) do
                    n.y_offset = self:lerp(n.y_offset, 0, 14)
                    n.opacity = self:lerp(n.opacity, 1, 14)
                    local y = center_y_base + ((i - 1) * self.design.stack_spacing)
                    local sz = render.measure_text(self.font, nil, n.text)
                    render.text(self.font, vector(cx - sz.x / 2, y - sz.y / 2 + n.y_offset), color(text_col.r, text_col.g, text_col.b, 255 * n.opacity * self.state.alpha), nil, n.text)
                end
            elseif is_enabled and self.state.icon_master_alpha > 0.01 then
                local binds = {
                    { key = 'dt', active = self:get_value(self.ref.ragebot.dt), icon = ui.get_icon('circle-nodes') },
                    { key = 'md', active = self:is_bind_active(ui.find('Aimbot', 'Ragebot', 'Selection', 'Min. Damage')), icon = ui.get_icon('binary-slash') },
                    { key = 'hs', active = self:is_bind_active(ui.find('Aimbot', 'Ragebot', 'Selection', 'Hit Chance')), icon = ui.get_icon('bolt') },
                    { key = 'osaa', active = self:get_value(self.ref.ragebot.on_shot), icon = ui.get_icon('code-compare') },
                    { key = 'fs', active = self:get_value(self.ref.antiaim.fs), icon = ui.get_icon('code-pull-request') }
                }
                local sx = cx - ((#binds - 1) * self.design.icon_spacing) / 2
                for i, b in ipairs(binds) do
                    self.state.icon_alphas[b.key] = self:lerp(self.state.icon_alphas[b.key], b.active and 1 or 0, 15)
                    local sz = render.measure_text(self.icon_font, nil, b.icon)
                    local final_alpha = (disabled_col.a + (text_col.a - disabled_col.a) * self.state.icon_alphas[b.key]) * self.state.icon_master_alpha * self.state.alpha
                    local c = color(
                        disabled_col.r + (text_col.r - disabled_col.r) * self.state.icon_alphas[b.key],
                        disabled_col.g + (text_col.g - disabled_col.g) * self.state.icon_alphas[b.key],
                        disabled_col.b + (text_col.b - disabled_col.b) * self.state.icon_alphas[b.key],
                        final_alpha
                    )
                    render.text(self.icon_font, vector(sx + (i - 1) * self.design.icon_spacing - sz.x / 2, center_y_base - sz.y / 2 + self.state.icon_y_slide), c, nil, b.icon)
                end
            end

            render.pop_clip_rect()
        end,

        setup = function(self)
            self:render()
        end
    }
    :struct 'netgraph' {
        netgraph_font = render.load_font('Consolas', 11, 'ab'),
        title_font = render.load_font('Consolas', 10, 'ab'),
        title_progress = 0.0,
        frame_times = {},
        update = function(self)
            if not globals.is_in_game then
                self.globals.netgraph_data.fps = 0
                self.globals.netgraph_data.ping = 0
                self.globals.netgraph_data.tickrate = 0
                self.globals.netgraph_data.loss = 0
                self.globals.netgraph_data.choke = 0
                self.globals.netgraph_data.sv = 0
                self.globals.netgraph_data.var_dev = 0
                self.globals.netgraph_data.client_var = 0
                self.globals.netgraph_data.ver = 0
                self.globals.netgraph_data.exploit = 0
                return
            end
            self.globals.netgraph_data.fps = self.helpers:get_fps()
            self.globals.netgraph_data.tickrate = globals.tickinterval > 0 and math.floor(1 / globals.tickinterval) or 0
            self.globals.netgraph_data.ping = self.helpers:get_ping()
            local netchan = utils.net_channel()
            self.globals.netgraph_data.loss = math.floor((netchan.loss[1] or 0) * 100 + 0.5)
            self.globals.netgraph_data.choke = globals.choked_commands
            local server_info = netchan:get_server_info() or {}
            self.globals.netgraph_data.sv = (server_info.frame_time or 0)
            self.globals.netgraph_data.var_dev = (server_info.deviation or 0)
            local charge = self.globals.netgraph_data.exploit or 0
            local t = (rage and rage.exploit and rage.exploit:get() or 0) * 100
            if t == 0 or t == 100 then
                self.globals.netgraph_data.exploit = t
            else
                local v = self.helpers:lerp(charge, t, 0.05)
                self.globals.netgraph_data.exploit = math.floor(v + 0.5)
            end
            if globals.is_in_game then
                self.globals.netgraph_data.fps = self.helpers:lerp(self.globals.netgraph_data.fps, 1 / globals.absoluteframetime, 0.05)
                table.insert(self.frame_times, globals.absoluteframetime * 1000)
                if #self.frame_times > 128 then table.remove(self.frame_times, 1) end
                if #self.frame_times > 1 then
                    local mean = 0
                    for _, v in ipairs(self.frame_times) do mean = mean + v end
                    mean = mean / #self.frame_times
                    local ss = 0
                    for _, v in ipairs(self.frame_times) do ss = ss + (v - mean) ^ 2 end
                    self.globals.netgraph_data.client_var = math.sqrt(ss / (#self.frame_times - 1))
                else
                    self.globals.netgraph_data.client_var = 0
                end
            else
                self.globals.netgraph_data.fps = 0
                self.globals.netgraph_data.client_var = 0
                self.frame_times = {}
            end
        end,
        render = function(self)
            if not globals.is_in_game then return end
            local last_upd = last_upd or 0
            self:update()
            if globals.realtime - last_upd >= 0.5 then
                last_upd = globals.realtime
            end
            local fps = tostring(math.floor(self.globals.netgraph_data.fps))
            local ping = tostring(math.floor(self.globals.netgraph_data.ping)) .. ' ms'
            local tickrate = tostring(self.globals.netgraph_data.tickrate)
            local loss = tostring(self.globals.netgraph_data.loss) .. ' %'
            local choke = tostring(self.globals.netgraph_data.choke)
            local sv = string.format('%.1f s', self.globals.netgraph_data.sv)
            local var_dev = string.format('%.3f s', self.globals.netgraph_data.var_dev)
            local client_var = string.format('%.1f ms', self.globals.netgraph_data.client_var)
            local exploit = tostring(self.globals.netgraph_data.exploit)
            local icons = {
                title = ui.get_icon('triangle') .. ' ',
                fps = ui.get_icon('chart-line') .. ' ',
                var_client = ui.get_icon('shuffle') .. ' ',
                ping = ui.get_icon('server') .. ' ',
                loss = ui.get_icon('chart-line-down') .. ' ',
                choke = ui.get_icon('compress') .. ' ',
                exploit = ui.get_icon('arrow-trend-up') .. ' ',
                tick = ui.get_icon('circle-info') .. ' ',
                sv = ui.get_icon('stopwatch') .. ' ',
                var_dev = ui.get_icon('shuffle') .. ' ',
            }
            local groups = {
                {
                    {icon = icons.fps, label = 'fps: ', value = fps},
                    {icon = icons.var_client, label = 'var: ', value = client_var},
                    {icon = icons.ping, label = 'ping: ', value = ping}
                },
                {
                    {icon = icons.loss, label = 'loss: ', value = loss},
                    {icon = icons.choke, label = 'choke: ', value = choke},
                    {icon = icons.exploit, label = 'charge: ', value = exploit .. '%'}
                },
                {
                    {icon = icons.tick, label = 'tick: ', value = tickrate},
                    {icon = icons.sv, label = 'sv: ', value = sv},
                    {icon = icons.var_dev, label = 'var: ', value = var_dev}
                }
            }
            local max_value_strings = {
                '9999', '999.9 ms', '999 ms',
                '100 %', '100', '100%',
                '128', '10.0 s', '10.000 s'
            }
            local max_value_widths = {}
            for i, max_str in ipairs(max_value_strings) do
                max_value_widths[i] = render.measure_text(self.netgraph_font, nil, max_str).x
            end
            local col_max_icon = {0, 0, 0}
            local actual_icon_ws = {{}, {}, {}}
            local actual_label_ws = {{}, {}, {}}
            for gi = 1, #groups do
                local group = groups[gi]
                for j = 1, #group do
                    local m = group[j]
                    local icon_w = render.measure_text(self.netgraph_font, nil, m.icon).x
                    local label_w = render.measure_text(self.netgraph_font, nil, m.label).x
                    col_max_icon[j] = math.max(col_max_icon[j], icon_w)
                    actual_icon_ws[gi][j] = icon_w
                    actual_label_ws[gi][j] = label_w
                end
            end
            local max_label_plus_values = {0, 0, 0}
            for j = 1, 3 do
                local lbl_plus_val = 0
                for gi = 1, 3 do
                    local pos = (gi - 1) * 3 + j
                    lbl_plus_val = math.max(lbl_plus_val, actual_label_ws[gi][j] + max_value_widths[pos])
                end
                max_label_plus_values[j] = lbl_plus_val
            end
            local max_content_width = 0
            local space_w = -1
            for j = 1, 3 do
                local col_w = col_max_icon[j] + max_label_plus_values[j]
                max_content_width = max_content_width + col_w
                if j < 3 then
                    max_content_width = max_content_width + space_w
                end
            end
            local title_left = 'persistence ' .. icons.title
            local title_right = icons.title .. ' persistence'
            local title_center = 'persistence ' .. icons.title
            local title_left_size = render.measure_text(self.title_font, nil, title_left)
            local title_right_size = render.measure_text(self.title_font, nil, title_right)
            local title_center_size = render.measure_text(self.title_font, nil, title_center)
            local title_width = math.max(title_left_size.x, title_right_size.x, title_center_size.x)
            local h_padding = 10
            local v_padding = 8
            local line_spacing = 3
            local line_height = render.measure_text(self.netgraph_font, nil, 'X').y
            local content_height = v_padding + (3 * line_height) + (2 * line_spacing) + v_padding
            local final_width = math.max(title_width, max_content_width) + (h_padding * 2)
            local final_height = content_height
            local size = vector(final_width, final_height)
            local pos = vector(self.ui.menu.inv.netgraph_x:get(), self.ui.menu.inv.netgraph_y:get())
            pos = self.drag_system:handle('netgraph_drag', pos, size)
            self.ui.menu.inv.netgraph_x:set(pos.x)
            self.ui.menu.inv.netgraph_y:set(pos.y)
            local start_x = pos.x
            local start_y = pos.y
            local p1 = vector(start_x, start_y)
            local p2 = vector(start_x + final_width, start_y + final_height)
            local a = 255
            local style = ui.get_style('Link Active')
            render.rect(p1, p2, color(style.r, style.g, style.b, math.max(0, 125)), 8)
            render.blur(p1, p2, 0.7, a, 8)
            render.rect_outline(p1, p2, color(style.r, style.g, style.b, a - 160), 1, 8)
            render.shadow(p1, p2, color(style.r, style.g, style.b, a - 120), 60, 0, 8)
            local text_y = start_y + v_padding
            local content_left = start_x + (final_width - max_content_width) / 2
            local icon_start_xs = {}
            local label_start_xs = {}
            local current_x = content_left
            for j = 1, 3 do
                icon_start_xs[j] = current_x
                label_start_xs[j] = current_x + col_max_icon[j]
                current_x = label_start_xs[j] + max_label_plus_values[j]
                if j < 3 then
                    current_x = current_x + space_w
                end
            end
            for gi = 1, #groups do
                local group = groups[gi]
                for j = 1, #group do
                    local m = group[j]
                    local icon_x = label_start_xs[j] - actual_icon_ws[gi][j]
                    render.text(self.netgraph_font, vector(icon_x, text_y), color(style.r + 35, style.g + 35, style.b + 35, 255), nil, m.icon)
                    render.text(self.netgraph_font, vector(label_start_xs[j], text_y), color(style.r + 35, style.g + 35, style.b + 35, 255), nil, m.label)
                    local value_x = label_start_xs[j] + actual_label_ws[gi][j]
                    render.text(self.netgraph_font, vector(value_x, text_y), color(255,255,255,255), nil, m.value)
                end
                text_y = text_y + line_height + line_spacing
            end
        end,
        setup = function(self)
            if self.ui.menu.visual.netgraph:get() then
                self:render()
            end
        end
    }
    :struct 'side_indicators' {
        font = render.load_font('C:\\Windows\\Fonts\\calibrib.ttf', vector(25, 23.5, 0), 'a'),
        spacing = 8,
        text_offset = 12,
        v_pad = 5,
        h_offset = 3,
        draw_cmd = {},
        active_map = {},
        draw_queue = {},
        uid_counter = 1,
        last_realtime = 0,
        hit = 0,
        shots = 0,
        hit_ratio = 100,
        anim_speed = 48,
        damping = 0.85,
        snap_threshold_dist = 0.5,
        snap_threshold_vel = 5.0,
        textures = {
            bomb_c4 = render.load_image_from_file('materials\\panorama\\images\\icons\\ui\\bomb_c4.svg', vector(32, 32))
        },
        init = function(self)
            self.draw_cmd.bomb_c4 = { id = self.textures.bomb_c4, size = vector(32, 29) }
            self.last_realtime = globals.realtime
        end,
        style_a = function(self, a)
            local style = ui.get_style('Link Active')
            if not style then return color(255,255,255,a or 255) end
            return color(style.r, style.g, style.b, a or style.a or 255)
        end,
        get_value = function(self, item)
            if not item then return nil end
            local override = item.get_override and item:get_override() or nil
            if override ~= nil then return override end
            return item.get and item:get() or nil
        end,
        is_bind_active = function(self, reference)
            if reference == nil then return false end
            local binds = ui.get_binds()
            if not binds then return false end
            for _, hk in pairs(binds) do
                if hk.reference == reference and hk.active then
                    return true
                end
            end
            return false
        end,
        find_reusable_uid_by_text = function(self, text)
            for uid, ent in pairs(self.active_map) do
                if not ent.removing and ent.data and ent.data.text == text then
                    return uid
                end
            end
            return nil
        end,
        add_indicator_ex = function(self, data)
            local text = data.text or ''
            local reuse = self:find_reusable_uid_by_text(text)
            if reuse then
                local ent = self.active_map[reuse]
                ent.data.color = data.color
                ent.data.draw_cmd = data.draw_cmd
                ent.data.progress = data.progress
                ent.data.text = text
                ent.data.icon = data.icon
                ent.removing = false
                table.insert(self.draw_queue, reuse)
                return ent.target or 0
            end
            local uid = self.uid_counter
            self.uid_counter = uid + 1
            data.uid = uid
            self.active_map[uid] = { data = data, current = nil, target = nil, removing = false, velocity = 0 }
            table.insert(self.draw_queue, uid)
            return 0
        end,
        add_indicator = function(self, col, text, ...)
            return self:add_indicator_ex { text = table.concat { text, ... }, color = col }
        end,
        clear_temp_queue = function(self)
            for i = 1, #self.draw_queue do self.draw_queue[i] = nil end
        end,
        get_csgo_damage = function(self, dmg, armor)
            local armor_ratio, armor_bonus = 0.5, 0.5
            if armor > 0 then
                local new = dmg * armor_ratio
                local armor_amt = (dmg - new) * armor_bonus
                if armor_amt > armor then
                    armor_amt = armor * (1.0 / armor_bonus)
                    new = dmg - armor_amt
                end
                dmg = new
            end
            return dmg
        end,
        get_bomb_dmg = function(self, player, c4)
            local damage = 500
            local bomb_radius = damage * 3.5
            local distance_to_me = (c4:get_origin() - player:get_eye_position()):length()
            local sigma = bomb_radius / 3.0
            local gaussian_fallof = math.exp(-distance_to_me * distance_to_me / (2.0 * sigma * sigma))
            local adjusted_damage = damage * gaussian_fallof
            return self:get_csgo_damage(adjusted_damage, player.m_ArmorValue)
        end,
        update_player_bomb = function(self, player_resource, player)
            local weapon = player:get_player_weapon()
            if weapon == nil then return end
            local is_started_arming = weapon.m_bStartedArming
            if not is_started_arming then return end
            local armed_time = weapon.m_fArmedTime
            if armed_time == nil then return end
            local origin = player:get_origin()
            local bombsite_a = player_resource.m_bombsiteCenterA
            local bombsite_b = player_resource.m_bombsiteCenterB
            local distancesqr_a = origin:distsqr(bombsite_a)
            local distancesqr_b = origin:distsqr(bombsite_b)
            local bombsite = distancesqr_a < distancesqr_b and 'A' or 'B'
            local planting_time = armed_time - globals.curtime
            local progress_percent = planting_time / 3.0
            self:add_indicator_ex {
                text = bombsite,
                color = self:style_a(255),
                progress = 1 - progress_percent,
                draw_cmd = self.draw_cmd.bomb_c4
            }
        end,
        update_planted_bomb = function(self, me, c4)
            local is_defused = c4.m_bBombDefused
            local is_bomb_ticking = c4.m_bBombTicking
            if not is_bomb_ticking or is_defused then return end
            local curtime = globals.curtime
            local blow_time = c4.m_flC4Blow
            local remaining_time = blow_time - curtime
            if remaining_time > 0 then
                local defuser = c4.m_hBombDefuser
                if defuser ~= nil then
                    local screen_size = render.screen_size()
                    local count_down = c4.m_flDefuseCountDown
                    local defuse_time = count_down - curtime
                    local progress_percent = defuse_time / 10
                    local col = (blow_time < count_down) and self:style_a(125) or self:style_a(200)
                    local height = (screen_size.y - 2) * (1 - progress_percent)
                    render.rect(vector(0, 0), vector(20, screen_size.y), self:style_a(115))
                    render.rect(vector(1, 1 + height), vector(19, screen_size.y - 1), col)
                end
                local text = string.format('%s - %.1fs', c4.m_nBombSite == 1 and 'B' or 'A', remaining_time)
                self:add_indicator_ex {
                    text = text,
                    color = self:style_a(200),
                    draw_cmd = self.draw_cmd.bomb_c4
                }
            end
            local health = me.m_iHealth
            local damage = math.floor(self:get_bomb_dmg(me, c4))
            if health <= damage then
                self:add_indicator(self:style_a(255), 'FATAL')
            elseif damage > 0 then
                self:add_indicator(self:style_a(200), string.format('-%d HP', damage))
            end
        end,
        update_bomb_indicators = function(self, me)
            local game_rules = entity.get_game_rules()
            if game_rules == nil then return end
            local player_resource = entity.get_player_resource()
            if player_resource == nil then return end
            local is_planted = game_rules.m_bBombPlanted
            local player_c4 = player_resource.m_iPlayerC4
            if player_c4 ~= nil and player_c4 ~= 0 then
                local player = entity.get(player_c4)
                if player ~= nil then self:update_player_bomb(player_resource, player) end
            end
            if is_planted then
                local planted_c4 = entity.get_entities 'CPlantedC4' [1]
                if planted_c4 ~= nil then self:update_planted_bomb(me, planted_c4) end
            end
        end,
        draw_progress_circle = function(self, pos, col, radius, start_degrees, percentage, thickness)
            render.circle_outline(pos, self:style_a(255), radius, start_degrees, 1.0, thickness)
            render.circle_outline(pos, col, radius - 1, start_degrees, percentage, thickness - 2)
        end,
        draw_all = function(self, interp_factor)
            local dt = globals.frametime
            for i = 1, #self.draw_queue do
                local uid = self.draw_queue[i]
                local ent = self.active_map[uid]
                if not ent then return end
                local data = ent.data
                local tsize = render.measure_text(self.font, nil, data.text)
                tsize.y = tsize.y + self.v_pad * 2
                ent.data.text_size = tsize
                local cur = ent.current
                local targ = ent.target
                if cur == nil then
                    ent.current = (targ or 0) + 30
                    cur = ent.current
                end
                local vel = ent.velocity
                local dist_to_target = targ - cur
                if math.abs(dist_to_target) < self.snap_threshold_dist and math.abs(vel) < self.snap_threshold_vel then
                    ent.current = targ
                    ent.velocity = 0
                else
                    vel = vel + dist_to_target * self.anim_speed * dt
                    vel = vel * math.pow(self.damping, dt / 0.016)
                    ent.current = cur + vel * dt
                    ent.velocity = vel
                end
                local position = vector(self.h_offset, ent.current)
                local text_pos = position + vector(self.text_offset, self.v_pad)
                local text_size = ent.data.text_size + vector(50)
                local col = data.color or self:style_a(255)
                local draw_cmd = data.draw_cmd
                local progress = data.progress
                text_pos.y = text_pos.y + 2
                if draw_cmd ~= nil then text_size.x = text_size.x + draw_cmd.size.x + 5 end
                if progress ~= nil then text_size.x = text_size.x + 30 end
                if draw_cmd ~= nil then
                    local texture_pos = position:clone()
                    texture_pos.x = texture_pos.x + self.text_offset
                    texture_pos.y = texture_pos.y + (text_size.y - draw_cmd.size.y) / 2
                    render.texture(draw_cmd.id, texture_pos, draw_cmd.size, col, 'f')
                    text_pos.x = text_pos.x + draw_cmd.size.x + 5
                end
                render.rect(vector(text_pos.x - 18, position.y + 1), vector(text_pos.x - 12, position.y + text_size.y), color(col.r, col.g, col.b, 255))
                render.shadow(vector(text_pos.x - 18, position.y + 1), vector(text_pos.x - 12, position.y + text_size.y), color(col.r, col.g, col.b, 255), 35, 0, 9)
                local shadow_col = color(
                    math.floor(col.r * 0.3),
                    math.floor(col.g * 0.3),
                    math.floor(col.b * 0.3),
                    180
                )
                local base_x = math.floor(text_pos.x)
                local base_y = math.floor(position.y)
                local measured = render.measure_text(self.font, nil, (data.icon and (data.icon .. '  ') or '') .. data.text)
                local full_w = measured.x + 15
                local a = vector(base_x - 2, base_y + 14)
                local b = vector(base_x + full_w, base_y + text_size.y - 14)
                render.shadow(a, b, color(col.r, col.g, col.b, 144), 60, 0, 6)
                render.rect(a, vector(b.x,b.y + 0.5), color(col.r, col.g, col.b, 144/3.65), 6)
                if data.icon then
                    render.text(self.font, text_pos + 1, shadow_col, '', data.icon .. '  ' .. data.text)
                    render.text(self.font, text_pos, col, '', data.icon .. '  ' .. data.text)
                else
                    render.text(self.font, text_pos + 1, shadow_col, '', data.text)
                    render.text(self.font, text_pos, col, '', data.text)
                end
                text_pos.x = text_pos.x + ent.data.text_size.x
                if progress ~= nil then
                    local r = 10
                    local cpos = vector(text_pos.x + (r / 2) + 12, position.y + text_size.y / 2)
                    self:draw_progress_circle(cpos, self:style_a(200), 10, 0, progress, 5)
                end
            end
        end,
        layout_targets = function(self)
            local s = render.screen_size()
            local screen_center_y = s.y * 0.5
            local total_height = 0
            for i = 1, #self.draw_queue do
                local uid = self.draw_queue[i]
                local ent = self.active_map[uid]
                if ent then
                    local tsize = ent.data.text_size or render.measure_text(self.font, nil, ent.data.text)
                    total_height = total_height + (tsize.y + self.v_pad * 2) + self.spacing
                end
            end
            if total_height > 0 then
                total_height = total_height - self.spacing
            end
            local float_strength = 0.15
            local float_offset = total_height * float_strength
            local top_offset = screen_center_y - (total_height * 0.5) - float_offset
            local offset = top_offset
            for i = 1, #self.draw_queue do
                local uid = self.draw_queue[i]
                local ent = self.active_map[uid]
                if ent then
                    local tsize = ent.data.text_size or render.measure_text(self.font, nil, ent.data.text)
                    local height = tsize.y + self.v_pad * 2
                    local target_y = offset + height * 0.5
                    if not ent.current then ent.current = target_y end
                    ent.target = target_y
                    offset = offset + height + self.spacing
                end
            end
            for uid, ent in pairs(self.active_map) do
                local present = false
                for _, qid in ipairs(self.draw_queue) do
                    if qid == uid then
                        present = true
                        break
                    end
                end
                if not present and not ent.removing then
                    ent.removing = true
                    ent.target = (ent.current or screen_center_y) + 30
                    ent.velocity = (ent.velocity or 0) + 500
                end
            end
        end,
        prune_finished = function(self, removal_threshold)
            removal_threshold = removal_threshold or 1.0
            for uid, ent in pairs(self.active_map) do
                if ent.removing then
                    if ent.current ~= nil and math.abs(ent.current - (ent.target or 0)) < removal_threshold then
                        self.active_map[uid] = nil
                    end
                end
            end
        end,
        update_local_indicators = function(self, me)
            local col = self:style_a(200)
            local is_double_tap = self:get_value(self.ref.ragebot.dt) or self.ui.menu.aa.airlag:get()
            if self:get_value(self.ref.ragebot.on_shot) and not is_double_tap then self:add_indicator(col, ui.get_icon('code-compare') .. '  OSAA') end
            local is_fake_latency = ui.find('Miscellaneous', 'Main', 'Other', 'Fake Latency'):get() ~= 0
            if is_fake_latency then
                local netchannel = utils.net_channel()
                if netchannel ~= nil then
                    local wish_latency = self:get_value(ui.find('Miscellaneous', 'Main', 'Other', 'Fake Latency')) or 0
                    local latency = math.clamp(netchannel.latency[0] + netchannel.latency[1], 0.001, 0.2)
                    local avg_latency = math.clamp((wish_latency * 0.001) + netchannel.avg_latency[1], 0.001, 0.2)
                    local pct = math.clamp(latency / avg_latency, 0.0, 1.0)
                    local style = ui.get_style('Link Active')
                    local col = nil
                    if pct < 0.5 then
                        col = style:lerp(color(213, 84, 84, 255), pct * 2)
                    else
                        col = color(213, 84, 84, 255):lerp(style, (pct - 0.5) * 2)
                    end
                    self:add_indicator(col, ui.get_icon('signal-stream') .. '  PING')
                end
            end
            if is_double_tap then
                local dt_text = 'DT'
                local dt_icon
                local dt_col
                local style = ui.get_style('Link Active')
                if rage.exploit:get() == 1 then
                    dt_icon = ui.get_icon('circle-nodes')
                    dt_col = style
                else
                    dt_icon = ui.get_icon('wave-triangle')
                    dt_col = color(213, 84, 84, 255)
                end
                self:add_indicator_ex({
                    text = dt_text,
                    color = dt_col,
                    icon = dt_icon
                })
            end
            local inactive_col = color(160, 160, 160, 200)
            local current_exploit = self.globals.aa_vars.exploit

            if self.ui.menu.aa.teleporter:get() then
                local color = (current_exploit == 'teleporter') and self:style_a(200) or inactive_col
                self:add_indicator(color, ui.get_icon('transporter-3') .. '  TP') 
            end
            if self.ui.menu.aa.airlag:get() then
                local color = (current_exploit == 'airlag') and self:style_a(200) or inactive_col
                self:add_indicator(color, ui.get_icon('plane-up') .. '  AIR') 
            end
            if self:get_value(ui.find('Aimbot', 'Ragebot', 'Main', 'Enabled', 'Dormant Aimbot')) then self:add_indicator(col, ui.get_icon('eye-slash') .. '  DA') end
            if (self:get_value(self.ref.antiaim.fd) or self.ui.menu.aa.scoliosis:get()) and not self.ui.menu.aa.airlag:get() then self:add_indicator(col, ui.get_icon('couch') .. '  DUCK') end
            if self:get_value(ui.find('Aimbot', 'Ragebot', 'Safety', 'Safe Points')) == 'Force' then self:add_indicator(col, ui.get_icon('shield') .. '  SAFE') end
            if self:get_value(ui.find('Aimbot', 'Ragebot', 'Safety', 'Body Aim')) == 'Force' then self:add_indicator(col, ui.get_icon('street-view') .. '  BODY') end
            if self:is_bind_active(ui.find('Aimbot', 'Ragebot', 'Selection', 'Min. Damage')) then self:add_indicator(col, ui.get_icon('binary-slash') .. '  MD') end
            if self:is_bind_active(ui.find('Aimbot', 'Ragebot', 'Selection', 'Hit Chance')) then self:add_indicator(col, ui.get_icon('bolt') .. '  HC') end
            if self:get_value(self.ref.antiaim.fs) then self:add_indicator(col, ui.get_icon('code-pull-request') .. '  FS') end
            self:add_indicator(col, ui.get_icon('stars') .. '  ' .. self.hit_ratio .. '%')
        end,
        update = function(self)
            if not self.ui.menu.visual.skeet_ind:get() then return end
            local now = globals.realtime
            local dt = math.max(0.0001, now - self.last_realtime)
            self.last_realtime = now
            local interp_factor = math.min(1, dt * 16)
            self.draw_queue = {}
            local me = entity.get_local_player()
            if me == nil then
                for uid, ent in pairs(self.active_map) do
                    if not ent.removing then
                        ent.removing = true
                        ent.target = (ent.current or 0) + 30
                    end
                end
            else
                if me:is_alive() then self:update_local_indicators(me) end
                self:update_bomb_indicators(me)
                self:update_local_indicators(me)
            end
            for i = 1, #self.draw_queue do
                local uid = self.draw_queue[i]
                local ent = self.active_map[uid]
                if ent then
                    ent.data.text_size = render.measure_text(self.font, nil, ent.data.text)
                    ent.data.text_size.y = ent.data.text_size.y + self.v_pad * 2
                end
            end
            self:layout_targets()
            self:draw_all(interp_factor)
            self:prune_finished(0.5)
            self:clear_temp_queue()
        end,
        on_aim_ack = function(self, e)
            if not self.ui.menu.visual.skeet_ind:get() then return end
            local is_invalid_shot = (e.state == 'death' or e.state == 'player death' or e.state == 'unregistered shot')
            if is_invalid_shot then return end
            self.shots = self.shots + 1
            if e.state == nil then self.hit = self.hit + 1 end
            self.hit_ratio = math.floor(self.hit / math.max(1, self.shots) * 100)
        end,
        setup = function(self)
            self:init()
            self:update()
        end
    }
    :struct 'aspectratio' {
        cur_asp = cvar.r_aspectratio:float() or 0,
        last_asp = 0,
        prev_asp = false,
        target = 1,
        render = function(self)
            local val = self.ui.menu.visual.aspect_r.aspect_val:get()
            self.target = val / 100
            self.cur_asp = self.helpers:lerp(self.cur_asp, self.target, 0.05)
            self.cur_asp = math.max(0.1, math.min(2, self.cur_asp))
            cvar.r_aspectratio:float(self.cur_asp)
            self.last_asp = self.cur_asp
        end,
        shutdown = function(self)
            if self.prev_asp then
                cvar.r_aspectratio:float(0) 
                self.prev_asp = false
            end
        end,
        setup = function(self)
            if self.ui.menu.visual.aspect_r:get() then 
                self.prev_asp = true
                self:render()
            else 
                self:shutdown() 
            end
        end
    }
    :struct 'viewmodel' {
        x = cvar.viewmodel_offset_x,
        y = cvar.viewmodel_offset_y,
        z = cvar.viewmodel_offset_z,
        fov = cvar.viewmodel_fov,
        bobamt_vert = cvar.cl_bobamt_vert, -- 0.14
        bobamt_lat = cvar.cl_bobamt_lat, -- 0.33
        bob_lower_amt = cvar.cl_bob_lower_amt, -- 21
        bobup = cvar.cl_bobup, -- 0.5
        bobcycle = cvar.cl_bobcycle, -- 0.98
        cur_vm = {x = cvar.viewmodel_offset_x:float() or 2.5, y = cvar.viewmodel_offset_y:float() or 0, z = cvar.viewmodel_offset_z:float() or -1.5, fov = cvar.viewmodel_fov:float() or 68},
        render = function(self)
            local lp = entity.get_local_player()
            local zoomed = lp and lp.m_bIsScoped or false
            local target = {x = 2.5, y = 0, z = -1.5, fov = 68}
            target.x = (self.ui.menu.visual.viewmodel.vm_x:get() or 250) / 100
            target.y = (self.ui.menu.visual.viewmodel.vm_y:get() or 0) / 100
            target.z = (self.ui.menu.visual.viewmodel.vm_z:get() or -150) / 100
            target.fov = self.ui.menu.visual.viewmodel.vm_fov:get() or 68
            if self.ui.menu.visual.viewmodel.dis_bobbing:get() then
                self.bobamt_vert:float(0.001, true)
                self.bobamt_lat:float(0.001, true)
                self.bob_lower_amt:int(0, true)
                self.bobup:float(0, true)
                self.bobcycle:float(0, true)
                target.z = (self.helpers:get_state() == 'air' or self.helpers:get_state() == 'air crouch') and target.z + 0.78 or target.z
            else
                self.bobamt_vert:float(0.14, true)
                self.bobamt_lat:float(0.33, true)
                self.bob_lower_amt:int(21, true)
                self.bobup:float(0.5, true)
                self.bobcycle:float(0.98, true)
            end
            if zoomed and self.ui.menu.visual.viewmodel.cs2_zoom:get() then 
                target.x = -2
                target.y = -6.5
                target.z = -1.2
                target.fov = 90
            end
            self.cur_vm.x = self.helpers:lerp(self.cur_vm.x, target.x, 0.05)
            self.cur_vm.y = self.helpers:lerp(self.cur_vm.y, target.y, 0.05)
            self.cur_vm.z = self.helpers:lerp(self.cur_vm.z, target.z, self.ui.menu.visual.viewmodel.dis_bobbing:get() and 0.2 or 0.05)
            self.cur_vm.fov = self.helpers:lerp(self.cur_vm.fov, target.fov, 0.05)
            self.cur_vm.x = self.cur_vm.x
            self.cur_vm.y = self.cur_vm.y
            self.cur_vm.z = self.cur_vm.z
            self.cur_vm.fov = self.cur_vm.fov
            self.x:float(self.cur_vm.x, true)
            self.y:float(self.cur_vm.y, true)
            self.z:float(self.cur_vm.z, true)

            self.fov:float(self.cur_vm.fov, true)
        end,
        shutdown = function(self)
            if math.abs(self.cur_vm.x - 2.5) < 0.001 and
            math.abs(self.cur_vm.y - 0) < 0.001 and
            math.abs(self.cur_vm.z + 1.5) < 0.001 and
            math.abs(self.cur_vm.fov - 68) < 0.001 then
                return
            end
            self.x:float(2.5, true)
            self.y:float(0, true)
            self.z:float(-1.5, true)
            self.fov:float(68, true)
            self.bobamt_vert:float(0.14, true)
            self.bobamt_lat:float(0.33, true)
            self.bob_lower_amt:int(21, true)
            self.bobup:float(0.5, true)
            self.bobcycle:float(0.98, true)
            self.cur_vm = {x = 2.5, y = 0, z = -1.5, fov = 68}
        end,
        setup = function(self)
            if self.ui.menu.visual.viewmodel:get() then 
                self:render()
            else 
                self:shutdown() 
            end
        end
    }
    :struct 'vgui_col' {
        con_vis = utils.get_vfunc(
            'engine.dll', 'VEngineClient014', 11, 'bool(__thiscall*)(void*)'
        ),
        mat_list = {
            (materials.get_materials('vgui_white'))[1],
            materials.get('vgui/hud/800corner1'),
            materials.get('vgui/hud/800corner2'),
            materials.get('vgui/hud/800corner3'),
            materials.get('vgui/hud/800corner4')
        },
        set_col = function(self, col)
            if not col.r then return end
            local alpha = col.a / 255
            for i = 1, #self.mat_list do
                local material = self.mat_list[i]
                material:alpha_modulate(alpha)
                material:color_modulate(col)
            end
        end,
        shutdown = function(self)
            self:set_col(color(255, 255, 255, 255))
        end,
        render = function(self)
            self:set_col(self.ui.menu.visual.vcol:get())
        end,
        setup = function(self)
            if self.ui.menu.visual.vgui:get() then
                self:render()
            else
                self:shutdown()
            end
        end
    }
    :struct 'hands' {
        render = function(self)
            local lp = entity.get_local_player()
            if not lp then return end
            local wep = lp:get_player_weapon(false)
            if not wep then return end
            local wepname = wep:get_classname() or ''
            if wepname == 'CKnife' then cvar.cl_righthand:int(self.ui.menu.visual.k_hand:get()) return end
            cvar.cl_righthand:int(self.ui.menu.visual.w_hand:get())
        end,
        setup = function(self)
            self:render()
        end
    }
    :struct 'custom_scope' {
        scope_alpha = 0,
        render = function(self)
            local lp = entity.get_local_player()
            if not lp or not lp:is_alive() then return end
            self.ref.visuals.rem_zoom:override('Remove All')

            local target = lp.m_bIsScoped and 1 or 0
            local speed = 0.05
            self.scope_alpha = self.helpers:lerp(self.scope_alpha, target, speed)

            local s_x, s_y = render.screen_size().x, render.screen_size().y
            local cx, cy = s_x * 0.5, s_y * 0.5

            local thickness = 1
            local length = self.ui.menu.visual.cust_scope.length:get() or 12
            local col = self.ui.menu.visual.cust_scope.col:get()
            local invert = self.ui.menu.visual.cust_scope.invert:get()
            local dist = self.ui.menu.visual.cust_scope.dist:get()

            local function with_alpha(c, alpha_mul)
                local a = math.floor((c.a or 255) * alpha_mul + 0.5)
                a = math.max(0, math.min(255, a))
                return color(c.r or c[1] or 255, c.g or c[2] or 255, c.b or c[3] or 255, a)
            end

            local col_visible = with_alpha(col, self.scope_alpha)
            local col_transparent = color(0,0,0,0)

            local col_start_vert = invert and col_transparent or col_visible
            local col_end_vert   = invert and col_visible     or col_transparent

            local col_start_horz = invert and col_transparent or col_visible
            local col_end_horz   = invert and col_visible     or col_transparent

            local top_a = vector(cx + 0.5 - thickness * 0.5, cy - dist - 12)
            local top_b = vector(cx + 0.5 + thickness * 0.5, cy - dist - length)
            render.gradient(top_a , top_b, col_start_vert, col_start_vert, col_end_vert, col_end_vert)

            local bot_a = vector(cx + 0.5 - thickness * 0.5, cy + dist + 12)
            local bot_b = vector(cx + 0.5 + thickness * 0.5, cy + dist + length)
            render.gradient(bot_a, bot_b, col_start_vert, col_start_vert, col_end_vert, col_end_vert)

            local left_a = vector(cx - dist - length, cy + 0.5 - thickness * 0.5)
            local left_b = vector(cx - dist - 12,    cy + 0.5 + thickness * 0.5)
            if invert then
                render.gradient(left_a, left_b, col_end_horz, col_start_horz, col_end_horz, col_start_horz)
            else
                render.gradient(left_a, left_b, col_transparent, col_visible, col_transparent, col_visible)
            end

            local right_a = vector(cx + dist + 12,    cy + 0.5 - thickness * 0.5)
            local right_b = vector(cx + dist + length, cy + 0.5 + thickness * 0.5)
            if invert then
                render.gradient(right_a, right_b, col_start_horz, col_end_horz, col_start_horz, col_end_horz)
            else
                render.gradient(right_a, right_b, col_visible, col_transparent, col_visible, col_transparent)
            end
        end,
        shutdown = function(self)
            self.ref.visuals.rem_zoom:override()
        end,
        setup = function(self)
            if self.ui.menu.visual.cust_scope:get() then
                self:render()
            else
                self:shutdown()
            end
        end
        }
        :struct 'center_indicator' {
            font = render.load_font('Consolas', 10, 'ab'),
            slide_x, slide_gl_x, slide_gl_y = 0, 0, 0,
            prev_x, prev_y = 0, 0,
            slide_speed = 0.15,
            render = function(self)
                if not self.slide_x then self.slide_x = 0 return end
                if not self.slide_gl_x then self.slide_gl_x = 0 return end
                if not self.slide_gl_y then self.slide_gl_y = 0 return end
                local pos = vector(self.ui.menu.inv.ci_x:get(), self.ui.menu.inv.ci_y:get())
                local anim = gradient.text_animate('persistence ' .. ui.get_icon('star'), 1, { color(25,25,25), self.ui.menu.visual.ci.ci_col:get() })

                local size = render.measure_text(self.font, nil, anim)
                local tl = vector(pos.x - size.x * 0.5, pos.y - size.y * 0.5)

                local screen = render.screen_size()
                tl = self.helpers.drag_system:handle_custom('center_indicator', tl, size,
                    vector(screen.x * 0.5, screen.y * 0.5),
                    vector(screen.x * 0.5, screen.y * 0.5 + 80)
                )

                pos = vector(tl.x + size.x * 0.5, tl.y + size.y * 0.5)
                self.ui.menu.inv.ci_x:set(pos.x)
                self.ui.menu.inv.ci_y:set(pos.y)

                local dragging = (tl.x ~= self.prev_x) or (tl.y ~= self.prev_y)
                self.prev_x, self.prev_y = tl.x, tl.y

                local lp = entity.get_local_player()
                if not lp then return end

                local zoom = lp.m_bIsScoped
                local target_x = zoom and (pos.x + 20) or pos.x
                local glow_x   = zoom and (pos.x + 65) or pos.x
                local glow_y   = zoom and (pos.y - 10) or (pos.y - 15)

                if dragging then
                    self.slide_x, self.slide_gl_x, self.slide_gl_y = target_x, glow_x, glow_y
                else
                    self.slide_x    = self.slide_x    + (target_x - self.slide_x)    * self.slide_speed
                    self.slide_gl_x = self.slide_gl_x + (glow_x   - self.slide_gl_x) * self.slide_speed
                    self.slide_gl_y = self.slide_gl_y + (glow_y   - self.slide_gl_y) * self.slide_speed
                end

                render.shadow(vector(self.slide_gl_x - 50, self.slide_gl_y + 14), vector(self.slide_gl_x + 50, self.slide_gl_y + 16), self.ui.menu.visual.ci.glow:get(), 50, 0, 10)
                local gcol = self.ui.menu.visual.ci.glow:get()
                render.rect(
                    vector(self.slide_gl_x - 50, self.slide_gl_y + 14.5),
                    vector(self.slide_gl_x + 50, self.slide_gl_y + 16.5),
                    color(gcol.r, gcol.g, gcol.b, math.floor(gcol.a / 3.75)),
                    0
                )
                render.text(self.font, vector(self.slide_x, pos.y), color(255,255,255), zoom and 'l' or 'c', anim:get_animated_text())
                anim:animate()
                local y = pos.y + 10
                render.text(3, vector(self.slide_x, y), color(255,255,255), zoom and 'l' or 'c', self.helpers:get_state())
                y = y + 10

                local binds = {
                    ['Double Tap'] = 'rapid',
                    ['Hideshot'] = 'hs',
                    ['Min. Damage'] = 'md',
                    ['Body Aim'] = 'baim',
                    ['Fake Duck'] = 'fd',
                    ['Hit Chance'] = 'hc ovr',
                }

                for _, b in ipairs(ui.get_binds()) do
                    if b.active then
                        local lbl = binds[b.name]
                        if lbl then
                            render.text(3, vector(self.slide_x, y), color(255,255,255,255), zoom and 'l' or 'c', lbl)
                            y = y + 10
                        end
                    end
                end
            end,

            setup = function(self)
                if self.ui.menu.visual.ci:get() then
                    self:render()
                end
            end
        }
        :struct 'hitlogs'{
            font = render.load_font('Consolas', 10, 'ab'),
            font_bold = render.load_font('Consolas Bold', 10, 'ab'),
            hitgroups = {[0] = 'generic',
                [1] = 'head', [2] = 'chest', [3] = 'stomach',
                [4] = 'left arm', [5] = 'right arm',
                [6] = 'left leg', [7] = 'right leg',
                [8] = 'neck', [9] = 'generic', [10] = 'gear'
            },
            logs = {},
            shots = {},
            print_logs = function(segments)
                if not segments or type(segments) ~= 'table' then return end
                local final_string = ''
                local function rgba_hex(col)
                    return string.format('%02X%02X%02X%02X', col.r, col.g, col.b, col.a or 255)
                end
                local reset_hex = 'FFFFFFFF'
                for _, seg in ipairs(segments) do
                    if seg and seg.text then
                        local col = seg.color or color(255, 255, 255, 255)
                        local hex = rgba_hex(col)
                        final_string = final_string ..
                            '\a' .. hex .. seg.text ..
                            '\a' .. reset_hex
                    end
                end
                print_raw(final_string)
            end,
            on_aim_ack = function(self, e)
                if not e or not e.id then return end
                local s = self.shots[e.id] or {}
                local target = e.target
                local name = target and target:get_name() or s.name or '?'
                local bt = tonumber(e.backtrack) or s.backtrack or 0
                local hc = tonumber(e.hitchance) or s.exp_hitchance or 0
                local spread = tonumber(e.spread) or 0
                local aim_point = e.aim or s.aim
                local shoot_angle = s.angle
                local targeted_hitgroup_idx = tonumber(e.wanted_hitgroup)
                local targeted_hitgroup = self.hitgroups[targeted_hitgroup_idx] or '?'
                if e.state ~= nil then
                    local reason = tostring(e.state)
                    local log_data = {t = globals.realtime, kind = 'miss', name = name, reason = reason, bt = bt, hc = hc, spread = spread, aim = aim_point, angle = shoot_angle, targeted_hitgroup = targeted_hitgroup}
                    self:create_hl(log_data)
                    if self.ui.menu.visual.hitlogs.log_mode:get(2) then
                        local miss_col = self.ui.menu.visual.hitlogs.miss_color:get()
                        local white = color(255, 255, 255, 255)
                        local segments = {
                            {text = 'persistence > Missed ', color = miss_col},
                            {text = string.format('%s\'s %s due to %s (hc: %d%%, bt: %d, spread: %.2f)', name:gsub('\r?\n', ''), targeted_hitgroup, reason, hc, bt, spread), color = white}
                        }
                        self.print_logs(segments)
                    end
                else
                    local damage = tonumber(e.damage) or 0
                    local hitgroup_idx = tonumber(e.hitgroup) or 0
                    local hitgroup = self.hitgroups[hitgroup_idx] or '?'
                    local wanted_damage = tonumber(e.wanted_damage) or s.exp_damage or 0
                    local wanted_hitgroup_idx = tonumber(e.wanted_hitgroup) or targeted_hitgroup_idx or 0
                    local wanted_hitgroup = self.hitgroups[wanted_hitgroup_idx] or '?'
                    local hp_remaining = target and target.m_iHealth or 0
                    local log_data = {t = globals.realtime, kind = 'hit', name = name, damage = damage, hp_remaining = hp_remaining, hitgroup = hitgroup, bt = bt, hc = hc, spread = spread, wanted_damage = wanted_damage, wanted_hitgroup = wanted_hitgroup, aim = aim_point, angle = shoot_angle}
                    self:create_hl(log_data)
                    if self.ui.menu.visual.hitlogs.log_mode:get(2) then
                        local hit_col = self.ui.menu.visual.hitlogs.hit_color:get()
                        local white = color(255, 255, 255, 255)
                        local segments = {
                            {text = 'persistence > Hit ', color = hit_col},
                            {text = string.format('%s in %s for ', name, hitgroup), color = white},
                            {text = string.format('%d damage', damage), color = hit_col}
                        }
                        local extra_text = string.format(' (%d hp left, hc: %d%%, bt: %d, spread: %.2f)', hp_remaining, hc, bt, spread)
                        if wanted_damage ~= damage or wanted_hitgroup ~= hitgroup then
                            extra_text = string.format(' (expected %d in %s, %d hp left, hc: %d%%, bt: %d, spread: %.2f)', wanted_damage, wanted_hitgroup, hp_remaining, hc, bt, spread)
                        end
                        table.insert(segments, {text = extra_text, color = white})
                        self.print_logs(segments)
                    end
                end
                self.shots[e.id] = nil
            end,
            create_hl = function(self, data)
                table.insert(self.logs, 1, data)
                if #self.logs > 10 then
                    table.remove(self.logs)
                end
            end,
            preview = function(self)
                return {
                    {
                        kind = 'hit',
                        name = 'Enemy',
                        hitgroup = 'head',
                        damage = 100,
                        hp_remaining = 0,
                        hc = 95,
                        bt = 0,
                        spread = 0.05,
                        wanted_damage = 100,
                        wanted_hitgroup = 'head'
                    },
                    {
                        kind = 'miss',
                        name = 'Enemy',
                        targeted_hitgroup = 'chest',
                        reason = 'spread',
                        hc = 60,
                        bt = 12,
                        spread = 1.23
                    }
                }
            end,
            render = function(self)
                local pos_x = self.ui.menu.inv.logs_x:get()
                local pos_y = self.ui.menu.inv.logs_y:get()
                local is_hud_enabled = self.ui.menu.visual.hitlogs.log_mode:get(1)
                if not self.ui.menu.visual.hitlogs:get() or not is_hud_enabled then return end
                local now = globals.realtime
                local screen = render.screen_size()
                
                local design_cfg = {
                    font_main = self.font,
                    font_bold = self.font_bold,
                }
                local style = ui.get_style('Link Active')
                local text_col = color(255,255,255,255)
                
                local function draw_log_panel(L, x, y, alpha, text_parts, accent_color)
                    local total_width = 20 + 12
                    local max_height = 0
                    local line_height = 0
                
                    for _, part in ipairs(text_parts) do
                        local sz = render.measure_text(part.font, nil, part.text)
                        total_width = total_width + sz.x
                        max_height = math.max(max_height, sz.y)
                        if line_height == 0 then line_height = sz.y end
                    end
                    local h_padding = 10
                    local v_padding = 5
                    local icon_size = 7
                    local icon_gap = 4
                    total_width = total_width + h_padding
                    local total_height = max_height + (v_padding * 2)
                    local a = math.floor(255 * alpha)
                    local p1 = vector(x, y)
                    local p2 = vector(x + total_width, y + total_height)
                
                    local bg_tint = color(accent_color.r, accent_color.g, accent_color.b, 20)
                
                    render.rect(p1, p2, color(style.r, style.g, style.b, math.max(0, 125)), 8)
                    render.blur(p1, p2, 0.7, a, 8)
                    render.rect_outline(p1, p2, color(style.r, style.g, style.b, a - 160), 1, 8)
                    render.shadow(p1, p2, color(style.r, style.g, style.b, a - 120), 60, 0, 8)
                    local circle_center_y = y + total_height / 2
                    local circle_center_x = x + h_padding
                    local circle_col = color(accent_color.r, accent_color.g, accent_color.b, a)
                    render.circle(vector(circle_center_x, circle_center_y), circle_col, icon_size / 2, 0, 1)
                    render.circle_outline(vector(circle_center_x, circle_center_y), color(22,22,22,140), (icon_size / 2) + 1, 0, 1, 2)
                    local text_pos_x = circle_center_x + icon_size / 2 + icon_gap
                    local base_text_color = color(text_col.r, text_col.g, text_col.b, math.floor(a * 0.9))
                    local secondary_text_color = color(text_col.r, text_col.g, text_col.b, math.floor(a * 0.7))
                    for _, part in ipairs(text_parts) do
                        local part_color
                        if part.color_type == 'accent' then
                            part_color = color(accent_color.r, accent_color.g, accent_color.b, a)
                        elseif part.color_type == 'secondary' then
                            part_color = secondary_text_color
                        else
                            part_color = base_text_color
                        end
                        render.text(part.font, vector(text_pos_x, y + v_padding), part_color, nil, part.text)
                        text_pos_x = text_pos_x + render.measure_text(part.font, nil, part.text).x
                    end
            
                    return total_height
                end
                
                local cfg = { max_logs = 5, life_seconds = 3, fade_in_time = 0.1, fade_out_time = 0.2, log_gap = 10 }
                while #self.logs > 0 and (now - self.logs[#self.logs].t) >= cfg.life_seconds do
                    table.remove(self.logs)
                end
                local menu_alpha = ui.get_alpha()
                local menu_open = menu_alpha > 0
                local logs_to_draw = self.logs
                local is_preview = false
                
                if #self.logs == 0 and menu_open then
                    is_preview = true
                    logs_to_draw = self:preview()
                end
                
                if #logs_to_draw == 0 then return end
                
                local log_infos = {}
                local max_total_width = 0
                for j = 1, #logs_to_draw do
                    local L = logs_to_draw[j]
                    local accent_color, text_parts
                    if L.kind == 'hit' then
                        accent_color = self.ui.menu.visual.hitlogs.hit_color:get()
                        local extra = string.format(' (%d hp left, hc: %d%%, bt: %d, spread: %.2f)', L.hp_remaining, L.hc, L.bt, L.spread)
                        if L.wanted_damage ~= L.damage or L.wanted_hitgroup ~= L.hitgroup then
                            extra = string.format(' (expected %d in %s, %d hp left, hc: %d%%, bt: %d, spread: %.2f)', L.wanted_damage, L.wanted_hitgroup, L.hp_remaining, L.hc, L.bt, L.spread)
                        end
                        text_parts = {
                            {font=design_cfg.font_main, text=' Hit '..L.name:gsub('\r?\n', '')..' in ', color_type='primary'},
                            {font=design_cfg.font_bold, text=L.hitgroup, color_type='accent'},
                            {font=design_cfg.font_main, text=' for ', color_type='primary'},
                            {font=design_cfg.font_bold, text=L.damage..' damage', color_type='accent'},
                            {font=design_cfg.font_main, text=extra, color_type='secondary'}
                        }
                    else
                        accent_color = self.ui.menu.visual.hitlogs.miss_color:get()
                        text_parts = {
                            {font=design_cfg.font_main, text=' Missed '..L.name:gsub('\r?\n', '')..'\'s ', color_type='primary'},
                            {font=design_cfg.font_bold, text=L.targeted_hitgroup, color_type='accent'},
                            {font=design_cfg.font_main, text=' due to ', color_type='primary'},
                            {font=design_cfg.font_bold, text=L.reason, color_type='accent'},
                            {font=design_cfg.font_main, text=string.format(' (hc: %d%%, bt: %d, spread: %.2f)', L.hc, L.bt, L.spread), color_type='secondary'}
                        }
                    end
                    local total_width = 20 + 12
                    local max_height = 0
                    for _, part in ipairs(text_parts) do
                        local sz = render.measure_text(part.font, nil, part.text)
                        total_width = total_width + sz.x
                        max_height = math.max(max_height, sz.y)
                    end
                    local h_padding = 10
                    local v_padding = 5
                    total_width = total_width + h_padding
                    local total_height = max_height + (v_padding * 2)
                    max_total_width = math.max(max_total_width, total_width)
                    log_infos[j] = {accent_color = accent_color, text_parts = text_parts, total_width = total_width, total_height = total_height, L = L}
                end
                
                local screen_center = screen.x / 2
                local align_progress = 0.5
                
                local num_to_show = math.min(cfg.max_logs, #logs_to_draw)
                local logs_drawn = 0
                local accumulated = 0
                local current_y = pos_y
                for i = 1, num_to_show do
                    local info = log_infos[i]
                    local L = info.L
                    local age = now - (L.t or 0)
                    
                    local should_draw = is_preview or (age < cfg.life_seconds)
                    if should_draw then
                        logs_drawn = logs_drawn + 1
                        local alpha
                        if is_preview then
                            alpha = menu_alpha
                        else
                            if age <= cfg.fade_in_time then
                                alpha = age / cfg.fade_in_time
                            elseif age >= cfg.life_seconds - cfg.fade_out_time then
                                alpha = math.max(0, (cfg.life_seconds - age) / cfg.fade_out_time)
                            else
                                alpha = 1.0
                            end
                        end
                        if alpha <= 0 then return end
                        
                        local slide_offset = 0
                        
                        local accent_color = info.accent_color
                        local text_parts = info.text_parts
                        local total_width = info.total_width
                        local total_height = info.total_height
                        local draw_x = pos_x - align_progress * total_width
                        local y = current_y - slide_offset
                        local pos = vector(draw_x, y)
                        local size = vector(total_width, total_height)
                        if i == 1 then
                            pos = self.helpers.drag_system:handle('hitlogs', pos, size)
                            local new_draw_x = pos.x
                            local new_pos_x = new_draw_x + align_progress * total_width
                            local new_y = pos.y + slide_offset + accumulated
                            self.ui.menu.inv.logs_x:set(new_pos_x)
                            self.ui.menu.inv.logs_y:set(new_y)
                            pos_x = new_pos_x
                            pos_y = new_y
                            draw_x = new_draw_x
                            pos.x = draw_x
                        end
                        local total_height_drawn = draw_log_panel(L, pos.x, pos.y, alpha, text_parts, accent_color)
                        accumulated = accumulated + total_height_drawn + cfg.log_gap
                        current_y = current_y + total_height_drawn + cfg.log_gap
                    end
                end
            end,
            on_aim_fire = function(e)
                if not e or not e.id then return end
                local target = e.target
                local name = target and target:get_name() or '?'
                self.shots[e.id] = {
                    name = name,
                    exp_damage = tonumber(e.damage) or 0,
                    exp_hitchance = tonumber(e.hitchance) or 0,
                    targeted_hitgroup = tonumber(e.hitgroup) or 0,
                    backtrack = tonumber(e.backtrack) or 0,
                    aim = e.aim,
                    angle = e.angle
                }
            end
        }
        :struct 'shaders' {
            
            max_val = 1,
            
            bloom_default, exposure_min_default, exposure_max_default,
            bloom_prev, exposure_prev, model_ambient_min_prev, wallcolor_prev,
            
            reset_bloom = function(self, tone_map_controller)
                if bloom_default == -1 then
                    tone_map_controller.m_bUseCustomBloomScale = 0
                    tone_map_controller.m_flCustomBloomScale = 0
                else
                    tone_map_controller.m_bUseCustomBloomScale = 1
                    tone_map_controller.m_flCustomBloomScale = bloom_default
                end
            end,
            
            reset_exposure = function(self, tone_map_controller)
                if exposure_min_default == -1 then
                    tone_map_controller.m_bUseCustomAutoExposureMin = 0
                    tone_map_controller.m_flCustomAutoExposureMin = 0
                else
                    tone_map_controller.m_bUseCustomAutoExposureMin = 1
                    tone_map_controller.m_flCustomAutoExposureMin = exposure_min_default
                end
                if exposure_max_default == -1 then
                    tone_map_controller.m_bUseCustomAutoExposureMax = 0
                    tone_map_controller.m_flCustomAutoExposureMax = 0
                else
                    tone_map_controller.m_bUseCustomAutoExposureMax = 1
                    tone_map_controller.m_flCustomAutoExposureMax = exposure_max_default
                end
            end,
            
            render = function(self)
                local bloom = self.ui.menu.visual.shaders.bloom
                local exposure = self.ui.menu.visual.shaders.exposure
                local model_brightness = self.ui.menu.visual.shaders.model_brightness
                if not globals.is_in_game then
                    bloom_default, exposure_min_default, exposure_max_default = nil, nil, nil
                end
                
                local model_ambient_min = model_brightness:get()
                if model_ambient_min > 0 or (model_ambient_min_prev ~= nil and model_ambient_min_prev > 0) then
                    if cvar.r_modelAmbientMin:float() ~= model_ambient_min * 0.05 then
                        cvar.r_modelAmbientMin:float(model_ambient_min * 0.05)
                    end
                end
                model_ambient_min_prev = model_ambient_min
                
                local bloom_val = bloom:get()
                local exposure_val = exposure:get()
                local needs_update = (bloom_val ~= bloom_prev) or (exposure_val ~= exposure_prev)
                if not needs_update then return end
                if bloom_val ~= -1 or exposure_val ~= -1 or bloom_prev ~= -1 or exposure_prev ~= -1 then
                    local tone_map_controllers = entity.get_entities('CEnvTonemapController')
                    for i=1, #tone_map_controllers do
                        local tone_map_controller = tone_map_controllers[i]
                        if bloom_val ~= -1 then
                            if bloom_default == nil then
                                if tone_map_controller.m_bUseCustomBloomScale == 1 then
                                    bloom_default = tone_map_controller.m_flCustomBloomScale
                                else
                                    bloom_default = -1
                                end
                            end
                            tone_map_controller.m_bUseCustomBloomScale = 1
                            tone_map_controller.m_flCustomBloomScale = bloom_val * 0.01
                        elseif bloom_prev ~= nil and bloom_prev ~= -1 and bloom_default ~= nil then
                            reset_bloom(tone_map_controller)
                        end
                        if exposure_val ~= -1 then
                            if exposure_min_default == nil then
                                if tone_map_controller.m_bUseCustomAutoExposureMin == 1 then
                                    exposure_min_default = tone_map_controller.m_flCustomAutoExposureMin
                                else
                                    exposure_min_default = -1
                                end
                                if tone_map_controller.m_bUseCustomAutoExposureMax == 1 then
                                    exposure_max_default = tone_map_controller.m_flCustomAutoExposureMax
                                else
                                    exposure_max_default = -1
                                end
                            end
                            tone_map_controller.m_bUseCustomAutoExposureMin = 1
                            tone_map_controller.m_bUseCustomAutoExposureMax = 1
                            tone_map_controller.m_flCustomAutoExposureMin = math.max(0.0000, exposure_val * 0.001)
                            tone_map_controller.m_flCustomAutoExposureMax = math.max(0.0000, exposure_val * 0.001)
                        elseif exposure_prev ~= nil and exposure_prev ~= -1 and exposure_min_default ~= nil then
                            reset_exposure(tone_map_controller)
                        end
                    end
                end
                bloom_prev = bloom_val
                exposure_prev = exposure_val
            end
        }
        :struct 'dynamic_lean' {
            lean = 0,
            smoothed_lateral = 0,
            createmove = function(self, cmd)
                local ang = render.camera_angles()
                if not self.ui.menu.visual.dynamic_cam:get() then
                    render.camera_angles(vector(ang.x, ang.y, 0))
                    return
                end
                local lp = entity.get_local_player()
                if not lp or not lp:is_alive() then return end
                
                local vel = lp.m_vecVelocity
                local yaw_rad = math.rad(ang.y)
                local right_x = -math.sin(yaw_rad)
                local right_y = math.cos(yaw_rad)
                local lateral_vel = vel.x * right_x + vel.y * right_y
                
                if math.abs(lateral_vel) < 12.5 then
                    lateral_vel = 0
                end
                
                local ft = globals.frametime
                self.smoothed_lateral = self.smoothed_lateral + (lateral_vel - self.smoothed_lateral) * 10 * ft
                
                local target_lean = -self.smoothed_lateral * 0.04
                
                local smoothing = 40 * ft
                
                self.lean = self.lean + (target_lean - self.lean) * smoothing
                
                self.lean = math.max(-15, math.min(15, self.lean))
                
                render.camera_angles(vector(ang.x, ang.y, self.lean))
            end,
            shutdown = function(self)
                local ang = render.camera_angles()
                render.camera_angles(vector(ang.x, ang.y, 0))
            end,
            setup = function(self)
                if self.ui.menu.visual.dynamic_cam:get() then
                    self:createmove()
                else
                    self:shutdown()
                end
            end
        }
        :struct 'clantag' {
            strings = {
                '', '~', '~0', '~p', '~p3', '~pe', '~pe7', '~per', '~per5', '~pers', '~pers1', '~persi', '~persi5', '~persis', '~persis1', '~persist', '~persist3', '~persiste', '~persiste4', '~persisten', '~persisten9', '~persistenc', '~persistenc3', '~persistence',
                '~persistence',
                '~persistenc', '~persisten', '~persiste', '~persist', '~persis', '~persi', '~pers', '~per', '~pe', '~p', '~', ''
            },
            index = 0,
            last_set_tag = nil,
            update = function(self)
                local enabled = self.ui.menu.misc.clantag:get()
                
                if not enabled then
                    if self.last_set_tag ~= '' then
                        common.set_clan_tag('')
                        self.last_set_tag = ''
                        self.index = 0
                    end
                    return
                end

                local new_index = math.floor(globals.tickcount / 21) % #self.strings
                local new_tag = self.strings[new_index + 1]

                if new_tag ~= self.last_set_tag then
                    common.set_clan_tag(new_tag)
                    self.last_set_tag = new_tag
                    self.index = new_index
                end
            end,
            shutdown = function(self)
                if self.last_set_tag ~= '' then
                    common.set_clan_tag('')
                    self.last_set_tag = ''
                end
            end,
            setup = function(self)
                self:update()
            end
        }
        :struct 'trashtalk' {
            killsay_phr = {
                'оформив тобі приниження 999x',
                'перетворив тебе на фріфраг',
                'апгрейднув твій нубік-статус',
                'твій хітбокс — це суцільний headshot zone',
                'ти апнув ранг: Лорд Мінусівський',
                'твій скілл ще в бета-тесті',
                'Owned ◣◢ 👑',
                'изи нуб',
                'ez нуб',
                'легка'
            },
            killsay = function(self)
                utils.console_exec('say ' .. self.killsay_phr[math.random(1, #self.killsay_phr)])
            end,
            on_player_death = function(self, e)
                if not self.ui.menu.misc.killsay:get() then return end
                local lp = entity.get_local_player()
                if not lp then return end
                
                if (e.attacker == nil) or (e.attacker == 0) then
                    return
                end
                
                if e.attacker == e.userid then
                    return
                end
                
                local attacker_ent = entity.get(e.attacker, true)
                if not attacker_ent then return end
                
                if attacker_ent:get_index() ~= lp:get_index() then
                    return
                end
                
                self:killsay()
            end
        }
        :struct 'nickname'{
            ZWSP = '\226\128\139', 
            invalid = string.char(0x80, 0xBF),
            mega_exploit = '\n' .. string.rep(string.char(0x80, 0xBF), 4),
            delay = 1,

            breaker_name =
                ('\n'):rep(80) ..
                ('W'):rep(800),

            bypass_state = 0,
            bypass_start_time = 0,
            original_name = nil,
            original_saved = false,

            breaker = function(self)
                if self.bypass_state == 2 then
                    common.set_name(self.breaker_name)
                end
            end,
            stealer = function(self)
                if self.bypass_state ~= 2 then return end

                local cur_time = common.get_unixtime()
                if cur_time % self.delay ~= 0 then return end

                local plyr = entity.get(utils.random_int(1, globals.max_players), false)
                if not plyr then return end

                local name = plyr:get_name()
                if not name then return end

                common.set_name(name .. self.ZWSP)
            end,
            shutdown = function(self)
                if self.bypass_state == 2 and self.original_saved and self.original_name then
                    common.set_name(self.original_name)
                end
            end,

            setup = function(self)
                if not globals.is_in_game then
                    self.original_name = nil
                    self.original_saved = false
                    self.bypass_state = 0
                    return
                end

                local lp = entity.get_local_player()
                if not lp then return end

                local mode = self.ui.menu.misc.nickgear.mode:get()
                local cur_time = common.get_unixtime()

                if mode == 1 then
                    self:shutdown()
                elseif mode == 3 then
                    self:breaker()
                elseif mode == 2 then
                    self:stealer()
                end

                if mode ~= 'Disabled' then
                    if self.bypass_state == 0 then
                        local lp_name = lp:get_name()
                        if lp_name and lp_name ~= '' and not self.original_saved then
                            self.original_name = lp_name
                            self.original_saved = true
                        end

                        common.set_name(self.mega_exploit)
                        self.bypass_state = 1
                        self.bypass_start_time = cur_time
                    end
                    if self.bypass_state == 1 and cur_time >= self.bypass_start_time + 2 then
                        common.set_name('\n')
                        self.bypass_state = 2
                    end
                end
            end,
        }
        :struct 'jumpscout'{
            strafer_state = true,

            w = 0x57,
            a = 0x41,
            s = 0x53,
            d = 0x44,

            wasd_pressed = function(self)
                return common.is_button_down(self.w)
                    or common.is_button_down(self.a)
                    or common.is_button_down(self.s)
                    or common.is_button_down(self.d)
            end,
            update = function(self)

                local lp = entity.get_local_player()
                if not lp or not lp:is_alive() then return end

                local vel = lp.m_vecVelocity
                local speed = vel:length2d()

                local state = self.helpers:get_state()

                if not self:wasd_pressed() then
                    if state ~= 'air' and state ~= 'air crouch' then 
                        self.strafer_state = false
                    else
                        self.strafer_state = self.strafer_state
                    end
                else
                    self.strafer_state = true
                end

                self.ref.misc.strafer:override(self.strafer_state)
            end,
            shutdown = function(self)
                self.ref.misc.strafer:override()
            end,
            setup = function(self)
                
                if self.ui.menu.misc.jumpscout:get() then
                    self:update()
                else
                    self:shutdown()
                end
            end
        }
        :struct 'fast_ladder'{
            createmove = function(self, cmd)
                local lp = entity.get_local_player()

                if not lp then return end

                local m_type = lp.m_MoveType
                if m_type ~= 9 then return end

                local angle = render.camera_angles()

                cmd.view_angles.y = math.floor(
                    0.5 + cmd.view_angles.y
                )

                cmd.view_angles.z = 0

                if cmd.forwardmove > 0 and angle.y < 45 then
                    cmd.view_angles.x = 89

                    cmd.in_moveright = 1
                    cmd.in_moveleft = 0
                    cmd.in_forward = 0
                    cmd.in_back = 1

                    if cmd.sidemove == 0 then
                        cmd.view_angles.y = cmd.view_angles.y + 90
                    end

                    if cmd.sidemove < 0 then
                        cmd.view_angles.y = cmd.view_angles.y + 150
                    end

                    if cmd.sidemove > 0 then
                        cmd.view_angles.y = cmd.view_angles.y + 30
                    end
                elseif cmd.forwardmove < 0 and angle.y < 45 then
                    cmd.view_angles.x = 89

                    cmd.in_moveleft = 1
                    cmd.in_moveright = 0
                    cmd.in_forward = 1
                    cmd.in_back = 0

                    if cmd.sidemove == 0 then
                        cmd.view_angles.y = cmd.view_angles.y + 90
                    end

                    if cmd.sidemove > 0 then
                        cmd.view_angles.y = cmd.view_angles.y + 150
                    end

                    if cmd.sidemove < 0 then
                        cmd.view_angles.y = cmd.view_angles.y + 30
                    end
                end
            end,

            setup = function(self, cmd)
                if self.ui.menu.misc.fastl:get() then
                    self:createmove(cmd)
                end
            end
        }
        :struct 'quick_edge_stop' {
            createmove = function(self, cmd)
                local lp = entity.get_local_player()
                if not lp then return end
                local sim = lp:simulate_movement() do sim:think(5) end
                if sim.velocity.z < 0 then 
                    cmd.block_movement = 2
                end
            end,
            setup = function(self, cmd)
                if self.ui.menu.misc.q_edge_stop:get() then
                    self:createmove(cmd)
                end
            end
        }
        :struct 'super_toss' {
            get_throw_velocity = function(self, weapon)
                local info = weapon:get_weapon_info()
                if not info then
                    return
                end
                local strength = weapon.m_flThrowStrength
                if not strength then
                    return
                end
                strength = strength * 0.7 + 0.3
                return math.clamp(info.throw_velocity * 0.9, 15, 750) * strength
            end,
            correct_angle = function(self, throw_vel, player_vel, ang, move_yaw)
                local lp = entity.get_local_player()
                if not lp then
                    return
                end
                local weapon = lp:get_player_weapon()
                if not weapon then
                    return
                end
                if move_yaw and (weapon.m_bPinPulled or weapon.m_fThrowTime <= 0) then
                    return
                end
                local wish_dir = vector():angles(vector(ang.x, ang.y))
                local vel_len = player_vel:length()
                local cos_theta = wish_dir:dot(-player_vel:normalized())
                local sqrt_part = math.sqrt(25 * cos_theta * cos_theta * vel_len * vel_len + 16 * throw_vel * throw_vel - 25 * vel_len * vel_len)
                local part = (sqrt_part - 5 * vel_len * cos_theta) * 0.25
                local vec = wish_dir * part - player_vel * 1.25
                local real_vel = vec * (1 / throw_vel)
                if real_vel.x ~= real_vel.x or real_vel.y ~= real_vel.y or real_vel.z ~= real_vel.z then
                    return
                end
                if real_vel.y == 0 and real_vel.x == 0 then
                    if real_vel.z <= 0 then
                        ang.x = 90
                    else
                        ang.x = 270
                    end
                else
                    local new_ang = real_vel:angles()
                    ang.x = new_ang.x
                    ang.y = new_ang.y
                end
            end,
            super_toss = function(self, cmd)
                local lp = entity.get_local_player()
                local weapon = lp:get_player_weapon()
                if not weapon then
                    return
                end
                local weapon_info = weapon:get_weapon_info()
                if not weapon_info or weapon_info.weapon_type ~= 9 then
                    return
                end
                local throw_time = weapon.m_fThrowTime or 0
                if throw_time == 0 then
                    return
                end
                local throw_tick = to_ticks(throw_time)
                local _, exp_ticks = rage.exploit:get(true)
                local diff = throw_tick - exp_ticks - lp.m_nTickBase
                if diff <= -1 and -to_ticks(1) < diff then
                    cmd.in_speed = true
                end
                local sim = lp:simulate_movement()
                sim:think()
                local next_vel = sim.velocity:clone()
                local throw_vel = self:get_throw_velocity(weapon)
                self:correct_angle(throw_vel, next_vel, cmd.view_angles, cmd.move_yaw)
            end,
            grenade_override_view = function(self, e)
                if not self.ui.menu.misc.super_toss:get() then return end
                local lp = entity.get_local_player()
                if not lp then
                    return
                end
                local weapon = lp:get_player_weapon()
                if not weapon then
                    return
                end
                local weapon_info = weapon:get_weapon_info()
                if not weapon_info or weapon_info.weapon_type ~= 9 then
                    return
                end
                local throw_vel = self:get_throw_velocity(weapon)
                self:correct_angle(throw_vel, e.velocity, e.angles, nil)
            end,
            setup = function(self, cmd)
                if self.ui.menu.misc.super_toss:get() then 
                    self:super_toss(cmd)
                end
            end
        }
        :struct 'avoid_collision' {
            createmove = function(self, cmd)
                local lp = entity.get_local_player()
                if not lp then return end

                if lp.m_MoveType ~= 2 then return end
                if bit.band(lp.m_fFlags, 1) == 1 then return end
                if cmd.in_duck or cmd.in_speed then return end

                local velocity = lp.m_vecVelocity
                local mins = lp.m_vecMins
                local maxs = lp.m_vecMaxs

                local yaw_ang = vector():angles(0, cmd.view_angles.y)
                local right_vec = yaw_ang:vectors()

                local forward_speed = 450
                if cmd.sidemove ~= 0 then forward_speed = cmd.forwardmove ~= 0 and cmd.forwardmove or 450 end

                local desired = vector(yaw_ang.x * forward_speed + right_vec.x * cmd.sidemove, yaw_ang.y * forward_speed + right_vec.y * cmd.sidemove)
                desired:normalize()

                local origin = lp:get_origin()
                origin.z = origin.z + 20

                local hull_max_z = 36
                velocity.z = 0
                maxs.z = hull_max_z
                local vel_norm = velocity:normalized()

                if vel_norm:dot(desired) <= 0 then return end

                local trace_end = origin + desired * 46
                local trace_mask = 33636363
                local tr = utils.trace_hull(origin, trace_end, mins, maxs, lp, trace_mask)

                if not tr:did_hit_world() then return end

                local normal = tr.plane.normal

                if math.abs(normal.z) >= 0.1 then return end
                if bit.band(tr.contents, 536870912) == 536870912 then return end
                if tr.entity:is_breakable() then return end

                if vel_norm:dot(normal) < -0.85 then
                    vel_norm = desired
                end

                local plane_vec = normal:vectors()
                if plane_vec:dot(vel_norm) < 0 then
                    plane_vec = plane_vec * -1
                end

                cmd.move_yaw = math.deg(math.atan2(plane_vec.y, plane_vec.x))
                cmd.forwardmove = 450
                cmd.sidemove = 0
            end,
            setup = function(self, cmd)
                if self.ui.menu.misc.avoid_col:get() then
                    self:createmove(cmd)
                end
            end
        }
        :struct 'no_fall_damage' {
            triggered = false,

            trace = function(self, pos, player, length)
                for rad = 0, math.pi * 2, math.pi * 2 / 32 do
                    local sin = math.sin(rad)
                    local cos = math.cos(rad)

                    local point_a = pos + vector(10 * cos, 10 * sin, 0)
                    local point_b = point_a - vector(0, 0, length)

                    local tr = utils.trace_line(point_a, point_b, player)
                    if tr.fraction ~= 1 then
                        return true
                    end
                end

                return false
            end,

            is_ground_soon = function(self, lp)
                local origin = lp:get_origin()
                local vel = lp.m_vecVelocity

                local next_origin = origin + vel * globals.tickinterval

                local next_vel_z =
                    vel.z - 800 * globals.tickinterval

                local depths = { 5, 15, 30, 60, 90 }

                for _, d in ipairs(depths) do
                    if self:trace(next_origin, lp, d) then
                        return true, next_vel_z
                    end
                end

                return false, next_vel_z
            end,

            createmove = function(self, cmd)
                local lp = entity.get_local_player()
                if not lp then return end

                local vel = lp.m_vecVelocity

                local ground_soon, next_vel_z = self:is_ground_soon(lp)

                local falling_fast = vel.z < -400 or next_vel_z < -400

                if ground_soon and falling_fast then
                    self.triggered = true
                else
                    self.triggered = false
                end

                if self.triggered then
                    cmd.in_duck = true
                end
            end,

            setup = function(self, cmd)
                if self.ui.menu.misc.no_fall:get() then
                    self:createmove(cmd)
                end
            end
        }
        :struct 'ebanat' {
            get_ball_pos = function(self)
                local target = 'props/de_dust/hr_dust/dust_soccerball/dust_soccer_ball001.mdl'

                local ball_pos, ball_ent

                entity.get_entities(nil, true, function(ent)
                    local model = ent:get_model_name()
                    if model and model == target then
                        ball_pos = ent:get_origin()
                        ball_ent = ent
                        return true
                    end
                end)

                return ball_pos, ball_ent
            end,
            esp_font = render.load_font('Consolas', 10, 'ao'),
            ind_font = render.load_font('Consolas', 8, 'ao'),
            render = function(self)
                local ball_pos, ball = self:get_ball_pos()
                if not ball_pos or not ball then return end
                local camera_pos = render.camera_position()
                local name_pos_3d = ball_pos + vector(0, 0, 20)
                local name_pos_2d = render.world_to_screen(name_pos_3d)
                if not name_pos_2d then return end
                local hittable_text = ball:is_visible() and 'HIT' or nil
                local text_name = 'pidor'
                render.text(self.esp_font, name_pos_2d, color(255, 255, 255, 255), 'c', text_name)
                local name_size = render.measure_text(self.esp_font, nil, text_name)
                if hittable_text then
                    local hit_offset_x = name_size.x / 2 + 4
                    local hit_pos_2d = vector(name_pos_2d.x + hit_offset_x, name_pos_2d.y, 0)
                    render.text(self.ind_font, hit_pos_2d, color(255, 255, 255, 255), nil, hittable_text)
                end
            end,
            createmove = function(self, cmd)
                if not self.ui.menu.misc.eblan_aim:get() then return end
                local ball_pos, ball = self:get_ball_pos()
                if not ball_pos or not ball then return end
                if not ball:is_visible() then return end
                local lp = entity.get_local_player()
                if not lp or not lp:is_alive() then return end
                local eye_pos = lp:get_eye_position()
                local target_pos = ball_pos
                local dir = target_pos - eye_pos
                dir:normalize()
                local pitch = -math.deg(math.asin(dir.z))
                local yaw = math.deg(math.atan2(dir.y, dir.x))
                cmd.view_angles = vector(pitch, yaw, 0)
            end,

            setup = function(self)
                if self.ui.menu.misc.eblan_esp:get() then
                    self:render()
                end
            end
        }
        :struct 'airlag' {
            last_state = false,
            reset = 0,
            createmove = function(self, cmd)
                self.reset = false
                self.ref.antiaim.fd:override(false)
                cmd.force_defensive = false
                self.ref.antiaim.fl_lim:override(17)
                self.ref.ragebot.dt:override(true)
                self.ref.ragebot.dt_im_tp:override(false)
                self.ref.ragebot.dt_fl:override(1)
                self.ref.antiaim.fl_variance:override(0)
                self.ref.antiaim.desync:override(false)
                self.ref.ragebot.on_shot:override(false)
                self.ref.ragebot.dt_lag:override('On Peek')
                local lp = entity.get_local_player()
                if not lp then return end
                if self.helpers:get_state() == 'air' or self.helpers:get_state() == 'air crouch' then
                    if globals.tickcount % 2 == 1 then
                        cvar.sv_maxusrcmdprocessticks:int(16)
                        self.ref.antiaim.fd:override(true)
                    else
                        cvar.sv_maxusrcmdprocessticks:int(19)
                        self.ref.antiaim.fd:override(false)
                        df_until_tick = globals.tickcount + 2
                    end
                end
            end,
            shutdown = function(self)
                if not self.reset then
                    self.ref.antiaim.fd:override()
                    self.ref.antiaim.fl_lim:override()
                    self.ref.ragebot.dt:override()
                    self.ref.ragebot.dt_im_tp:override()
                    self.ref.ragebot.dt_fl:override()
                    self.ref.antiaim.fl_variance:override()
                    self.ref.antiaim.desync:override()
                    self.ref.ragebot.on_shot:override()
                    self.ref.ragebot.dt_lag:override()
                    self.reset = true
                end
            end,
            setup = function(self, cmd)
                local current_state = self.ui.menu.aa.airlag:get()
                if current_state and not self.last_state then
                    self.globals.aa_vars.exploit = 'airlag'
                end
                if not current_state and self.last_state and self.globals.aa_vars.exploit == 'airlag' then
                    self.globals.aa_vars.exploit = nil
                end

                if current_state and self.globals.aa_vars.exploit == nil then
                    self.globals.aa_vars.exploit = 'airlag'
                end

                self.last_state = current_state

                if current_state and self.globals.aa_vars.exploit == 'airlag' then
                    self:createmove(cmd)
                else
                    self:shutdown()
                end
            end
        }
        :struct 'anti_skeet' {
            sv_maxusrcmd = cvar.sv_maxusrcmdprocessticks,
            state, tickbase = false, 0,
            reset = 0,
            last_state = false,
            createmove = function(self, cmd)
                self.reset = false
                if not entity.get_local_player() then return end
                self.ref.ragebot.dt_lag:override("On Peek")
                self.ref.ragebot.dt:override(true)
                self.ref.ragebot.dt_im_tp:override(false)
                self.ref.ragebot.dt_fl:override(1)
                self.ref.antiaim.fl_variance:override(0)
                self.ref.antiaim.desync:override(false)
                self.sv_maxusrcmd:int(19)
                if self.helpers:get_state() == "air" or self.helpers:get_state() == "air crouch" then
                    if globals.tickcount % 4 == 0 then
                        rage.exploit:allow_defensive(false)
                        rage.exploit:force_teleport()
                        rage.exploit:allow_charge(false)
                        cmd.force_defensive = false
                        state = false
                    else
                        rage.exploit:allow_defensive(true)
                        rage.exploit:allow_charge(true)
                        rage.exploit:force_charge()
                        cmd.force_defensive = true
                        state = true
                        tickbase = globals.tickcount + 2
                    end
                end
            end,
            shutdown = function(self)
                if not self.reset then
                    self.ref.ragebot.dt_lag:override()
                    self.ref.ragebot.dt:override()
                    self.ref.ragebot.dt_im_tp:override()
                    self.ref.ragebot.dt_fl:override()
                    self.ref.antiaim.fl_variance:override()
                    self.ref.antiaim.desync:override()
                    self.reset = true
                end
            end,
            setup = function(self, cmd)
                local current_state = self.ui.menu.aa.teleporter:get()

                if current_state and not self.last_state then
                    self.globals.aa_vars.exploit = 'teleporter'
                end

                if not current_state and self.last_state and self.globals.aa_vars.exploit == 'teleporter' then
                    self.globals.aa_vars.exploit = nil
                end

                if current_state and self.globals.aa_vars.exploit == nil then
                    self.globals.aa_vars.exploit = 'teleporter'
                end

                self.last_state = current_state

                if current_state and self.globals.aa_vars.exploit == 'teleporter' then
                    self:createmove(cmd)
                else
                    self:shutdown()
                end
            end
        }
        :struct 'flicks' {
            reset = false,
            createmove = function(self, cmd)
                self.globals.aa_vars.flicks = true
                self.reset = false
                self.ref.antiaim.aa_tog:override(true)
                rage.antiaim:inverter(false)
                self.ref.antiaim.offset:override(5)
                self.ref.antiaim.y_modif:override("Offset")
                ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset"):override(1)
                self.ref.antiaim.desync:override(true)
                self.ref.antiaim.des_opts:override({})
                self.ref.antiaim.l_lim:override(42)
                self.ref.antiaim.r_lim:override(42)
                self.ref.antiaim.fs:override(false)
                self.ref.antiaim.hidden:override(true)
                rage.antiaim:override_hidden_pitch(89)
                rage.antiaim:override_hidden_yaw_offset(-70)
                self.ref.ragebot.dt_lag:override("Always On")
                self.ref.ragebot.os_opts:override("Break LC")
                cmd.force_defensive = cmd.command_number % 7 == 0
            end,
            shutdown = function(self)
                self.globals.aa_vars.flicks = false
                if not self.reset then
                    self.ref.antiaim.aa_tog:override()
                    self.ref.antiaim.offset:override()
                    self.ref.antiaim.y_modif:override()
                    ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset"):override()
                    self.ref.antiaim.desync:override()
                    self.ref.antiaim.des_opts:override()
                    self.ref.antiaim.l_lim:override()
                    self.ref.antiaim.r_lim:override()
                    self.ref.antiaim.fs:override()
                    self.ref.antiaim.hidden:override()
                    self.ref.ragebot.dt_lag:override()
                    self.ref.ragebot.os_opts:override()
                    self.reset = true
                end
            end,
            setup = function(self, cmd)
                if self.ui.menu.aa.flicks:get() then
                    self:createmove(cmd)
                else
                    self:shutdown()
                end
            end
        }
        :struct 'scolios' {
            cvar = cvar.sv_maxusrcmdprocessticks,
            reset = false,
            createmove = function(self, cmd)
                self.ref.antiaim.desync:override(false)
                self.reset = false
                self.cvar:int(0)
                self.ref.antiaim.offset:override(0)
                self.ref.antiaim.y_base:override("At Target")
                self.ref.antiaim.fl:override(false)
                self.ref.ragebot.on_shot:override(false)
                self.ref.ragebot.dt:override(false)
                self.ref.antiaim.y_modif:override("Disabled")
                if cmd.choked_commands < 16 then
                    cmd.send_packet = false
                end 
                if cmd.choked_commands > 6 and cmd.choked_commands < 14 or cmd.choked_commands == 2 then
                    self.ref.antiaim.fd:override(true)
                else
                    self.ref.antiaim.fd:override(false)
                end
            end,
            shutdown = function(self, cmd)
                if not self.reset then
                    cmd.send_packet = true
                    self.ref.antiaim.offset:override()
                    self.ref.antiaim.y_base:override()
                    self.ref.antiaim.fl:override()
                    self.ref.ragebot.on_shot:override()
                    self.ref.ragebot.dt:override()
                    self.ref.antiaim.desync:override()
                    self.ref.antiaim.y_modif:override()
                    self.ref.antiaim.fd:override()
                    self.ref.antiaim.l_lim:override()
                    self.ref.antiaim.r_lim:override()
                    self.reset = true
                end
            end,
            setup = function(self, cmd)
                if self.ui.menu.aa.scoliosis:get() then
                    self:createmove(cmd)
                else
                    self:shutdown(cmd)
                end
            end
        }
        :struct 'stat_track' {
            session_start = globals.realtime,
            saved_total_minutes = 0,
            last_saved_minute = nil,
            last_display = "",
            okak_tick = 0,
            setup_done = false,
            hurt_tick = 0,

            closest_point_tracer = function(self, origin, endpos, player_pos)
                local ax, ay, az = origin.x, origin.y, origin.z
                local bx, by, bz = endpos.x, endpos.y, endpos.z
                local px, py, pz = player_pos.x, player_pos.y, player_pos.z
                
                local ab_x, ab_y, ab_z = bx - ax, by - ay, bz - az
                local ap_x, ap_y, ap_z = px - ax, py - ay, pz - az
                
                local ab2 = ab_x*ab_x + ab_y*ab_y + ab_z*ab_z
                if ab2 == 0 then ab2 = 1 end
                
                local t = (ap_x*ab_x + ap_y*ab_y + ap_z*ab_z) / ab2
                if t < 0 then t = 0 elseif t > 1 then t = 1 end
                
                local cx = ax + ab_x * t
                local cy = ay + ab_y * t
                local cz = az + ab_z * t
                
                local dx = px - cx
                local dy = py - cy
                local dz = pz - cz
                
                local distance = math.sqrt(dx*dx + dy*dy + dz*dz)
                return distance, t, { x = cx, y = cy, z = cz }
            end,

            on_player_hurt = function(self, e)
                local lp = entity.get_local_player()
                if not lp then return end
                
                local damaged = entity.get(e.userid, true)
                local attacker = entity.get(e.attacker, true)
                
                if not damaged or not attacker then return end
                
                if damaged == lp and damaged ~= attacker then
                    self.hurt_tick = globals.tickcount
                end
            end,

            on_player_death = function(self, e)
                local stats = db_manager:get_stats()
                local lp = entity.get_local_player()
                if not lp then return end
                local attacker = entity.get(e.attacker, true)
                local victim = entity.get(e.userid, true)
                if not attacker or not victim then return end
                if attacker == lp and victim ~= lp and not victim:is_bot() then
                    stats.kills = (stats.kills or 0) + 1
                    self.ui.stats = stats
                    self.ui.menu.home.stats.kills:name('\v\f<skull>  \rKills: \v' .. stats.kills)
                    db_manager:save_stats(stats)
                end
            end,

            on_bullet_impact = function(self, e)
                local impact_tick = globals.tickcount
                if self.okak_tick == impact_tick then return end

                local lp = entity.get_local_player()
                if not lp or not lp:is_alive() then return end

                local shooter = entity.get(e.userid, true)
                if not shooter or shooter:is_dormant() or not shooter:is_enemy() or shooter:is_bot() then return end

                local lp_eye = lp:get_eye_position()
                local shooter_eye = shooter:get_eye_position()
                if not lp_eye or not shooter_eye then return end

                local impact = { x = e.x, y = e.y, z = e.z }

                local dist = self:closest_point_tracer(shooter_eye, impact, lp_eye)
                if type(dist) == "table" then dist = dist[1] end

                if dist < 64 then
                    local hurt_tick = self.hurt_tick

                    utils.execute_after(0.01, function()
                        if impact_tick - self.hurt_tick ~= 0 then
                            local stats = db_manager:get_stats()
                            stats.avoided = (stats.avoided or 0) + 1

                            self.ui.stats = stats

                            if self.ui and self.ui.menu and self.ui.menu.home then
                                self.ui.menu.home.stats.avoided:name(
                                    "\v" .. ui.get_icon("sparks") ..
                                    " \rAvoided Shots:\v " .. stats.avoided
                                )
                            end

                            db_manager:save_stats(stats)
                        end
                    end)

                    self.okak_tick = impact_tick
                end
            end,

            get_session_minutes = function(self)
                return math.floor((globals.realtime - self.session_start) / 60)
            end,

            get_total_minutes = function(self)
                return self.saved_total_minutes + self:get_session_minutes()
            end,

            get_formatted_time = function(self)
                local total = self:get_total_minutes()
                local hours = math.floor(total / 60)
                local minutes = total % 60
                return string.format("%dh %dm", hours, minutes)
            end,

            update_playtime = function(self)
                local current_minute = self:get_session_minutes()

                if self.last_saved_minute == nil or current_minute > self.last_saved_minute then
                    local minutes_to_add = current_minute - (self.last_saved_minute or 0)
                    self.saved_total_minutes = self.saved_total_minutes + minutes_to_add
                    
                    local stats = db_manager:get_stats()
                    stats.time = self.saved_total_minutes
                    db_manager:save_stats(stats)
                    
                    self.last_saved_minute = current_minute
                end

                local display = self:get_formatted_time()
                if display ~= self.last_display then
                    self.last_display = display
                    if self.ui and self.ui.menu and self.ui.menu.home and self.ui.menu.home.stats then
                        self.ui.menu.home.stats.time:name("\v\f<timer>   \rTime Spent:\v " .. display)
                    end
                end
                
                db_manager:auto_save()
            end,

            setup = function(self)
                if self.setup_done then return end
                self.setup_done = true
                
                local stats = db_manager:get_stats()
                
                if stats.time then
                    self.saved_total_minutes = stats.time
                end
                
                stats.loads = (stats.loads or 0) + 1
                if self.ui and self.ui.menu and self.ui.menu.home and self.ui.menu.home.stats then
                    self.ui.menu.home.stats.loads:name("\v\f<loader>  \rLoads:\v " .. stats.loads)
                end
                
                local current_day = math.floor(common.get_unixtime() / 86400)
                if (stats.last_day or 0) == 0 then
                    stats.streak = 1
                elseif current_day - stats.last_day == 1 then
                    stats.streak = (stats.streak or 0) + 1
                elseif current_day - stats.last_day > 1 then
                    stats.streak = 1
                end
                
                if self.ui and self.ui.menu and self.ui.menu.home and self.ui.menu.home.stats then
                    self.ui.menu.home.stats.streak:name("\v\f<fire>   \rStreak:\v " .. stats.streak)
                end
                
                stats.last_day = current_day
                
                db_manager:save_stats(stats)
                
                self.ui.stats = stats

                events.player_hurt:set(function(e) self:on_player_hurt(e) end)
                events.bullet_impact:set(function(e) self:on_bullet_impact(e) end)
                events.player_death:set(function(e) self:on_player_death(e) end)
            end
        }
        
for _, eid in ipairs({
    {
        'load', function()
            ctx.ui.stats = db_manager:get_stats()
            ctx.ui:exec()
            ctx.dpi_fix:update_button_texts()
            ctx.stat_track:setup()
            ctx.config_loader = {
                stable_frames = 0,
                load_attempted = false
            }
        end
    },
    {
        'shutdown', function()
            local config = db_manager:get_config()
            
            if config.last_cfg then
                
                local current_config = pui.save()
                if current_config and type(current_config) == 'table' then
                    config.last_cfg = current_config
                    db_manager:save_config(config)
                end
            end
            
            local stats = db_manager:get_stats()
            db_manager:save_stats(stats)
        end
    },
    {
        'post_update_clientside_animation', function()
        end
    },
    {
        'grenade_override_view', function(e)
            ctx.super_toss:grenade_override_view(e)
        end
    },
    {
        'player_death', function(e)
            ctx.trashtalk:on_player_death(e)
            local lp = entity.get_local_player()
            if not lp then return end
            
            local victim = entity.get(e.userid, true)
            local attacker = entity.get(e.attacker, true)
            
            if not victim or not attacker then return end
            
            if victim ~= lp and victim ~= attacker and attacker == lp then
                ctx.dynamic_island:push_notification('kill_' .. victim:get_name() , 'Kill', victim:get_name() or '', 'skull', 2)
            end
        end
    },
    {
        'aim_ack', function(e)
            ctx.side_indicators:on_aim_ack(e)
            ctx.hitlogs:on_aim_ack(e)
        end
    },
    {
        'aim_fire', function(e)
            ctx.hitlogs:on_aim_fire(e)
        end
    },
    {
        'level_init', function()
        end
    },
    {
        'mouse_input', function()
            ctx.watermark:setup()
            ctx.hitlogs:render()
            ctx.netgraph:setup()
            ctx.center_indicator:setup()
            if ctx.drag_system.block_input == true then return false else return true end
        end
    },
    {
        'render', function()
            
            if not ctx.config_loader.load_attempted then
                ctx.config_loader.stable_frames = ctx.config_loader.stable_frames + 1
            end
            
            if ctx.config_loader.stable_frames >= 5 and not ctx.config_loader.load_attempted then
                ctx.config_loader.load_attempted = true
                
                local config = db_manager:get_config()
                if config.last_cfg then
                    
                    local config_data = config.last_cfg
                    
                    if type(config_data) == 'table' then
                        local success = pcall(function()
                            pui.load(config_data)
                        end)
                        
                        if not success then
                            config.last_cfg = nil
                            db_manager:save_config(config)
                        end
                    else
                        config.last_cfg = nil
                        db_manager:save_config(config)
                    end
                end
            end
            if ui.get_alpha() > 0 then
                ctx.drag_system:render()
                ctx.ui:render()
                ctx.dpi_fix:render()
            end
            ctx.watermark:setup()
            ctx.netgraph:setup()
            ctx.side_indicators:setup()
            ctx.aspectratio:setup()
            ctx.viewmodel:setup()
            ctx.vgui_col:setup()
            ctx.hands:setup()
            ctx.custom_scope:setup()
            ctx.center_indicator:setup()
            ctx.hitlogs:render()
            ctx.shaders:render()
            ctx.ebanat:setup()
            ctx.dynamic_island:setup()
            ctx.stat_track:update_playtime()
            if not initialized then
                alloc_decoy()
                initialized = true
            end
        end
    },
    {
        'bullet_impact', function(e)
        end
    },
    {
        'createmove', function(cmd)
            cvar.sv_maxusrcmdprocessticks:int(16)
            if not ctx.globals.aa_vars.flicks then
                ctx.antiaim:setup(cmd)
            end
            if ctx.drag_system.block_input then cmd.in_attack = false; cmd.in_attack2 = false end
            if ctx.ui.menu.visual.dis_radar:get() then utils.console_exec('cl_drawhud_force_radar -1') else utils.console_exec('cl_drawhud_force_radar 0') end
            ctx.dynamic_lean:setup(cmd)
            cvar.mp_teammates_are_enemies:int(ctx.ui.menu.misc.teammates_aimbot:get() and 1 or 0)
            ctx.fast_ladder:setup(cmd)
            ctx.quick_edge_stop:setup(cmd)
            ctx.super_toss:setup(cmd)
            ctx.avoid_collision:setup(cmd)
            ctx.no_fall_damage:setup(cmd)
            ctx.ebanat:createmove(cmd)
            ctx.airlag:setup(cmd)
            ctx.anti_skeet:setup(cmd)
            ctx.flicks:setup(cmd)   
            ctx.scolios:setup(cmd)
            ctx.jumpscout:setup()
        end
    },
    {
        'net_update_end', function()
            ctx.clantag:setup()
            ctx.nickname:setup()
        end
    },
    {
        'round_freeze_end', function()
            if not ctx.ui.menu.visual.dis_radar:get() then return end
            cvar.mp_playercashawards:int(0)
            cvar.mp_teamcashawards:int(0)
        end
    },
    {
        'round_end', function()
            if not ctx.ui.menu.visual.dis_radar:get() then return end
            cvar.mp_playercashawards:int(1)
            cvar.mp_teamcashawards:int(1)
        end
    }
}) do
    if eid[1] == 'load' then
        eid[2]()
    else
        events[eid[1]]:set(eid[2])
    end
end
