local LFPFix = {}
_G.LFPFix = LFPFix

function LFPFix.OnEvent(event)
	if GetFindPartyState() then
		SetFindPartyState(false)
		DEFAULT_CHAT_FRAME:AddMessage('[LFPFix] turned off \'Looking for Party\' option')
	end
end

function LFPFix.OnLoad()
	LFPFix_Frame:RegisterEvent('VARIABLES_LOADED')
	LFPFix_Frame:RegisterEvent('ZONE_CHANGED')
end