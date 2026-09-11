--------------------------------------------------------------------------------
DOCUMENTACION COMPLETA DE GAMESENSE LUA API
--------------------------------------------------------------------------------

Esta es la documentacion completa de la API de Lua de gamesense,
fusionada en un unico archivo de texto plano a partir de 328 archivos .md.
El contenido original de cada archivo se conserva VERBATIM.

================================================================================
TABLA DE CONTENIDOS (INDICE)
================================================================================

   1. [ROOT] README.md
   2. [ROOT] SUMMARY.md
   3. [GLOBALS] globals/README.md
   4. [GLOBALS] globals/bit.md
   5. [GLOBALS] globals/client.md
   6. [GLOBALS] globals/config.md
   7. [GLOBALS] globals/cvar.md
   8. [GLOBALS] globals/database.md
   9. [GLOBALS] globals/entity.md
  10. [GLOBALS] globals/globals.md
  11. [GLOBALS] globals/json.md
  12. [GLOBALS] globals/materialsystem.md
  13. [GLOBALS] globals/panorama.md
  14. [GLOBALS] globals/plist.md
  15. [GLOBALS] globals/renderer.md
  16. [GLOBALS] globals/ui.md
  17. [GLOBALS] globals/vector.md
  18. [DEVELOPMENT] development/README.md
  19. [DEVELOPMENT] development/compiling.md
  20. [DEVELOPMENT] development/editors/README.md
  21. [DEVELOPMENT] development/editors/atom.md
  22. [DEVELOPMENT] development/editors/sublime.md
  23. [DEVELOPMENT] development/editors/vscode.md
  24. [DEVELOPMENT] development/events.md
  25. [DEVELOPMENT] development/examples/README.md
  26. [DEVELOPMENT] development/examples/auto_buy.md
  27. [DEVELOPMENT] development/examples/create_interface.md
  28. [DEVELOPMENT] development/examples/head_dot.md
  29. [DEVELOPMENT] development/examples/talk_shit.md
  30. [DEVELOPMENT] development/examples/watermark.md
  31. [DEVELOPMENT] development/getting_started.md
  32. [DEVELOPMENT] development/snippets/README.md
  33. [NETPROPS] netprops/CAI_BaseNPC.md
  34. [NETPROPS] netprops/CAK47.md
  35. [NETPROPS] netprops/CBRC4Target.md
  36. [NETPROPS] netprops/CBaseAnimating.md
  37. [NETPROPS] netprops/CBaseAnimatingOverlay.md
  38. [NETPROPS] netprops/CBaseAttributableItem.md
  39. [NETPROPS] netprops/CBaseButton.md
  40. [NETPROPS] netprops/CBaseCSGrenade.md
  41. [NETPROPS] netprops/CBaseCSGrenadeProjectile.md
  42. [NETPROPS] netprops/CBaseCombatCharacter.md
  43. [NETPROPS] netprops/CBaseCombatWeapon.md
  44. [NETPROPS] netprops/CBaseDoor.md
  45. [NETPROPS] netprops/CBaseEntity.md
  46. [NETPROPS] netprops/CBaseFlex.md
  47. [NETPROPS] netprops/CBaseGrenade.md
  48. [NETPROPS] netprops/CBaseParticleEntity.md
  49. [NETPROPS] netprops/CBasePlayer.md
  50. [NETPROPS] netprops/CBasePropDoor.md
  51. [NETPROPS] netprops/CBaseTeamObjectiveResource.md
  52. [NETPROPS] netprops/CBaseTempEntity.md
  53. [NETPROPS] netprops/CBaseToggle.md
  54. [NETPROPS] netprops/CBaseTrigger.md
  55. [NETPROPS] netprops/CBaseVPhysicsTrigger.md
  56. [NETPROPS] netprops/CBaseViewModel.md
  57. [NETPROPS] netprops/CBaseWeaponWorldModel.md
  58. [NETPROPS] netprops/CBeam.md
  59. [NETPROPS] netprops/CBeamSpotlight.md
  60. [NETPROPS] netprops/CBoneFollower.md
  61. [NETPROPS] netprops/CBreachCharge.md
  62. [NETPROPS] netprops/CBreachChargeProjectile.md
  63. [NETPROPS] netprops/CBreakableProp.md
  64. [NETPROPS] netprops/CBreakableSurface.md
  65. [NETPROPS] netprops/CBumpMine.md
  66. [NETPROPS] netprops/CBumpMineProjectile.md
  67. [NETPROPS] netprops/CC4.md
  68. [NETPROPS] netprops/CCSGameRulesProxy.md
  69. [NETPROPS] netprops/CCSPlayer.md
  70. [NETPROPS] netprops/CCSPlayerResource.md
  71. [NETPROPS] netprops/CCSRagdoll.md
  72. [NETPROPS] netprops/CCSTeam.md
  73. [NETPROPS] netprops/CCascadeLight.md
  74. [NETPROPS] netprops/CChicken.md
  75. [NETPROPS] netprops/CColorCorrection.md
  76. [NETPROPS] netprops/CColorCorrectionVolume.md
  77. [NETPROPS] netprops/CDEagle.md
  78. [NETPROPS] netprops/CDangerZone.md
  79. [NETPROPS] netprops/CDangerZoneController.md
  80. [NETPROPS] netprops/CDecoyGrenade.md
  81. [NETPROPS] netprops/CDecoyProjectile.md
  82. [NETPROPS] netprops/CDrone.md
  83. [NETPROPS] netprops/CDronegun.md
  84. [NETPROPS] netprops/CDynamicLight.md
  85. [NETPROPS] netprops/CDynamicProp.md
  86. [NETPROPS] netprops/CEconEntity.md
  87. [NETPROPS] netprops/CEconWearable.md
  88. [NETPROPS] netprops/CEmbers.md
  89. [NETPROPS] netprops/CEntityDissolve.md
  90. [NETPROPS] netprops/CEntityFlame.md
  91. [NETPROPS] netprops/CEntityFreezing.md
  92. [NETPROPS] netprops/CEntityParticleTrail.md
  93. [NETPROPS] netprops/CEnvAmbientLight.md
  94. [NETPROPS] netprops/CEnvDOFController.md
  95. [NETPROPS] netprops/CEnvDetailController.md
  96. [NETPROPS] netprops/CEnvGasCanister.md
  97. [NETPROPS] netprops/CEnvParticleScript.md
  98. [NETPROPS] netprops/CEnvProjectedTexture.md
  99. [NETPROPS] netprops/CEnvQuadraticBeam.md
 100. [NETPROPS] netprops/CEnvScreenEffect.md
 101. [NETPROPS] netprops/CEnvScreenOverlay.md
 102. [NETPROPS] netprops/CEnvTonemapController.md
 103. [NETPROPS] netprops/CEnvWind.md
 104. [NETPROPS] netprops/CFEPlayerDecal.md
 105. [NETPROPS] netprops/CFireCrackerBlast.md
 106. [NETPROPS] netprops/CFireSmoke.md
 107. [NETPROPS] netprops/CFireTrail.md
 108. [NETPROPS] netprops/CFish.md
 109. [NETPROPS] netprops/CFists.md
 110. [NETPROPS] netprops/CFlashbang.md
 111. [NETPROPS] netprops/CFogController.md
 112. [NETPROPS] netprops/CFootstepControl.md
 113. [NETPROPS] netprops/CFuncAreaPortalWindow.md
 114. [NETPROPS] netprops/CFuncBrush.md
 115. [NETPROPS] netprops/CFuncConveyor.md
 116. [NETPROPS] netprops/CFuncLadder.md
 117. [NETPROPS] netprops/CFuncMonitor.md
 118. [NETPROPS] netprops/CFuncMoveLinear.md
 119. [NETPROPS] netprops/CFuncOccluder.md
 120. [NETPROPS] netprops/CFuncReflectiveGlass.md
 121. [NETPROPS] netprops/CFuncRotating.md
 122. [NETPROPS] netprops/CFuncSmokeVolume.md
 123. [NETPROPS] netprops/CFuncTrackTrain.md
 124. [NETPROPS] netprops/CFunc_Dust.md
 125. [NETPROPS] netprops/CFunc_LOD.md
 126. [NETPROPS] netprops/CGameRulesProxy.md
 127. [NETPROPS] netprops/CGrassBurn.md
 128. [NETPROPS] netprops/CHEGrenade.md
 129. [NETPROPS] netprops/CHandleTest.md
 130. [NETPROPS] netprops/CHostage.md
 131. [NETPROPS] netprops/CHostageCarriableProp.md
 132. [NETPROPS] netprops/CIncendiaryGrenade.md
 133. [NETPROPS] netprops/CInferno.md
 134. [NETPROPS] netprops/CInfoLadderDismount.md
 135. [NETPROPS] netprops/CInfoMapRegion.md
 136. [NETPROPS] netprops/CInfoOverlayAccessor.md
 137. [NETPROPS] netprops/CItemCash.md
 138. [NETPROPS] netprops/CItemDogtags.md
 139. [NETPROPS] netprops/CItem_Healthshot.md
 140. [NETPROPS] netprops/CKnife.md
 141. [NETPROPS] netprops/CKnifeGG.md
 142. [NETPROPS] netprops/CLightGlow.md
 143. [NETPROPS] netprops/CMapVetoPickController.md
 144. [NETPROPS] netprops/CMaterialModifyControl.md
 145. [NETPROPS] netprops/CMelee.md
 146. [NETPROPS] netprops/CMolotovGrenade.md
 147. [NETPROPS] netprops/CMolotovProjectile.md
 148. [NETPROPS] netprops/CMovieDisplay.md
 149. [NETPROPS] netprops/CParadropChopper.md
 150. [NETPROPS] netprops/CParticleFire.md
 151. [NETPROPS] netprops/CParticlePerformanceMonitor.md
 152. [NETPROPS] netprops/CParticleSystem.md
 153. [NETPROPS] netprops/CPhysBox.md
 154. [NETPROPS] netprops/CPhysBoxMultiplayer.md
 155. [NETPROPS] netprops/CPhysMagnet.md
 156. [NETPROPS] netprops/CPhysPropAmmoBox.md
 157. [NETPROPS] netprops/CPhysPropLootCrate.md
 158. [NETPROPS] netprops/CPhysPropRadarJammer.md
 159. [NETPROPS] netprops/CPhysPropWeaponUpgrade.md
 160. [NETPROPS] netprops/CPhysicsProp.md
 161. [NETPROPS] netprops/CPhysicsPropMultiplayer.md
 162. [NETPROPS] netprops/CPlantedC4.md
 163. [NETPROPS] netprops/CPlasma.md
 164. [NETPROPS] netprops/CPlayerPing.md
 165. [NETPROPS] netprops/CPlayerResource.md
 166. [NETPROPS] netprops/CPointCamera.md
 167. [NETPROPS] netprops/CPointCommentaryNode.md
 168. [NETPROPS] netprops/CPointWorldText.md
 169. [NETPROPS] netprops/CPoseController.md
 170. [NETPROPS] netprops/CPostProcessController.md
 171. [NETPROPS] netprops/CPrecipitation.md
 172. [NETPROPS] netprops/CPrecipitationBlocker.md
 173. [NETPROPS] netprops/CPredictedViewModel.md
 174. [NETPROPS] netprops/CPropCounter.md
 175. [NETPROPS] netprops/CPropDoorRotating.md
 176. [NETPROPS] netprops/CPropJeep.md
 177. [NETPROPS] netprops/CPropVehicleDriveable.md
 178. [NETPROPS] netprops/CProp_Hallucination.md
 179. [NETPROPS] netprops/CRagdollManager.md
 180. [NETPROPS] netprops/CRagdollProp.md
 181. [NETPROPS] netprops/CRagdollPropAttached.md
 182. [NETPROPS] netprops/CRopeKeyframe.md
 183. [NETPROPS] netprops/CSCAR17.md
 184. [NETPROPS] netprops/CSceneEntity.md
 185. [NETPROPS] netprops/CSensorGrenade.md
 186. [NETPROPS] netprops/CSensorGrenadeProjectile.md
 187. [NETPROPS] netprops/CShadowControl.md
 188. [NETPROPS] netprops/CSlideshowDisplay.md
 189. [NETPROPS] netprops/CSmokeGrenade.md
 190. [NETPROPS] netprops/CSmokeGrenadeProjectile.md
 191. [NETPROPS] netprops/CSmokeStack.md
 192. [NETPROPS] netprops/CSnowball.md
 193. [NETPROPS] netprops/CSnowballPile.md
 194. [NETPROPS] netprops/CSnowballProjectile.md
 195. [NETPROPS] netprops/CSpatialEntity.md
 196. [NETPROPS] netprops/CSpotlightEnd.md
 197. [NETPROPS] netprops/CSprite.md
 198. [NETPROPS] netprops/CSpriteOriented.md
 199. [NETPROPS] netprops/CSpriteTrail.md
 200. [NETPROPS] netprops/CStatueProp.md
 201. [NETPROPS] netprops/CSteamJet.md
 202. [NETPROPS] netprops/CSun.md
 203. [NETPROPS] netprops/CSunlightShadowControl.md
 204. [NETPROPS] netprops/CSurvivalSpawnChopper.md
 205. [NETPROPS] netprops/CTEArmorRicochet.md
 206. [NETPROPS] netprops/CTEBSPDecal.md
 207. [NETPROPS] netprops/CTEBaseBeam.md
 208. [NETPROPS] netprops/CTEBeamEntPoint.md
 209. [NETPROPS] netprops/CTEBeamEnts.md
 210. [NETPROPS] netprops/CTEBeamFollow.md
 211. [NETPROPS] netprops/CTEBeamLaser.md
 212. [NETPROPS] netprops/CTEBeamPoints.md
 213. [NETPROPS] netprops/CTEBeamRing.md
 214. [NETPROPS] netprops/CTEBeamRingPoint.md
 215. [NETPROPS] netprops/CTEBeamSpline.md
 216. [NETPROPS] netprops/CTEBloodSprite.md
 217. [NETPROPS] netprops/CTEBloodStream.md
 218. [NETPROPS] netprops/CTEBreakModel.md
 219. [NETPROPS] netprops/CTEBubbleTrail.md
 220. [NETPROPS] netprops/CTEBubbles.md
 221. [NETPROPS] netprops/CTEClientProjectile.md
 222. [NETPROPS] netprops/CTEDecal.md
 223. [NETPROPS] netprops/CTEDust.md
 224. [NETPROPS] netprops/CTEDynamicLight.md
 225. [NETPROPS] netprops/CTEEffectDispatch.md
 226. [NETPROPS] netprops/CTEEnergySplash.md
 227. [NETPROPS] netprops/CTEExplosion.md
 228. [NETPROPS] netprops/CTEFireBullets.md
 229. [NETPROPS] netprops/CTEFizz.md
 230. [NETPROPS] netprops/CTEFootprintDecal.md
 231. [NETPROPS] netprops/CTEFoundryHelpers.md
 232. [NETPROPS] netprops/CTEGaussExplosion.md
 233. [NETPROPS] netprops/CTEGlowSprite.md
 234. [NETPROPS] netprops/CTEImpact.md
 235. [NETPROPS] netprops/CTEKillPlayerAttachments.md
 236. [NETPROPS] netprops/CTELargeFunnel.md
 237. [NETPROPS] netprops/CTEMetalSparks.md
 238. [NETPROPS] netprops/CTEMuzzleFlash.md
 239. [NETPROPS] netprops/CTEParticleSystem.md
 240. [NETPROPS] netprops/CTEPhysicsProp.md
 241. [NETPROPS] netprops/CTEPlantBomb.md
 242. [NETPROPS] netprops/CTEPlayerAnimEvent.md
 243. [NETPROPS] netprops/CTEPlayerDecal.md
 244. [NETPROPS] netprops/CTEProjectedDecal.md
 245. [NETPROPS] netprops/CTERadioIcon.md
 246. [NETPROPS] netprops/CTEShatterSurface.md
 247. [NETPROPS] netprops/CTEShowLine.md
 248. [NETPROPS] netprops/CTESmoke.md
 249. [NETPROPS] netprops/CTESparks.md
 250. [NETPROPS] netprops/CTESprite.md
 251. [NETPROPS] netprops/CTESpriteSpray.md
 252. [NETPROPS] netprops/CTEWorldDecal.md
 253. [NETPROPS] netprops/CTablet.md
 254. [NETPROPS] netprops/CTeam.md
 255. [NETPROPS] netprops/CTeamplayRoundBasedRulesProxy.md
 256. [NETPROPS] netprops/CTesla.md
 257. [NETPROPS] netprops/CTestTraceline.md
 258. [NETPROPS] netprops/CTest_ProxyToggle_Networkable.md
 259. [NETPROPS] netprops/CTriggerPlayerMovement.md
 260. [NETPROPS] netprops/CTriggerSoundOperator.md
 261. [NETPROPS] netprops/CVGuiScreen.md
 262. [NETPROPS] netprops/CVoteController.md
 263. [NETPROPS] netprops/CWaterBullet.md
 264. [NETPROPS] netprops/CWaterLODControl.md
 265. [NETPROPS] netprops/CWeaponAWP.md
 266. [NETPROPS] netprops/CWeaponAug.md
 267. [NETPROPS] netprops/CWeaponBaseItem.md
 268. [NETPROPS] netprops/CWeaponBizon.md
 269. [NETPROPS] netprops/CWeaponCSBase.md
 270. [NETPROPS] netprops/CWeaponCSBaseGun.md
 271. [NETPROPS] netprops/CWeaponCycler.md
 272. [NETPROPS] netprops/CWeaponElite.md
 273. [NETPROPS] netprops/CWeaponFamas.md
 274. [NETPROPS] netprops/CWeaponFiveSeven.md
 275. [NETPROPS] netprops/CWeaponG3SG1.md
 276. [NETPROPS] netprops/CWeaponGalil.md
 277. [NETPROPS] netprops/CWeaponGalilAR.md
 278. [NETPROPS] netprops/CWeaponGlock.md
 279. [NETPROPS] netprops/CWeaponHKP2000.md
 280. [NETPROPS] netprops/CWeaponM249.md
 281. [NETPROPS] netprops/CWeaponM3.md
 282. [NETPROPS] netprops/CWeaponM4A1.md
 283. [NETPROPS] netprops/CWeaponMAC10.md
 284. [NETPROPS] netprops/CWeaponMP5Navy.md
 285. [NETPROPS] netprops/CWeaponMP7.md
 286. [NETPROPS] netprops/CWeaponMP9.md
 287. [NETPROPS] netprops/CWeaponMag7.md
 288. [NETPROPS] netprops/CWeaponNOVA.md
 289. [NETPROPS] netprops/CWeaponNegev.md
 290. [NETPROPS] netprops/CWeaponP228.md
 291. [NETPROPS] netprops/CWeaponP250.md
 292. [NETPROPS] netprops/CWeaponP90.md
 293. [NETPROPS] netprops/CWeaponSCAR20.md
 294. [NETPROPS] netprops/CWeaponSG550.md
 295. [NETPROPS] netprops/CWeaponSG552.md
 296. [NETPROPS] netprops/CWeaponSG556.md
 297. [NETPROPS] netprops/CWeaponSSG08.md
 298. [NETPROPS] netprops/CWeaponSawedoff.md
 299. [NETPROPS] netprops/CWeaponScout.md
 300. [NETPROPS] netprops/CWeaponShield.md
 301. [NETPROPS] netprops/CWeaponTMP.md
 302. [NETPROPS] netprops/CWeaponTaser.md
 303. [NETPROPS] netprops/CWeaponTec9.md
 304. [NETPROPS] netprops/CWeaponUMP45.md
 305. [NETPROPS] netprops/CWeaponUSP.md
 306. [NETPROPS] netprops/CWeaponXM1014.md
 307. [NETPROPS] netprops/CWeaponZoneRepulsor.md
 308. [NETPROPS] netprops/CWorld.md
 309. [NETPROPS] netprops/CWorldVguiText.md
 310. [NETPROPS] netprops/DustTrail.md
 311. [NETPROPS] netprops/MovieExplosion.md
 312. [NETPROPS] netprops/ParticleSmokeGrenade.md
 313. [NETPROPS] netprops/RocketTrail.md
 314. [NETPROPS] netprops/SmokeTrail.md
 315. [NETPROPS] netprops/SporeExplosion.md
 316. [NETPROPS] netprops/SporeTrail.md
 317. [NETPROPS] netprops/baseentities.md
 318. [NETPROPS] netprops/controllers.md
 319. [NETPROPS] netprops/environment.md
 320. [NETPROPS] netprops/important.md
 321. [NETPROPS] netprops/items.md
 322. [NETPROPS] netprops/other.md
 323. [NETPROPS] netprops/projectiles.md
 324. [NETPROPS] netprops/tempentities.md
 325. [USAGE] usage/README.md
 326. [USAGE] usage/common_issues.md
 327. [USAGE] usage/unlisted_features.md
 328. [USAGE] usage/using_lua_scripts.md

Total de archivos fusionados: 328

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
SECCION 1 / 328
=== README ===
Ruta relativa: README.md
--------------------------------------------------------------------------------

# Overview

This website documents the configuration options, usage and LUA API of [gamesense.pub](https://gamesense.pub).

The first category is targeted at end users that aren't interested in learning the gamesense LUA API. The other categories are meant for new and experienced developers and the majority of users shouldn't have to care about them.


--------------------------------------------------------------------------------
SECCION 2 / 328
=== SUMMARY ===
Ruta relativa: SUMMARY.md
--------------------------------------------------------------------------------

# Table of contents

* [Overview](README.md)

## Using the cheat

* [Using lua scripts](usage/using_lua_scripts.md)
* [Unlisted features](usage/unlisted_features.md)
* [Common issues](usage/common_issues.md)

## Developers

* [Writing lua scripts](development/README.md)
  * [Getting started](development/getting_started.md)
  * [Examples](development/examples/README.md)
    * [Simple watermark](development/examples/watermark.md)
    * [Head Dot ESP](development/examples/head_dot.md)
    * [Talk shit](development/examples/talk_shit.md)
    * [Auto buy on round start](development/examples/auto_buy.md)
    * [Create Interface](development/examples/create_interface.md)
  * [Editors](development/editors/README.md)
    * [VS Code](development/editors/vscode.md)
    * [Sublime Text](development/editors/sublime.md)
    * [Atom](development/editors/atom.md)
  * [Events](development/events.md)
  * [Snippets](development/snippets/README.md)
  * [Compiling lua scripts](development/compiling.md)
* [API Documentation](globals/README.md)
  * [bit](globals/bit.md)
  * [client](globals/client.md)
  * [config](globals/config.md)
  * [cvar](globals/cvar.md)
  * [database](globals/database.md)
  * [entity](globals/entity.md)
  * [globals](globals/globals.md)
  * [json](globals/json.md)
  * [materialsystem](globals/materialsystem.md)
  * [panorama](globals/panorama.md)
  * [plist](globals/plist.md)
  * [renderer](globals/renderer.md)
  * [ui](globals/ui.md)
  * [vector](globals/vector.md)
* [Netprops](netprops/README.md)
  * [Important](netprops/important.md)
    * [CCSGameRulesProxy](netprops/CCSGameRulesProxy.md)
    * [CCSPlayer](netprops/CCSPlayer.md)
    * [CCSPlayerResource](netprops/CCSPlayerResource.md)
  * [Items](netprops/items.md)
    * [CAK47](netprops/CAK47.md)
    * [CBaseCSGrenade](netprops/CBaseCSGrenade.md)
    * [CBaseGrenade](netprops/CBaseGrenade.md)
    * [CBreachCharge](netprops/CBreachCharge.md)
    * [CBumpMine](netprops/CBumpMine.md)
    * [CC4](netprops/CC4.md)
    * [CDEagle](netprops/CDEagle.md)
    * [CDecoyGrenade](netprops/CDecoyGrenade.md)
    * [CEconEntity](netprops/CEconEntity.md)
    * [CFists](netprops/CFists.md)
    * [CFlashbang](netprops/CFlashbang.md)
    * [CHEGrenade](netprops/CHEGrenade.md)
    * [CIncendiaryGrenade](netprops/CIncendiaryGrenade.md)
    * [CItem_Healthshot](netprops/CItem_Healthshot.md)
    * [CItemCash](netprops/CItemCash.md)
    * [CItemDogtags](netprops/CItemDogtags.md)
    * [CKnife](netprops/CKnife.md)
    * [CKnifeGG](netprops/CKnifeGG.md)
    * [CMelee](netprops/CMelee.md)
    * [CMolotovGrenade](netprops/CMolotovGrenade.md)
    * [CSCAR17](netprops/CSCAR17.md)
    * [CSensorGrenade](netprops/CSensorGrenade.md)
    * [CSmokeGrenade](netprops/CSmokeGrenade.md)
    * [CSnowball](netprops/CSnowball.md)
    * [CTablet](netprops/CTablet.md)
    * [CWeaponAug](netprops/CWeaponAug.md)
    * [CWeaponAWP](netprops/CWeaponAWP.md)
    * [CWeaponBaseItem](netprops/CWeaponBaseItem.md)
    * [CWeaponBizon](netprops/CWeaponBizon.md)
    * [CWeaponCSBase](netprops/CWeaponCSBase.md)
    * [CWeaponCSBaseGun](netprops/CWeaponCSBaseGun.md)
    * [CWeaponCycler](netprops/CWeaponCycler.md)
    * [CWeaponElite](netprops/CWeaponElite.md)
    * [CWeaponFamas](netprops/CWeaponFamas.md)
    * [CWeaponFiveSeven](netprops/CWeaponFiveSeven.md)
    * [CWeaponG3SG1](netprops/CWeaponG3SG1.md)
    * [CWeaponGalil](netprops/CWeaponGalil.md)
    * [CWeaponGalilAR](netprops/CWeaponGalilAR.md)
    * [CWeaponGlock](netprops/CWeaponGlock.md)
    * [CWeaponHKP2000](netprops/CWeaponHKP2000.md)
    * [CWeaponM249](netprops/CWeaponM249.md)
    * [CWeaponM3](netprops/CWeaponM3.md)
    * [CWeaponM4A1](netprops/CWeaponM4A1.md)
    * [CWeaponMAC10](netprops/CWeaponMAC10.md)
    * [CWeaponMag7](netprops/CWeaponMag7.md)
    * [CWeaponMP5Navy](netprops/CWeaponMP5Navy.md)
    * [CWeaponMP7](netprops/CWeaponMP7.md)
    * [CWeaponMP9](netprops/CWeaponMP9.md)
    * [CWeaponNegev](netprops/CWeaponNegev.md)
    * [CWeaponNOVA](netprops/CWeaponNOVA.md)
    * [CWeaponP228](netprops/CWeaponP228.md)
    * [CWeaponP250](netprops/CWeaponP250.md)
    * [CWeaponP90](netprops/CWeaponP90.md)
    * [CWeaponSawedoff](netprops/CWeaponSawedoff.md)
    * [CWeaponSCAR20](netprops/CWeaponSCAR20.md)
    * [CWeaponScout](netprops/CWeaponScout.md)
    * [CWeaponSG550](netprops/CWeaponSG550.md)
    * [CWeaponSG552](netprops/CWeaponSG552.md)
    * [CWeaponSG556](netprops/CWeaponSG556.md)
    * [CWeaponShield](netprops/CWeaponShield.md)
    * [CWeaponSSG08](netprops/CWeaponSSG08.md)
    * [CWeaponTaser](netprops/CWeaponTaser.md)
    * [CWeaponTec9](netprops/CWeaponTec9.md)
    * [CWeaponTMP](netprops/CWeaponTMP.md)
    * [CWeaponUMP45](netprops/CWeaponUMP45.md)
    * [CWeaponUSP](netprops/CWeaponUSP.md)
    * [CWeaponXM1014](netprops/CWeaponXM1014.md)
    * [CWeaponZoneRepulsor](netprops/CWeaponZoneRepulsor.md)
    * [ParticleSmokeGrenade](netprops/ParticleSmokeGrenade.md)
  * [Projectiles](netprops/projectiles.md)
    * [CBaseCSGrenadeProjectile](netprops/CBaseCSGrenadeProjectile.md)
    * [CBreachChargeProjectile](netprops/CBreachChargeProjectile.md)
    * [CBumpMineProjectile](netprops/CBumpMineProjectile.md)
    * [CDecoyProjectile](netprops/CDecoyProjectile.md)
    * [CMolotovProjectile](netprops/CMolotovProjectile.md)
    * [CSensorGrenadeProjectile](netprops/CSensorGrenadeProjectile.md)
    * [CSmokeGrenadeProjectile](netprops/CSmokeGrenadeProjectile.md)
    * [CSnowballProjectile](netprops/CSnowballProjectile.md)
  * [Environment](netprops/environment.md)
    * [CColorCorrection](netprops/CColorCorrection.md)
    * [CColorCorrectionVolume](netprops/CColorCorrectionVolume.md)
    * [CEnvAmbientLight](netprops/CEnvAmbientLight.md)
    * [CEnvDetailController](netprops/CEnvDetailController.md)
    * [CEnvDOFController](netprops/CEnvDOFController.md)
    * [CEnvGasCanister](netprops/CEnvGasCanister.md)
    * [CEnvParticleScript](netprops/CEnvParticleScript.md)
    * [CEnvProjectedTexture](netprops/CEnvProjectedTexture.md)
    * [CEnvQuadraticBeam](netprops/CEnvQuadraticBeam.md)
    * [CEnvScreenEffect](netprops/CEnvScreenEffect.md)
    * [CEnvScreenOverlay](netprops/CEnvScreenOverlay.md)
    * [CEnvTonemapController](netprops/CEnvTonemapController.md)
    * [CEnvWind](netprops/CEnvWind.md)
    * [CSun](netprops/CSun.md)
    * [CSunlightShadowControl](netprops/CSunlightShadowControl.md)
  * [Controllers](netprops/controllers.md)
    * [CDangerZoneController](netprops/CDangerZoneController.md)
    * [CFogController](netprops/CFogController.md)
    * [CFootstepControl](netprops/CFootstepControl.md)
    * [CMapVetoPickController](netprops/CMapVetoPickController.md)
    * [CMaterialModifyControl](netprops/CMaterialModifyControl.md)
    * [CPoseController](netprops/CPoseController.md)
    * [CPostProcessController](netprops/CPostProcessController.md)
    * [CShadowControl](netprops/CShadowControl.md)
    * [CTeam](netprops/CTeam.md)
    * [CTeamplayRoundBasedRulesProxy](netprops/CTeamplayRoundBasedRulesProxy.md)
    * [CVoteController](netprops/CVoteController.md)
    * [CWaterLODControl](netprops/CWaterLODControl.md)
  * [Temp Entities](netprops/tempentities.md)
    * [CTEArmorRicochet](netprops/CTEArmorRicochet.md)
    * [CTEBaseBeam](netprops/CTEBaseBeam.md)
    * [CTEBeamEntPoint](netprops/CTEBeamEntPoint.md)
    * [CTEBeamEnts](netprops/CTEBeamEnts.md)
    * [CTEBeamFollow](netprops/CTEBeamFollow.md)
    * [CTEBeamLaser](netprops/CTEBeamLaser.md)
    * [CTEBeamPoints](netprops/CTEBeamPoints.md)
    * [CTEBeamRing](netprops/CTEBeamRing.md)
    * [CTEBeamRingPoint](netprops/CTEBeamRingPoint.md)
    * [CTEBeamSpline](netprops/CTEBeamSpline.md)
    * [CTEBloodSprite](netprops/CTEBloodSprite.md)
    * [CTEBloodStream](netprops/CTEBloodStream.md)
    * [CTEBreakModel](netprops/CTEBreakModel.md)
    * [CTEBSPDecal](netprops/CTEBSPDecal.md)
    * [CTEBubbles](netprops/CTEBubbles.md)
    * [CTEBubbleTrail](netprops/CTEBubbleTrail.md)
    * [CTEClientProjectile](netprops/CTEClientProjectile.md)
    * [CTEDecal](netprops/CTEDecal.md)
    * [CTEDust](netprops/CTEDust.md)
    * [CTEDynamicLight](netprops/CTEDynamicLight.md)
    * [CTEEffectDispatch](netprops/CTEEffectDispatch.md)
    * [CTEEnergySplash](netprops/CTEEnergySplash.md)
    * [CTEExplosion](netprops/CTEExplosion.md)
    * [CTEFireBullets](netprops/CTEFireBullets.md)
    * [CTEFizz](netprops/CTEFizz.md)
    * [CTEFootprintDecal](netprops/CTEFootprintDecal.md)
    * [CTEFoundryHelpers](netprops/CTEFoundryHelpers.md)
    * [CTEGaussExplosion](netprops/CTEGaussExplosion.md)
    * [CTEGlowSprite](netprops/CTEGlowSprite.md)
    * [CTEImpact](netprops/CTEImpact.md)
    * [CTEKillPlayerAttachments](netprops/CTEKillPlayerAttachments.md)
    * [CTELargeFunnel](netprops/CTELargeFunnel.md)
    * [CTEMetalSparks](netprops/CTEMetalSparks.md)
    * [CTEMuzzleFlash](netprops/CTEMuzzleFlash.md)
    * [CTEParticleSystem](netprops/CTEParticleSystem.md)
    * [CTEPhysicsProp](netprops/CTEPhysicsProp.md)
    * [CTEPlantBomb](netprops/CTEPlantBomb.md)
    * [CTEPlayerAnimEvent](netprops/CTEPlayerAnimEvent.md)
    * [CTEPlayerDecal](netprops/CTEPlayerDecal.md)
    * [CTEProjectedDecal](netprops/CTEProjectedDecal.md)
    * [CTERadioIcon](netprops/CTERadioIcon.md)
    * [CTEShatterSurface](netprops/CTEShatterSurface.md)
    * [CTEShowLine](netprops/CTEShowLine.md)
    * [CTESmoke](netprops/CTESmoke.md)
    * [CTESparks](netprops/CTESparks.md)
    * [CTESprite](netprops/CTESprite.md)
    * [CTESpriteSpray](netprops/CTESpriteSpray.md)
    * [CTEWorldDecal](netprops/CTEWorldDecal.md)
  * [Base Entities](netprops/baseentities.md)
    * [CBaseAnimating](netprops/CBaseAnimating.md)
    * [CBaseAnimatingOverlay](netprops/CBaseAnimatingOverlay.md)
    * [CBaseAttributableItem](netprops/CBaseAttributableItem.md)
    * [CBaseButton](netprops/CBaseButton.md)
    * [CBaseCombatCharacter](netprops/CBaseCombatCharacter.md)
    * [CBaseCombatWeapon](netprops/CBaseCombatWeapon.md)
    * [CBaseDoor](netprops/CBaseDoor.md)
    * [CBaseEntity](netprops/CBaseEntity.md)
    * [CBaseFlex](netprops/CBaseFlex.md)
    * [CBaseParticleEntity](netprops/CBaseParticleEntity.md)
    * [CBasePlayer](netprops/CBasePlayer.md)
    * [CBasePropDoor](netprops/CBasePropDoor.md)
    * [CBaseTeamObjectiveResource](netprops/CBaseTeamObjectiveResource.md)
    * [CBaseTempEntity](netprops/CBaseTempEntity.md)
    * [CBaseToggle](netprops/CBaseToggle.md)
    * [CBaseTrigger](netprops/CBaseTrigger.md)
    * [CBaseViewModel](netprops/CBaseViewModel.md)
    * [CBaseVPhysicsTrigger](netprops/CBaseVPhysicsTrigger.md)
    * [CBaseWeaponWorldModel](netprops/CBaseWeaponWorldModel.md)
  * [Other](netprops/other.md)
    * [CAI_BaseNPC](netprops/CAI_BaseNPC.md)
    * [CBeam](netprops/CBeam.md)
    * [CBeamSpotlight](netprops/CBeamSpotlight.md)
    * [CBoneFollower](netprops/CBoneFollower.md)
    * [CBRC4Target](netprops/CBRC4Target.md)
    * [CBreakableProp](netprops/CBreakableProp.md)
    * [CBreakableSurface](netprops/CBreakableSurface.md)
    * [CCascadeLight](netprops/CCascadeLight.md)
    * [CChicken](netprops/CChicken.md)
    * [CCSRagdoll](netprops/CCSRagdoll.md)
    * [CCSTeam](netprops/CCSTeam.md)
    * [CDangerZone](netprops/CDangerZone.md)
    * [CDrone](netprops/CDrone.md)
    * [CDronegun](netprops/CDronegun.md)
    * [CDynamicLight](netprops/CDynamicLight.md)
    * [CDynamicProp](netprops/CDynamicProp.md)
    * [CEconWearable](netprops/CEconWearable.md)
    * [CEmbers](netprops/CEmbers.md)
    * [CEntityDissolve](netprops/CEntityDissolve.md)
    * [CEntityFlame](netprops/CEntityFlame.md)
    * [CEntityFreezing](netprops/CEntityFreezing.md)
    * [CEntityParticleTrail](netprops/CEntityParticleTrail.md)
    * [CFEPlayerDecal](netprops/CFEPlayerDecal.md)
    * [CFireCrackerBlast](netprops/CFireCrackerBlast.md)
    * [CFireSmoke](netprops/CFireSmoke.md)
    * [CFireTrail](netprops/CFireTrail.md)
    * [CFish](netprops/CFish.md)
    * [CFunc_Dust](netprops/CFunc_Dust.md)
    * [CFunc_LOD](netprops/CFunc_LOD.md)
    * [CFuncAreaPortalWindow](netprops/CFuncAreaPortalWindow.md)
    * [CFuncBrush](netprops/CFuncBrush.md)
    * [CFuncConveyor](netprops/CFuncConveyor.md)
    * [CFuncLadder](netprops/CFuncLadder.md)
    * [CFuncMonitor](netprops/CFuncMonitor.md)
    * [CFuncMoveLinear](netprops/CFuncMoveLinear.md)
    * [CFuncOccluder](netprops/CFuncOccluder.md)
    * [CFuncReflectiveGlass](netprops/CFuncReflectiveGlass.md)
    * [CFuncRotating](netprops/CFuncRotating.md)
    * [CFuncSmokeVolume](netprops/CFuncSmokeVolume.md)
    * [CFuncTrackTrain](netprops/CFuncTrackTrain.md)
    * [CGameRulesProxy](netprops/CGameRulesProxy.md)
    * [CGrassBurn](netprops/CGrassBurn.md)
    * [CHandleTest](netprops/CHandleTest.md)
    * [CHostage](netprops/CHostage.md)
    * [CHostageCarriableProp](netprops/CHostageCarriableProp.md)
    * [CInferno](netprops/CInferno.md)
    * [CInfoLadderDismount](netprops/CInfoLadderDismount.md)
    * [CInfoMapRegion](netprops/CInfoMapRegion.md)
    * [CInfoOverlayAccessor](netprops/CInfoOverlayAccessor.md)
    * [CLightGlow](netprops/CLightGlow.md)
    * [CMovieDisplay](netprops/CMovieDisplay.md)
    * [CParadropChopper](netprops/CParadropChopper.md)
    * [CParticleFire](netprops/CParticleFire.md)
    * [CParticlePerformanceMonitor](netprops/CParticlePerformanceMonitor.md)
    * [CParticleSystem](netprops/CParticleSystem.md)
    * [CPhysBox](netprops/CPhysBox.md)
    * [CPhysBoxMultiplayer](netprops/CPhysBoxMultiplayer.md)
    * [CPhysicsProp](netprops/CPhysicsProp.md)
    * [CPhysicsPropMultiplayer](netprops/CPhysicsPropMultiplayer.md)
    * [CPhysMagnet](netprops/CPhysMagnet.md)
    * [CPhysPropAmmoBox](netprops/CPhysPropAmmoBox.md)
    * [CPhysPropLootCrate](netprops/CPhysPropLootCrate.md)
    * [CPhysPropRadarJammer](netprops/CPhysPropRadarJammer.md)
    * [CPhysPropWeaponUpgrade](netprops/CPhysPropWeaponUpgrade.md)
    * [CPlantedC4](netprops/CPlantedC4.md)
    * [CPlasma](netprops/CPlasma.md)
    * [CPlayerPing](netprops/CPlayerPing.md)
    * [CPlayerResource](netprops/CPlayerResource.md)
    * [CPointCamera](netprops/CPointCamera.md)
    * [CPointCommentaryNode](netprops/CPointCommentaryNode.md)
    * [CPointWorldText](netprops/CPointWorldText.md)
    * [CPrecipitation](netprops/CPrecipitation.md)
    * [CPrecipitationBlocker](netprops/CPrecipitationBlocker.md)
    * [CPredictedViewModel](netprops/CPredictedViewModel.md)
    * [CProp_Hallucination](netprops/CProp_Hallucination.md)
    * [CPropCounter](netprops/CPropCounter.md)
    * [CPropDoorRotating](netprops/CPropDoorRotating.md)
    * [CPropJeep](netprops/CPropJeep.md)
    * [CPropVehicleDriveable](netprops/CPropVehicleDriveable.md)
    * [CRagdollManager](netprops/CRagdollManager.md)
    * [CRagdollProp](netprops/CRagdollProp.md)
    * [CRagdollPropAttached](netprops/CRagdollPropAttached.md)
    * [CRopeKeyframe](netprops/CRopeKeyframe.md)
    * [CSceneEntity](netprops/CSceneEntity.md)
    * [CSlideshowDisplay](netprops/CSlideshowDisplay.md)
    * [CSmokeStack](netprops/CSmokeStack.md)
    * [CSnowballPile](netprops/CSnowballPile.md)
    * [CSpatialEntity](netprops/CSpatialEntity.md)
    * [CSpotlightEnd](netprops/CSpotlightEnd.md)
    * [CSprite](netprops/CSprite.md)
    * [CSpriteOriented](netprops/CSpriteOriented.md)
    * [CSpriteTrail](netprops/CSpriteTrail.md)
    * [CStatueProp](netprops/CStatueProp.md)
    * [CSteamJet](netprops/CSteamJet.md)
    * [CSurvivalSpawnChopper](netprops/CSurvivalSpawnChopper.md)
    * [CTesla](netprops/CTesla.md)
    * [CTest_ProxyToggle_Networkable](netprops/CTest_ProxyToggle_Networkable.md)
    * [CTestTraceline](netprops/CTestTraceline.md)
    * [CTriggerPlayerMovement](netprops/CTriggerPlayerMovement.md)
    * [CTriggerSoundOperator](netprops/CTriggerSoundOperator.md)
    * [CVGuiScreen](netprops/CVGuiScreen.md)
    * [CWaterBullet](netprops/CWaterBullet.md)
    * [CWorld](netprops/CWorld.md)
    * [CWorldVguiText](netprops/CWorldVguiText.md)
    * [DustTrail](netprops/DustTrail.md)
    * [MovieExplosion](netprops/MovieExplosion.md)
    * [RocketTrail](netprops/RocketTrail.md)
    * [SmokeTrail](netprops/SmokeTrail.md)
    * [SporeExplosion](netprops/SporeExplosion.md)
    * [SporeTrail](netprops/SporeTrail.md)

--------------------------------------------------------------------------------
SECCION 4 / 328
=== GLOBALS: bit ===
Ruta relativa: globals/bit.md
--------------------------------------------------------------------------------

---
description: LuaJIT library for bitwise operations
---

# bit

### Functions:
#### bit.arshift

`bit.arshift(x: number, n: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number
  **n** | number | number of bits

Returns the bitwise arithmetic right-shift of its first argument by the number of bits given by the second argument.
Arithmetic right-shift treats the most-significant bit as a sign bit and replicates it.
Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).


#### bit.band

`bit.band(x1: number, x2: number[, ...])`: number

Argument | Type | Description
-------- | ---- | -----------
  **x1** | number | number
  **x2** | number | number
  **...** |  | Number(s)

Returns the bitwise and of all of its arguments. Note that more than two arguments are allowed.


#### bit.bnot

`bit.bnot(x: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number

Returns the bitwise not of its argument.


#### bit.bor

`bit.bor(x1: number, x2: number[, ...])`: number

Argument | Type | Description
-------- | ---- | -----------
  **x1** | number | number
  **x2** | number | number
  **...** |  | Number(s)

Returns the bitwise or of all of its arguments. Note that more than two arguments are allowed.


#### bit.bswap

`bit.bswap(x: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number

Swaps the bytes of its argument and returns it. This can be used to convert little-endian 32 bit numbers to big-endian 32 bit numbers or vice versa.


#### bit.bxor

`bit.bxor(x1: number, [x2...]: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x1** | number | number
  **[x2...]** | number | number(s)

Returns the bitwise xor of all of its arguments. Note that more than two arguments are allowed.


#### bit.lshift

`bit.lshift(x: number, n: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number
  **n** | number | number of bits

Returns the bitwise logical left-shift of its first argument by the number of bits given by the second argument.
Logical shifts treat the first argument as an unsigned number and shift in 0-bits.
Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).


#### bit.rol

`bit.rol(x: number, n: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number
  **n** | number | number of bits

Returns the bitwise left rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side.
Only the lower 5 bits of the rotate count are used (reduces to the range [0..31]).


#### bit.ror

`bit.ror(x: number, n: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number
  **n** | number | number of bits

Returns the bitwise right rotation of its first argument by the number of bits given by the second argument. Bits shifted out on one side are shifted back in on the other side.
Only the lower 5 bits of the rotate count are used (reduces to the range [0..31]).


#### bit.rshift

`bit.rshift(x: number, n: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number
  **n** | number | number of bits

Returns the bitwise logical right-shift of its first argument by the number of bits given by the second argument.
Logical shifts treat the first argument as an unsigned number and shift in 0-bits.
Only the lower 5 bits of the shift count are used (reduces to the range [0..31]).


#### bit.tobit

`bit.tobit(x: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number to normalize

Normalizes a number to the numeric range for bit operations and returns it. This function is usually not needed since all bit operations already normalize all of their input arguments.


#### bit.tohex

`bit.tohex(x: number, n: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | number to convert
  **n** | number | number of hex digits to return

Converts its first argument to a hex string. The number of hex digits is given by the absolute value of the optional second argument. Positive numbers between 1 and 8 generate lowercase hex digits. Negative numbers generate uppercase hex digits. Only the least-significant 4*|n| bits are used. The default is to generate 8 lowercase hex digits.



--------------------------------------------------------------------------------
SECCION 5 / 328
=== GLOBALS: client ===
Ruta relativa: globals/client.md
--------------------------------------------------------------------------------

---
description: General game- and cheat-related functions
---

# client

### Functions:
#### client.camera_angles

`client.camera_angles([pitch: number, yaw: number])`

Argument | Type | Description
-------- | ---- | -----------
  **pitch** | number (-90 - 90) | Pitch
  **yaw** | number (-180 - 180) | Yaw

Get or set camera angles


#### client.camera_position

`client.camera_position()`: number, number, number

Returns x, y, z world coordinates of the game's camera position, or nil on failure.


#### client.color_log

`client.color_log(r: number, g: number, b: number, msg: string[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **msg** | string | The message
  **...** |  | Comma-separated arguments to concatenate with msg.

Logs a colored message to console. End the string with \0 to prevent it from adding a newline.


#### client.create_interface

`client.create_interface(module_name: string, interface_name: string)`: userdata (ffi pointer)

Argument | Type | Description
-------- | ---- | -----------
  **module_name** | string | Filename of the module that contains the interface
  **interface_name** | string | Name of the interface

Returns a pointer to the interface, or nil on failure.


#### client.delay_call

`client.delay_call(delay: number, callback: function[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **delay** | number | Time in seconds to wait before calling callback.
  **callback** | function | The lua function that will be called after delay seconds.
  **...** |  | Arguments that will be passed to the callback.

Executes the callback after delay seconds, passing the arguments to it.


#### client.draw_debug_text

`client.draw_debug_text(x: number, y: number, z: number, line_offset: number, duration: number, r: number, g: number, b: number, a: number, ...)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (world coordinate) | Position in world space
  **y** | number (world coordinate) | Position in world space
  **z** | number (world coordinate) | Position in world space
  **line_offset** | number | Used for vertical alignment, use 0 for the first line.
  **duration** | number | Time in seconds that the text will remain on the screen.
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **...** |  | The text that will be drawn

Avoid calling this during the paint event.


#### client.draw_hitboxes

`client.draw_hitboxes(entindex: number, duration: number, hitboxes: number, r: number, g: number, b: number, a: number[, tick: number])`

Argument | Type | Description
-------- | ---- | -----------
  **entindex** | number (entindex) | Entity index
  **duration** | number | Time in seconds
  **hitboxes** | number (hitbox id) | Either the hitbox index, an array of hitbox indices, or 19 for all hitboxes
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **tick** | number | Integer

Draws hitbox overlays. Avoid calling this during the paint event.


#### client.error_log

`client.error_log(msg: string)`

Argument | Type | Description
-------- | ---- | -----------
  **msg** | string | The error message

General game- and cheat-related functions


#### client.exec

`client.exec(cmd: string[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **cmd** | string | The console command(s) to execute.
  **...** |  | Comma-separated arguments to concatenate with cmd.

Executes a console command. Multiple commands can be combined with ';'. Be careful when passing user input (including usernames) to it.


#### client.eye_position

`client.eye_position()`: number, number, number

Returns x, y, z world coordinates of the local player's eye position, or nil on failure.


#### client.find_signature

`client.find_signature(module_name: string, pattern: string)`: userdata (ffi pointer)

Argument | Type | Description
-------- | ---- | -----------
  **module_name** | string | Filename of the module that contains the interface
  **pattern** | string | String of the signature. Escape with \x, replace wildcards with \xCC

Finds the specified pattern and returns a pointer to it, or nil if not found.


#### client.get_model_name

`client.get_model_name(model_index: number)`: string

Argument | Type | Description
-------- | ---- | -----------
  **model_index** | number (model index) | Model index

Returns model name, or nil on failure.


#### client.key_state

`client.key_state(key: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **key** | number | Virtual key code of the key as integer. [List of virtual key codes](https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes)

Returns true if the key is pressed, or nil on failure


#### client.latency

`client.latency()`: number

Returns your latency in seconds.


#### client.log

`client.log(msg: string[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **msg** | string | The message
  **...** |  | Comma-separated arguments to concatenate with msg.

Logs a message to console in the [gamesense] format.


#### client.random_float

`client.random_float(minimum: number, maximum: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **minimum** | number | Lowest possible result
  **maximum** | number | Highest possible result

Returns a random float between minimum and maximum.


#### client.random_int

`client.random_int(minimum: number, maximum: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **minimum** | number | Lowest possible result
  **maximum** | number | Highest possible result

Returns a random integer between minimum and maximum.


#### client.register_esp_flag

`client.register_esp_flag(flag: string, r: number, g: number, b: number, callback: function)`

Argument | Type | Description
-------- | ---- | -----------
  **flag** | string | String of text that will be shown when callback returns true
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **callback** | function | Function that will be called for each entity while drawing the ESP

Requires "Flags" is enabled in Player ESP


#### client.reload_active_scripts

`client.reload_active_scripts()`

Reloads all scripts the following frame.


#### client.scale_damage

`client.scale_damage(entindex: number, hitgroup: number, damage: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **entindex** | number (entindex) | Player entity index
  **hitgroup** | number (hitgroup id) | Hit group index
  **damage** | number | Damage

Returns adjusted damage for the specified hitgroup


#### client.screen_size

`client.screen_size()`: number, number

Returns (width, height).


#### client.set_clan_tag

`client.set_clan_tag(...)`

Argument | Type | Description
-------- | ---- | -----------
  **...** |  | The text that will be drawn

The clan tag is removed if no argument is passed or if it is an empty string. Additional arguments will be concatenated similar to client.log.


#### client.set_event_callback

`client.set_event_callback(event_name: string, callback: function)`

Argument | Type | Description
-------- | ---- | -----------
  **event_name** | string | Name of the event.
  **callback** | function | Lua function to call when this event occurs.

Raises an error and prints a message in console upon failure.


#### client.system_time

`client.system_time()`: number, number, number, number

Returns windows time as (hours, minutes, seconds, milliseconds)


#### client.timestamp

`client.timestamp()`: number

Returns high precision timestamp in milliseconds.


#### client.trace_bullet

`client.trace_bullet(from_player: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number, skip_players: boolean)`: number, number

Argument | Type | Description
-------- | ---- | -----------
  **from_player** | number (entindex) | Entity index of the player whose weapon will be used for this trace
  **from_x** | number (world coordinate) | Position in world space
  **from_y** | number (world coordinate) | Position in world space
  **from_z** | number (world coordinate) | Position in world space
  **to_x** | number (world coordinate) | Position in world space
  **to_y** | number (world coordinate) | Position in world space
  **to_z** | number (world coordinate) | Position in world space
  **skip_players** | boolean | Optional, pass true to skip expensive hitbox checks.

Returns entindex, damage. Entindex is nil when no player is hit or if players are skipped.


#### client.trace_line

`client.trace_line(skip_entindex: number, from_x: number, from_y: number, from_z: number, to_x: number, to_y: number, to_z: number)`: number, number

Argument | Type | Description
-------- | ---- | -----------
  **skip_entindex** | number (entindex) | Ignore this entity while tracing
  **from_x** | number (world coordinate) | Position in world space
  **from_y** | number (world coordinate) | Position in world space
  **from_z** | number (world coordinate) | Position in world space
  **to_x** | number (world coordinate) | Position in world space
  **to_y** | number (world coordinate) | Position in world space
  **to_z** | number (world coordinate) | Position in world space

Returns fraction, entindex. fraction is a percentage in the range [0.0, 1.0] that tells you how far the trace went before hitting something, so 1.0 means nothing was hit. entindex is the entity index that hit, or -1 if no entity was hit.


#### client.unix_time

`client.unix_time()`: number

Returns current windows time as [unix time / epoch time](https://en.wikipedia.org/wiki/Unix_time) (seconds since 1 January 1970 00:00:00)


#### client.unset_event_callback

`client.unset_event_callback(event_name: string, callback: function)`

Argument | Type | Description
-------- | ---- | -----------
  **event_name** | string | Name of the event
  **callback** | function | Lua function that was passed to set_event_callback

Removes a callback that was previously set using set_event_callback


#### client.update_player_list

`client.update_player_list()`

Updates the player list tab without having to open it.


#### client.userid_to_entindex

`client.userid_to_entindex(userid: number)`: number

Argument | Type | Description
-------- | ---- | -----------
  **userid** | number (user id) | This is given by some game events.

Returns the entity index, or 0 on failure.


#### client.visible

`client.visible(x: number, y: number, z: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (world coordinate) | Position in world space
  **y** | number (world coordinate) | Position in world space
  **z** | number (world coordinate) | Position in world space

Returns true if the position is visible. For example, you could use a player's origin to see if they are visible.



--------------------------------------------------------------------------------
SECCION 6 / 328
=== GLOBALS: config ===
Ruta relativa: globals/config.md
--------------------------------------------------------------------------------

---
description: Configuration related lua functions
---

# config

### Functions:
#### config.export

`config.export()`

Returns the current config as a string


#### config.load

`config.load(name: string, tab: string, container: string)`

Argument | Type | Description
-------- | ---- | -----------
  **name** | string (menu item) | Name of the config
  **tab** | string (menu tab) | Name of the tab
  **container** | string (menu container) | Name of the container

To load the specified config: config.load('Config name here') To load a tab from the specified config: config.load('Config name here', 'Tab name here') To load a container from the specified config: config.load('Config name here', 'Tab name here', 'Container name here')



--------------------------------------------------------------------------------
SECCION 7 / 328
=== GLOBALS: cvar ===
Ruta relativa: globals/cvar.md
--------------------------------------------------------------------------------

---
description: A table letting you get and set the value of cvars and invoke their callbacks. Uses Object-oriented format
---

# cvar

### Functions:
#### :get_float

`cvar_object:get_float()`: number

Returns nil if called on a ConCommand.


#### :get_int

`cvar_object:get_int()`: number

Returns nil if called on a ConCommand.


#### :get_string

`cvar_object:get_string()`: string

Returns nil on failure.


#### :invoke_callback

`cvar_object:invoke_callback(...)`

Argument | Type | Description
-------- | ---- | -----------
  **...** |  | Arguments passed to the callback

Executes a ConCommand or cvar callback, passing its arguments to it


#### :set_float

`cvar_object:set_float(value: number)`

Argument | Type | Description
-------- | ---- | -----------
  **value** | number (float) | Float value

Sets the int, float and string value to the passed float. Invokes the change callback


#### :set_int

`cvar_object:set_int(value: number)`

Argument | Type | Description
-------- | ---- | -----------
  **value** | number (integer) | Integer value

Sets the int, float and string value to the passed float. Invokes the change callback


#### :set_raw_float

`cvar_object:set_raw_float(value: number)`

Argument | Type | Description
-------- | ---- | -----------
  **value** | number (float) | Float value

This sets the float value without changing the integer and string values.


#### :set_raw_int

`cvar_object:set_raw_int(value: number)`

Argument | Type | Description
-------- | ---- | -----------
  **value** | number (integer) | Integer value

This sets the integer value without changing the float and string values.


#### :set_string

`cvar_object:set_string(value: string)`

Argument | Type | Description
-------- | ---- | -----------
  **value** | string | String value

Sets the int, float and string value to the passed float. Invokes the change callback


### Examples:

{% code-tabs %}
{% code-tabs-item title="cvar-1.lua" %}
```lua
local bxor = bit.bxor
local cl_fullupdate = cvar.cl_fullupdate
local developer = cvar.developer

-- invoking callback of ConCommand
cl_fullupdate:invoke_callback()

-- toggle ConVar
local oldval = developer.get_int()
developer:set_raw_int(bxor(oldval, 1))
```
{% endcode-tabs-item %}
{% code-tabs-item title="cvar-2.lua" %}
```lua
local snd_setmixer = cvar.snd_setmixer

-- Mutes ambient volume by setting the mixer "vol" option to 0
snd_setmixer:invoke_callback("Ambient", "vol", "0")
```
{% endcode-tabs-item %}
{% endcode-tabs %}


--------------------------------------------------------------------------------
SECCION 8 / 328
=== GLOBALS: database ===
Ruta relativa: globals/database.md
--------------------------------------------------------------------------------

---
description: Persistent storage engine that lets you store values between reloads / reinjects
---

# database

### Functions:
#### database.read

`database.read(key_name: string)`: any

Argument | Type | Description
-------- | ---- | -----------
  **key_name** | string | String used as a name of the key. Make sure to write to the same key_name.

Gets a value from the database


#### database.write

`database.write(key_name: string, value: any)`

Argument | Type | Description
-------- | ---- | -----------
  **key_name** | string | String used as a name of the key.
  **value** | any | Value the key should be set to. This can be anything that can be sanitized (no functions, userdata)

Writes a value to the database. Avoid calling this often. For example, call read at script load, then call write during the 'shutdown' event


### Examples:

{% code-tabs %}
{% code-tabs-item title="database-1.lua" %}
```lua
local data = database.read("example-1") or {}
data.load_count = (data.load_count or 0) + 1

client.log("this is the ", data.load_count, ". time you've loaded this script!")

client.set_event_callback("player_death", function(e)
	if client.userid_to_entindex(e.attacker) == entity.get_local_player() then
		data.kill_count = (data.kill_count or 0) + 1
		client.log("this is your ", data.kill_count, ". kill!")
	end
end)

client.set_event_callback("shutdown", function()
	database.write("example-1", data)
end)
```
{% endcode-tabs-item %}
{% endcode-tabs %}


--------------------------------------------------------------------------------
SECCION 9 / 328
=== GLOBALS: entity ===
Ruta relativa: globals/entity.md
--------------------------------------------------------------------------------

---
description: Functions for getting and setting entities and entity data.
---

# entity

### Functions:
#### entity.get_all

`entity.get_all([classname: string])`: table (entindex)

Argument | Type | Description
-------- | ---- | -----------
  **classname** | string (entity classname) | String that specifies the class name of entities that will be added to the list, for example "CCSPlayer".

Returns an array of entity indices. Pass no arguments for all entities.


#### entity.get_bounding_box

`entity.get_bounding_box(player: number)`: number, number, number, number, number

Argument | Type | Description
-------- | ---- | -----------
  **player** | number (entindex) | Entity index of the player.

Returns x1, y1, x2, y2, alpha_multiplier. The contents of x1, y1, x2, y2 must be ignored when alpha_multiplier is zero, which indicates that the bounding box is invalid and should not be drawn.


#### entity.get_classname

`entity.get_classname(ent: number)`: string

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Entity index.

Returns the name of the entity's class, or nil on failure.


#### entity.get_esp_data

`entity.get_esp_data(player: number)`: table

Argument | Type | Description
-------- | ---- | -----------
  **player** | number (entindex) | Entity index

Returns a table containing alpha, health, and weapon_id, or nil on failure.


#### entity.get_game_rules

`entity.get_game_rules()`: number (entindex)

Returns entity index of CCSGameRulesProxy instance, or nil if none exists.


#### entity.get_local_player

`entity.get_local_player()`: number (entindex)

Returns the entity index for the local player, or nil on failure.


#### entity.get_origin

`entity.get_origin(ent: number)`: number, number, number

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Entity index

Returns the x, y, z coordinates of the entity. Only works for non-dormant entities, except for players, where it will return the dormant esp origin


#### entity.get_player_name

`entity.get_player_name(ent: number)`: string

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Player entity index.

Returns the player's name, or the string "unknown" on failure.


#### entity.get_player_resource

`entity.get_player_resource()`: number (entindex)

Returns entity index of CCSPlayerResource instance, or nil if none exists.


#### entity.get_player_weapon

`entity.get_player_weapon(ent: number)`: number (entindex)

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Player entity index.

Returns the entity index of the player's active weapon, or nil if the player is not alive, dormant, etc.


#### entity.get_players

`entity.get_players([enemies_only: boolean])`: table (entindex)

Argument | Type | Description
-------- | ---- | -----------
  **enemies_only** | boolean | If true then you and the players on your team will not be added to the list.

Returns an array of player entity indices. Dormant and dead players will not be added to the list.


#### entity.get_prop

`entity.get_prop(ent: number, propname: string[, array_index: number])`: any

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Entity index.
  **propname** | string (netprop) | Name of the networked property.
  **array_index** | number | If propname is an array, the value at this array index will be returned.

Returns the value of the property, or nil on failure. For vectors or angles, this returns three values.


#### entity.get_steam64

`entity.get_steam64(player: number)`: string

Argument | Type | Description
-------- | ---- | -----------
  **player** | number (entindex) | Entity index of the player.

Returns steamID3, or nil on failure.


#### entity.hitbox_position

`entity.hitbox_position(player: number, hitbox: number)`: number, number, number

Argument | Type | Description
-------- | ---- | -----------
  **player** | number (entindex) | Entity index of the player.
  **hitbox** | number (hitbox id) | Either a string of the hitbox name, or an integer index of the hitbox.

Returns world coordinates x, y, z, or nil on failure.


#### entity.is_alive

`entity.is_alive(ent: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Entity index.

Returns true if the player is not dead.


#### entity.is_dormant

`entity.is_dormant(ent: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Entity index.

Returns true if the entity is dormant.


#### entity.is_enemy

`entity.is_enemy(ent: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Entity index.

Returns true if the entity is on the other team.


#### entity.set_prop

`entity.set_prop(ent: number, propname: string, value: any[, array_index: number])`

Argument | Type | Description
-------- | ---- | -----------
  **ent** | number (entindex) | Entity index.
  **propname** | string (netprop) | Name of the networked property.
  **value** | any | The property will be set to this value. For vectors or angles, separate the components by commas.
  **array_index** | number | If propname is an array, the value at this array index will be set.

Sets the value of the property. For vectors or angles, pass three values.



--------------------------------------------------------------------------------
SECCION 10 / 328
=== GLOBALS: globals ===
Ruta relativa: globals/globals.md
--------------------------------------------------------------------------------

---
description: Functions for getting game globals such as the server time and map name.
---

# globals

### Functions:
#### globals.absoluteframetime

`globals.absoluteframetime()`: number

Returns the number of seconds elapsed during the last game frame.


#### globals.chokedcommands

`globals.chokedcommands()`: number

Returns the number of choked commands, i.e. the number of commands that haven't yet been sent to the server.


#### globals.commandack

`globals.commandack()`: number

Returns the command number of the most recent server-acknowledged command.


#### globals.curtime

`globals.curtime()`: number

Returns the game time in seconds. This number is synchronized with the server.


#### globals.framecount

`globals.framecount()`: number

Returns the number of frames since the game started


#### globals.frametime

`globals.frametime()`: number

Returns the number of seconds elapsed during the last game frame.


#### globals.lastoutgoingcommand

`globals.lastoutgoingcommand()`: number

Returns the command number of the last outgoing command.


#### globals.mapname

`globals.mapname()`: string

Returns the name of the loaded map, or nil if you are not in game.


#### globals.maxplayers

`globals.maxplayers()`: number

Returns the maximum number of players in the server.


#### globals.oldcommandack

`globals.oldcommandack()`: number

Returns the command number of the previous server-acknowledged command.


#### globals.realtime

`globals.realtime()`: number

Returns the local time in seconds.


#### globals.tickcount

`globals.tickcount()`: number

Returns the number of ticks elapsed in the server.


#### globals.tickinterval

`globals.tickinterval()`: number

Returns the time elapsed in one game tick in seconds.



--------------------------------------------------------------------------------
SECCION 11 / 328
=== GLOBALS: json ===
Ruta relativa: globals/json.md
--------------------------------------------------------------------------------

---
description: JSON encoding / parsing functions, based on lua-cjson
---

# json

### Functions:
#### json.decode_invalid_numbers

`json.decode_invalid_numbers([setting: boolean])`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **setting** | boolean | Pass true to accept and decode invalid numbers or false to throw an error

Lua CJSON may generate an error when trying to decode numbers not supported by the JSON specification. Invalid numbers are defined as: infinity, not-a-number (NaN) or hexadecimal. The current value wil always be returned.


#### json.decode_max_depth

`json.decode_max_depth([setting: number])`: number

Argument | Type | Description
-------- | ---- | -----------
  **setting** | number | Depth must be a positive integer. Default: 1000.

Lua CJSON will generate an error when parsing deeply nested JSON once the maximum array/object depth has been exceeded. This check prevents unnecessarily complicated JSON from slowing down the application, or crashing the application due to lack of process stack space.


#### json.encode_invalid_numbers

`json.encode_invalid_numbers([setting: boolean])`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **setting** | boolean | Pass true to allow invalid numbers to be encoded. This will generate non-standard JSON, but this output is supported by some libraries.

Lua CJSON may generate an error when encoding floating point numbers not supported by the JSON specification (invalid numbers): infinity, not-a-number (NaN)


#### json.encode_keep_buffer

`json.encode_keep_buffer([setting: boolean])`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **setting** | boolean | The buffer will grow to the largest size required and is not freed until the Lua CJSON module is garbage collected when true is passed.

Lua CJSON can reuse the JSON encoding buffer to improve performance.


#### json.encode_max_depth

`json.encode_max_depth([depth: number])`: number

Argument | Type | Description
-------- | ---- | -----------
  **depth** | number | Depth must be a positive integer. Default: 1000.

Once the maximum table depth has been exceeded Lua CJSON will generate an error. This prevents a deeply nested or recursive data structure from crashing the application.


#### json.encode_number_precision

`json.encode_number_precision([precision: number])`: number

Argument | Type | Description
-------- | ---- | -----------
  **precision** | number | Precision must be an integer between 1 and 14. Default: 14.

The amount of significant digits returned by Lua CJSON when encoding numbers can be changed to balance accuracy versus performance. For data structures containing many numbers, setting cjson.encode_number_precision to a smaller integer, for example 3, can improve encoding performance by up to 50%.


#### json.encode_sparse_array

`json.encode_sparse_array([convert: boolean] [, ratio: number] [, safe: number])`: boolean, number, number

Argument | Type | Description
-------- | ---- | -----------
  **convert** | boolean | Convert must be a boolean. Default: false
  **ratio** | number | Ratio must be a positive integer. Default: 2.
  **safe** | number | Safe must be a positive integer. Default: 10.

Lua CJSON classifies a Lua table into one of three kinds when encoding a JSON array. This is determined by the number of values missing from the Lua array as follows:


#### json.parse

`json.parse(json_text: string)`: any

Argument | Type | Description
-------- | ---- | -----------
  **json_text** | string | UTF-8 JSON text

json.parse will deserialise any UTF-8 JSON string into a Lua value or table. null will be converted to a NULL lightuserdata value. This can be compared with cjson.null for convenience.


#### json.stringify

`json.stringify(value: any)`: string

Argument | Type | Description
-------- | ---- | -----------
  **value** | any | A lua boolean, number, string, table or nil

Will serialise a Lua value into a string containing the JSON representation.



--------------------------------------------------------------------------------
SECCION 12 / 328
=== GLOBALS: materialsystem ===
Ruta relativa: globals/materialsystem.md
--------------------------------------------------------------------------------

---
description: Functions controlling the CS:GO Material System, letting you modulate, swap, remove materials and set their shader params / material vars
---

# materialsystem

### Functions:
#### materialsystem.arms_material

`materialsystem.arms_material()`: table (material object)

Returns a reference to the arms material when 'Viewmodel arms' is enabled


#### materialsystem.chams_material

`materialsystem.chams_material()`: table (material object)

Returns a reference to the player chams material


#### materialsystem.find_material

`materialsystem.find_material(path: string[, force_load: boolean])`: table (material object)

Argument | Type | Description
-------- | ---- | -----------
  **path** | string | Path to material including filename
  **force_load** | boolean | Boolean. Load the material if it isn't loaded

Returns a reference to the material


#### materialsystem.find_materials

`materialsystem.find_materials(partial_path: string[, force_load: boolean])`: table (material objects)

Argument | Type | Description
-------- | ---- | -----------
  **partial_path** | string | Partial path to material
  **force_load** | boolean | Boolean. Load each material if it isn't loaded

Returns a table of references to materials that have partial_path in their name


#### materialsystem.find_texture

`materialsystem.find_texture(path: string)`

Argument | Type | Description
-------- | ---- | -----------
  **path** | string | Path to texture including filename

Returns a reference to the texture that can be used with set_shader_param


#### materialsystem.get_model_materials

`materialsystem.get_model_materials(entindex: number)`: table (material objects)

Argument | Type | Description
-------- | ---- | -----------
  **entindex** | number (entindex) | Entity index

Returns a table of references to materials used by the entity


#### materialsystem.override_material

`materialsystem.override_material(material: table, material_new: table)`

Argument | Type | Description
-------- | ---- | -----------
  **material** | table (material object) | The material to override
  **material_new** | table (material object) | The material to override it with

Overrides all of a material properties with another material.


#### :alpha_modulate

`material_object:alpha_modulate(a: number)`

Argument | Type | Description
-------- | ---- | -----------
  **a** | number | New alpha value of the material (0-255)

Overrides the alpha of the material object it's called on. Doesn't work with some materials


#### :color_modulate

`material_object:color_modulate(r: number, g: number, b: number)`

Argument | Type | Description
-------- | ---- | -----------
  **r** | number | New red value of the material (0-255)
  **g** | number | New green value of the material (0-255)
  **b** | number | New blue value of the material (0-255)

Overrides the color of the material object it's called on. Doesn't work with some materials


#### :get_material_var_flag

`material_object:get_material_var_flag(material_var_flag: number)`: boolean

Argument | Type | Description
-------- | ---- | -----------
  **material_var_flag** | number (material var flag) | Material var flag as number

Returns the boolean value of the material var flag


#### :get_name

`material_object:get_name()`: string

Returns name of the material


#### :get_shader_param

`material_object:get_shader_param(shader_param: string)`: any

Argument | Type | Description
-------- | ---- | -----------
  **shader_param** | string (shader param) | Shader param name

Returns the value of the shader param or nil


#### :reload

`material_object:reload()`

Restores the original material properties of the material it's called on.


#### :set_material_var_flag

`material_object:set_material_var_flag(material_var_flag: number, value: any)`

Argument | Type | Description
-------- | ---- | -----------
  **material_var_flag** | number (material var flag) | Material var flag as number
  **value** | any | New boolean value of the material var flag

Sets the value of the material var flag of the material


#### :set_shader_param

`material_object:set_shader_param(shader_param: string, value: any)`

Argument | Type | Description
-------- | ---- | -----------
  **shader_param** | string (shader param) | Shader param name
  **value** | any | New value of the shader param

Sets the value of the shader param of the material


### Examples:

{% code-tabs %}
{% code-tabs-item title="materialsystem-1.lua" %}
```lua
-- materialsystem example here
```
{% endcode-tabs-item %}
{% endcode-tabs %}


--------------------------------------------------------------------------------
SECCION 13 / 328
=== GLOBALS: panorama ===
Ruta relativa: globals/panorama.md
--------------------------------------------------------------------------------

---
description: API to interact with CS:GO's panorama UI
---

# panorama

### Functions:
#### panorama.loadstring

`panorama.loadstring(js_code: string[, panel: string])`

Argument | Type | Description
-------- | ---- | -----------
  **js_code** | string | String containing JavaScript code
  **panel** | string (panorama root panel) | Panel name

API to interact with CS:GO's panorama UI


#### panorama.open

`panorama.open([panel: string])`

Argument | Type | Description
-------- | ---- | -----------
  **panel** | string (panorama root panel) | Panel name

API to interact with CS:GO's panorama UI



--------------------------------------------------------------------------------
SECCION 14 / 328
=== GLOBALS: plist ===
Ruta relativa: globals/plist.md
--------------------------------------------------------------------------------

---
description: Functions for interacting with the player list
---

# plist

### Functions:
#### plist.get

`plist.get(entindex: number, field: string)`

Argument | Type | Description
-------- | ---- | -----------
  **entindex** | number (entindex) | Player index
  **field** | string (menu item) | Name of the field

Functions for interacting with the player list


#### plist.set

`plist.set(entindex: number, field: string, value: any)`

Argument | Type | Description
-------- | ---- | -----------
  **entindex** | number (entindex) | Player index
  **field** | string (menu item) | Name of the field
  **value** | any | Value of the field

Functions for interacting with the player list



--------------------------------------------------------------------------------
SECCION 15 / 328
=== GLOBALS: renderer ===
Ruta relativa: globals/renderer.md
--------------------------------------------------------------------------------

---
description: Functions for drawing visuals. Usually won't work outside the `paint` event.
---

# renderer

### Functions:
#### renderer.circle

`renderer.circle(x: number, y: number, r: number, g: number, b: number, a: number, radius: number, start_degrees: number, percentage: number)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **radius** | number | Radius of the circle in pixels.
  **start_degrees** | number (0 - 360) | 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.
  **percentage** | number (0 - 1) | Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.

This can only be called from the paint callback.


#### renderer.circle_outline

`renderer.circle_outline(x: number, y: number, r: number, g: number, b: number, a: number, radius: number, start_degrees: number, percentage: number, thickness: number)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **radius** | number | Radius of the circle in pixels.
  **start_degrees** | number (0 - 360) | 0 is the right side, 90 is the bottom, 180 is the left, 270 is the top.
  **percentage** | number (0 - 1) | Must be within [0.0-1.0]. 1.0 is a full circle, 0.5 is a half circle, etc.
  **thickness** | number (px) | Thickness of the outline in pixels.

This can only be called from the paint callback.


#### renderer.gradient

`renderer.gradient(x: number, y: number, w: number, h: number, r1: number, g1: number, b1: number, a1: number, r2: number, g2: number, b2: number, a2: number, ltr: boolean)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **w** | number (px) | Width in pixels
  **h** | number (px) | Height in pixels
  **r1** | number | Red (0-255)
  **g1** | number | Green (0-255)
  **b1** | number | Blue (0-255)
  **a1** | number | Alpha (0-255)
  **r2** | number | Red (0-255)
  **g2** | number | Green (0-255)
  **b2** | number | Blue (0-255)
  **a2** | number | Alpha (0-255)
  **ltr** | boolean | Left to right. Pass true for horizontal gradient, or false for vertical.

This can only be called from the paint callback.


#### renderer.indicator

`renderer.indicator(r: number, g: number, b: number, a: number, ...)`: number

Argument | Type | Description
-------- | ---- | -----------
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **...** |  | The text that will be drawn

Returns the Y screen coordinate (vertical offset) of the drawn text, or nil on failure. This can only be called from the paint callback.


#### renderer.line

`renderer.line(xa: number, ya: number, xb: number, yb: number, r: number, g: number, b: number, a: number)`

Argument | Type | Description
-------- | ---- | -----------
  **xa** | number (screen coordinate) | Screen coordinate of point A
  **ya** | number (screen coordinate) | Screen coordinate of point A
  **xb** | number (screen coordinate) | Screen coordinate of point B
  **yb** | number (screen coordinate) | Screen coordinate of point B
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)

This can only be called from the paint callback.


#### renderer.load_jpg

`renderer.load_jpg(contents: string, width: number, height: number)`: number (texture id)

Argument | Type | Description
-------- | ---- | -----------
  **contents** | string | Raw JPG file contents
  **width** | number (px) | Image width
  **height** | number (px) | Image height

Loads a texture from raw JPG contents (with file header). Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_png

`renderer.load_png(contents: string, width: number, height: number)`: number (texture id)

Argument | Type | Description
-------- | ---- | -----------
  **contents** | string | Raw PNG file contents
  **width** | number (px) | Image width
  **height** | number (px) | Image height

Loads a texture from raw png contents (with file header). Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_rgba

`renderer.load_rgba(contents: string, width: number, height: number)`: number (texture id)

Argument | Type | Description
-------- | ---- | -----------
  **contents** | string | RGBA buffer (hex encoded - red = "\xFF\x00\x00\xFF")
  **width** | number (px) | Width
  **height** | number (px) | Height

Loads a texture from a RGBA buffer. Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.load_svg

`renderer.load_svg(contents: string, width: number, height: number)`: number (texture id)

Argument | Type | Description
-------- | ---- | -----------
  **contents** | string | SVG file contents
  **width** | number (px) | Width
  **height** | number (px) | Height

Returns a texture ID that can be used with renderer.texture, or nil on failure


#### renderer.measure_text

`renderer.measure_text(flags: string, ...)`: number, number

Argument | Type | Description
-------- | ---- | -----------
  **flags** | string (text flags) | "+" for large text, "-" for small text, or nil for normal sized text.
  **...** |  | Text that will be measured

Returns width, height. This can only be called from the paint callback.


#### renderer.rectangle

`renderer.rectangle(x: number, y: number, w: number, h: number, r: number, g: number, b: number, a: number)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **w** | number (px) | Width in pixels
  **h** | number (px) | Height in pixels
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)

This can only be called from the paint callback.


#### renderer.text

`renderer.text(x: number, y: number, r: number, g: number, b: number, a: number, flags: string, max_width: number, ...)`

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (screen coordinate) | Screen coordinate
  **y** | number (screen coordinate) | Screen coordinate
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **flags** | string (text flags) | "+" for large text, "-" for small text, "c" for centered text, "r" for right-aligned text, "b" for bold text, "d" for high DPI support. "c" can be combined with other flags. nil can be specified for normal sized uncentered text.
  **max_width** | number | Text will be clipped if it exceeds this width in pixels. Use 0 for no limit.
  **...** |  | Text that will be drawn

This can only be called from the paint callback.


#### renderer.texture

`renderer.texture(id: number, x: number, y: number, w: number, h: number, r: number, g: number, b: number, a: number[, mode: string])`

Argument | Type | Description
-------- | ---- | -----------
  **id** | number (texture id) | Texture ID
  **x** | number (screen coordinate) | X screen coordinate
  **y** | number (screen coordinate) | Y screen coordinate
  **w** | number (px) | Width
  **h** | number (px) | Height
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)
  **mode** | string | String: "f" for fill, "r" for repeat, otherwise automatic

Draws a texture from the texture id created from load_rgba, load_png, load_jpg or load_svg


#### renderer.triangle

`renderer.triangle(x0: number, y0: number, x1: number, y1: number, x2: number, y2: number, r: number, g: number, b: number, a: number)`

Argument | Type | Description
-------- | ---- | -----------
  **x0** | number (screen coordinate) | Screen coordinate X for point A
  **y0** | number (screen coordinate) | Screen coordinate Y for point A
  **x1** | number (screen coordinate) | Screen coordinate X for point B
  **y1** | number (screen coordinate) | Screen coordinate Y for point B
  **x2** | number (screen coordinate) | Screen coordinate X for point C
  **y2** | number (screen coordinate) | Screen coordinate Y for point C
  **r** | number | Red (0-255)
  **g** | number | Green (0-255)
  **b** | number | Blue (0-255)
  **a** | number | Alpha (0-255)

This can only be called from the paint callback.


#### renderer.world_to_screen

`renderer.world_to_screen(x: number, y: number, z: number)`: number, number, number

Argument | Type | Description
-------- | ---- | -----------
  **x** | number (world coordinate) | Position in world space
  **y** | number (world coordinate) | Position in world space
  **z** | number (world coordinate) | Position in world space

Returns two screen coordinates (x, y), or nil if the world position is not visible on your screen. This can only be called from the paint callback.



--------------------------------------------------------------------------------
SECCION 16 / 328
=== GLOBALS: ui ===
Ruta relativa: globals/ui.md
--------------------------------------------------------------------------------

---
description: Functions for interfacing with the gamesense menu
---

# ui

### Functions:
#### ui.get

`ui.get(item: number)`: any

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.

For a checkbox, returns true or false. For a slider, returns an integer. For a combobox, returns a string. For a multiselect combobox, returns an array of strings. For a hotkey, returns true if the hotkey is active. For a color picker, returns r, g, b, a. Throws an error on failure.


#### ui.is_menu_open

`ui.is_menu_open()`: boolean

Returns true if the menu is currently open.


#### ui.menu_position

`ui.menu_position()`: number, number

Returns the x, y of the menu, even when closed.


#### ui.menu_size

`ui.menu_size()`: number, number

Returns the width, height of the menu, even when closed.


#### ui.mouse_position

`ui.mouse_position()`: number, number

Returns current mouse coordinates x, y


#### ui.name

`ui.name(item: number)`: string

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.

Returns the display name


#### ui.new_button

`ui.new_button(tab: string, container: string, name: string, callback: function)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this checkbox will be added.
  **name** | string (menu item) | The name of the button.
  **callback** | function | The lua function that will be called when the button is pressed.

Throws an error on failure. The return value should not be used with ui.set or ui.get.


#### ui.new_checkbox

`ui.new_checkbox(tab: string, container: string, name: string)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the checkbox.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_color_picker

`ui.new_color_picker(tab: string, container: string, name: string[, r: number] [, g: number] [, b: number] [, a: number])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this checkbox will be added.
  **name** | string (menu item) | The name of the color picker. This will not be shown, it is only used to identify this item in saved configs.
  **r** | number | Initial red value (0-255)
  **g** | number | Initial green value (0-255)
  **b** | number | Initial blue value (0-255)
  **a** | number | Initial alpha value (0-255)

Throws an error on failure. The color picker is placed to the right of the previous menu item.


#### ui.new_combobox

`ui.new_combobox(tab: string, container: string, name: string, ...)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the combobox.
  **...** |  | One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_hotkey

`ui.new_hotkey(tab: string, container: string, name: string[, inline: boolean] [, default_hotkey: number])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the hotkey.
  **inline** | boolean | Boolean. If set to true, the hotkey will be placed to the right of the preceding menu item.
  **default_hotkey** | number (virtual key code) | Virtual key

Returns a special value that can be passed to ui.get to see if the hotkey is pressed, or throws an error on failure.


#### ui.new_label

`ui.new_label(tab: string, container: string, name: string)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, CONFIG or LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the label. This can later be changed using ui.set.

Creates a new label, this can be used to make otherwise attached menu items standalone or have interactive menus. Returns a special value that can be passed to ui.set, or throws an error on failure.


#### ui.new_listbox

`ui.new_listbox(tab: string, container: string, name: string[, items: table])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA
  **container** | string (menu container) | The name of the existing container to which this listbox will be added
  **name** | string (menu item) | Name
  **items** | table | Table of items (strings)

Throws an error on failure. Returns a special value that can be used with ui.get. Calling ui.get on a listbox will return the zero-based index of the currently selected string.


#### ui.new_multiselect

`ui.new_multiselect(tab: string, container: string, name: string, ...)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the multiselect.
  **...** |  | One or more comma separated string values that will be added to the combobox. Alternatively, a table of strings that will be added.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_slider

`ui.new_slider(tab: string, container: string, name: string, min: number, max: number[, init_value: number] [, show_tooltip: boolean] [, unit: string] [, scale: number] [, tooltips: table])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this control will be added.
  **name** | string (menu item) | The name of the slider.
  **min** | number | The minimum value that can be set using the slider.
  **max** | number | The maximum value that can be set using the slider.
  **init_value** | number | Integer. The initial value. If not provided, the initial value will be min.
  **show_tooltip** | boolean | Boolean. true if the slider should display its current value.
  **unit** | string | String that is two characters or less. This will be appended to the display value. For example, "px" for pixels or "%" for a percentage.
  **scale** | number | The display value will be multiplied by this scale. For example, 0.1 will make a slider with the range [0-1800] show as 0.0-180.0 with one decimal place.
  **tooltips** | table | Table used to override the tooltip for the specified values. The key must be within min-max. The value is a string that will be shown instead of the numeric value whenever that value is selected.

Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_string

`ui.new_string(name: string[, default_value: string])`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **name** | string (menu item) | The name of the string element, make sure this is unique.
  **default_value** | string | String that specifies the default value.

Creates a string UI element, can be used to store arbitrary strings in configs. No menu item is created but it has the same semantics as other ui.new_* functions. Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.


#### ui.new_textbox

`ui.new_textbox(tab: string, container: string, name: string)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this textbox will be added.
  **name** | string (menu item) | The name of the textbox

Throws an error on failure. Returns a special value that can be used with ui.get


#### ui.reference

`ui.reference(tab: string, container: string, name: string)`: number (menu item)

Argument | Type | Description
-------- | ---- | -----------
  **tab** | string (menu tab) | The name of the tab: RAGE, AA, LEGIT, VISUALS, MISC, SKINS, PLAYERS, LUA.
  **container** | string (menu container) | The name of the existing container to which this checkbox will be added.
  **name** | string (menu item) | The name of the menu item.

Avoid calling this from inside a function. Returns a reference that can be passed to ui.get and ui.set, or throws an error on failure. This allows you to access a built-in pre-existing menu items. This function returns multiple values when the specified menu item is followed by unnamed menu items, for example a color picker or a hotkey.


#### ui.set

`ui.set(item: number, value: any[, ...])`

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | The result of either ui.new_* or ui.reference
  **value** | any | The value to which the menu item will be set
  **...** |  | For multiselect comboboxes, you may want to set more than one option.

For checkboxes, pass true or false. For a slider, pass a number that is within the slider's minimum/maximum values. For a combobox, pass a string value. For a multiselect combobox, pass zero or more strings. For referenced buttons, value is ignored and the button's callback is invoked. For color pickers, pass the arguments r, g, b, a.


#### ui.set_callback

`ui.set_callback(item: number, callback: function)`

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (custom menu reference) | The special value returned by ui.new_*. Do not try passing a reference to an existing menu item.
  **callback** | function | Lua function that will be called when the menu item changes values. For example, this will be called when the user checks or unchecks a checkbox.

Sets the change callback of a custom menu item. It will be executed on change and passed the reference


#### ui.set_visible

`ui.set_visible(item: number, visible: boolean)`

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | A menu item reference.
  **visible** | boolean | Boolean. Pass false to hide the control from the menu.

Sets the visibility of the menu item


#### ui.update

`ui.update(item: number, value: any, ...)`

Argument | Type | Description
-------- | ---- | -----------
  **item** | number (menu reference) | The special value returned by ui.new_checkbox, ui.new_slider, ui.new_combobox, ui.new_hotkey, or ui.reference.
  **value** | any | The value to which the menu item will be set
  **...** |  | For multiselect comboboxes, you may want to set more than one option.

Creates a string UI element, can be used to store arbitrary strings in configs. No menu item is created but it has the same semantics as other ui.new_* functions. Returns a special value that can be passed to ui.get and ui.set, or throws an error on failure.



--------------------------------------------------------------------------------
SECCION 17 / 328
=== GLOBALS: vector ===
Ruta relativa: globals/vector.md
--------------------------------------------------------------------------------

---
description: Built-in vector library, loaded by requiring vector
---

# vector

### Functions:
#### vector

`vector(x: number, y: number, z: number)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | X coordinate of 3D position
  **y** | number | Y coordinate of 3D position
  **z** | number | Z coordinate of 3D position

Creates a new vector object. Please note that you need to load the built-in vector library with require "vector"


#### :angles

`vector_object:angles()`: number, number, number

Converts the vector to an angle and returns the pitch, yaw and roll


#### :dist2d

`vector_object:dist2d(other: vector)`: number

Argument | Type | Description
-------- | ---- | -----------
  **other** | vector | Other vector

Returns the cross product / vector product of itself and another vector


#### :dist

`vector_object:dist(other: vector)`: number

Argument | Type | Description
-------- | ---- | -----------
  **other** | vector | Vector to calculate the distance to

Returns the 3d distance to another vector


#### :dist

`vector_object:dist(other: vector)`: number

Argument | Type | Description
-------- | ---- | -----------
  **other** | vector | Vector to calculate the distance to

Returns the 2d distance to another vector


#### :dot

`vector_object:dot()`: number

Returns the dot product of the vector


#### :init

`vector_object:init(x: number, y: number, z: number)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **x** | number | X coordinate of 3D position
  **y** | number | Y coordinate of 3D position
  **z** | number | Z coordinate of 3D position

Overwrites the X, Y and Z coordinates of the vector object, returning itself


#### :init_from_angles

`vector_object:init_from_angles(pitch: number, yaw: number[, roll: number])`: vector

Argument | Type | Description
-------- | ---- | -----------
  **pitch** | number | Pitch component of angle
  **yaw** | number | Yaw component of angle
  **roll** | number | Roll component of angle

Converts the pitch, yaw and roll passed to a forward vector and overwrites the X, Y and Z coordinates with that. Returns itself


#### :length

`vector_object:length()`: number

Returns the length (magnitude)


#### :length2d

`vector_object:length2d()`: number

Returns the 2d length (X and Y components)


#### :length2dsqr

`vector_object:length2dsqr()`: number

Returns the squared 2d length (X and Y components, faster than :length2d)


#### :lengthsqr

`vector_object:lengthsqr()`: number

Returns the squared length (faster than :length)


#### :lerp

`vector_object:lerp(to: vector, percentage: number)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **to** | vector | Vector to lerp to
  **percentage** | number | Interpolation percentage (0-1)

Interpolates by the specified percentage between the 2 vectors.


#### :normalize

`vector_object:normalize()`

Normalizes the vector, dividing it by it's own length (resulting in a unit vector with length = 1)


#### :normalized

`vector_object:normalized()`: vector

Returns a new unit vector, divided it by it's own length


#### :scale

`vector_object:scale(scalar: number)`

Argument | Type | Description
-------- | ---- | -----------
  **scalar** | number | Scalar value

Scales the vector by the specified value.


#### :scaled

`vector_object:scaled(scalar: number)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **scalar** | number | Scalar value

Returns a new vector, scaled by the specified value.


#### :to

`vector_object:to(other: vector)`: vector

Argument | Type | Description
-------- | ---- | -----------
  **other** | vector | Other vector

Returns the forward vector from itself to another vector


#### :unpack

`vector_object:unpack()`: number, number, number

Returns the X, Y and Z coordinate of the vector object. They can also be accessed by vec.x, vec.y, etc


#### :vectors

`vector_object:vectors()`: vector, vector

Returns the right and up vector of a forward vector



--------------------------------------------------------------------------------
SECCION 18 / 328
=== DEVELOPMENT: development/README.md ===
Ruta relativa: development/README.md
--------------------------------------------------------------------------------

# Development

To get started with lua scripting, you'll need a suitable text editor. We suggest [VS Code](https://code.visualstudio.com/) or [Sublime Text](https://www.sublimetext.com/), but in theory [Notepad++](https://notepad-plus-plus.org/download/) or even the built-in Microsoft Notepad will probably work just fine. After choosing an editor, head over to

If you're unfamiliar with the Lua programming language, [Lua in 5 minutes](https://learnxinyminutes.com/docs/lua/) is a great guide to get started.

## Things to keep in mind:

- By default, all loaded lua scripts share the same environment. This means that if 2 scripts use a global variable with the same name, they will conflict with each other and cause all kinds of issues. To prevent this, always remember to make your variables, functions, etc **local**


--------------------------------------------------------------------------------
SECCION 19 / 328
=== DEVELOPMENT: development/compiling.md ===
Ruta relativa: development/compiling.md
--------------------------------------------------------------------------------

# Compiling lua scripts

**Compiling scripts can give a slight performance boost, although you should be fine without it.**

{% hint style="success" %}
[**Download from MEGA**](https://mega.nz/#!JpFAhYjb!35AbAx8sGdmVAI3o-EVHtGA_-Y1WqReo7WWUWHOdYo4)
{% endhint %}

1. Download the archive and extract it anywhere
2. Copy the script you want to compile into the extracted folder
3. Open command prompt, navigate to that folder

After you successfully extracted it, type the following command:

{% code-tabs %}
{% code-tabs-item title="compile.cmd" %}
```text
luajit.exe -b script.lua compiled.ljbc
```
{% endcode-tabs-item %}
{% endcode-tabs %}



--------------------------------------------------------------------------------
SECCION 20 / 328
=== DEVELOPMENT: development/editors/README.md ===
Ruta relativa: development/editors/README.md
--------------------------------------------------------------------------------

# Editors

Your editor setup is very important to avoid common issues and be productive. The editors mentioned here are very extensible and can be improved a lot to make lua scripting more enjoyable, people have even made extensions for them just for the gamesense API.

This section shows how to best configure your editor for writing scripts for gamesense lua scripting


--------------------------------------------------------------------------------
SECCION 21 / 328
=== DEVELOPMENT: development/editors/atom.md ===
Ruta relativa: development/editors/atom.md
--------------------------------------------------------------------------------

# GameSense API Snippets
*Credits to Nexxed*

1. Open Atom and go to "File" -> "Snippets..." to open the snippets.cson file.
2. [Download](https://gamesense.pub/forums/viewtopic.php?id=12394) and/or paste the contents of the Atom snippets into the snippets.cson file.
3. Save the file and restart Atom for the changes to take effect.

Note: This requires you to install the [language-lua](https://atom.io/packages/language-lua) package for the editor.

These snippets have descriptions (VSCode & Atom only) for most API functions as well as arguments and are currently up-to-date with the current API.

Thread: https://gamesense.pub/forums/viewtopic.php?id=12394

# Suggested extensions

- [language-lua](https://atom.io/packages/language-lua)


--------------------------------------------------------------------------------
SECCION 22 / 328
=== DEVELOPMENT: development/editors/sublime.md ===
Ruta relativa: development/editors/sublime.md
--------------------------------------------------------------------------------

# GameSense API Snippets
*Credits to Nexxed*

1. Open Sublime and go to "Preferences" -> "Browse Packages" while in the editor.
2. [Download](https://gamesense.pub/forums/viewtopic.php?id=12394), rename and drag the gamesense.sublime-completions file into the packages folder.
3. Profit!

These snippets have descriptions (VSCode & Atom only) for most API functions as well as arguments and are currently up-to-date with the current API.

Thread: https://gamesense.pub/forums/viewtopic.php?id=12394

# Suggested extensions

- [LuaExtended](https://packagecontrol.io/packages/LuaExtended)
- [SublimeLinter](https://packagecontrol.io/packages/SublimeLinter)
- [SublimeLinter-luacheck](https://packagecontrol.io/packages/SublimeLinter-luacheck)


--------------------------------------------------------------------------------
SECCION 23 / 328
=== DEVELOPMENT: development/editors/vscode.md ===
Ruta relativa: development/editors/vscode.md
--------------------------------------------------------------------------------

# GameSense API Snippets
*Credits to Nexxed*

1. Go to the [VSCode Marketplace page of the GameSense Lua API Snippets](https://marketplace.visualstudio.com/items?itemName=Nexxed.gamesense-lua) and click the green install button.
2. Follow the instructions.
3. Profit!

These snippets have descriptions (VSCode & Atom only) for most API functions as well as arguments and are currently up-to-date with the current API.

Thread: https://gamesense.pub/forums/viewtopic.php?id=12394

# Suggested extensions

- [LuaExtended](https://packagecontrol.io/packages/LuaExtended)
- [SublimeLinter](https://packagecontrol.io/packages/SublimeLinter)
- [SublimeLinter-luacheck](https://packagecontrol.io/packages/SublimeLinter-luacheck)


--------------------------------------------------------------------------------
SECCION 24 / 328
=== DEVELOPMENT: development/events.md ===
Ruta relativa: development/events.md
--------------------------------------------------------------------------------

---
description: List of events that you can listen to using client.set_event_callback
---
# Events

### List of events:

#### paint

Fired every time the game renders a frame while being connected to a server. Can be used to draw to the screen using the [renderer.*](/docs/developers/globals/renderer) functions


{% page-ref page="/developers/globals/renderer" %}

**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
client.set_event_callback("paint", function()
	renderer.text(15, 15, 255, 255, 255, 255, nil, 0, "hello world")
end)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### paint_ui

Fired every time the game renders a frame, even if you're in the menu. Can be used to draw to the screen using the [renderer.*](/docs/developers/globals/renderer) functions


{% page-ref page="/developers/globals/renderer" %}


#### run_command

Fired every time the game runs a command (usually 64 times a second, equal to tickrate) while you're alive. This is the best event for processing data that only changes when the game receives an update from the server, like information about other players.

Key | Description
--- | -----------
 **chokedcommands** | Amount of commands that the client has choked
 **command_number** | Current command number



#### setup_command

Fired every time the game prepares a move command that's sent to the server. This is ran before cheat features like antiaim and can be used to modify user input (view angles, pressed keys, movement) how it's seen by the cheat. For example, setting `in_use = 1` will disable antiaim the same way pressing use key ingame does. This is the preferred method of setting user input and should be used instead of `client.exec` whenever possible

Key | Description
--- | -----------
 **chokedcommands** | Amount of commands that the client has choked
 **command_number** | Current command number
 **pitch** | Pitch view angle
 **yaw** | Yaw view angle
 **forwardmove** | Forward / backward speed (-450 to 450)
 **sidemove** | Left / right speed (-450 to 450)
 **move_yaw** | Yaw angle that's used for movement. If not set, view yaw is used
 **allow_send_packet** | Set to false to make the cheat choke the current command (when possible)
 **in_attack** | IN_ATTACK Button
 **in_jump** | IN_JUMP Button
 **in_duck** | IN_DUCK Button
 **in_forward** | IN_FORWARD Button
 **in_back** | IN_BACK Button
 **in_use** | IN_USE Button
 **in_cancel** | IN_CANCEL Button
 **in_left** | IN_LEFT Button
 **in_right** | IN_RIGHT Button
 **in_moveleft** | IN_MOVELEFT Button
 **in_moveright** | IN_MOVERIGHT Button
 **in_attack2** | IN_ATTACK2 Button
 **in_run** | IN_RUN Button
 **in_reload** | IN_RELOAD Button
 **in_alt1** | IN_ALT1 Button
 **in_alt2** | IN_ALT2 Button
 **in_score** | IN_SCORE Button
 **in_speed** | IN_SPEED Button
 **in_walk** | IN_WALK Button
 **in_zoom** | IN_ZOOM Button
 **in_weapon1** | IN_WEAPON1 Button
 **in_weapon2** | IN_WEAPON2 Button
 **in_bullrush** | IN_BULLRUSH Button
 **in_grenade1** | IN_GRENADE1 Button
 **in_grenade2** | IN_GRENADE2 Button
 **in_attack3** | IN_ATTACK3 Button
 **weaponselect** | 
 **weaponsubtype** | 



#### override_view

Lets you override the camera position and angles

Key | Description
--- | -----------
 **x** | Camera X position
 **y** | Camera Y position
 **z** | Camera Z position
 **pitch** | Pitch view angle
 **yaw** | Yaw view angle
 **fov** | Field of view



#### console_input

Fired every time the user types something in the game console and presses enter. Return true from the event handler to make the game not process the input

|| Property
------ | --------
 1 | console input text


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
client.set_event_callback("console_input", function(text)
	client.log("entered: '", text, "'")
end)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### output

This event lets you override the text drawn in the top left. There can only be one callback for this event. This event callback is invoked from print, client.log, client.color_log, "Missed due to spread" message, etc.

{% hint style="warning" %}
Make sure to unset your callback when you don't need it. Otherwise you will break the built-in output and other scripts using this event.
{% endhint %}

Key | Description
--- | -----------
 **text** | Drawn text
 **r** | Drawn color: Red 0-255
 **g** | Drawn color: Green 0-255
 **b** | Drawn color: Blue 0-255
 **a** | Alpha 0-255



#### indicator

This event lets you lets you override how indicators are drawn. There can only be one callback for this event. This event callback is invoked from renderer.indicator and indicators like "DT".

{% hint style="warning" %}
Make sure to unset your callback when you don't need it. Otherwise you will break the built-in indicators and other scripts using this event.
{% endhint %}

Key | Description
--- | -----------
 **text** | Drawn text
 **r** | Drawn color: Red 0-255
 **g** | Drawn color: Green 0-255
 **b** | Drawn color: Blue 0-255
 **a** | Alpha 0-255



#### player_chat

Fired when a player sends a message to chat

Key | Description
--- | -----------
 **teamonly** | true if the message was sent to team chat
 **entity** | Entity index of the player sending the message
 **name** | Name of the player sending the message
 **text** | Chat message text



#### string_cmd

Fired before a string command (chat messages, weapon inspecting, buy commands) is sent to the server.

|| Property
------ | --------
 1 | string command



#### net_update_start

Fired before the game processes entity updates from the server. (`FrameStageNotify FRAME_NET_UPDATE_START`) Be careful when using this event to modify entity data, some things have to be restored manually as not even a full update will update them



#### net_update_end

Fired after an entity update packet is received from the server. (`FrameStageNotify FRAME_NET_UPDATE_END`)



#### predict_command

Fired when the game prediction is ran

{% hint style="info" %}
This event is called a lot of times per second, avoid doing any heavy processing in it.
{% endhint %}

Key | Description
--- | -----------
 **command_number** | Command number of the predicted command



#### pre_render

Fired before a frame is rendered



#### post_render

Fired after a frame is rendered



#### aim_fire

Fired when the rage aimbot shoots at a player

Key | Description
--- | -----------
 **id** | Shot ID, this can be used to find the corresponding aim_hit / aim_miss event
 **target** | Target player entindex
 **hit_chance** | Chance the shot will hit, depends on spread
 **hitgroup** | Targeted hit group, this is not the same thing as a hitbox
 **damage** | Predicted damage the shot will do
 **backtrack** | Amount of ticks the player was backtracked
 **boosted** | True if accuracy boost was used to increase the accuracy of the shot
 **high_priority** | True if the shot was at a high priority record, like on shot backtrack
 **interpolated** | Player was interpolated
 **extrapolated** | Player was extrapolated
 **teleported** | Target player was teleporting (breaking lag compensation)
 **tick** | Tick the shot was fired at. This can be used to draw the hitboxes using client.draw_hitboxes
 **x** | X world coordinate of the aim point
 **y** | X world coordinate of the aim point
 **z** | Z world coordinate of the aim point


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local function time_to_ticks(t)
	return floor(0.5 + (t / globals.tickinterval()))
end

local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_fire(e)
	local flags = {
		e.teleported and 'T' or '',
		e.interpolated and 'I' or '',
		e.extrapolated and 'E' or '',
		e.boosted and 'B' or '',
		e.high_priority and 'H' or ''
	}
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Fired at %s (%s) for %d dmg (chance=%d%%, bt=%2d, flags=%s)', entity.get_player_name(e.target), group, e.damage, math.floor(e.hit_chance + 0.5), time_to_ticks(e.backtrack), table.concat(flags)))
end
client.set_event_callback('aim_fire', aim_fire)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### aim_hit

Fired when the rage aimbot hit a shot at a player

Key | Description
--- | -----------
 **id** | Shot ID, the corresponding aim_fire event has the same ID
 **target** | Target player entindex
 **hit_chance** | Actual hit chance the shot had
 **hitgroup** | Hit group that was hit. This is not the same thing as a hitbox
 **damage** | Actual damage the shot did


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_hit(e)
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Hit %s in the %s for %d damage (%d health remaining)', entity.get_player_name(e.target), group, e.damage, entity.get_prop(e.target, 'm_iHealth')))
end
client.set_event_callback('aim_hit', aim_hit)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### aim_miss

Fired when the rage aimbot missed a shot at a player

Key | Description
--- | -----------
 **id** | Shot ID, the corresponding aim_fire event has the same ID
 **target** | Target player entindex
 **hit_chance** | Actual hit chance the shot had
 **hitgroup** | Hit group that was missed. This is not the same thing as a hitbox
 **reason** | Reason the shot was missed. This can be 'spread', 'prediction error', 'death' or '?' (unknown / resolver)


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_miss(e)
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Missed %s (%s) due to %s', entity.get_player_name(e.target), group, e.reason))
end
client.set_event_callback('aim_miss', aim_miss)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### pre_config_load

Fired before a config will be loaded



#### post_config_load

Fired after a config has been loaded



#### pre_config_save

Fired before a config will be saved



#### post_config_save

Fired after a config has been saved





--------------------------------------------------------------------------------
SECCION 25 / 328
=== DEVELOPMENT: development/examples/README.md ===
Ruta relativa: development/examples/README.md
--------------------------------------------------------------------------------

# Examples

These example show how to use certain parts of the gamesense API and highlight best practices.


--------------------------------------------------------------------------------
SECCION 26 / 328
=== DEVELOPMENT: development/examples/auto_buy.md ===
Ruta relativa: development/examples/auto_buy.md
--------------------------------------------------------------------------------

# Auto buy

This script adds an "Auto buy AWP" checkbox to the misc tab, useful for spread HvH when AWP purchases are limited.

{% code-tabs %}
{% code-tabs-item title="auto_buy.lua" %}
```lua
local ui_get, console_cmd = ui.get, client.exec

local auto_buy_awp = ui.new_checkbox("MISC", "Miscellaneous", "Auto buy AWP")

local function on_round_prestart(e)
	if ui_get(auto_buy_awp) then
		console_cmd("buy awp;")
	end
end
client.set_event_callback("round_prestart", on_round_prestart)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

Originally written by admin


--------------------------------------------------------------------------------
SECCION 27 / 328
=== DEVELOPMENT: development/examples/create_interface.md ===
Ruta relativa: development/examples/create_interface.md
--------------------------------------------------------------------------------

# Create interface

This script is an example for "client.create_interface".
With this function you can access classes or functions provided by the game itself.

{% code-tabs %}
{% code-tabs-item title="create_interface.lua" %}
```lua
local ffi = require 'ffi'

ffi.cdef[[
    typedef unsigned char wchar_t;

    typedef bool (__thiscall *IsButtonDown_t)(void*, int);
]]
local interface_ptr = ffi.typeof('void***')

local raw_inputsystem = client.create_interface('inputsystem.dll', 'InputSystemVersion001')

-- cast the lightuserdata to a type that we can dereference
local inputsystem = ffi.cast(interface_ptr, raw_inputsystem) -- void***

-- dereference the interface pointer to get its vtable
local inputsystem_vtbl = inputsystem[0] -- void**

-- vtable is an array of functions, the 15th is IsButtonDown
local raw_IsButtonDown = inputsystem_vtbl[15] -- void*

-- cast the function pointer to a callable type
local is_button_pressed = ffi.cast('IsButtonDown_t', raw_IsButtonDown)

local function run_command(cmd)
    if is_button_pressed(inputsystem, 36) then -- ButtonCode_t for Z
        print('Z is pressed')
    end
    return false
end

client.set_event_callback('run_command', run_command)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

Originally written by admin


--------------------------------------------------------------------------------
SECCION 28 / 328
=== DEVELOPMENT: development/examples/head_dot.md ===
Ruta relativa: development/examples/head_dot.md
--------------------------------------------------------------------------------

# Head Dot ESP

This script, if enabled, draws small dots on the heads of enemies. The dots are white if the head is invisible and red if visible

![](https://i.imgur.com/agQcdXA.png)

{% code-tabs %}
{% code-tabs-item title="head_dot.lua" %}
```lua
-- localize often used API variables to improve performance. It's usually fine to not do this, but lua then has to look them up as globals every time.
local client_eye_position, client_trace_line, entity_get_local_player, entity_get_players, entity_hitbox_position, renderer_circle, renderer_world_to_screen = client.eye_position, client.trace_line, entity.get_local_player, entity.get_players, entity.hitbox_position, renderer.circle, renderer.world_to_screen

local function on_paint()
	local local_player = entity_get_local_player()
	local eye_x, eye_y, eye_z = client_eye_position()

	-- get all alive, non-dormant enemy players
	local enemies = entity_get_players(true)

	for i=1, #enemies do
		local entindex = enemies[i]

		-- get the world coordinates of the head hitbox of the enemy
		local head_x, head_y, head_z = entity_hitbox_position(entindex, 0)

		-- transform world coordinates to screen coordinates
		local wx, wy = renderer_world_to_screen(head_x, head_y, head_z)

		-- make sure to always check if the screen coordinates are valid. it's enough to only check wx
		if wx ~= nil then
			local r, g, b, a = 255, 255, 255, 100

			-- ray trace from your eye position to the enemy head, ignoring our local player, to determine if it's visible
			local fraction, entindex_hit = client_trace_line(local_player, eye_x, eye_y, eye_z, head_x, head_y, head_z)

			if entindex_hit == entindex or fraction == 1 then
				-- the trace either hit the enemy or hit nothing, meaning the head is visible, so we change the color
				r, g, b, a = 255, 16, 16, 255
			end

			-- draw circle with radius 4, so we offset the x and y by -2
			renderer_circle(wx-2, wy-2, r, g, b, a, 4, 0, 1)
		end
	end
end
client.set_event_callback("paint", on_paint)
```
{% endcode-tabs-item %}
{% endcode-tabs %}


--------------------------------------------------------------------------------
SECCION 29 / 328
=== DEVELOPMENT: development/examples/talk_shit.md ===
Ruta relativa: development/examples/talk_shit.md
--------------------------------------------------------------------------------

# Talk shit

This script automatically types a message in chat every time you kill someone. If it's a headshot, it says "one tap", otherwise it says "effortless"

{% code-tabs %}
{% code-tabs-item title="talk_shit.lua" %}
```lua
local userid_to_entindex, get_local_player, is_enemy, console_cmd = client.userid_to_entindex, entity.get_local_player, entity.is_enemy, client.exec

local function on_player_death(e)
	local victim_userid, attacker_userid = e.userid, e.attacker
	if victim_userid == nil or attacker_userid == nil then
		return
	end

	local victim_entindex = userid_to_entindex(victim_userid)
	local attacker_entindex = userid_to_entindex(attacker_userid)

	if attacker_entindex == get_local_player() and is_enemy(victim_entindex) then
		console_cmd("say ", e.headshot and "one tap" or "effortless")
	end
end
client.set_event_callback("player_death", on_player_death)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

Originally written by admin


--------------------------------------------------------------------------------
SECCION 30 / 328
=== DEVELOPMENT: development/examples/watermark.md ===
Ruta relativa: development/examples/watermark.md
--------------------------------------------------------------------------------

# Simple Watermark

This is a simple text watermark showing the ping, tickrate and windows time. Ingame it looks like this:

![](https://i.imgur.com/73FUdvm.png)

Modify the `flags`, `margin` and `padding` variables to change the appearance. Colors are hardcoded in the 2 drawing function calls, but can be easily modified too.

{% code-tabs %}
{% code-tabs-item title="watermark.lua" %}
```lua
-- localize often used API variables to improve performance. It's usually fine to not do this, but lua then has to look them up as globals every time.
local client_latency, client_screen_size, client_system_time, globals_tickinterval, math_floor, renderer_measure_text, renderer_rectangle, renderer_text, string_format = client.latency, client.screen_size, client.system_time, globals.tickinterval, math.floor, renderer.measure_text, renderer.rectangle, renderer.text, string.format

-- this function will be executed every time CS:GO renders a frame and lets you draw on top of the game scene.
local function on_paint()
	-- fetch dynamic info. latency is in seconds so we convert it to ms and round it. tickrate is calculated with 1 / tickinterval
	local screen_width, screen_height = client_screen_size()
	local latency = math_floor(client_latency()*1000+0.5)
	local tickrate = 1/globals_tickinterval()
	local hours, minutes, seconds = client_system_time()

	-- create text
	local text = string_format("%dms", latency) .. " | " .. string_format("%dtick", tickrate) .. " | " .. string_format("%02d:%02d:%02d", hours, minutes, seconds)

	-- modify these to change how the text appears. margin is the distance from the top right corner, padding is the size the background rectangle is larger than the text
	local margin, padding, flags = 18, 4, nil

	-- uncomment this for a "small and capital" style
	-- flags, text = "-", (text:upper():gsub(" ", "   "))

	-- measure text size to properly offset the text from the top right corner
	local text_width, text_height = renderer_measure_text(flags, text)

	-- draw background and text
	renderer_rectangle(screen_width-text_width-margin-padding, margin-padding, text_width+padding*2, text_height+padding*2, 32, 32, 32, 200)
	renderer_text(screen_width-text_width-margin, margin, 235, 235, 235, 255, flags, 0, text)
end
client.set_event_callback("paint", on_paint)
```
{% endcode-tabs-item %}
{% endcode-tabs %}


--------------------------------------------------------------------------------
SECCION 31 / 328
=== DEVELOPMENT: development/getting_started.md ===
Ruta relativa: development/getting_started.md
--------------------------------------------------------------------------------

# Getting started

Lua scripts let you extend the cheat in various ways and are a great way to automate parts of the cheat or just add that one useless feature you always wanted to have. All you need to get started is a text editor and a basic knowledge of the [Lua language](https://learnxinyminutes.com/docs/lua/). If you made a lua script and would like to release it for other people to use, you can do that in the [CS:GO Lua scripts](https://gamesense.pub/forums/viewforum.php?id=8) subforum.

Lua scripts are stored in your CS:GO Folder and loaded using the Lua container in the MISC tab. If you're having trouble installing a script, refer to [Using lua scripts](docs/using-the-cheat/using_lua_scripts#common-problems)


--------------------------------------------------------------------------------
SECCION 32 / 328
=== DEVELOPMENT: development/snippets/README.md ===
Ruta relativa: development/snippets/README.md
--------------------------------------------------------------------------------

---
description: Useful code snippets
---

# Snippets

Snippets here


--------------------------------------------------------------------------------
SECCION 33 / 328
=== NETPROP: CAI_BaseNPC ===
Ruta relativa: netprops/CAI_BaseNPC.md
--------------------------------------------------------------------------------

---
description: DT_AI_BaseNPC
---

# CAI_BaseNPC


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_flNextAttack` (float)
* `m_LastHitGroup` (integer)
* `m_hActiveWeapon` (integer)
* `m_flTimeOfLastInjury` (float)
* `m_hMyWeapons` (integer[0-63])
* `m_nRelativeDirectionOfLastInjury` (integer)
* `m_hMyWearables` (integer[0])
* `m_lifeState` (integer)
* `m_bPerformAvoidance` (integer)
* `m_bIsMoving` (integer)
* `m_bFadeCorpse` (integer)
* `m_iDeathPose` (integer)
* `m_iDeathFrame` (integer)
* `m_bSpeedModActive` (integer)
* `m_iSpeedModRadius` (integer)
* `m_iSpeedModSpeed` (integer)
* `m_bImportanRagdoll` (integer)
* `m_flTimePingEffect` (float)


--------------------------------------------------------------------------------
SECCION 34 / 328
=== NETPROP: CAK47 ===
Ruta relativa: netprops/CAK47.md
--------------------------------------------------------------------------------

---
description: DT_WeaponAK47
---

# CAK47


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 35 / 328
=== NETPROP: CBRC4Target ===
Ruta relativa: netprops/CBRC4Target.md
--------------------------------------------------------------------------------

---
description: DT_BRC4Target
---

# CBRC4Target


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_bBrokenOpen` (integer)
* `m_flRadius` (float)


--------------------------------------------------------------------------------
SECCION 36 / 328
=== NETPROP: CBaseAnimating ===
Ruta relativa: netprops/CBaseAnimating.md
--------------------------------------------------------------------------------

---
description: DT_BaseAnimating
---

# CBaseAnimating


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)


--------------------------------------------------------------------------------
SECCION 37 / 328
=== NETPROP: CBaseAnimatingOverlay ===
Ruta relativa: netprops/CBaseAnimatingOverlay.md
--------------------------------------------------------------------------------

---
description: DT_BaseAnimatingOverlay
---

# CBaseAnimatingOverlay


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)


--------------------------------------------------------------------------------
SECCION 38 / 328
=== NETPROP: CBaseAttributableItem ===
Ruta relativa: netprops/CBaseAttributableItem.md
--------------------------------------------------------------------------------

---
description: DT_BaseAttributableItem
---

# CBaseAttributableItem


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)


--------------------------------------------------------------------------------
SECCION 39 / 328
=== NETPROP: CBaseButton ===
Ruta relativa: netprops/CBaseButton.md
--------------------------------------------------------------------------------

---
description: DT_BaseButton
---

# CBaseButton


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecFinalDest` (vector)
* `m_movementType` (integer)
* `m_flMoveTargetTime` (float)


--------------------------------------------------------------------------------
SECCION 40 / 328
=== NETPROP: CBaseCSGrenade ===
Ruta relativa: netprops/CBaseCSGrenade.md
--------------------------------------------------------------------------------

---
description: DT_BaseCSGrenade
---

# CBaseCSGrenade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 41 / 328
=== NETPROP: CBaseCSGrenadeProjectile ===
Ruta relativa: netprops/CBaseCSGrenadeProjectile.md
--------------------------------------------------------------------------------

---
description: DT_BaseCSGrenadeProjectile
---

# CBaseCSGrenadeProjectile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)
* `m_vInitialVelocity` (vector)
* `m_nBounces` (integer)
* `m_nExplodeEffectIndex` (integer)
* `m_nExplodeEffectTickBegin` (integer)
* `m_vecExplodeEffectOrigin` (vector)


--------------------------------------------------------------------------------
SECCION 42 / 328
=== NETPROP: CBaseCombatCharacter ===
Ruta relativa: netprops/CBaseCombatCharacter.md
--------------------------------------------------------------------------------

---
description: DT_BaseCombatCharacter
---

# CBaseCombatCharacter


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_flNextAttack` (float)
* `m_LastHitGroup` (integer)
* `m_hActiveWeapon` (integer)
* `m_flTimeOfLastInjury` (float)
* `m_hMyWeapons` (integer[0-63])
* `m_nRelativeDirectionOfLastInjury` (integer)


--------------------------------------------------------------------------------
SECCION 43 / 328
=== NETPROP: CBaseCombatWeapon ===
Ruta relativa: netprops/CBaseCombatWeapon.md
--------------------------------------------------------------------------------

---
description: DT_BaseCombatWeapon
---

# CBaseCombatWeapon


* `m_hMyWearables` (integer[0])
* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)


--------------------------------------------------------------------------------
SECCION 44 / 328
=== NETPROP: CBaseDoor ===
Ruta relativa: netprops/CBaseDoor.md
--------------------------------------------------------------------------------

---
description: DT_BaseDoor
---

# CBaseDoor


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecFinalDest` (vector)
* `m_movementType` (integer)
* `m_flMoveTargetTime` (float)
* `m_flWaveHeight` (float)


--------------------------------------------------------------------------------
SECCION 45 / 328
=== NETPROP: CBaseEntity ===
Ruta relativa: netprops/CBaseEntity.md
--------------------------------------------------------------------------------

---
description: DT_BaseEntity
---

# CBaseEntity


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 46 / 328
=== NETPROP: CBaseFlex ===
Ruta relativa: netprops/CBaseFlex.md
--------------------------------------------------------------------------------

---
description: DT_BaseFlex
---

# CBaseFlex


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)


--------------------------------------------------------------------------------
SECCION 47 / 328
=== NETPROP: CBaseGrenade ===
Ruta relativa: netprops/CBaseGrenade.md
--------------------------------------------------------------------------------

---
description: DT_BaseGrenade
---

# CBaseGrenade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)


--------------------------------------------------------------------------------
SECCION 48 / 328
=== NETPROP: CBaseParticleEntity ===
Ruta relativa: netprops/CBaseParticleEntity.md
--------------------------------------------------------------------------------

---
description: DT_BaseParticleEntity
---

# CBaseParticleEntity


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 49 / 328
=== NETPROP: CBasePlayer ===
Ruta relativa: netprops/CBasePlayer.md
--------------------------------------------------------------------------------

---
description: DT_BasePlayer
---

# CBasePlayer


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_flNextAttack` (float)
* `m_LastHitGroup` (integer)
* `m_hActiveWeapon` (integer)
* `m_flTimeOfLastInjury` (float)
* `m_hMyWeapons` (integer[0-63])
* `m_hMyWearables` (integer[0])
* `m_nRelativeDirectionOfLastInjury` (integer)
* `deadflag` (integer)
* `m_afPhysicsFlags` (integer)
* `m_hVehicle` (integer)
* `m_hUseEntity` (integer)
* `m_hGroundEntity` (integer)
* `m_iHealth` (integer)
* `m_lifeState` (integer)
* `m_iAmmo` (integer[0-31])
* `m_iBonusProgress` (integer)
* `m_iBonusChallenge` (integer)
* `m_flMaxspeed` (float)
* `m_fFlags` (integer)
* `m_iObserverMode` (integer)
* `m_bActiveCameraMan` (integer)
* `m_bCameraManXRay` (integer)
* `m_bCameraManOverview` (integer)
* `m_bCameraManScoreBoard` (integer)
* `m_uCameraManGraphs` (integer)
* `m_iCoachingTeam` (integer)
* `m_hObserverTarget` (integer)
* `m_iFOV` (integer)
* `m_iFOVStart` (integer)
* `m_flFOVTime` (float)
* `m_iDefaultFOV` (integer)
* `m_hZoomOwner` (integer)
* `m_hViewModel` (integer)
* `m_hViewModel` (array)
* `m_szLastPlaceName` (string)
* `m_vecLadderNormal` (vector)
* `m_ladderSurfaceProps` (integer)
* `m_ubEFNoInterpParity` (integer)
* `m_iDeathPostEffect` (integer)
* `m_hPostProcessCtrl` (integer)
* `m_hColorCorrectionCtrl` (integer)
* `m_PlayerFog.m_hCtrl` (integer)
* `m_vphysicsCollisionState` (integer)
* `m_hViewEntity` (integer)
* `m_bShouldDrawPlayerWhileUsingViewEntity` (integer)
* `m_flDuckAmount` (float)
* `m_flDuckSpeed` (float)
* `m_chAreaBits` (integer[0-31])
* `m_nWaterLevel` (integer)
* `m_chAreaPortalBits` (integer[0-23])
* `m_iHideHUD` (integer)
* `m_flFOVRate` (float)
* `m_bDucked` (integer)
* `m_bDucking` (integer)
* `m_flLastDuckTime` (float)
* `m_bInDuckJump` (integer)
* `m_nDuckTimeMsecs` (integer)
* `m_nDuckJumpTimeMsecs` (integer)
* `m_nJumpTimeMsecs` (integer)
* `m_flFallVelocity` (float)
* `m_viewPunchAngle` (vector)
* `m_aimPunchAngle` (vector)
* `m_aimPunchAngleVel` (vector)
* `m_bDrawViewmodel` (integer)
* `m_bWearingSuit` (integer)
* `m_bPoisoned` (integer)
* `m_flStepSize` (float)
* `m_bAllowAutoMovement` (integer)
* `m_skybox3d.scale` (integer)
* `m_skybox3d.origin` (vector)
* `m_skybox3d.area` (integer)
* `m_skybox3d.fog.enable` (integer)
* `m_skybox3d.fog.blend` (integer)
* `m_skybox3d.fog.dirPrimary` (vector)
* `m_skybox3d.fog.colorPrimary` (integer)
* `m_skybox3d.fog.colorSecondary` (integer)
* `m_skybox3d.fog.start` (float)
* `m_skybox3d.fog.end` (float)
* `m_skybox3d.fog.maxdensity` (float)
* `m_skybox3d.fog.HDRColorScale` (float)
* `m_audio.localSound[0]` (vector)
* `m_audio.localSound[1]` (vector)
* `m_audio.localSound[2]` (vector)
* `m_audio.localSound[3]` (vector)
* `m_audio.localSound[4]` (vector)
* `m_audio.localSound[5]` (vector)
* `m_audio.localSound[6]` (vector)
* `m_audio.localSound[7]` (vector)
* `m_audio.soundscapeIndex` (integer)
* `m_audio.localBits` (integer)
* `m_audio.entIndex` (integer)
* `m_vecViewOffset[0]` (float)
* `m_vecViewOffset[1]` (float)
* `m_vecViewOffset[2]` (float)
* `m_flFriction` (float)
* `m_fOnTarget` (integer)
* `m_nTickBase` (integer)
* `m_nNextThinkTick` (integer)
* `m_hLastWeapon` (integer)
* `m_vecVelocity[0]` (float)
* `m_vecVelocity[1]` (float)
* `m_vecVelocity[2]` (float)
* `m_vecBaseVelocity` (vector)
* `m_hConstraintEntity` (integer)
* `m_vecConstraintCenter` (vector)
* `m_flConstraintRadius` (float)
* `m_flConstraintWidth` (float)
* `m_flConstraintSpeedFactor` (float)
* `m_bConstraintPastRadius` (integer)
* `m_flDeathTime` (float)
* `m_flNextDecalTime` (float)
* `m_fForceTeam` (float)
* `m_flLaggedMovementValue` (float)
* `m_hTonemapController` (integer)


--------------------------------------------------------------------------------
SECCION 50 / 328
=== NETPROP: CBasePropDoor ===
Ruta relativa: netprops/CBasePropDoor.md
--------------------------------------------------------------------------------

---
description: DT_BasePropDoor
---

# CBasePropDoor


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_bUseHitboxesForRenderBox` (integer)
* `m_flGlowMaxDist` (float)
* `m_bShouldGlow` (integer)
* `m_clrGlow` (integer)
* `m_nGlowStyle` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)


--------------------------------------------------------------------------------
SECCION 51 / 328
=== NETPROP: CBaseTeamObjectiveResource ===
Ruta relativa: netprops/CBaseTeamObjectiveResource.md
--------------------------------------------------------------------------------

---
description: DT_BaseTeamObjectiveResource
---

# CBaseTeamObjectiveResource


* `m_iTimerToShowInHUD` (integer)
* `m_iStopWatchTimer` (integer)
* `m_iNumControlPoints` (integer)
* `m_bPlayingMiniRounds` (integer)
* `m_bControlPointsReset` (integer)
* `m_iUpdateCapHudParity` (integer)
* `m_vCPPositions` (vector)
* `m_bCPIsVisible` (integer[0-7])
* `m_flLazyCapPerc` (float[0-7])
* `m_iTeamIcons` (integer[0-63])
* `m_iTeamOverlays` (integer[0-63])
* `m_iTeamReqCappers` (integer[0-63])
* `m_flTeamCapTime` (float[0-63])
* `m_iPreviousPoints` (integer[0-191])
* `m_bTeamCanCap` (integer[0-63])
* `m_iTeamBaseIcons` (integer[0-31])
* `m_iBaseControlPoints` (integer[0-31])
* `m_bInMiniRound` (integer[0-7])
* `m_vCPPositions` (array)
* `m_iWarnOnCap` (integer[0-7])
* `m_iszWarnSound` (string)
* `m_flPathDistance` (float[0-7])
* `m_iNumTeamMembers` (integer[0-63])
* `m_iCappingTeam` (integer[0-7])
* `m_iTeamInZone` (integer[0-7])
* `m_bBlocked` (integer[0-7])
* `m_iszWarnSound` (array)
* `m_iOwner` (integer[0-7])
* `m_pszCapLayoutInHUD` (string)


--------------------------------------------------------------------------------
SECCION 52 / 328
=== NETPROP: CBaseTempEntity ===
Ruta relativa: netprops/CBaseTempEntity.md
--------------------------------------------------------------------------------

---
description: DT_BaseTempEntity
---

# CBaseTempEntity




--------------------------------------------------------------------------------
SECCION 53 / 328
=== NETPROP: CBaseToggle ===
Ruta relativa: netprops/CBaseToggle.md
--------------------------------------------------------------------------------

---
description: DT_BaseToggle
---

# CBaseToggle


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecFinalDest` (vector)
* `m_movementType` (integer)
* `m_flMoveTargetTime` (float)


--------------------------------------------------------------------------------
SECCION 54 / 328
=== NETPROP: CBaseTrigger ===
Ruta relativa: netprops/CBaseTrigger.md
--------------------------------------------------------------------------------

---
description: DT_BaseTrigger
---

# CBaseTrigger


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecFinalDest` (vector)
* `m_movementType` (integer)
* `m_flMoveTargetTime` (float)
* `m_bClientSidePredicted` (integer)
* `m_spawnflags` (integer)


--------------------------------------------------------------------------------
SECCION 55 / 328
=== NETPROP: CBaseVPhysicsTrigger ===
Ruta relativa: netprops/CBaseVPhysicsTrigger.md
--------------------------------------------------------------------------------

---
description: DT_BaseVPhysicsTrigger
---

# CBaseVPhysicsTrigger


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 56 / 328
=== NETPROP: CBaseViewModel ===
Ruta relativa: netprops/CBaseViewModel.md
--------------------------------------------------------------------------------

---
description: DT_BaseViewModel
---

# CBaseViewModel


* `m_nModelIndex` (integer)
* `m_hWeapon` (integer)
* `m_nBody` (integer)
* `m_nSkin` (integer)
* `m_nSequence` (integer)
* `m_nViewModelIndex` (integer)
* `m_flPlaybackRate` (float)
* `m_fEffects` (integer)
* `m_nAnimationParity` (integer)
* `m_hOwner` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_bShouldIgnoreOffsetAndAccuracy` (integer)


--------------------------------------------------------------------------------
SECCION 57 / 328
=== NETPROP: CBaseWeaponWorldModel ===
Ruta relativa: netprops/CBaseWeaponWorldModel.md
--------------------------------------------------------------------------------

---
description: DT_BaseWeaponWorldModel
---

# CBaseWeaponWorldModel


* `m_nModelIndex` (integer)
* `m_nBody` (integer)
* `m_fEffects` (integer)
* `moveparent` (integer)
* `m_hCombatWeaponParent` (integer)


--------------------------------------------------------------------------------
SECCION 58 / 328
=== NETPROP: CBeam ===
Ruta relativa: netprops/CBeam.md
--------------------------------------------------------------------------------

---
description: DT_Beam
---

# CBeam


* `m_nBeamType` (integer)
* `m_nBeamFlags` (integer)
* `m_hAttachEntity` (integer[0-9])
* `m_nNumBeamEnts` (integer)
* `m_nAttachIndex` (integer[0-9])
* `m_nHaloIndex` (integer)
* `m_fHaloScale` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_fFadeLength` (float)
* `m_fAmplitude` (float)
* `m_fStartFrame` (float)
* `m_fSpeed` (float)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_flFrameRate` (float)
* `m_flHDRColorScale` (float)
* `m_flFrame` (float)
* `m_clrRender` (integer)
* `m_nClipStyle` (integer)
* `m_vecEndPos` (vector)
* `m_nModelIndex` (integer)
* `m_vecOrigin` (vector)
* `moveparent` (integer)


--------------------------------------------------------------------------------
SECCION 59 / 328
=== NETPROP: CBeamSpotlight ===
Ruta relativa: netprops/CBeamSpotlight.md
--------------------------------------------------------------------------------

---
description: DT_BeamSpotlight
---

# CBeamSpotlight


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nHaloIndex` (integer)
* `m_bSpotlightOn` (integer)
* `m_bHasDynamicLight` (integer)
* `m_flSpotlightMaxLength` (float)
* `m_flSpotlightGoalWidth` (float)
* `m_flHDRColorScale` (float)
* `m_flRotationSpeed` (float)
* `m_nRotationAxis` (integer)


--------------------------------------------------------------------------------
SECCION 60 / 328
=== NETPROP: CBoneFollower ===
Ruta relativa: netprops/CBoneFollower.md
--------------------------------------------------------------------------------

---
description: DT_BoneFollower
---

# CBoneFollower


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_modelIndex` (integer)
* `m_solidIndex` (integer)


--------------------------------------------------------------------------------
SECCION 61 / 328
=== NETPROP: CBreachCharge ===
Ruta relativa: netprops/CBreachCharge.md
--------------------------------------------------------------------------------

---
description: DT_WeaponBreachCharge
---

# CBreachCharge


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)


--------------------------------------------------------------------------------
SECCION 62 / 328
=== NETPROP: CBreachChargeProjectile ===
Ruta relativa: netprops/CBreachChargeProjectile.md
--------------------------------------------------------------------------------

---
description: DT_BreachChargeProjectile
---

# CBreachChargeProjectile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)
* `m_bShouldExplode` (integer)
* `m_weaponThatThrewMe` (integer)
* `m_nParentBoneIndex` (integer)
* `m_vecParentBonePos` (vector)


--------------------------------------------------------------------------------
SECCION 63 / 328
=== NETPROP: CBreakableProp ===
Ruta relativa: netprops/CBreakableProp.md
--------------------------------------------------------------------------------

---
description: DT_BreakableProp
---

# CBreakableProp


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)


--------------------------------------------------------------------------------
SECCION 64 / 328
=== NETPROP: CBreakableSurface ===
Ruta relativa: netprops/CBreakableSurface.md
--------------------------------------------------------------------------------

---
description: DT_BreakableSurface
---

# CBreakableSurface


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nNumWide` (integer)
* `m_nNumHigh` (integer)
* `m_flPanelWidth` (float)
* `m_flPanelHeight` (float)
* `m_vNormal` (vector)
* `m_vCorner` (vector)
* `m_bIsBroken` (integer)
* `m_nSurfaceType` (integer)


--------------------------------------------------------------------------------
SECCION 65 / 328
=== NETPROP: CBumpMine ===
Ruta relativa: netprops/CBumpMine.md
--------------------------------------------------------------------------------

---
description: DT_WeaponBumpMine
---

# CBumpMine


* `m_RawPanelBitVec` (integer[0-255])
* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)


--------------------------------------------------------------------------------
SECCION 66 / 328
=== NETPROP: CBumpMineProjectile ===
Ruta relativa: netprops/CBumpMineProjectile.md
--------------------------------------------------------------------------------

---
description: DT_BumpMineProjectile
---

# CBumpMineProjectile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)
* `m_nParentBoneIndex` (integer)
* `m_vecParentBonePos` (vector)
* `m_bArmed` (integer)


--------------------------------------------------------------------------------
SECCION 67 / 328
=== NETPROP: CC4 ===
Ruta relativa: netprops/CC4.md
--------------------------------------------------------------------------------

---
description: DT_WeaponC4
---

# CC4


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bStartedArming` (integer)
* `m_bBombPlacedAnimation` (integer)
* `m_fArmedTime` (float)
* `m_bShowC4LED` (integer)
* `m_bIsPlantingViaUse` (integer)


--------------------------------------------------------------------------------
SECCION 68 / 328
=== NETPROP: CCSGameRulesProxy ===
Ruta relativa: netprops/CCSGameRulesProxy.md
--------------------------------------------------------------------------------

---
description: DT_CSGameRulesProxy
---

# CCSGameRulesProxy


* `m_bFreezePeriod` (integer)
* `m_bMatchWaitingForResume` (integer)
* `m_bWarmupPeriod` (integer)
* `m_fWarmupPeriodEnd` (float)
* `m_fWarmupPeriodStart` (float)
* `m_bTerroristTimeOutActive` (integer)
* `m_bCTTimeOutActive` (integer)
* `m_flTerroristTimeOutRemaining` (float)
* `m_flCTTimeOutRemaining` (float)
* `m_nTerroristTimeOuts` (integer)
* `m_nCTTimeOuts` (integer)
* `m_iRoundTime` (integer)
* `m_gamePhase` (integer)
* `m_totalRoundsPlayed` (integer)
* `m_nOvertimePlaying` (integer)
* `m_timeUntilNextPhaseStarts` (float)
* `m_flCMMItemDropRevealStartTime` (float)
* `m_flCMMItemDropRevealEndTime` (float)
* `m_fRoundStartTime` (float)
* `m_flRestartRoundTime` (float)
* `m_bGameRestart` (integer)
* `m_flGameStartTime` (float)
* `m_iHostagesRemaining` (integer)
* `m_bAnyHostageReached` (integer)
* `m_bMapHasBombTarget` (integer)
* `m_bMapHasRescueZone` (integer)
* `m_bMapHasBuyZone` (integer)
* `m_bIsQueuedMatchmaking` (integer)
* `m_nQueuedMatchmakingMode` (integer)
* `m_bIsValveDS` (integer)
* `m_bIsQuestEligible` (integer)
* `m_bLogoMap` (integer)
* `m_bPlayAllStepSoundsOnServer` (integer)
* `m_iNumGunGameProgressiveWeaponsCT` (integer)
* `m_iNumGunGameProgressiveWeaponsT` (integer)
* `m_iSpectatorSlotCount` (integer)
* `m_bBombDropped` (integer)
* `m_bBombPlanted` (integer)
* `m_iRoundWinStatus` (integer)
* `m_eRoundWinReason` (integer)
* `m_flDMBonusStartTime` (float)
* `m_flDMBonusTimeLength` (float)
* `m_unDMBonusWeaponLoadoutSlot` (integer)
* `m_bDMBonusActive` (integer)
* `m_bTCantBuy` (integer)
* `m_bCTCantBuy` (integer)
* `m_iMatchStats_RoundResults` (integer[0-29])
* `m_iMatchStats_PlayersAlive_T` (integer[0-29])
* `m_iMatchStats_PlayersAlive_CT` (integer[0-29])
* `m_GGProgressiveWeaponOrderCT` (integer[0-59])
* `m_GGProgressiveWeaponOrderT` (integer[0-59])
* `m_GGProgressiveWeaponKillUpgradeOrderCT` (integer[0-59])
* `m_flGuardianBuyUntilTime` (float)
* `m_GGProgressiveWeaponKillUpgradeOrderT` (integer[0-59])
* `m_MatchDevice` (integer)
* `m_TeamRespawnWaveTimes` (float[0-31])
* `m_bHasMatchStarted` (integer)
* `m_flNextRespawnWave` (float[0-31])
* `m_nEndMatchMapGroupVoteTypes` (integer[0-9])
* `m_nNextMapInMapgroup` (integer)
* `m_nEndMatchMapGroupVoteOptions` (integer[0-9])
* `m_nEndMatchMapVoteWinner` (integer)
* `m_bIsDroppingItems` (integer)
* `m_iActiveAssassinationTargetMissionID` (integer)
* `m_fMatchStartTime` (float)
* `m_szTournamentEventName` (string)
* `m_szTournamentEventStage` (string)
* `m_szTournamentPredictionsTxt` (string)
* `m_nTournamentPredictionsPct` (integer)
* `m_szMatchStatTxt` (string)
* `m_nGuardianModeWaveNumber` (integer)
* `m_nGuardianModeSpecialKillsRemaining` (integer)
* `m_nGuardianModeSpecialWeaponNeeded` (integer)
* `m_nHalloweenMaskListSeed` (integer)
* `m_numGlobalGiftsGiven` (integer)
* `m_numGlobalGifters` (integer)
* `m_arrFeaturedGiftersAccounts` (integer[0-3])
* `m_arrFeaturedGiftersGifts` (integer[0-3])
* `m_numGlobalGiftsPeriodSeconds` (integer)
* `m_arrProhibitedItemIndices` (integer[0-99])
* `m_numBestOfMaps` (integer)
* `m_arrTournamentActiveCasterAccounts` (integer[0-3])
* `m_iNumConsecutiveCTLoses` (integer)
* `m_iNumConsecutiveTerroristLoses` (integer)
* `m_vecPlayAreaMins` (vector)
* `m_iPlayerSpawnHexIndices` (integer[0-63])
* `m_vecPlayAreaMaxs` (vector)
* `m_SpawnTileState` (integer[0-223])
* `m_flSpawnSelectionTimeStart` (float)
* `m_flSpawnSelectionTimeEnd` (float)
* `m_flSpawnSelectionTimeLoadout` (float)
* `m_spawnStage` (integer)
* `m_flTabletHexOriginX` (float)
* `m_flTabletHexOriginY` (float)
* `m_roundData_playerXuids` (int64[0-64])
* `m_roundData_playerPositions` (integer[0-64])
* `m_roundData_playerTeams` (integer[0-64])
* `m_SurvivalGameRuleDecisionTypes` (integer[0-15])
* `m_flTabletHexSize` (float)
* `m_SurvivalGameRuleDecisionValues` (integer[0-15])
* `m_flSurvivalStartTime` (float)
* `m_bBlockersPresent` (integer)
* `m_bRoundInProgress` (integer)
* `m_iFirstSecondHalfRound` (integer)
* `m_iBombSite` (integer)


--------------------------------------------------------------------------------
SECCION 69 / 328
=== NETPROP: CCSPlayer ===
Ruta relativa: netprops/CCSPlayer.md
--------------------------------------------------------------------------------

---
description: DT_CSPlayer
---

# CCSPlayer


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_flNextAttack` (float)
* `m_LastHitGroup` (integer)
* `m_hActiveWeapon` (integer)
* `m_flTimeOfLastInjury` (float)
* `m_hMyWeapons` (integer[0-63])
* `m_hMyWearables` (integer[0])
* `m_nRelativeDirectionOfLastInjury` (integer)
* `deadflag` (integer)
* `m_afPhysicsFlags` (integer)
* `m_hVehicle` (integer)
* `m_hUseEntity` (integer)
* `m_hGroundEntity` (integer)
* `m_iHealth` (integer)
* `m_lifeState` (integer)
* `m_iAmmo` (integer[0-31])
* `m_iBonusProgress` (integer)
* `m_iBonusChallenge` (integer)
* `m_flMaxspeed` (float)
* `m_fFlags` (integer)
* `m_iObserverMode` (integer)
* `m_bActiveCameraMan` (integer)
* `m_bCameraManXRay` (integer)
* `m_bCameraManOverview` (integer)
* `m_bCameraManScoreBoard` (integer)
* `m_uCameraManGraphs` (integer)
* `m_iCoachingTeam` (integer)
* `m_hObserverTarget` (integer)
* `m_iFOV` (integer)
* `m_iFOVStart` (integer)
* `m_flFOVTime` (float)
* `m_iDefaultFOV` (integer)
* `m_hZoomOwner` (integer)
* `m_hViewModel` (integer)
* `m_hViewModel` (array)
* `m_szLastPlaceName` (string)
* `m_vecLadderNormal` (vector)
* `m_ladderSurfaceProps` (integer)
* `m_ubEFNoInterpParity` (integer)
* `m_iDeathPostEffect` (integer)
* `m_hPostProcessCtrl` (integer)
* `m_hColorCorrectionCtrl` (integer)
* `m_PlayerFog.m_hCtrl` (integer)
* `m_vphysicsCollisionState` (integer)
* `m_hViewEntity` (integer)
* `m_bShouldDrawPlayerWhileUsingViewEntity` (integer)
* `m_flDuckAmount` (float)
* `m_flDuckSpeed` (float)
* `m_chAreaBits` (integer[0-31])
* `m_nWaterLevel` (integer)
* `m_chAreaPortalBits` (integer[0-23])
* `m_iHideHUD` (integer)
* `m_flFOVRate` (float)
* `m_bDucked` (integer)
* `m_bDucking` (integer)
* `m_flLastDuckTime` (float)
* `m_bInDuckJump` (integer)
* `m_nDuckTimeMsecs` (integer)
* `m_nDuckJumpTimeMsecs` (integer)
* `m_nJumpTimeMsecs` (integer)
* `m_flFallVelocity` (float)
* `m_viewPunchAngle` (vector)
* `m_aimPunchAngle` (vector)
* `m_aimPunchAngleVel` (vector)
* `m_bDrawViewmodel` (integer)
* `m_bWearingSuit` (integer)
* `m_bPoisoned` (integer)
* `m_flStepSize` (float)
* `m_bAllowAutoMovement` (integer)
* `m_skybox3d.scale` (integer)
* `m_skybox3d.origin` (vector)
* `m_skybox3d.area` (integer)
* `m_skybox3d.fog.enable` (integer)
* `m_skybox3d.fog.blend` (integer)
* `m_skybox3d.fog.dirPrimary` (vector)
* `m_skybox3d.fog.colorPrimary` (integer)
* `m_skybox3d.fog.colorSecondary` (integer)
* `m_skybox3d.fog.start` (float)
* `m_skybox3d.fog.end` (float)
* `m_skybox3d.fog.maxdensity` (float)
* `m_skybox3d.fog.HDRColorScale` (float)
* `m_audio.localSound[0]` (vector)
* `m_audio.localSound[1]` (vector)
* `m_audio.localSound[2]` (vector)
* `m_audio.localSound[3]` (vector)
* `m_audio.localSound[4]` (vector)
* `m_audio.localSound[5]` (vector)
* `m_audio.localSound[6]` (vector)
* `m_audio.localSound[7]` (vector)
* `m_audio.soundscapeIndex` (integer)
* `m_audio.localBits` (integer)
* `m_audio.entIndex` (integer)
* `m_vecViewOffset[0]` (float)
* `m_vecViewOffset[1]` (float)
* `m_vecViewOffset[2]` (float)
* `m_flFriction` (float)
* `m_fOnTarget` (integer)
* `m_nTickBase` (integer)
* `m_nNextThinkTick` (integer)
* `m_hLastWeapon` (integer)
* `m_vecVelocity[0]` (float)
* `m_vecVelocity[1]` (float)
* `m_vecVelocity[2]` (float)
* `m_vecBaseVelocity` (vector)
* `m_hConstraintEntity` (integer)
* `m_vecConstraintCenter` (vector)
* `m_flConstraintRadius` (float)
* `m_flConstraintWidth` (float)
* `m_flConstraintSpeedFactor` (float)
* `m_bConstraintPastRadius` (integer)
* `m_flDeathTime` (float)
* `m_flNextDecalTime` (float)
* `m_fForceTeam` (float)
* `m_flLaggedMovementValue` (float)
* `m_hTonemapController` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nSequence` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_angRotation` (integer)
* `m_vecOrigin` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_flCycle` (integer)
* `m_flAnimTime` (integer)
* `m_vecOrigin` (3)
* `m_vecOrigin[2]` (float)
* `m_flStamina` (float)
* `m_iDirection` (integer)
* `m_iShotsFired` (integer)
* `m_nNumFastDucks` (integer)
* `m_bDuckOverride` (integer)
* `m_bPlayerDominated` (integer[0-64])
* `m_bPlayerDominatingMe` (integer[0-64])
* `m_flVelocityModifier` (float)
* `m_iWeaponPurchasesThisRound` (integer[0-255])
* `m_unActiveQuestId` (integer)
* `m_nQuestProgressReason` (integer)
* `m_vecOrigin` (3)
* `m_iWeaponPurchasesThisMatch` (integer[0-255])
* `m_vecOrigin[2]` (float)
* `m_EquippedLoadoutItemDefIndices` (integer[0-56])
* `m_angEyeAngles[0]` (float)
* `m_angEyeAngles[1]` (float)
* `m_iAddonBits` (integer)
* `m_iPrimaryAddon` (integer)
* `m_iSecondaryAddon` (integer)
* `m_iThrowGrenadeCounter` (integer)
* `m_bWaitForNoAttack` (integer)
* `m_bIsRespawningForDMBonus` (integer)
* `m_iPlayerState` (integer)
* `m_iAccount` (integer)
* `m_iStartAccount` (integer)
* `m_totalHitsOnServer` (integer)
* `m_bInBombZone` (integer)
* `m_bInBuyZone` (integer)
* `m_bInNoDefuseArea` (integer)
* `m_bKilledByTaser` (integer)
* `m_iMoveState` (integer)
* `m_iClass` (integer)
* `m_ArmorValue` (integer)
* `m_bHasDefuser` (integer)
* `m_bNightVisionOn` (integer)
* `m_bHasNightVision` (integer)
* `m_bInHostageRescueZone` (integer)
* `m_bIsDefusing` (integer)
* `m_bIsGrabbingHostage` (integer)
* `m_iBlockingUseActionInProgress` (integer)
* `m_bIsScoped` (integer)
* `m_bIsWalking` (integer)
* `m_nIsAutoMounting` (integer)
* `m_bResumeZoom` (integer)
* `m_fImmuneToGunGameDamageTime` (float)
* `m_bGunGameImmunity` (integer)
* `m_bHasMovedSinceSpawn` (integer)
* `m_bMadeFinalGunGameProgressiveKill` (integer)
* `m_iGunGameProgressiveWeaponIndex` (integer)
* `m_iNumGunGameTRKillPoints` (integer)
* `m_iNumGunGameKillsWithCurrentWeapon` (integer)
* `m_iNumRoundKills` (integer)
* `m_fMolotovUseTime` (float)
* `m_fMolotovDamageTime` (float)
* `m_szArmsModel` (string)
* `m_hCarriedHostage` (integer)
* `m_hCarriedHostageProp` (integer)
* `m_bIsRescuing` (integer)
* `m_flGroundAccelLinearFracLastTime` (float)
* `m_flGuardianTooFarDistFrac` (float)
* `m_flDetectedByEnemySensorTime` (float)
* `m_bCanMoveDuringFreezePeriod` (integer)
* `m_isCurrentGunGameLeader` (integer)
* `m_rank` (integer[0-5])
* `m_isCurrentGunGameTeamLeader` (integer)
* `m_passiveItems` (integer[0-3])
* `m_unMusicID` (integer)
* `m_bIsPlayerGhost` (integer)
* `m_bHasHelmet` (integer)
* `m_bHasHeavyArmor` (integer)
* `m_nHeavyAssaultSuitCooldownRemaining` (integer)
* `m_flFlashDuration` (float)
* `m_flFlashMaxAlpha` (float)
* `m_iProgressBarDuration` (integer)
* `m_flProgressBarStartTime` (float)
* `m_hRagdoll` (integer)
* `m_hPlayerPing` (integer)
* `m_cycleLatch` (integer)
* `m_unCurrentEquipmentValue` (integer)
* `m_unRoundStartEquipmentValue` (integer)
* `m_unFreezetimeEndEquipmentValue` (integer)
* `m_bIsControllingBot` (integer)
* `m_bHasControlledBotThisRound` (integer)
* `m_bCanControlObservedBot` (integer)
* `m_iControlledBotEntIndex` (integer)
* `m_bHud_MiniScoreHidden` (integer)
* `m_bHud_RadarHidden` (integer)
* `m_nLastKillerIndex` (integer)
* `m_nLastConcurrentKilled` (integer)
* `m_nDeathCamMusic` (integer)
* `m_bIsLookingAtWeapon` (integer)
* `m_bIsHoldingLookAtWeapon` (integer)
* `m_iNumRoundKillsHeadshots` (integer)
* `m_iMatchStats_Kills` (integer[0-29])
* `m_iMatchStats_Damage` (integer[0-29])
* `m_iMatchStats_EquipmentValue` (integer[0-29])
* `m_iMatchStats_MoneySaved` (integer[0-29])
* `m_iMatchStats_KillReward` (integer[0-29])
* `m_iMatchStats_LiveTime` (integer[0-29])
* `m_iMatchStats_Deaths` (integer[0-29])
* `m_iMatchStats_Assists` (integer[0-29])
* `m_iMatchStats_HeadShotKills` (integer[0-29])
* `m_iMatchStats_Objective` (integer[0-29])
* `m_iMatchStats_CashEarned` (integer[0-29])
* `m_iMatchStats_UtilityDamage` (integer[0-29])
* `m_unTotalRoundDamageDealt` (integer)
* `m_iMatchStats_EnemiesFlashed` (integer[0-29])
* `m_flLowerBodyYawTarget` (float)
* `m_bStrafing` (integer)
* `m_flThirdpersonRecoil` (float)
* `m_bHideTargetID` (integer)
* `m_bIsSpawnRappelling` (integer)
* `m_vecSpawnRappellingRopeOrigin` (vector)
* `m_nSurvivalTeam` (integer)
* `m_hSurvivalAssassinationTarget` (integer)
* `m_vecAutomoveTargetEnd` (vector)
* `m_flAutoMoveStartTime` (float)
* `m_flAutoMoveTargetTime` (float)
* `m_flHealthShotBoostExpirationTime` (float)
* `m_flLastExoJumpTime` (float)


--------------------------------------------------------------------------------
SECCION 70 / 328
=== NETPROP: CCSPlayerResource ===
Ruta relativa: netprops/CCSPlayerResource.md
--------------------------------------------------------------------------------

---
description: DT_CSPlayerResource
---

# CCSPlayerResource


* `m_vecPlayerPatchEconIndices` (integer[0-4])
* `m_iKills` (integer[0-64])
* `m_iAssists` (integer[0-64])
* `m_iDeaths` (integer[0-64])
* `m_bConnected` (integer[0-64])
* `m_iTeam` (integer[0-64])
* `m_iPendingTeam` (integer[0-64])
* `m_bAlive` (integer[0-64])
* `m_iHealth` (integer[0-64])
* `m_iPing` (integer[0-64])
* `m_iCoachingTeam` (integer[0-64])
* `m_iPlayerC4` (integer)
* `m_bHostageAlive` (integer[0-11])
* `m_isHostageFollowingSomeone` (integer[0-11])
* `m_iPlayerVIP` (integer)
* `m_iHostageEntityIDs` (integer[0-11])
* `m_bombsiteCenterA` (vector)
* `m_hostageRescueX` (integer[0-3])
* `m_hostageRescueY` (integer[0-3])
* `m_hostageRescueZ` (integer[0-3])
* `m_iMVPs` (integer[0-64])
* `m_iArmor` (integer[0-64])
* `m_bHasDefuser` (integer[0-64])
* `m_bHasHelmet` (integer[0-64])
* `m_iScore` (integer[0-64])
* `m_iCompetitiveRanking` (integer[0-64])
* `m_iCompetitiveWins` (integer[0-64])
* `m_iCompetitiveRankType` (integer[0-64])
* `m_iCompTeammateColor` (integer[0-64])
* `m_iLifetimeStart` (integer[0-64])
* `m_iLifetimeEnd` (integer[0-64])
* `m_bControllingBot` (integer[0-64])
* `m_iControlledPlayer` (integer[0-64])
* `m_iControlledByPlayer` (integer[0-64])
* `m_iBotDifficulty` (integer[0-64])
* `m_szClan` (string[0-64])
* `m_nCharacterDefIndex` (integer[0-64])
* `m_iTotalCashSpent` (integer[0-64])
* `m_iGunGameLevel` (integer[0-64])
* `m_iCashSpentThisRound` (integer[0-64])
* `m_bombsiteCenterB` (vector)
* `m_nEndMatchNextMapVotes` (integer[0-64])
* `m_nActiveCoinRank` (integer[0-64])
* `m_nMusicID` (integer[0-64])
* `m_nPersonaDataPublicLevel` (integer[0-64])
* `m_nPersonaDataPublicCommendsLeader` (integer[0-64])
* `m_nPersonaDataPublicCommendsTeacher` (integer[0-64])
* `m_nPersonaDataPublicCommendsFriendly` (integer[0-64])
* `m_bHasCommunicationAbuseMute` (integer[0-64])
* `m_szCrosshairCodes` (string[0-64])
* `m_iMatchStats_Kills_Total` (integer[0-64])
* `m_iMatchStats_5k_Total` (integer[0-64])
* `m_iMatchStats_4k_Total` (integer[0-64])
* `m_iMatchStats_3k_Total` (integer[0-64])
* `m_iMatchStats_Damage_Total` (integer[0-64])
* `m_iMatchStats_EquipmentValue_Total` (integer[0-64])
* `m_iMatchStats_KillReward_Total` (integer[0-64])
* `m_iMatchStats_LiveTime_Total` (integer[0-64])
* `m_iMatchStats_Deaths_Total` (integer[0-64])
* `m_iMatchStats_Assists_Total` (integer[0-64])
* `m_iMatchStats_HeadShotKills_Total` (integer[0-64])
* `m_iMatchStats_Objective_Total` (integer[0-64])
* `m_iMatchStats_CashEarned_Total` (integer[0-64])
* `m_iMatchStats_UtilityDamage_Total` (integer[0-64])
* `m_bEndMatchNextMapAllVoted` (integer)


--------------------------------------------------------------------------------
SECCION 71 / 328
=== NETPROP: CCSRagdoll ===
Ruta relativa: netprops/CCSRagdoll.md
--------------------------------------------------------------------------------

---
description: DT_CSRagdoll
---

# CCSRagdoll


* `m_vecOrigin` (vector)
* `m_iMatchStats_EnemiesFlashed_Total` (integer[0-64])
* `m_vecRagdollOrigin` (vector)
* `m_hPlayer` (integer)
* `m_nModelIndex` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_vecRagdollVelocity` (vector)
* `m_iDeathPose` (integer)
* `m_iDeathFrame` (integer)
* `m_iTeamNum` (integer)
* `m_bClientSideAnimation` (integer)
* `m_flDeathYaw` (float)
* `m_flAbsYaw` (float)


--------------------------------------------------------------------------------
SECCION 72 / 328
=== NETPROP: CCSTeam ===
Ruta relativa: netprops/CCSTeam.md
--------------------------------------------------------------------------------

---
description: DT_CSTeam
---

# CCSTeam


* `m_iTeamNum` (integer)
* `m_bSurrendered` (integer)
* `m_scoreTotal` (integer)
* `m_scoreFirstHalf` (integer)
* `m_scoreSecondHalf` (integer)
* `m_scoreOvertime` (integer)
* `m_iClanID` (integer)
* `m_szTeamname` (string)
* `m_szClanTeamname` (string)
* `m_szTeamFlagImage` (string)
* `m_szTeamLogoImage` (string)
* `m_szTeamMatchStat` (string)
* `m_nGGLeaderEntIndex_CT` (integer)
* `m_nGGLeaderEntIndex_T` (integer)
* `m_numMapVictories` (integer)
* `player_array_element` (integer)
* `&quot;player_array&quot;` (array)


--------------------------------------------------------------------------------
SECCION 73 / 328
=== NETPROP: CCascadeLight ===
Ruta relativa: netprops/CCascadeLight.md
--------------------------------------------------------------------------------

---
description: DT_CascadeLight
---

# CCascadeLight


* `m_shadowDirection` (vector)
* `m_envLightShadowDirection` (vector)
* `m_bEnabled` (integer)
* `m_bUseLightEnvAngles` (integer)
* `m_LightColor` (integer)
* `m_LightColorScale` (integer)
* `m_flMaxShadowDist` (float)


--------------------------------------------------------------------------------
SECCION 74 / 328
=== NETPROP: CChicken ===
Ruta relativa: netprops/CChicken.md
--------------------------------------------------------------------------------

---
description: DT_CChicken
---

# CChicken


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_bUseHitboxesForRenderBox` (integer)
* `m_flGlowMaxDist` (float)
* `m_bShouldGlow` (integer)
* `m_clrGlow` (integer)
* `m_nGlowStyle` (integer)
* `m_jumpedThisFrame` (integer)
* `m_leader` (integer)


--------------------------------------------------------------------------------
SECCION 75 / 328
=== NETPROP: CColorCorrection ===
Ruta relativa: netprops/CColorCorrection.md
--------------------------------------------------------------------------------

---
description: DT_ColorCorrection
---

# CColorCorrection


* `m_vecOrigin` (vector)
* `m_MinFalloff` (float)
* `m_MaxFalloff` (float)
* `m_flCurWeight` (float)
* `m_flMaxWeight` (float)
* `m_flFadeInDuration` (float)
* `m_flFadeOutDuration` (float)
* `m_netlookupFilename` (string)
* `m_bEnabled` (integer)
* `m_bMaster` (integer)
* `m_bClientSide` (integer)
* `m_bExclusive` (integer)


--------------------------------------------------------------------------------
SECCION 76 / 328
=== NETPROP: CColorCorrectionVolume ===
Ruta relativa: netprops/CColorCorrectionVolume.md
--------------------------------------------------------------------------------

---
description: DT_ColorCorrectionVolume
---

# CColorCorrectionVolume


* `m_Weight` (float)
* `m_lookupFilename` (string)


--------------------------------------------------------------------------------
SECCION 77 / 328
=== NETPROP: CDEagle ===
Ruta relativa: netprops/CDEagle.md
--------------------------------------------------------------------------------

---
description: DT_WeaponDEagle
---

# CDEagle


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 78 / 328
=== NETPROP: CDangerZone ===
Ruta relativa: netprops/CDangerZone.md
--------------------------------------------------------------------------------

---
description: DT_DangerZone
---

# CDangerZone


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecDangerZoneOriginStartedAt` (vector)
* `m_flBombLaunchTime` (float)
* `m_flExtraRadius` (float)
* `m_flExtraRadiusStartTime` (float)
* `m_flExtraRadiusTotalLerpTime` (float)
* `m_nDropOrder` (integer)
* `m_iWave` (integer)


--------------------------------------------------------------------------------
SECCION 79 / 328
=== NETPROP: CDangerZoneController ===
Ruta relativa: netprops/CDangerZoneController.md
--------------------------------------------------------------------------------

---
description: DT_DangerZoneController
---

# CDangerZoneController


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_bDangerZoneControllerEnabled` (integer)
* `m_bMissionControlledExplosions` (integer)
* `m_flStartTime` (float)
* `m_flFinalExpansionTime` (float)
* `m_vecEndGameCircleStart` (vector)
* `m_DangerZones` (integer[0-41])
* `m_vecEndGameCircleEnd` (vector)
* `m_flWaveEndTimes` (float[0-4])
* `m_hTheFinalZone` (integer)


--------------------------------------------------------------------------------
SECCION 80 / 328
=== NETPROP: CDecoyGrenade ===
Ruta relativa: netprops/CDecoyGrenade.md
--------------------------------------------------------------------------------

---
description: DT_DecoyGrenade
---

# CDecoyGrenade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 81 / 328
=== NETPROP: CDecoyProjectile ===
Ruta relativa: netprops/CDecoyProjectile.md
--------------------------------------------------------------------------------

---
description: DT_DecoyProjectile
---

# CDecoyProjectile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)
* `m_vInitialVelocity` (vector)
* `m_nBounces` (integer)
* `m_nExplodeEffectIndex` (integer)
* `m_nExplodeEffectTickBegin` (integer)
* `m_vecExplodeEffectOrigin` (vector)


--------------------------------------------------------------------------------
SECCION 82 / 328
=== NETPROP: CDrone ===
Ruta relativa: netprops/CDrone.md
--------------------------------------------------------------------------------

---
description: DT_Drone
---

# CDrone


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)
* `m_bAwake` (integer)
* `m_hMoveToThisEntity` (integer)
* `m_hDeliveryCargo` (integer)
* `m_bPilotTakeoverAllowed` (integer)
* `m_hPotentialCargo` (integer)
* `m_hCurrentPilot` (integer)
* `m_vecTagPositions` (vector)
* `m_vecTagPositions` (array)
* `m_vecTagIncrements` (integer)
* `m_vecTagIncrements` (array)


--------------------------------------------------------------------------------
SECCION 83 / 328
=== NETPROP: CDronegun ===
Ruta relativa: netprops/CDronegun.md
--------------------------------------------------------------------------------

---
description: DT_Dronegun
---

# CDronegun


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_vecAttentionTarget` (vector)
* `m_vecTargetOffset` (vector)
* `m_iHealth` (integer)
* `m_bHasTarget` (integer)


--------------------------------------------------------------------------------
SECCION 84 / 328
=== NETPROP: CDynamicLight ===
Ruta relativa: netprops/CDynamicLight.md
--------------------------------------------------------------------------------

---
description: DT_DynamicLight
---

# CDynamicLight


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_Flags` (integer)
* `m_LightStyle` (integer)
* `m_Radius` (float)
* `m_Exponent` (integer)
* `m_InnerAngle` (float)
* `m_OuterAngle` (float)
* `m_SpotRadius` (float)


--------------------------------------------------------------------------------
SECCION 85 / 328
=== NETPROP: CDynamicProp ===
Ruta relativa: netprops/CDynamicProp.md
--------------------------------------------------------------------------------

---
description: DT_DynamicProp
---

# CDynamicProp


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_bUseHitboxesForRenderBox` (integer)
* `m_flGlowMaxDist` (float)
* `m_bShouldGlow` (integer)
* `m_clrGlow` (integer)
* `m_nGlowStyle` (integer)


--------------------------------------------------------------------------------
SECCION 86 / 328
=== NETPROP: CEconEntity ===
Ruta relativa: netprops/CEconEntity.md
--------------------------------------------------------------------------------

---
description: DT_EconEntity
---

# CEconEntity


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)


--------------------------------------------------------------------------------
SECCION 87 / 328
=== NETPROP: CEconWearable ===
Ruta relativa: netprops/CEconWearable.md
--------------------------------------------------------------------------------

---
description: DT_WearableItem
---

# CEconWearable


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)


--------------------------------------------------------------------------------
SECCION 88 / 328
=== NETPROP: CEmbers ===
Ruta relativa: netprops/CEmbers.md
--------------------------------------------------------------------------------

---
description: DT_Embers
---

# CEmbers


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nDensity` (integer)
* `m_nLifetime` (integer)
* `m_nSpeed` (integer)
* `m_bEmit` (integer)


--------------------------------------------------------------------------------
SECCION 89 / 328
=== NETPROP: CEntityDissolve ===
Ruta relativa: netprops/CEntityDissolve.md
--------------------------------------------------------------------------------

---
description: DT_EntityDissolve
---

# CEntityDissolve


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flStartTime` (float)
* `m_flFadeInStart` (float)
* `m_flFadeInLength` (float)
* `m_flFadeOutModelStart` (float)
* `m_flFadeOutModelLength` (float)
* `m_flFadeOutStart` (float)
* `m_flFadeOutLength` (float)
* `m_nDissolveType` (integer)
* `m_vDissolverOrigin` (vector)
* `m_nMagnitude` (integer)


--------------------------------------------------------------------------------
SECCION 90 / 328
=== NETPROP: CEntityFlame ===
Ruta relativa: netprops/CEntityFlame.md
--------------------------------------------------------------------------------

---
description: DT_EntityFlame
---

# CEntityFlame


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_hEntAttached` (integer)
* `m_bCheapEffect` (integer)


--------------------------------------------------------------------------------
SECCION 91 / 328
=== NETPROP: CEntityFreezing ===
Ruta relativa: netprops/CEntityFreezing.md
--------------------------------------------------------------------------------

---
description: DT_EntityFreezing
---

# CEntityFreezing


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vFreezingOrigin` (vector)
* `m_flFrozenPerHitbox` (float[0-49])
* `m_flFrozen` (float)
* `m_bFinishFreezing` (integer)


--------------------------------------------------------------------------------
SECCION 92 / 328
=== NETPROP: CEntityParticleTrail ===
Ruta relativa: netprops/CEntityParticleTrail.md
--------------------------------------------------------------------------------

---
description: DT_EntityParticleTrail
---

# CEntityParticleTrail


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_iMaterialName` (integer)
* `m_flLifetime` (float)
* `m_flStartSize` (float)
* `m_flEndSize` (float)
* `m_hConstraintEntity` (integer)


--------------------------------------------------------------------------------
SECCION 93 / 328
=== NETPROP: CEnvAmbientLight ===
Ruta relativa: netprops/CEnvAmbientLight.md
--------------------------------------------------------------------------------

---
description: DT_EnvAmbientLight
---

# CEnvAmbientLight


* `m_vecOrigin` (vector)
* `m_MinFalloff` (float)
* `m_MaxFalloff` (float)
* `m_flCurWeight` (float)
* `m_bEnabled` (integer)
* `m_vecColor` (vector)


--------------------------------------------------------------------------------
SECCION 94 / 328
=== NETPROP: CEnvDOFController ===
Ruta relativa: netprops/CEnvDOFController.md
--------------------------------------------------------------------------------

---
description: DT_EnvDOFController
---

# CEnvDOFController


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_bDOFEnabled` (integer)
* `m_flNearBlurDepth` (float)
* `m_flNearFocusDepth` (float)
* `m_flFarFocusDepth` (float)
* `m_flFarBlurDepth` (float)
* `m_flNearBlurRadius` (float)
* `m_flFarBlurRadius` (float)


--------------------------------------------------------------------------------
SECCION 95 / 328
=== NETPROP: CEnvDetailController ===
Ruta relativa: netprops/CEnvDetailController.md
--------------------------------------------------------------------------------

---
description: DT_DetailController
---

# CEnvDetailController


* `m_flFadeStartDist` (float)
* `m_flFadeEndDist` (float)


--------------------------------------------------------------------------------
SECCION 96 / 328
=== NETPROP: CEnvGasCanister ===
Ruta relativa: netprops/CEnvGasCanister.md
--------------------------------------------------------------------------------

---
description: DT_EnvGasCanister
---

# CEnvGasCanister


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flFlightSpeed` (float)
* `m_flLaunchTime` (float)
* `m_vecParabolaDirection` (vector)
* `m_flFlightTime` (float)
* `m_flWorldEnterTime` (float)
* `m_flInitialZSpeed` (float)
* `m_flZAcceleration` (float)
* `m_flHorizSpeed` (float)
* `m_bLaunchedFromWithinWorld` (integer)
* `m_vecImpactPosition` (vector)
* `m_vecStartPosition` (vector)
* `m_vecEnterWorldPosition` (vector)
* `m_vecDirection` (vector)
* `m_vecStartAngles` (vector)
* `m_vecSkyboxOrigin` (vector)
* `m_flSkyboxScale` (float)
* `m_bInSkybox` (integer)
* `m_bDoImpactEffects` (integer)
* `m_bLanded` (integer)
* `m_hSkyboxCopy` (integer)
* `m_nMyZoneIndex` (integer)
* `m_vecOrigin` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (3)
* `m_vecOrigin[2]` (float)


--------------------------------------------------------------------------------
SECCION 97 / 328
=== NETPROP: CEnvParticleScript ===
Ruta relativa: netprops/CEnvParticleScript.md
--------------------------------------------------------------------------------

---
description: DT_EnvParticleScript
---

# CEnvParticleScript


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flSequenceScale` (float)


--------------------------------------------------------------------------------
SECCION 98 / 328
=== NETPROP: CEnvProjectedTexture ===
Ruta relativa: netprops/CEnvProjectedTexture.md
--------------------------------------------------------------------------------

---
description: DT_EnvProjectedTexture
---

# CEnvProjectedTexture


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_hTargetEntity` (integer)
* `m_bState` (integer)
* `m_bAlwaysUpdate` (integer)
* `m_flLightFOV` (float)
* `m_bEnableShadows` (integer)
* `m_bSimpleProjection` (integer)
* `m_bLightOnlyTarget` (integer)
* `m_bLightWorld` (integer)
* `m_bCameraSpace` (integer)
* `m_flBrightnessScale` (float)
* `m_LightColor` (integer)
* `m_flColorTransitionTime` (float)
* `m_flAmbient` (float)
* `m_SpotlightTextureName` (string)
* `m_nSpotlightTextureFrame` (integer)
* `m_flNearZ` (float)
* `m_flFarZ` (float)
* `m_nShadowQuality` (integer)
* `m_flProjectionSize` (float)
* `m_flRotation` (float)
* `m_iStyle` (integer)


--------------------------------------------------------------------------------
SECCION 99 / 328
=== NETPROP: CEnvQuadraticBeam ===
Ruta relativa: netprops/CEnvQuadraticBeam.md
--------------------------------------------------------------------------------

---
description: DT_QuadraticBeam
---

# CEnvQuadraticBeam


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_targetPosition` (vector)
* `m_controlPosition` (vector)
* `m_scrollRate` (float)
* `m_flWidth` (float)


--------------------------------------------------------------------------------
SECCION 100 / 328
=== NETPROP: CEnvScreenEffect ===
Ruta relativa: netprops/CEnvScreenEffect.md
--------------------------------------------------------------------------------

---
description: DT_EnvScreenEffect
---

# CEnvScreenEffect


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flDuration` (float)
* `m_nType` (integer)


--------------------------------------------------------------------------------
SECCION 101 / 328
=== NETPROP: CEnvScreenOverlay ===
Ruta relativa: netprops/CEnvScreenOverlay.md
--------------------------------------------------------------------------------

---
description: DT_EnvScreenOverlay
---

# CEnvScreenOverlay


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_iszOverlayNames` (string)
* `m_iszOverlayNames` (array)
* `m_flOverlayTimes` (float)
* `m_flOverlayTimes` (array)
* `m_flStartTime` (float)
* `m_iDesiredOverlay` (integer)
* `m_bIsActive` (integer)


--------------------------------------------------------------------------------
SECCION 102 / 328
=== NETPROP: CEnvTonemapController ===
Ruta relativa: netprops/CEnvTonemapController.md
--------------------------------------------------------------------------------

---
description: DT_EnvTonemapController
---

# CEnvTonemapController


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_bUseCustomAutoExposureMin` (integer)
* `m_bUseCustomAutoExposureMax` (integer)
* `m_bUseCustomBloomScale` (integer)
* `m_flCustomAutoExposureMin` (float)
* `m_flCustomAutoExposureMax` (float)
* `m_flCustomBloomScale` (float)
* `m_flCustomBloomScaleMinimum` (float)
* `m_flBloomExponent` (float)
* `m_flBloomSaturation` (float)
* `m_flTonemapPercentTarget` (float)
* `m_flTonemapPercentBrightPixels` (float)
* `m_flTonemapMinAvgLum` (float)
* `m_flTonemapRate` (float)


--------------------------------------------------------------------------------
SECCION 103 / 328
=== NETPROP: CEnvWind ===
Ruta relativa: netprops/CEnvWind.md
--------------------------------------------------------------------------------

---
description: DT_EnvWind
---

# CEnvWind


* `m_iMinWind` (integer)
* `m_iMaxWind` (integer)
* `m_iMinGust` (integer)
* `m_iMaxGust` (integer)
* `m_flMinGustDelay` (float)
* `m_flMaxGustDelay` (float)
* `m_iGustDirChange` (integer)
* `m_iWindSeed` (integer)
* `m_iInitialWindDir` (integer)
* `m_flInitialWindSpeed` (float)
* `m_flStartTime` (float)
* `m_flGustDuration` (float)


--------------------------------------------------------------------------------
SECCION 104 / 328
=== NETPROP: CFEPlayerDecal ===
Ruta relativa: netprops/CFEPlayerDecal.md
--------------------------------------------------------------------------------

---
description: DT_FEPlayerDecal
---

# CFEPlayerDecal


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nUniqueID` (integer)
* `m_unAccountID` (integer)
* `m_unTraceID` (integer)
* `m_rtGcTime` (integer)
* `m_vecEndPos` (vector)
* `m_vecStart` (vector)
* `m_vecRight` (vector)
* `m_vecNormal` (vector)
* `m_nEntity` (integer)
* `m_nPlayer` (integer)
* `m_nHitbox` (integer)
* `m_nTintID` (integer)
* `m_flCreationTime` (float)
* `m_nVersion` (integer)


--------------------------------------------------------------------------------
SECCION 105 / 328
=== NETPROP: CFireCrackerBlast ===
Ruta relativa: netprops/CFireCrackerBlast.md
--------------------------------------------------------------------------------

---
description: DT_FireCrackerBlast
---

# CFireCrackerBlast


* `m_ubSignature` (integer[0-127])
* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_fireXDelta` (integer[0-63])
* `m_fireYDelta` (integer[0-63])
* `m_fireZDelta` (integer[0-63])
* `m_bEligibleForScreenHighlight` (integer)
* `m_bFireIsBurning` (integer[0-63])
* `m_fireCount` (integer)
* `m_nFireEffectTickBegin` (integer)


--------------------------------------------------------------------------------
SECCION 106 / 328
=== NETPROP: CFireSmoke ===
Ruta relativa: netprops/CFireSmoke.md
--------------------------------------------------------------------------------

---
description: DT_FireSmoke
---

# CFireSmoke


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flStartScale` (float)
* `m_flScale` (float)
* `m_flScaleTime` (float)
* `m_nFlags` (integer)
* `m_nFlameModelIndex` (integer)
* `m_nFlameFromAboveModelIndex` (integer)


--------------------------------------------------------------------------------
SECCION 107 / 328
=== NETPROP: CFireTrail ===
Ruta relativa: netprops/CFireTrail.md
--------------------------------------------------------------------------------

---
description: DT_FireTrail
---

# CFireTrail


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nAttachment` (integer)
* `m_flLifetime` (float)


--------------------------------------------------------------------------------
SECCION 108 / 328
=== NETPROP: CFish ===
Ruta relativa: netprops/CFish.md
--------------------------------------------------------------------------------

---
description: DT_CFish
---

# CFish


* `m_poolOrigin` (vector)
* `m_angle` (float)
* `m_x` (float)
* `m_y` (float)
* `m_z` (float)
* `m_nModelIndex` (integer)
* `m_lifeState` (integer)
* `m_waterLevel` (float)


--------------------------------------------------------------------------------
SECCION 109 / 328
=== NETPROP: CFists ===
Ruta relativa: netprops/CFists.md
--------------------------------------------------------------------------------

---
description: DT_WeaponFists
---

# CFists


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bPlayingUninterruptableAct` (integer)


--------------------------------------------------------------------------------
SECCION 110 / 328
=== NETPROP: CFlashbang ===
Ruta relativa: netprops/CFlashbang.md
--------------------------------------------------------------------------------

---
description: DT_Flashbang
---

# CFlashbang


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 111 / 328
=== NETPROP: CFogController ===
Ruta relativa: netprops/CFogController.md
--------------------------------------------------------------------------------

---
description: DT_FogController
---

# CFogController


* `m_fog.enable` (integer)
* `m_fog.blend` (integer)
* `m_fog.dirPrimary` (vector)
* `m_fog.colorPrimary` (integer)
* `m_fog.colorSecondary` (integer)
* `m_fog.start` (float)
* `m_fog.end` (float)
* `m_fog.maxdensity` (float)
* `m_fog.farz` (float)
* `m_fog.colorPrimaryLerpTo` (integer)
* `m_fog.colorSecondaryLerpTo` (integer)
* `m_fog.startLerpTo` (float)
* `m_fog.endLerpTo` (float)
* `m_fog.maxdensityLerpTo` (float)
* `m_fog.lerptime` (float)
* `m_fog.duration` (float)
* `m_fog.HDRColorScale` (float)
* `m_fog.ZoomFogScale` (float)


--------------------------------------------------------------------------------
SECCION 112 / 328
=== NETPROP: CFootstepControl ===
Ruta relativa: netprops/CFootstepControl.md
--------------------------------------------------------------------------------

---
description: DT_FootstepControl
---

# CFootstepControl


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecFinalDest` (vector)
* `m_movementType` (integer)
* `m_flMoveTargetTime` (float)
* `m_bClientSidePredicted` (integer)
* `m_spawnflags` (integer)
* `m_source` (string)
* `m_destination` (string)


--------------------------------------------------------------------------------
SECCION 113 / 328
=== NETPROP: CFuncAreaPortalWindow ===
Ruta relativa: netprops/CFuncAreaPortalWindow.md
--------------------------------------------------------------------------------

---
description: DT_FuncAreaPortalWindow
---

# CFuncAreaPortalWindow


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flFadeDist` (float)
* `m_flFadeStartDist` (float)
* `m_flTranslucencyLimit` (float)
* `m_iBackgroundModelIndex` (integer)


--------------------------------------------------------------------------------
SECCION 114 / 328
=== NETPROP: CFuncBrush ===
Ruta relativa: netprops/CFuncBrush.md
--------------------------------------------------------------------------------

---
description: DT_FuncBrush
---

# CFuncBrush


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 115 / 328
=== NETPROP: CFuncConveyor ===
Ruta relativa: netprops/CFuncConveyor.md
--------------------------------------------------------------------------------

---
description: DT_FuncConveyor
---

# CFuncConveyor


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flConveyorSpeed` (float)


--------------------------------------------------------------------------------
SECCION 116 / 328
=== NETPROP: CFuncLadder ===
Ruta relativa: netprops/CFuncLadder.md
--------------------------------------------------------------------------------

---
description: DT_FuncLadder
---

# CFuncLadder


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecPlayerMountPositionTop` (vector)
* `m_vecPlayerMountPositionBottom` (vector)
* `m_vecLadderDir` (vector)
* `m_bFakeLadder` (integer)


--------------------------------------------------------------------------------
SECCION 117 / 328
=== NETPROP: CFuncMonitor ===
Ruta relativa: netprops/CFuncMonitor.md
--------------------------------------------------------------------------------

---
description: DT_FuncMonitor
---

# CFuncMonitor


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 118 / 328
=== NETPROP: CFuncMoveLinear ===
Ruta relativa: netprops/CFuncMoveLinear.md
--------------------------------------------------------------------------------

---
description: DT_FuncMoveLinear
---

# CFuncMoveLinear


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecFinalDest` (vector)
* `m_movementType` (integer)
* `m_flMoveTargetTime` (float)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)


--------------------------------------------------------------------------------
SECCION 119 / 328
=== NETPROP: CFuncOccluder ===
Ruta relativa: netprops/CFuncOccluder.md
--------------------------------------------------------------------------------

---
description: DT_FuncOccluder
---

# CFuncOccluder


* `m_bActive` (integer)
* `m_nOccluderIndex` (integer)


--------------------------------------------------------------------------------
SECCION 120 / 328
=== NETPROP: CFuncReflectiveGlass ===
Ruta relativa: netprops/CFuncReflectiveGlass.md
--------------------------------------------------------------------------------

---
description: DT_FuncReflectiveGlass
---

# CFuncReflectiveGlass


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 121 / 328
=== NETPROP: CFuncRotating ===
Ruta relativa: netprops/CFuncRotating.md
--------------------------------------------------------------------------------

---
description: DT_FuncRotating
---

# CFuncRotating


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_angRotation` (integer)
* `m_vecOrigin` (integer)
* `m_flSimulationTime` (integer)
* `m_vecOrigin` (vector)
* `m_angRotation[0]` (float)
* `m_angRotation[1]` (float)
* `m_angRotation[2]` (float)
* `m_flSimulationTime` (integer)


--------------------------------------------------------------------------------
SECCION 122 / 328
=== NETPROP: CFuncSmokeVolume ===
Ruta relativa: netprops/CFuncSmokeVolume.md
--------------------------------------------------------------------------------

---
description: DT_FuncSmokeVolume
---

# CFuncSmokeVolume


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_Color1` (integer)
* `m_Color2` (integer)
* `m_MaterialName` (string)
* `m_ParticleDrawWidth` (float)
* `m_ParticleSpacingDistance` (float)
* `m_DensityRampSpeed` (float)
* `m_RotationSpeed` (float)
* `m_MovementSpeed` (float)
* `m_Density` (float)
* `m_maxDrawDistance` (float)
* `m_spawnflags` (integer)


--------------------------------------------------------------------------------
SECCION 123 / 328
=== NETPROP: CFuncTrackTrain ===
Ruta relativa: netprops/CFuncTrackTrain.md
--------------------------------------------------------------------------------

---
description: DT_FuncTrackTrain
---

# CFuncTrackTrain


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 124 / 328
=== NETPROP: CFunc_Dust ===
Ruta relativa: netprops/CFunc_Dust.md
--------------------------------------------------------------------------------

---
description: DT_Func_Dust
---

# CFunc_Dust


* `m_Color` (integer)
* `m_SpawnRate` (integer)
* `m_SpeedMax` (integer)
* `m_flSizeMin` (float)
* `m_flSizeMax` (float)
* `m_DistMax` (integer)
* `m_LifetimeMin` (integer)
* `m_LifetimeMax` (integer)
* `m_DustFlags` (integer)
* `m_nModelIndex` (integer)
* `m_FallSpeed` (float)
* `m_bAffectedByWind` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)


--------------------------------------------------------------------------------
SECCION 125 / 328
=== NETPROP: CFunc_LOD ===
Ruta relativa: netprops/CFunc_LOD.md
--------------------------------------------------------------------------------

---
description: DT_Func_LOD
---

# CFunc_LOD


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nDisappearMinDist` (integer)
* `m_nDisappearMaxDist` (integer)


--------------------------------------------------------------------------------
SECCION 126 / 328
=== NETPROP: CGameRulesProxy ===
Ruta relativa: netprops/CGameRulesProxy.md
--------------------------------------------------------------------------------

---
description: DT_GameRulesProxy
---

# CGameRulesProxy




--------------------------------------------------------------------------------
SECCION 127 / 328
=== NETPROP: CGrassBurn ===
Ruta relativa: netprops/CGrassBurn.md
--------------------------------------------------------------------------------

---
description: DT_GrassBurn
---

# CGrassBurn


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flGrassBurnClearTime` (float)


--------------------------------------------------------------------------------
SECCION 128 / 328
=== NETPROP: CHEGrenade ===
Ruta relativa: netprops/CHEGrenade.md
--------------------------------------------------------------------------------

---
description: DT_HEGrenade
---

# CHEGrenade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 129 / 328
=== NETPROP: CHandleTest ===
Ruta relativa: netprops/CHandleTest.md
--------------------------------------------------------------------------------

---
description: DT_HandleTest
---

# CHandleTest


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_Handle` (integer)
* `m_bSendHandle` (integer)


--------------------------------------------------------------------------------
SECCION 130 / 328
=== NETPROP: CHostage ===
Ruta relativa: netprops/CHostage.md
--------------------------------------------------------------------------------

---
description: DT_CHostage
---

# CHostage


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_flNextAttack` (float)
* `m_LastHitGroup` (integer)
* `m_hActiveWeapon` (integer)
* `m_flTimeOfLastInjury` (float)
* `m_hMyWeapons` (integer[0-63])
* `m_nRelativeDirectionOfLastInjury` (integer)
* `m_hMyWearables` (integer[0])
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nSequence` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `overlay_vars` (integer)
* `m_flCycle` (integer)
* `m_flAnimTime` (integer)
* `m_isRescued` (integer)
* `m_jumpedThisFrame` (integer)
* `m_iHealth` (integer)
* `m_iMaxHealth` (integer)
* `m_lifeState` (integer)
* `m_fFlags` (integer)
* `m_vel` (vector)
* `m_leader` (integer)
* `m_nHostageState` (integer)
* `m_flRescueStartTime` (float)
* `m_flGrabSuccessTime` (float)
* `m_flDropStartTime` (float)


--------------------------------------------------------------------------------
SECCION 131 / 328
=== NETPROP: CHostageCarriableProp ===
Ruta relativa: netprops/CHostageCarriableProp.md
--------------------------------------------------------------------------------

---
description: DT_HostageCarriableProp
---

# CHostageCarriableProp


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)


--------------------------------------------------------------------------------
SECCION 132 / 328
=== NETPROP: CIncendiaryGrenade ===
Ruta relativa: netprops/CIncendiaryGrenade.md
--------------------------------------------------------------------------------

---
description: DT_IncendiaryGrenade
---

# CIncendiaryGrenade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 133 / 328
=== NETPROP: CInferno ===
Ruta relativa: netprops/CInferno.md
--------------------------------------------------------------------------------

---
description: DT_Inferno
---

# CInferno


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_fireXDelta` (integer[0-63])
* `m_fireYDelta` (integer[0-63])
* `m_fireZDelta` (integer[0-63])
* `m_bEligibleForScreenHighlight` (integer)
* `m_bFireIsBurning` (integer[0-63])
* `m_fireCount` (integer)
* `m_nFireEffectTickBegin` (integer)


--------------------------------------------------------------------------------
SECCION 134 / 328
=== NETPROP: CInfoLadderDismount ===
Ruta relativa: netprops/CInfoLadderDismount.md
--------------------------------------------------------------------------------

---
description: DT_InfoLadderDismount
---

# CInfoLadderDismount


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 135 / 328
=== NETPROP: CInfoMapRegion ===
Ruta relativa: netprops/CInfoMapRegion.md
--------------------------------------------------------------------------------

---
description: DT_InfoMapRegion
---

# CInfoMapRegion


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flRadius` (float)
* `m_szLocToken` (string)


--------------------------------------------------------------------------------
SECCION 136 / 328
=== NETPROP: CInfoOverlayAccessor ===
Ruta relativa: netprops/CInfoOverlayAccessor.md
--------------------------------------------------------------------------------

---
description: DT_InfoOverlayAccessor
---

# CInfoOverlayAccessor


* `m_iTextureFrameIndex` (integer)
* `m_iOverlayID` (integer)


--------------------------------------------------------------------------------
SECCION 137 / 328
=== NETPROP: CItemCash ===
Ruta relativa: netprops/CItemCash.md
--------------------------------------------------------------------------------

---
description: DT_ItemCash
---

# CItemCash


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)


--------------------------------------------------------------------------------
SECCION 138 / 328
=== NETPROP: CItemDogtags ===
Ruta relativa: netprops/CItemDogtags.md
--------------------------------------------------------------------------------

---
description: DT_ItemDogtags
---

# CItemDogtags


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)


--------------------------------------------------------------------------------
SECCION 139 / 328
=== NETPROP: CItem_Healthshot ===
Ruta relativa: netprops/CItem_Healthshot.md
--------------------------------------------------------------------------------

---
description: DT_Item_Healthshot
---

# CItem_Healthshot


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)


--------------------------------------------------------------------------------
SECCION 140 / 328
=== NETPROP: CKnife ===
Ruta relativa: netprops/CKnife.md
--------------------------------------------------------------------------------

---
description: DT_WeaponKnife
---

# CKnife


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)


--------------------------------------------------------------------------------
SECCION 141 / 328
=== NETPROP: CKnifeGG ===
Ruta relativa: netprops/CKnifeGG.md
--------------------------------------------------------------------------------

---
description: DT_WeaponKnifeGG
---

# CKnifeGG


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)


--------------------------------------------------------------------------------
SECCION 142 / 328
=== NETPROP: CLightGlow ===
Ruta relativa: netprops/CLightGlow.md
--------------------------------------------------------------------------------

---
description: DT_LightGlow
---

# CLightGlow


* `m_clrRender` (integer)
* `m_nHorizontalSize` (integer)
* `m_nVerticalSize` (integer)
* `m_nMinDist` (integer)
* `m_nMaxDist` (integer)
* `m_nOuterMaxDist` (integer)
* `m_spawnflags` (integer)
* `m_vecOrigin` (vector)
* `m_angRotation` (vector)
* `moveparent` (integer)
* `m_flGlowProxySize` (float)
* `HDRColorScale` (float)


--------------------------------------------------------------------------------
SECCION 143 / 328
=== NETPROP: CMapVetoPickController ===
Ruta relativa: netprops/CMapVetoPickController.md
--------------------------------------------------------------------------------

---
description: DT_MapVetoPickController
---

# CMapVetoPickController


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nDraftType` (integer)
* `m_nTeamWithFirstChoice` (integer[0-63])
* `m_nVoteMapIdsList` (integer[0-6])
* `m_nAccountIDs` (integer[0-63])
* `m_nMapId0` (integer[0-63])
* `m_nMapId1` (integer[0-63])
* `m_nMapId2` (integer[0-63])
* `m_nMapId3` (integer[0-63])
* `m_nMapId4` (integer[0-63])
* `m_nMapId5` (integer[0-63])
* `m_nTeamWinningCoinToss` (integer)
* `m_nStartingSide0` (integer[0-63])
* `m_nCurrentPhase` (integer)
* `m_nPhaseStartTick` (integer)
* `m_nPhaseDurationTicks` (integer)


--------------------------------------------------------------------------------
SECCION 144 / 328
=== NETPROP: CMaterialModifyControl ===
Ruta relativa: netprops/CMaterialModifyControl.md
--------------------------------------------------------------------------------

---
description: DT_MaterialModifyControl
---

# CMaterialModifyControl


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_szMaterialName` (string)
* `m_szMaterialVar` (string)
* `m_szMaterialVarValue` (string)
* `m_iFrameStart` (integer)
* `m_iFrameEnd` (integer)
* `m_bWrap` (integer)
* `m_flFramerate` (float)
* `m_bNewAnimCommandsSemaphore` (integer)
* `m_flFloatLerpStartValue` (float)
* `m_flFloatLerpEndValue` (float)
* `m_flFloatLerpTransitionTime` (float)
* `m_nModifyMode` (integer)


--------------------------------------------------------------------------------
SECCION 145 / 328
=== NETPROP: CMelee ===
Ruta relativa: netprops/CMelee.md
--------------------------------------------------------------------------------

---
description: DT_WeaponMelee
---

# CMelee


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_flThrowAt` (float)


--------------------------------------------------------------------------------
SECCION 146 / 328
=== NETPROP: CMolotovGrenade ===
Ruta relativa: netprops/CMolotovGrenade.md
--------------------------------------------------------------------------------

---
description: DT_MolotovGrenade
---

# CMolotovGrenade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 147 / 328
=== NETPROP: CMolotovProjectile ===
Ruta relativa: netprops/CMolotovProjectile.md
--------------------------------------------------------------------------------

---
description: DT_MolotovProjectile
---

# CMolotovProjectile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)
* `m_vInitialVelocity` (vector)
* `m_nBounces` (integer)
* `m_nExplodeEffectIndex` (integer)
* `m_nExplodeEffectTickBegin` (integer)
* `m_vecExplodeEffectOrigin` (vector)
* `m_bIsIncGrenade` (integer)


--------------------------------------------------------------------------------
SECCION 148 / 328
=== NETPROP: CMovieDisplay ===
Ruta relativa: netprops/CMovieDisplay.md
--------------------------------------------------------------------------------

---
description: DT_MovieDisplay
---

# CMovieDisplay


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_bEnabled` (integer)
* `m_bLooping` (integer)
* `m_szMovieFilename` (string)
* `m_szGroupName` (string)
* `m_bStretchToFill` (integer)
* `m_bForcedSlave` (integer)
* `m_bUseCustomUVs` (integer)
* `m_flUMin` (float)
* `m_flUMax` (float)
* `m_flVMin` (float)
* `m_flVMax` (float)


--------------------------------------------------------------------------------
SECCION 149 / 328
=== NETPROP: CParadropChopper ===
Ruta relativa: netprops/CParadropChopper.md
--------------------------------------------------------------------------------

---
description: DT_ParadropChopper
---

# CParadropChopper


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_vecOrigin` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (3)
* `m_vecOrigin[2]` (float)
* `m_hCallingPlayer` (integer)


--------------------------------------------------------------------------------
SECCION 150 / 328
=== NETPROP: CParticleFire ===
Ruta relativa: netprops/CParticleFire.md
--------------------------------------------------------------------------------

---
description: DT_ParticleFire
---

# CParticleFire


* `m_vOrigin` (vector)
* `m_vDirection` (vector)


--------------------------------------------------------------------------------
SECCION 151 / 328
=== NETPROP: CParticlePerformanceMonitor ===
Ruta relativa: netprops/CParticlePerformanceMonitor.md
--------------------------------------------------------------------------------

---
description: DT_ParticlePerformanceMonitor
---

# CParticlePerformanceMonitor


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_bDisplayPerf` (integer)
* `m_bMeasurePerf` (integer)


--------------------------------------------------------------------------------
SECCION 152 / 328
=== NETPROP: CParticleSystem ===
Ruta relativa: netprops/CParticleSystem.md
--------------------------------------------------------------------------------

---
description: DT_ParticleSystem
---

# CParticleSystem


* `m_vecOrigin` (vector)
* `m_fEffects` (integer)
* `m_hOwnerEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_angRotation` (vector)
* `m_iEffectIndex` (integer)
* `m_bActive` (integer)
* `m_nStopType` (integer)
* `m_flStartTime` (float)
* `m_vServerControlPoints` (vector[0-3])
* `m_iServerControlPointAssignments` (integer[0-3])
* `m_hControlPointEnts` (integer[0-62])
* `m_szSnapshotFileName` (string)


--------------------------------------------------------------------------------
SECCION 153 / 328
=== NETPROP: CPhysBox ===
Ruta relativa: netprops/CPhysBox.md
--------------------------------------------------------------------------------

---
description: DT_PhysBox
---

# CPhysBox


* `m_iControlPointParents` (integer[0-62])
* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 154 / 328
=== NETPROP: CPhysBoxMultiplayer ===
Ruta relativa: netprops/CPhysBoxMultiplayer.md
--------------------------------------------------------------------------------

---
description: DT_PhysBoxMultiplayer
---

# CPhysBoxMultiplayer


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_iPhysicsMode` (integer)
* `m_fMass` (float)


--------------------------------------------------------------------------------
SECCION 155 / 328
=== NETPROP: CPhysMagnet ===
Ruta relativa: netprops/CPhysMagnet.md
--------------------------------------------------------------------------------

---
description: DT_PhysMagnet
---

# CPhysMagnet


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)


--------------------------------------------------------------------------------
SECCION 156 / 328
=== NETPROP: CPhysPropAmmoBox ===
Ruta relativa: netprops/CPhysPropAmmoBox.md
--------------------------------------------------------------------------------

---
description: DT_PhysPropAmmoBox
---

# CPhysPropAmmoBox


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)
* `m_bAwake` (integer)
* `m_iPhysicsMode` (integer)
* `m_fMass` (float)
* `m_collisionMins` (vector)
* `m_collisionMaxs` (vector)


--------------------------------------------------------------------------------
SECCION 157 / 328
=== NETPROP: CPhysPropLootCrate ===
Ruta relativa: netprops/CPhysPropLootCrate.md
--------------------------------------------------------------------------------

---
description: DT_PhysPropLootCrate
---

# CPhysPropLootCrate


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)
* `m_bAwake` (integer)
* `m_iPhysicsMode` (integer)
* `m_fMass` (float)
* `m_collisionMins` (vector)
* `m_collisionMaxs` (vector)
* `m_bRenderInPSPM` (integer)
* `m_bRenderInTablet` (integer)
* `m_iHealth` (integer)
* `m_iMaxHealth` (integer)


--------------------------------------------------------------------------------
SECCION 158 / 328
=== NETPROP: CPhysPropRadarJammer ===
Ruta relativa: netprops/CPhysPropRadarJammer.md
--------------------------------------------------------------------------------

---
description: DT_PhysPropRadarJammer
---

# CPhysPropRadarJammer


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)
* `m_bAwake` (integer)
* `m_iPhysicsMode` (integer)
* `m_fMass` (float)
* `m_collisionMins` (vector)
* `m_collisionMaxs` (vector)


--------------------------------------------------------------------------------
SECCION 159 / 328
=== NETPROP: CPhysPropWeaponUpgrade ===
Ruta relativa: netprops/CPhysPropWeaponUpgrade.md
--------------------------------------------------------------------------------

---
description: DT_PhysPropWeaponUpgrade
---

# CPhysPropWeaponUpgrade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)
* `m_bAwake` (integer)
* `m_iPhysicsMode` (integer)
* `m_fMass` (float)
* `m_collisionMins` (vector)
* `m_collisionMaxs` (vector)


--------------------------------------------------------------------------------
SECCION 160 / 328
=== NETPROP: CPhysicsProp ===
Ruta relativa: netprops/CPhysicsProp.md
--------------------------------------------------------------------------------

---
description: DT_PhysicsProp
---

# CPhysicsProp


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)
* `m_bAwake` (integer)


--------------------------------------------------------------------------------
SECCION 161 / 328
=== NETPROP: CPhysicsPropMultiplayer ===
Ruta relativa: netprops/CPhysicsPropMultiplayer.md
--------------------------------------------------------------------------------

---
description: DT_PhysicsPropMultiplayer
---

# CPhysicsPropMultiplayer


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)
* `m_bAwake` (integer)
* `m_iPhysicsMode` (integer)
* `m_fMass` (float)
* `m_collisionMins` (vector)
* `m_collisionMaxs` (vector)


--------------------------------------------------------------------------------
SECCION 162 / 328
=== NETPROP: CPlantedC4 ===
Ruta relativa: netprops/CPlantedC4.md
--------------------------------------------------------------------------------

---
description: DT_PlantedC4
---

# CPlantedC4


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_bBombTicking` (integer)
* `m_nBombSite` (integer)
* `m_flC4Blow` (float)
* `m_flTimerLength` (float)
* `m_flDefuseLength` (float)
* `m_flDefuseCountDown` (float)
* `m_bBombDefused` (integer)
* `m_hBombDefuser` (integer)


--------------------------------------------------------------------------------
SECCION 163 / 328
=== NETPROP: CPlasma ===
Ruta relativa: netprops/CPlasma.md
--------------------------------------------------------------------------------

---
description: DT_Plasma
---

# CPlasma


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flScale` (float)
* `m_flScaleTime` (float)
* `m_nFlags` (integer)
* `m_nPlasmaModelIndex` (integer)
* `m_nPlasmaModelIndex2` (integer)
* `m_nGlowModelIndex` (integer)


--------------------------------------------------------------------------------
SECCION 164 / 328
=== NETPROP: CPlayerPing ===
Ruta relativa: netprops/CPlayerPing.md
--------------------------------------------------------------------------------

---
description: DT_PlayerPing
---

# CPlayerPing


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_hPlayer` (integer)
* `m_hPingedEntity` (integer)
* `m_iType` (integer)
* `m_bUrgent` (integer)


--------------------------------------------------------------------------------
SECCION 165 / 328
=== NETPROP: CPlayerResource ===
Ruta relativa: netprops/CPlayerResource.md
--------------------------------------------------------------------------------

---
description: DT_PlayerResource
---

# CPlayerResource


* `m_iPing` (integer[0-64])
* `m_iAssists` (integer[0-64])
* `m_iDeaths` (integer[0-64])
* `m_bConnected` (integer[0-64])
* `m_iTeam` (integer[0-64])
* `m_iPendingTeam` (integer[0-64])
* `m_bAlive` (integer[0-64])
* `m_iHealth` (integer[0-64])
* `m_iKills` (integer[0-64])


--------------------------------------------------------------------------------
SECCION 166 / 328
=== NETPROP: CPointCamera ===
Ruta relativa: netprops/CPointCamera.md
--------------------------------------------------------------------------------

---
description: DT_PointCamera
---

# CPointCamera


* `m_iCoachingTeam` (integer[0-64])
* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_FOV` (float)
* `m_Resolution` (float)
* `m_bFogEnable` (integer)
* `m_FogColor` (integer)
* `m_flFogStart` (float)
* `m_flFogEnd` (float)
* `m_flFogMaxDensity` (float)
* `m_bActive` (integer)
* `m_bUseScreenAspectRatio` (integer)


--------------------------------------------------------------------------------
SECCION 167 / 328
=== NETPROP: CPointCommentaryNode ===
Ruta relativa: netprops/CPointCommentaryNode.md
--------------------------------------------------------------------------------

---
description: DT_PointCommentaryNode
---

# CPointCommentaryNode


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_bActive` (integer)
* `m_iszCommentaryFile` (string)
* `m_iszCommentaryFileNoHDR` (string)
* `m_flStartTime` (float)
* `m_iszSpeakers` (string)
* `m_iNodeNumber` (integer)
* `m_iNodeNumberMax` (integer)
* `m_hViewPosition` (integer)


--------------------------------------------------------------------------------
SECCION 168 / 328
=== NETPROP: CPointWorldText ===
Ruta relativa: netprops/CPointWorldText.md
--------------------------------------------------------------------------------

---
description: DT_PointWorldText
---

# CPointWorldText


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_szText` (string)
* `m_textColor` (integer)
* `m_flTextSize` (float)


--------------------------------------------------------------------------------
SECCION 169 / 328
=== NETPROP: CPoseController ===
Ruta relativa: netprops/CPoseController.md
--------------------------------------------------------------------------------

---
description: DT_PoseController
---

# CPoseController


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_hProps` (integer[0-3])
* `m_bEligibleForScreenHighlight` (integer)
* `m_chPoseIndex` (integer[0-3])
* `m_bPoseValueParity` (integer)
* `m_fPoseValue` (float)
* `m_fInterpolationTime` (float)
* `m_bInterpolationWrap` (integer)
* `m_fCycleFrequency` (float)
* `m_nFModType` (integer)
* `m_fFModTimeOffset` (float)
* `m_fFModRate` (float)
* `m_fFModAmplitude` (float)


--------------------------------------------------------------------------------
SECCION 170 / 328
=== NETPROP: CPostProcessController ===
Ruta relativa: netprops/CPostProcessController.md
--------------------------------------------------------------------------------

---
description: DT_PostProcessController
---

# CPostProcessController


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flPostProcessParameters` (float[0-10])
* `m_bMaster` (integer)


--------------------------------------------------------------------------------
SECCION 171 / 328
=== NETPROP: CPrecipitation ===
Ruta relativa: netprops/CPrecipitation.md
--------------------------------------------------------------------------------

---
description: DT_Precipitation
---

# CPrecipitation


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nPrecipType` (integer)


--------------------------------------------------------------------------------
SECCION 172 / 328
=== NETPROP: CPrecipitationBlocker ===
Ruta relativa: netprops/CPrecipitationBlocker.md
--------------------------------------------------------------------------------

---
description: DT_PrecipitationBlocker
---

# CPrecipitationBlocker


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 173 / 328
=== NETPROP: CPredictedViewModel ===
Ruta relativa: netprops/CPredictedViewModel.md
--------------------------------------------------------------------------------

---
description: DT_PredictedViewModel
---

# CPredictedViewModel


* `m_nModelIndex` (integer)
* `m_hWeapon` (integer)
* `m_nBody` (integer)
* `m_nSkin` (integer)
* `m_nSequence` (integer)
* `m_nViewModelIndex` (integer)
* `m_flPlaybackRate` (float)
* `m_fEffects` (integer)
* `m_nAnimationParity` (integer)
* `m_hOwner` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_bShouldIgnoreOffsetAndAccuracy` (integer)


--------------------------------------------------------------------------------
SECCION 174 / 328
=== NETPROP: CPropCounter ===
Ruta relativa: netprops/CPropCounter.md
--------------------------------------------------------------------------------

---
description: DT_PropCounter
---

# CPropCounter


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDisplayValue` (float)


--------------------------------------------------------------------------------
SECCION 175 / 328
=== NETPROP: CPropDoorRotating ===
Ruta relativa: netprops/CPropDoorRotating.md
--------------------------------------------------------------------------------

---
description: DT_PropDoorRotating
---

# CPropDoorRotating


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_bUseHitboxesForRenderBox` (integer)
* `m_flGlowMaxDist` (float)
* `m_bShouldGlow` (integer)
* `m_clrGlow` (integer)
* `m_nGlowStyle` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)


--------------------------------------------------------------------------------
SECCION 176 / 328
=== NETPROP: CPropJeep ===
Ruta relativa: netprops/CPropJeep.md
--------------------------------------------------------------------------------

---
description: DT_PropJeep
---

# CPropJeep


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_hPlayer` (integer)
* `m_nSpeed` (integer)
* `m_nRPM` (integer)
* `m_flThrottle` (float)
* `m_nBoostTimeLeft` (integer)
* `m_nHasBoost` (integer)
* `m_nScannerDisabledWeapons` (integer)
* `m_nScannerDisabledVehicle` (integer)
* `m_bEnterAnimOn` (integer)
* `m_bExitAnimOn` (integer)
* `m_bUnableToFire` (integer)
* `m_vecEyeExitEndpoint` (vector)
* `m_bHasGun` (integer)
* `m_vecGunCrosshair` (vector)
* `m_bHeadlightIsOn` (integer)


--------------------------------------------------------------------------------
SECCION 177 / 328
=== NETPROP: CPropVehicleDriveable ===
Ruta relativa: netprops/CPropVehicleDriveable.md
--------------------------------------------------------------------------------

---
description: DT_PropVehicleDriveable
---

# CPropVehicleDriveable


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_hPlayer` (integer)
* `m_nSpeed` (integer)
* `m_nRPM` (integer)
* `m_flThrottle` (float)
* `m_nBoostTimeLeft` (integer)
* `m_nHasBoost` (integer)
* `m_nScannerDisabledWeapons` (integer)
* `m_nScannerDisabledVehicle` (integer)
* `m_bEnterAnimOn` (integer)
* `m_bExitAnimOn` (integer)
* `m_bUnableToFire` (integer)
* `m_vecEyeExitEndpoint` (vector)
* `m_bHasGun` (integer)
* `m_vecGunCrosshair` (vector)


--------------------------------------------------------------------------------
SECCION 178 / 328
=== NETPROP: CProp_Hallucination ===
Ruta relativa: netprops/CProp_Hallucination.md
--------------------------------------------------------------------------------

---
description: DT_Prop_Hallucination
---

# CProp_Hallucination


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_bEnabled` (integer)
* `m_fVisibleTime` (float)
* `m_fRechargeTime` (float)


--------------------------------------------------------------------------------
SECCION 179 / 328
=== NETPROP: CRagdollManager ===
Ruta relativa: netprops/CRagdollManager.md
--------------------------------------------------------------------------------

---
description: DT_RagdollManager
---

# CRagdollManager


* `m_iCurrentMaxRagdollCount` (integer)


--------------------------------------------------------------------------------
SECCION 180 / 328
=== NETPROP: CRagdollProp ===
Ruta relativa: netprops/CRagdollProp.md
--------------------------------------------------------------------------------

---
description: DT_Ragdoll
---

# CRagdollProp


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_ragAngles` (vector)
* `m_ragAngles` (array)
* `m_ragPos` (vector)
* `m_ragPos` (array)
* `m_hUnragdoll` (integer)
* `m_flBlendWeight` (float)
* `m_nOverlaySequence` (integer)


--------------------------------------------------------------------------------
SECCION 181 / 328
=== NETPROP: CRagdollPropAttached ===
Ruta relativa: netprops/CRagdollPropAttached.md
--------------------------------------------------------------------------------

---
description: DT_Ragdoll_Attached
---

# CRagdollPropAttached


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_ragAngles` (vector)
* `m_ragAngles` (array)
* `m_ragPos` (vector)
* `m_ragPos` (array)
* `m_hUnragdoll` (integer)
* `m_flBlendWeight` (float)
* `m_nOverlaySequence` (integer)
* `m_boneIndexAttached` (integer)
* `m_ragdollAttachedObjectIndex` (integer)
* `m_attachmentPointBoneSpace` (vector)
* `m_attachmentPointRagdollSpace` (vector)


--------------------------------------------------------------------------------
SECCION 182 / 328
=== NETPROP: CRopeKeyframe ===
Ruta relativa: netprops/CRopeKeyframe.md
--------------------------------------------------------------------------------

---
description: DT_RopeKeyframe
---

# CRopeKeyframe


* `m_hStartPoint` (integer)
* `m_hEndPoint` (integer)
* `m_iStartAttachment` (integer)
* `m_iEndAttachment` (integer)
* `m_Slack` (integer)
* `m_RopeLength` (integer)
* `m_fLockedPoints` (integer)
* `m_nChangeCount` (integer)
* `m_RopeFlags` (integer)
* `m_nSegments` (integer)
* `m_bConstrainBetweenEndpoints` (integer)
* `m_iRopeMaterialModelIndex` (integer)
* `m_Subdiv` (integer)
* `m_TextureScale` (float)
* `m_Width` (float)
* `m_flScrollSpeed` (float)
* `m_vecOrigin` (vector)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iDefaultRopeMaterialModelIndex` (integer)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)


--------------------------------------------------------------------------------
SECCION 183 / 328
=== NETPROP: CSCAR17 ===
Ruta relativa: netprops/CSCAR17.md
--------------------------------------------------------------------------------

---
description: DT_WeaponSCAR17
---

# CSCAR17


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 184 / 328
=== NETPROP: CSceneEntity ===
Ruta relativa: netprops/CSceneEntity.md
--------------------------------------------------------------------------------

---
description: DT_SceneEntity
---

# CSceneEntity


* `m_nSceneStringIndex` (integer)
* `m_bIsPlayingBack` (integer)
* `m_bPaused` (integer)
* `m_bMultiplayer` (integer)
* `m_flForceClientTime` (float)
* `lengthprop16` (integer)


--------------------------------------------------------------------------------
SECCION 185 / 328
=== NETPROP: CSensorGrenade ===
Ruta relativa: netprops/CSensorGrenade.md
--------------------------------------------------------------------------------

---
description: DT_SensorGrenade
---

# CSensorGrenade


* `lengthproxy` (integer[0-15])
* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 186 / 328
=== NETPROP: CSensorGrenadeProjectile ===
Ruta relativa: netprops/CSensorGrenadeProjectile.md
--------------------------------------------------------------------------------

---
description: DT_SensorGrenadeProjectile
---

# CSensorGrenadeProjectile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)
* `m_vInitialVelocity` (vector)
* `m_nBounces` (integer)
* `m_nExplodeEffectIndex` (integer)
* `m_nExplodeEffectTickBegin` (integer)
* `m_vecExplodeEffectOrigin` (vector)


--------------------------------------------------------------------------------
SECCION 187 / 328
=== NETPROP: CShadowControl ===
Ruta relativa: netprops/CShadowControl.md
--------------------------------------------------------------------------------

---
description: DT_ShadowControl
---

# CShadowControl


* `m_shadowDirection` (vector)
* `m_shadowColor` (integer)
* `m_flShadowMaxDist` (float)
* `m_bDisableShadows` (integer)
* `m_bEnableLocalLightShadows` (integer)


--------------------------------------------------------------------------------
SECCION 188 / 328
=== NETPROP: CSlideshowDisplay ===
Ruta relativa: netprops/CSlideshowDisplay.md
--------------------------------------------------------------------------------

---
description: DT_SlideshowDisplay
---

# CSlideshowDisplay


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_bEnabled` (integer)
* `m_szDisplayText` (string)
* `m_szSlideshowDirectory` (string)
* `m_chCurrentSlideLists` (integer[0-15])
* `m_fMinSlideTime` (float)
* `m_fMaxSlideTime` (float)
* `m_iCycleType` (integer)
* `m_bNoListRepeats` (integer)


--------------------------------------------------------------------------------
SECCION 189 / 328
=== NETPROP: CSmokeGrenade ===
Ruta relativa: netprops/CSmokeGrenade.md
--------------------------------------------------------------------------------

---
description: DT_SmokeGrenade
---

# CSmokeGrenade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 190 / 328
=== NETPROP: CSmokeGrenadeProjectile ===
Ruta relativa: netprops/CSmokeGrenadeProjectile.md
--------------------------------------------------------------------------------

---
description: DT_SmokeGrenadeProjectile
---

# CSmokeGrenadeProjectile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)
* `m_vInitialVelocity` (vector)
* `m_nBounces` (integer)
* `m_nExplodeEffectIndex` (integer)
* `m_nExplodeEffectTickBegin` (integer)
* `m_vecExplodeEffectOrigin` (vector)
* `m_bDidSmokeEffect` (integer)
* `m_nSmokeEffectTickBegin` (integer)


--------------------------------------------------------------------------------
SECCION 191 / 328
=== NETPROP: CSmokeStack ===
Ruta relativa: netprops/CSmokeStack.md
--------------------------------------------------------------------------------

---
description: DT_SmokeStack
---

# CSmokeStack


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_SpreadSpeed` (float)
* `m_Speed` (float)
* `m_StartSize` (float)
* `m_EndSize` (float)
* `m_Rate` (float)
* `m_JetLength` (float)
* `m_bEmit` (integer)
* `m_flBaseSpread` (float)
* `m_flRollSpeed` (float)
* `m_DirLight.m_vPos` (vector)
* `m_DirLight.m_vColor` (vector)
* `m_DirLight.m_flIntensity` (float)
* `m_AmbientLight.m_vPos` (vector)
* `m_AmbientLight.m_vColor` (vector)
* `m_AmbientLight.m_flIntensity` (float)
* `m_vWind` (vector)
* `m_flTwist` (float)
* `m_iMaterialModel` (integer)


--------------------------------------------------------------------------------
SECCION 192 / 328
=== NETPROP: CSnowball ===
Ruta relativa: netprops/CSnowball.md
--------------------------------------------------------------------------------

---
description: DT_Snowball
---

# CSnowball


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)
* `m_bIsHeldByPlayer` (integer)
* `m_bPinPulled` (integer)
* `m_fThrowTime` (float)
* `m_bLoopingSoundPlaying` (integer)
* `m_flThrowStrength` (float)


--------------------------------------------------------------------------------
SECCION 193 / 328
=== NETPROP: CSnowballPile ===
Ruta relativa: netprops/CSnowballPile.md
--------------------------------------------------------------------------------

---
description: DT_SnowballPile
---

# CSnowballPile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)


--------------------------------------------------------------------------------
SECCION 194 / 328
=== NETPROP: CSnowballProjectile ===
Ruta relativa: netprops/CSnowballProjectile.md
--------------------------------------------------------------------------------

---
description: DT_SnowballProjectile
---

# CSnowballProjectile


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_flDamage` (float)
* `m_DmgRadius` (float)
* `m_bIsLive` (integer)
* `m_hThrower` (integer)
* `m_flAnimTime` (integer)
* `m_vecVelocity` (vector)
* `m_fFlags` (integer)
* `m_vInitialVelocity` (vector)
* `m_nBounces` (integer)
* `m_nExplodeEffectIndex` (integer)
* `m_nExplodeEffectTickBegin` (integer)
* `m_vecExplodeEffectOrigin` (vector)


--------------------------------------------------------------------------------
SECCION 195 / 328
=== NETPROP: CSpatialEntity ===
Ruta relativa: netprops/CSpatialEntity.md
--------------------------------------------------------------------------------

---
description: DT_SpatialEntity
---

# CSpatialEntity


* `m_vecOrigin` (vector)
* `m_MinFalloff` (float)
* `m_MaxFalloff` (float)
* `m_flCurWeight` (float)
* `m_bEnabled` (integer)


--------------------------------------------------------------------------------
SECCION 196 / 328
=== NETPROP: CSpotlightEnd ===
Ruta relativa: netprops/CSpotlightEnd.md
--------------------------------------------------------------------------------

---
description: DT_SpotlightEnd
---

# CSpotlightEnd


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flLightScale` (float)
* `m_Radius` (float)


--------------------------------------------------------------------------------
SECCION 197 / 328
=== NETPROP: CSprite ===
Ruta relativa: netprops/CSprite.md
--------------------------------------------------------------------------------

---
description: DT_Sprite
---

# CSprite


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_hAttachedToEntity` (integer)
* `m_nAttachment` (integer)
* `m_flScaleTime` (float)
* `m_flSpriteScale` (float)
* `m_flGlowProxySize` (float)
* `m_flHDRColorScale` (float)
* `m_flSpriteFramerate` (float)
* `m_flFrame` (float)
* `m_flBrightnessTime` (float)
* `m_nBrightness` (integer)
* `m_bWorldSpaceScale` (integer)


--------------------------------------------------------------------------------
SECCION 198 / 328
=== NETPROP: CSpriteOriented ===
Ruta relativa: netprops/CSpriteOriented.md
--------------------------------------------------------------------------------

---
description: DT_SpriteOriented
---

# CSpriteOriented


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_hAttachedToEntity` (integer)
* `m_nAttachment` (integer)
* `m_flScaleTime` (float)
* `m_flSpriteScale` (float)
* `m_flGlowProxySize` (float)
* `m_flHDRColorScale` (float)
* `m_flSpriteFramerate` (float)
* `m_flFrame` (float)
* `m_flBrightnessTime` (float)
* `m_nBrightness` (integer)
* `m_bWorldSpaceScale` (integer)


--------------------------------------------------------------------------------
SECCION 199 / 328
=== NETPROP: CSpriteTrail ===
Ruta relativa: netprops/CSpriteTrail.md
--------------------------------------------------------------------------------

---
description: DT_SpriteTrail
---

# CSpriteTrail


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_hAttachedToEntity` (integer)
* `m_nAttachment` (integer)
* `m_flScaleTime` (float)
* `m_flSpriteScale` (float)
* `m_flGlowProxySize` (float)
* `m_flHDRColorScale` (float)
* `m_flSpriteFramerate` (float)
* `m_flFrame` (float)
* `m_flBrightnessTime` (float)
* `m_nBrightness` (integer)
* `m_bWorldSpaceScale` (integer)
* `m_flLifeTime` (float)
* `m_flStartWidth` (float)
* `m_flEndWidth` (float)
* `m_flStartWidthVariance` (float)
* `m_flTextureRes` (float)
* `m_flMinFadeLength` (float)
* `m_vecSkyboxOrigin` (vector)
* `m_flSkyboxScale` (float)


--------------------------------------------------------------------------------
SECCION 200 / 328
=== NETPROP: CStatueProp ===
Ruta relativa: netprops/CStatueProp.md
--------------------------------------------------------------------------------

---
description: DT_StatueProp
---

# CStatueProp


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_qPreferredPlayerCarryAngles` (vector)
* `m_bClientPhysics` (integer)
* `m_flPoseParameter` (integer)
* `m_flPlaybackRate` (integer)
* `m_nMuzzleFlashParity` (integer)
* `overlay_vars` (integer)
* `m_flexWeight` (integer)
* `m_blinktoggle` (integer)
* `m_bAwake` (integer)
* `m_hInitBaseAnimating` (integer)
* `m_bShatter` (integer)
* `m_nShatterFlags` (integer)
* `m_vShatterPosition` (vector)
* `m_vShatterForce` (vector)


--------------------------------------------------------------------------------
SECCION 201 / 328
=== NETPROP: CSteamJet ===
Ruta relativa: netprops/CSteamJet.md
--------------------------------------------------------------------------------

---
description: DT_SteamJet
---

# CSteamJet


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_SpreadSpeed` (float)
* `m_Speed` (float)
* `m_StartSize` (float)
* `m_EndSize` (float)
* `m_Rate` (float)
* `m_JetLength` (float)
* `m_bEmit` (integer)
* `m_bFaceLeft` (integer)
* `m_nType` (integer)
* `m_spawnflags` (integer)
* `m_flRollSpeed` (float)


--------------------------------------------------------------------------------
SECCION 202 / 328
=== NETPROP: CSun ===
Ruta relativa: netprops/CSun.md
--------------------------------------------------------------------------------

---
description: DT_Sun
---

# CSun


* `m_clrRender` (integer)
* `m_clrOverlay` (integer)
* `m_vDirection` (vector)
* `m_bOn` (integer)
* `m_nSize` (integer)
* `m_nOverlaySize` (integer)
* `m_nMaterial` (integer)
* `m_nOverlayMaterial` (integer)
* `HDRColorScale` (float)
* `glowDistanceScale` (float)


--------------------------------------------------------------------------------
SECCION 203 / 328
=== NETPROP: CSunlightShadowControl ===
Ruta relativa: netprops/CSunlightShadowControl.md
--------------------------------------------------------------------------------

---
description: DT_SunlightShadowControl
---

# CSunlightShadowControl


* `m_shadowDirection` (vector)
* `m_bEnabled` (integer)
* `m_TextureName` (string)
* `m_LightColor` (integer)
* `m_flColorTransitionTime` (float)
* `m_flSunDistance` (float)
* `m_flFOV` (float)
* `m_flNearZ` (float)
* `m_flNorthOffset` (float)
* `m_bEnableShadows` (integer)


--------------------------------------------------------------------------------
SECCION 204 / 328
=== NETPROP: CSurvivalSpawnChopper ===
Ruta relativa: netprops/CSurvivalSpawnChopper.md
--------------------------------------------------------------------------------

---
description: DT_SurvivalSpawnChopper
---

# CSurvivalSpawnChopper


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `m_vecOrigin` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (3)
* `m_vecOrigin[2]` (float)


--------------------------------------------------------------------------------
SECCION 205 / 328
=== NETPROP: CTEArmorRicochet ===
Ruta relativa: netprops/CTEArmorRicochet.md
--------------------------------------------------------------------------------

---
description: DT_TEArmorRicochet
---

# CTEArmorRicochet


* `m_vecPos` (vector)
* `m_vecDir` (vector)


--------------------------------------------------------------------------------
SECCION 206 / 328
=== NETPROP: CTEBSPDecal ===
Ruta relativa: netprops/CTEBSPDecal.md
--------------------------------------------------------------------------------

---
description: DT_TEBSPDecal
---

# CTEBSPDecal


* `m_vecOrigin` (vector)
* `m_nEntity` (integer)
* `m_nIndex` (integer)


--------------------------------------------------------------------------------
SECCION 207 / 328
=== NETPROP: CTEBaseBeam ===
Ruta relativa: netprops/CTEBaseBeam.md
--------------------------------------------------------------------------------

---
description: DT_BaseBeam
---

# CTEBaseBeam


* `m_nModelIndex` (integer)
* `m_nHaloIndex` (integer)
* `m_nStartFrame` (integer)
* `m_nFrameRate` (integer)
* `m_fLife` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_nFadeLength` (integer)
* `m_fAmplitude` (float)
* `m_nSpeed` (integer)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nFlags` (integer)


--------------------------------------------------------------------------------
SECCION 208 / 328
=== NETPROP: CTEBeamEntPoint ===
Ruta relativa: netprops/CTEBeamEntPoint.md
--------------------------------------------------------------------------------

---
description: DT_TEBeamEntPoint
---

# CTEBeamEntPoint


* `m_nModelIndex` (integer)
* `m_nHaloIndex` (integer)
* `m_nStartFrame` (integer)
* `m_nFrameRate` (integer)
* `m_fLife` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_nFadeLength` (integer)
* `m_fAmplitude` (float)
* `m_nSpeed` (integer)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nFlags` (integer)
* `m_nStartEntity` (integer)
* `m_nEndEntity` (integer)
* `m_vecStartPoint` (vector)
* `m_vecEndPoint` (vector)


--------------------------------------------------------------------------------
SECCION 209 / 328
=== NETPROP: CTEBeamEnts ===
Ruta relativa: netprops/CTEBeamEnts.md
--------------------------------------------------------------------------------

---
description: DT_TEBeamEnts
---

# CTEBeamEnts


* `m_nModelIndex` (integer)
* `m_nHaloIndex` (integer)
* `m_nStartFrame` (integer)
* `m_nFrameRate` (integer)
* `m_fLife` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_nFadeLength` (integer)
* `m_fAmplitude` (float)
* `m_nSpeed` (integer)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nFlags` (integer)
* `m_nStartEntity` (integer)
* `m_nEndEntity` (integer)


--------------------------------------------------------------------------------
SECCION 210 / 328
=== NETPROP: CTEBeamFollow ===
Ruta relativa: netprops/CTEBeamFollow.md
--------------------------------------------------------------------------------

---
description: DT_TEBeamFollow
---

# CTEBeamFollow


* `m_nModelIndex` (integer)
* `m_nHaloIndex` (integer)
* `m_nStartFrame` (integer)
* `m_nFrameRate` (integer)
* `m_fLife` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_nFadeLength` (integer)
* `m_fAmplitude` (float)
* `m_nSpeed` (integer)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nFlags` (integer)
* `m_iEntIndex` (integer)


--------------------------------------------------------------------------------
SECCION 211 / 328
=== NETPROP: CTEBeamLaser ===
Ruta relativa: netprops/CTEBeamLaser.md
--------------------------------------------------------------------------------

---
description: DT_TEBeamLaser
---

# CTEBeamLaser


* `m_nModelIndex` (integer)
* `m_nHaloIndex` (integer)
* `m_nStartFrame` (integer)
* `m_nFrameRate` (integer)
* `m_fLife` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_nFadeLength` (integer)
* `m_fAmplitude` (float)
* `m_nSpeed` (integer)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nFlags` (integer)
* `m_nStartEntity` (integer)
* `m_nEndEntity` (integer)


--------------------------------------------------------------------------------
SECCION 212 / 328
=== NETPROP: CTEBeamPoints ===
Ruta relativa: netprops/CTEBeamPoints.md
--------------------------------------------------------------------------------

---
description: DT_TEBeamPoints
---

# CTEBeamPoints


* `m_nModelIndex` (integer)
* `m_nHaloIndex` (integer)
* `m_nStartFrame` (integer)
* `m_nFrameRate` (integer)
* `m_fLife` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_nFadeLength` (integer)
* `m_fAmplitude` (float)
* `m_nSpeed` (integer)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nFlags` (integer)
* `m_vecStartPoint` (vector)
* `m_vecEndPoint` (vector)


--------------------------------------------------------------------------------
SECCION 213 / 328
=== NETPROP: CTEBeamRing ===
Ruta relativa: netprops/CTEBeamRing.md
--------------------------------------------------------------------------------

---
description: DT_TEBeamRing
---

# CTEBeamRing


* `m_nModelIndex` (integer)
* `m_nHaloIndex` (integer)
* `m_nStartFrame` (integer)
* `m_nFrameRate` (integer)
* `m_fLife` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_nFadeLength` (integer)
* `m_fAmplitude` (float)
* `m_nSpeed` (integer)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nFlags` (integer)
* `m_nStartEntity` (integer)
* `m_nEndEntity` (integer)


--------------------------------------------------------------------------------
SECCION 214 / 328
=== NETPROP: CTEBeamRingPoint ===
Ruta relativa: netprops/CTEBeamRingPoint.md
--------------------------------------------------------------------------------

---
description: DT_TEBeamRingPoint
---

# CTEBeamRingPoint


* `m_nModelIndex` (integer)
* `m_nHaloIndex` (integer)
* `m_nStartFrame` (integer)
* `m_nFrameRate` (integer)
* `m_fLife` (float)
* `m_fWidth` (float)
* `m_fEndWidth` (float)
* `m_nFadeLength` (integer)
* `m_fAmplitude` (float)
* `m_nSpeed` (integer)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nFlags` (integer)
* `m_vecCenter` (vector)
* `m_flStartRadius` (float)
* `m_flEndRadius` (float)


--------------------------------------------------------------------------------
SECCION 215 / 328
=== NETPROP: CTEBeamSpline ===
Ruta relativa: netprops/CTEBeamSpline.md
--------------------------------------------------------------------------------

---
description: DT_TEBeamSpline
---

# CTEBeamSpline


* `m_nPoints` (integer)
* `m_vecPoints` (vector)
* `m_vecPoints` (array)


--------------------------------------------------------------------------------
SECCION 216 / 328
=== NETPROP: CTEBloodSprite ===
Ruta relativa: netprops/CTEBloodSprite.md
--------------------------------------------------------------------------------

---
description: DT_TEBloodSprite
---

# CTEBloodSprite


* `m_vecOrigin` (vector)
* `m_vecDirection` (vector)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nSprayModel` (integer)
* `m_nDropModel` (integer)
* `m_nSize` (integer)


--------------------------------------------------------------------------------
SECCION 217 / 328
=== NETPROP: CTEBloodStream ===
Ruta relativa: netprops/CTEBloodStream.md
--------------------------------------------------------------------------------

---
description: DT_TEBloodStream
---

# CTEBloodStream


* `m_vecOrigin[0]` (float)
* `m_vecOrigin[1]` (float)
* `m_vecOrigin[2]` (float)
* `m_vecDirection` (vector)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `a` (integer)
* `m_nAmount` (integer)


--------------------------------------------------------------------------------
SECCION 218 / 328
=== NETPROP: CTEBreakModel ===
Ruta relativa: netprops/CTEBreakModel.md
--------------------------------------------------------------------------------

---
description: DT_TEBreakModel
---

# CTEBreakModel


* `m_vecOrigin` (vector)
* `m_angRotation[0]` (float)
* `m_angRotation[1]` (float)
* `m_angRotation[2]` (float)
* `m_vecSize` (vector)
* `m_vecVelocity` (vector)
* `m_nModelIndex` (integer)
* `m_nRandomization` (integer)
* `m_nCount` (integer)
* `m_fTime` (float)
* `m_nFlags` (integer)


--------------------------------------------------------------------------------
SECCION 219 / 328
=== NETPROP: CTEBubbleTrail ===
Ruta relativa: netprops/CTEBubbleTrail.md
--------------------------------------------------------------------------------

---
description: DT_TEBubbleTrail
---

# CTEBubbleTrail


* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nModelIndex` (integer)
* `m_flWaterZ` (float)
* `m_nCount` (integer)
* `m_fSpeed` (float)


--------------------------------------------------------------------------------
SECCION 220 / 328
=== NETPROP: CTEBubbles ===
Ruta relativa: netprops/CTEBubbles.md
--------------------------------------------------------------------------------

---
description: DT_TEBubbles
---

# CTEBubbles


* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nModelIndex` (integer)
* `m_fHeight` (float)
* `m_nCount` (integer)
* `m_fSpeed` (float)


--------------------------------------------------------------------------------
SECCION 221 / 328
=== NETPROP: CTEClientProjectile ===
Ruta relativa: netprops/CTEClientProjectile.md
--------------------------------------------------------------------------------

---
description: DT_TEClientProjectile
---

# CTEClientProjectile


* `m_vecOrigin` (vector)
* `m_vecVelocity` (vector)
* `m_nModelIndex` (integer)
* `m_nLifeTime` (integer)
* `m_hOwner` (integer)


--------------------------------------------------------------------------------
SECCION 222 / 328
=== NETPROP: CTEDecal ===
Ruta relativa: netprops/CTEDecal.md
--------------------------------------------------------------------------------

---
description: DT_TEDecal
---

# CTEDecal


* `m_vecOrigin` (vector)
* `m_vecStart` (vector)
* `m_nEntity` (integer)
* `m_nHitbox` (integer)
* `m_nIndex` (integer)


--------------------------------------------------------------------------------
SECCION 223 / 328
=== NETPROP: CTEDust ===
Ruta relativa: netprops/CTEDust.md
--------------------------------------------------------------------------------

---
description: DT_TEDust
---

# CTEDust


* `m_vecOrigin[0]` (float)
* `m_vecOrigin[1]` (float)
* `m_vecOrigin[2]` (float)
* `m_flSize` (float)
* `m_flSpeed` (float)
* `m_vecDirection` (vector)


--------------------------------------------------------------------------------
SECCION 224 / 328
=== NETPROP: CTEDynamicLight ===
Ruta relativa: netprops/CTEDynamicLight.md
--------------------------------------------------------------------------------

---
description: DT_TEDynamicLight
---

# CTEDynamicLight


* `m_vecOrigin` (vector)
* `r` (integer)
* `g` (integer)
* `b` (integer)
* `exponent` (integer)
* `m_fRadius` (float)
* `m_fTime` (float)
* `m_fDecay` (float)


--------------------------------------------------------------------------------
SECCION 225 / 328
=== NETPROP: CTEEffectDispatch ===
Ruta relativa: netprops/CTEEffectDispatch.md
--------------------------------------------------------------------------------

---
description: DT_TEEffectDispatch
---

# CTEEffectDispatch


* `m_vOrigin.x` (float)
* `m_vOrigin.y` (float)
* `m_vOrigin.z` (float)
* `m_vStart.x` (float)
* `m_vStart.y` (float)
* `m_vStart.z` (float)
* `m_vAngles` (vector)
* `m_vNormal` (vector)
* `m_fFlags` (integer)
* `m_flMagnitude` (float)
* `m_flScale` (float)
* `m_nAttachmentIndex` (integer)
* `m_nSurfaceProp` (integer)
* `m_iEffectName` (integer)
* `m_nMaterial` (integer)
* `m_nDamageType` (integer)
* `m_nHitBox` (integer)
* `entindex` (integer)
* `m_nOtherEntIndex` (integer)
* `m_nColor` (integer)
* `m_flRadius` (float)
* `m_bPositionsAreRelativeToEntity` (integer)


--------------------------------------------------------------------------------
SECCION 226 / 328
=== NETPROP: CTEEnergySplash ===
Ruta relativa: netprops/CTEEnergySplash.md
--------------------------------------------------------------------------------

---
description: DT_TEEnergySplash
---

# CTEEnergySplash


* `m_vecPos` (vector)
* `m_vecDir` (vector)
* `m_bExplosive` (integer)


--------------------------------------------------------------------------------
SECCION 227 / 328
=== NETPROP: CTEExplosion ===
Ruta relativa: netprops/CTEExplosion.md
--------------------------------------------------------------------------------

---
description: DT_TEExplosion
---

# CTEExplosion


* `m_vecOrigin[0]` (float)
* `m_vecOrigin[1]` (float)
* `m_vecOrigin[2]` (float)
* `m_nModelIndex` (integer)
* `m_fScale` (float)
* `m_nFrameRate` (integer)
* `m_nFlags` (integer)
* `m_vecNormal` (vector)
* `m_chMaterialType` (integer)
* `m_nRadius` (integer)
* `m_nMagnitude` (integer)


--------------------------------------------------------------------------------
SECCION 228 / 328
=== NETPROP: CTEFireBullets ===
Ruta relativa: netprops/CTEFireBullets.md
--------------------------------------------------------------------------------

---
description: DT_TEFireBullets
---

# CTEFireBullets


* `m_vecOrigin` (vector)
* `m_vecAngles[0]` (float)
* `m_vecAngles[1]` (float)
* `m_weapon` (integer)
* `m_iMode` (integer)
* `m_iSeed` (integer)
* `m_iPlayer` (integer)
* `m_fInaccuracy` (float)
* `m_flRecoilIndex` (float)
* `m_fSpread` (float)
* `m_nItemDefIndex` (integer)
* `m_iSoundType` (integer)


--------------------------------------------------------------------------------
SECCION 229 / 328
=== NETPROP: CTEFizz ===
Ruta relativa: netprops/CTEFizz.md
--------------------------------------------------------------------------------

---
description: DT_TEFizz
---

# CTEFizz


* `m_nEntity` (integer)
* `m_nModelIndex` (integer)
* `m_nDensity` (integer)
* `m_nCurrent` (integer)


--------------------------------------------------------------------------------
SECCION 230 / 328
=== NETPROP: CTEFootprintDecal ===
Ruta relativa: netprops/CTEFootprintDecal.md
--------------------------------------------------------------------------------

---
description: DT_TEFootprintDecal
---

# CTEFootprintDecal


* `m_vecOrigin` (vector)
* `m_vecDirection` (vector)
* `m_nEntity` (integer)
* `m_nIndex` (integer)
* `m_chMaterialType` (integer)


--------------------------------------------------------------------------------
SECCION 231 / 328
=== NETPROP: CTEFoundryHelpers ===
Ruta relativa: netprops/CTEFoundryHelpers.md
--------------------------------------------------------------------------------

---
description: DT_TEFoundryHelpers
---

# CTEFoundryHelpers


* `m_iEntity` (integer)


--------------------------------------------------------------------------------
SECCION 232 / 328
=== NETPROP: CTEGaussExplosion ===
Ruta relativa: netprops/CTEGaussExplosion.md
--------------------------------------------------------------------------------

---
description: DT_TEGaussExplosion
---

# CTEGaussExplosion


* `m_vecOrigin[0]` (float)
* `m_vecOrigin[1]` (float)
* `m_vecOrigin[2]` (float)
* `m_nType` (integer)
* `m_vecDirection` (vector)


--------------------------------------------------------------------------------
SECCION 233 / 328
=== NETPROP: CTEGlowSprite ===
Ruta relativa: netprops/CTEGlowSprite.md
--------------------------------------------------------------------------------

---
description: DT_TEGlowSprite
---

# CTEGlowSprite


* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_fScale` (float)
* `m_fLife` (float)
* `m_nBrightness` (integer)


--------------------------------------------------------------------------------
SECCION 234 / 328
=== NETPROP: CTEImpact ===
Ruta relativa: netprops/CTEImpact.md
--------------------------------------------------------------------------------

---
description: DT_TEImpact
---

# CTEImpact


* `m_vecOrigin` (vector)
* `m_vecNormal` (vector)
* `m_iType` (integer)


--------------------------------------------------------------------------------
SECCION 235 / 328
=== NETPROP: CTEKillPlayerAttachments ===
Ruta relativa: netprops/CTEKillPlayerAttachments.md
--------------------------------------------------------------------------------

---
description: DT_TEKillPlayerAttachments
---

# CTEKillPlayerAttachments


* `m_nPlayer` (integer)


--------------------------------------------------------------------------------
SECCION 236 / 328
=== NETPROP: CTELargeFunnel ===
Ruta relativa: netprops/CTELargeFunnel.md
--------------------------------------------------------------------------------

---
description: DT_TELargeFunnel
---

# CTELargeFunnel


* `m_vecOrigin[0]` (float)
* `m_vecOrigin[1]` (float)
* `m_vecOrigin[2]` (float)
* `m_nModelIndex` (integer)
* `m_nReversed` (integer)


--------------------------------------------------------------------------------
SECCION 237 / 328
=== NETPROP: CTEMetalSparks ===
Ruta relativa: netprops/CTEMetalSparks.md
--------------------------------------------------------------------------------

---
description: DT_TEMetalSparks
---

# CTEMetalSparks


* `m_vecPos` (vector)
* `m_vecDir` (vector)


--------------------------------------------------------------------------------
SECCION 238 / 328
=== NETPROP: CTEMuzzleFlash ===
Ruta relativa: netprops/CTEMuzzleFlash.md
--------------------------------------------------------------------------------

---
description: DT_TEMuzzleFlash
---

# CTEMuzzleFlash


* `m_vecOrigin` (vector)
* `m_vecAngles` (vector)
* `m_flScale` (float)
* `m_nType` (integer)


--------------------------------------------------------------------------------
SECCION 239 / 328
=== NETPROP: CTEParticleSystem ===
Ruta relativa: netprops/CTEParticleSystem.md
--------------------------------------------------------------------------------

---
description: DT_TEParticleSystem
---

# CTEParticleSystem


* `m_vecOrigin[0]` (float)
* `m_vecOrigin[1]` (float)
* `m_vecOrigin[2]` (float)


--------------------------------------------------------------------------------
SECCION 240 / 328
=== NETPROP: CTEPhysicsProp ===
Ruta relativa: netprops/CTEPhysicsProp.md
--------------------------------------------------------------------------------

---
description: DT_TEPhysicsProp
---

# CTEPhysicsProp


* `m_vecOrigin` (vector)
* `m_angRotation[0]` (float)
* `m_angRotation[1]` (float)
* `m_angRotation[2]` (float)
* `m_vecVelocity` (vector)
* `m_nModelIndex` (integer)
* `m_nSkin` (integer)
* `m_nFlags` (integer)
* `m_nEffects` (integer)
* `m_clrRender` (integer)


--------------------------------------------------------------------------------
SECCION 241 / 328
=== NETPROP: CTEPlantBomb ===
Ruta relativa: netprops/CTEPlantBomb.md
--------------------------------------------------------------------------------

---
description: DT_TEPlantBomb
---

# CTEPlantBomb


* `m_vecOrigin` (vector)
* `m_iPlayer` (integer)
* `m_option` (integer)


--------------------------------------------------------------------------------
SECCION 242 / 328
=== NETPROP: CTEPlayerAnimEvent ===
Ruta relativa: netprops/CTEPlayerAnimEvent.md
--------------------------------------------------------------------------------

---
description: DT_TEPlayerAnimEvent
---

# CTEPlayerAnimEvent


* `m_hPlayer` (integer)
* `m_iEvent` (integer)
* `m_nData` (integer)


--------------------------------------------------------------------------------
SECCION 243 / 328
=== NETPROP: CTEPlayerDecal ===
Ruta relativa: netprops/CTEPlayerDecal.md
--------------------------------------------------------------------------------

---
description: DT_TEPlayerDecal
---

# CTEPlayerDecal


* `m_vecOrigin` (vector)
* `m_vecStart` (vector)
* `m_vecRight` (vector)
* `m_nEntity` (integer)
* `m_nPlayer` (integer)
* `m_nHitbox` (integer)


--------------------------------------------------------------------------------
SECCION 244 / 328
=== NETPROP: CTEProjectedDecal ===
Ruta relativa: netprops/CTEProjectedDecal.md
--------------------------------------------------------------------------------

---
description: DT_TEProjectedDecal
---

# CTEProjectedDecal


* `m_vecOrigin` (vector)
* `m_angRotation` (vector)
* `m_flDistance` (float)
* `m_nIndex` (integer)


--------------------------------------------------------------------------------
SECCION 245 / 328
=== NETPROP: CTERadioIcon ===
Ruta relativa: netprops/CTERadioIcon.md
--------------------------------------------------------------------------------

---
description: DT_TERadioIcon
---

# CTERadioIcon


* `m_iAttachToClient` (integer)


--------------------------------------------------------------------------------
SECCION 246 / 328
=== NETPROP: CTEShatterSurface ===
Ruta relativa: netprops/CTEShatterSurface.md
--------------------------------------------------------------------------------

---
description: DT_TEShatterSurface
---

# CTEShatterSurface


* `m_vecOrigin` (vector)
* `m_vecAngles` (vector)
* `m_vecForce` (vector)
* `m_vecForcePos` (vector)
* `m_flWidth` (float)
* `m_flHeight` (float)
* `m_flShardSize` (float)
* `m_nSurfaceType` (integer)
* `m_uchFrontColor[0]` (integer)
* `m_uchFrontColor[1]` (integer)
* `m_uchFrontColor[2]` (integer)
* `m_uchBackColor[0]` (integer)
* `m_uchBackColor[1]` (integer)
* `m_uchBackColor[2]` (integer)


--------------------------------------------------------------------------------
SECCION 247 / 328
=== NETPROP: CTEShowLine ===
Ruta relativa: netprops/CTEShowLine.md
--------------------------------------------------------------------------------

---
description: DT_TEShowLine
---

# CTEShowLine


* `m_vecOrigin[0]` (float)
* `m_vecOrigin[1]` (float)
* `m_vecOrigin[2]` (float)
* `m_vecEnd` (vector)


--------------------------------------------------------------------------------
SECCION 248 / 328
=== NETPROP: CTESmoke ===
Ruta relativa: netprops/CTESmoke.md
--------------------------------------------------------------------------------

---
description: DT_TESmoke
---

# CTESmoke


* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_fScale` (float)
* `m_nFrameRate` (integer)


--------------------------------------------------------------------------------
SECCION 249 / 328
=== NETPROP: CTESparks ===
Ruta relativa: netprops/CTESparks.md
--------------------------------------------------------------------------------

---
description: DT_TESparks
---

# CTESparks


* `m_vecOrigin[0]` (float)
* `m_vecOrigin[1]` (float)
* `m_vecOrigin[2]` (float)
* `m_nMagnitude` (integer)
* `m_nTrailLength` (integer)
* `m_vecDir` (vector)


--------------------------------------------------------------------------------
SECCION 250 / 328
=== NETPROP: CTESprite ===
Ruta relativa: netprops/CTESprite.md
--------------------------------------------------------------------------------

---
description: DT_TESprite
---

# CTESprite


* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_fScale` (float)
* `m_nBrightness` (integer)


--------------------------------------------------------------------------------
SECCION 251 / 328
=== NETPROP: CTESpriteSpray ===
Ruta relativa: netprops/CTESpriteSpray.md
--------------------------------------------------------------------------------

---
description: DT_TESpriteSpray
---

# CTESpriteSpray


* `m_vecOrigin` (vector)
* `m_vecDirection` (vector)
* `m_nModelIndex` (integer)
* `m_fNoise` (float)
* `m_nSpeed` (integer)
* `m_nCount` (integer)


--------------------------------------------------------------------------------
SECCION 252 / 328
=== NETPROP: CTEWorldDecal ===
Ruta relativa: netprops/CTEWorldDecal.md
--------------------------------------------------------------------------------

---
description: DT_TEWorldDecal
---

# CTEWorldDecal


* `m_vecOrigin` (vector)
* `m_nIndex` (integer)


--------------------------------------------------------------------------------
SECCION 253 / 328
=== NETPROP: CTablet ===
Ruta relativa: netprops/CTablet.md
--------------------------------------------------------------------------------

---
description: DT_WeaponTablet
---

# CTablet


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_flUpgradeExpirationTime` (float)
* `m_flUpgradeExpirationTime` (array)
* `m_vecLocalHexFlags` (integer)
* `m_vecLocalHexFlags` (array)
* `m_nContractKillGridIndex` (integer)
* `m_nContractKillGridHighResIndex` (integer)
* `m_bTabletReceptionIsBlocked` (integer)
* `m_flScanProgress` (float)
* `m_flBootTime` (float)
* `m_flShowMapTime` (float)
* `m_vecNotificationIds` (integer)
* `m_vecNotificationIds` (array)
* `m_vecNotificationTimestamps` (float)
* `m_vecNotificationTimestamps` (array)
* `m_vecPlayerPositionHistory` (vector)
* `m_vecPlayerPositionHistory` (array)
* `m_nLastPurchaseIndex` (integer)
* `m_vecNearestMetalCratePos` (vector)


--------------------------------------------------------------------------------
SECCION 254 / 328
=== NETPROP: CTeam ===
Ruta relativa: netprops/CTeam.md
--------------------------------------------------------------------------------

---
description: DT_Team
---

# CTeam


* `m_iTeamNum` (integer)
* `m_bSurrendered` (integer)
* `m_scoreTotal` (integer)
* `m_scoreFirstHalf` (integer)
* `m_scoreSecondHalf` (integer)
* `m_scoreOvertime` (integer)
* `m_iClanID` (integer)
* `m_szTeamname` (string)
* `m_szClanTeamname` (string)
* `m_szTeamFlagImage` (string)
* `m_szTeamLogoImage` (string)
* `m_szTeamMatchStat` (string)
* `m_nGGLeaderEntIndex_CT` (integer)
* `m_nGGLeaderEntIndex_T` (integer)
* `m_numMapVictories` (integer)
* `player_array_element` (integer)
* `&quot;player_array&quot;` (array)


--------------------------------------------------------------------------------
SECCION 255 / 328
=== NETPROP: CTeamplayRoundBasedRulesProxy ===
Ruta relativa: netprops/CTeamplayRoundBasedRulesProxy.md
--------------------------------------------------------------------------------

---
description: DT_TeamplayRoundBasedRulesProxy
---

# CTeamplayRoundBasedRulesProxy


* `m_iRoundState` (integer)
* `m_bInWaitingForPlayers` (integer)
* `m_iWinningTeam` (integer)
* `m_bInOvertime` (integer)
* `m_bInSetup` (integer)
* `m_bSwitchedTeamsThisRound` (integer)
* `m_bAwaitingReadyRestart` (integer)
* `m_flRestartRoundTime` (float)
* `m_flNextRespawnWave` (float[0-31])
* `m_TeamRespawnWaveTimes` (float[0-31])
* `m_flMapResetTime` (float)
* `m_bTeamReady` (integer[0-31])
* `m_bStopWatch` (integer)


--------------------------------------------------------------------------------
SECCION 256 / 328
=== NETPROP: CTesla ===
Ruta relativa: netprops/CTesla.md
--------------------------------------------------------------------------------

---
description: DT_Tesla
---

# CTesla


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_SoundName` (string)
* `m_iszSpriteName` (string)


--------------------------------------------------------------------------------
SECCION 257 / 328
=== NETPROP: CTestTraceline ===
Ruta relativa: netprops/CTestTraceline.md
--------------------------------------------------------------------------------

---
description: DT_TestTraceline
---

# CTestTraceline


* `m_clrRender` (integer)
* `m_vecOrigin` (vector)
* `m_angRotation[0]` (float)
* `m_angRotation[1]` (float)
* `m_angRotation[2]` (float)
* `moveparent` (integer)


--------------------------------------------------------------------------------
SECCION 258 / 328
=== NETPROP: CTest_ProxyToggle_Networkable ===
Ruta relativa: netprops/CTest_ProxyToggle_Networkable.md
--------------------------------------------------------------------------------

---
description: DT_ProxyToggle
---

# CTest_ProxyToggle_Networkable


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_WithProxy` (integer)


--------------------------------------------------------------------------------
SECCION 259 / 328
=== NETPROP: CTriggerPlayerMovement ===
Ruta relativa: netprops/CTriggerPlayerMovement.md
--------------------------------------------------------------------------------

---
description: DT_TriggerPlayerMovement
---

# CTriggerPlayerMovement


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecFinalDest` (vector)
* `m_movementType` (integer)
* `m_flMoveTargetTime` (float)
* `m_bClientSidePredicted` (integer)
* `m_spawnflags` (integer)


--------------------------------------------------------------------------------
SECCION 260 / 328
=== NETPROP: CTriggerSoundOperator ===
Ruta relativa: netprops/CTriggerSoundOperator.md
--------------------------------------------------------------------------------

---
description: DT_TriggerSoundOperator
---

# CTriggerSoundOperator


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_vecFinalDest` (vector)
* `m_movementType` (integer)
* `m_flMoveTargetTime` (float)
* `m_bClientSidePredicted` (integer)
* `m_spawnflags` (integer)
* `m_nSoundOperator` (integer)


--------------------------------------------------------------------------------
SECCION 261 / 328
=== NETPROP: CVGuiScreen ===
Ruta relativa: netprops/CVGuiScreen.md
--------------------------------------------------------------------------------

---
description: DT_VGuiScreen
---

# CVGuiScreen


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flWidth` (float)
* `m_flHeight` (float)
* `m_nAttachmentIndex` (integer)
* `m_nPanelName` (integer)
* `m_fScreenFlags` (integer)
* `m_nOverlayMaterial` (integer)
* `m_hPlayerOwner` (integer)


--------------------------------------------------------------------------------
SECCION 262 / 328
=== NETPROP: CVoteController ===
Ruta relativa: netprops/CVoteController.md
--------------------------------------------------------------------------------

---
description: DT_VoteController
---

# CVoteController


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_iActiveIssueIndex` (integer)
* `m_iOnlyTeamToVote` (integer)
* `m_nVoteOptionCount` (integer[0-4])
* `m_nPotentialVotes` (integer)
* `m_bIsYesNoVote` (integer)


--------------------------------------------------------------------------------
SECCION 263 / 328
=== NETPROP: CWaterBullet ===
Ruta relativa: netprops/CWaterBullet.md
--------------------------------------------------------------------------------

---
description: DT_WaterBullet
---

# CWaterBullet


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)


--------------------------------------------------------------------------------
SECCION 264 / 328
=== NETPROP: CWaterLODControl ===
Ruta relativa: netprops/CWaterLODControl.md
--------------------------------------------------------------------------------

---
description: DT_WaterLODControl
---

# CWaterLODControl


* `m_flCheapWaterStartDistance` (float)
* `m_flCheapWaterEndDistance` (float)


--------------------------------------------------------------------------------
SECCION 265 / 328
=== NETPROP: CWeaponAWP ===
Ruta relativa: netprops/CWeaponAWP.md
--------------------------------------------------------------------------------

---
description: DT_WeaponAWP
---

# CWeaponAWP


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 266 / 328
=== NETPROP: CWeaponAug ===
Ruta relativa: netprops/CWeaponAug.md
--------------------------------------------------------------------------------

---
description: DT_WeaponAug
---

# CWeaponAug


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 267 / 328
=== NETPROP: CWeaponBaseItem ===
Ruta relativa: netprops/CWeaponBaseItem.md
--------------------------------------------------------------------------------

---
description: DT_WeaponBaseItem
---

# CWeaponBaseItem


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_bRedraw` (integer)


--------------------------------------------------------------------------------
SECCION 268 / 328
=== NETPROP: CWeaponBizon ===
Ruta relativa: netprops/CWeaponBizon.md
--------------------------------------------------------------------------------

---
description: DT_WeaponBizon
---

# CWeaponBizon


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 269 / 328
=== NETPROP: CWeaponCSBase ===
Ruta relativa: netprops/CWeaponCSBase.md
--------------------------------------------------------------------------------

---
description: DT_WeaponCSBase
---

# CWeaponCSBase


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)


--------------------------------------------------------------------------------
SECCION 270 / 328
=== NETPROP: CWeaponCSBaseGun ===
Ruta relativa: netprops/CWeaponCSBaseGun.md
--------------------------------------------------------------------------------

---
description: DT_WeaponCSBaseGun
---

# CWeaponCSBaseGun


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 271 / 328
=== NETPROP: CWeaponCycler ===
Ruta relativa: netprops/CWeaponCycler.md
--------------------------------------------------------------------------------

---
description: DT_WeaponCycler
---

# CWeaponCycler


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)


--------------------------------------------------------------------------------
SECCION 272 / 328
=== NETPROP: CWeaponElite ===
Ruta relativa: netprops/CWeaponElite.md
--------------------------------------------------------------------------------

---
description: DT_WeaponElite
---

# CWeaponElite


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 273 / 328
=== NETPROP: CWeaponFamas ===
Ruta relativa: netprops/CWeaponFamas.md
--------------------------------------------------------------------------------

---
description: DT_WeaponFamas
---

# CWeaponFamas


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 274 / 328
=== NETPROP: CWeaponFiveSeven ===
Ruta relativa: netprops/CWeaponFiveSeven.md
--------------------------------------------------------------------------------

---
description: DT_WeaponFiveSeven
---

# CWeaponFiveSeven


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 275 / 328
=== NETPROP: CWeaponG3SG1 ===
Ruta relativa: netprops/CWeaponG3SG1.md
--------------------------------------------------------------------------------

---
description: DT_WeaponG3SG1
---

# CWeaponG3SG1


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 276 / 328
=== NETPROP: CWeaponGalil ===
Ruta relativa: netprops/CWeaponGalil.md
--------------------------------------------------------------------------------

---
description: DT_WeaponGalil
---

# CWeaponGalil


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 277 / 328
=== NETPROP: CWeaponGalilAR ===
Ruta relativa: netprops/CWeaponGalilAR.md
--------------------------------------------------------------------------------

---
description: DT_WeaponGalilAR
---

# CWeaponGalilAR


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 278 / 328
=== NETPROP: CWeaponGlock ===
Ruta relativa: netprops/CWeaponGlock.md
--------------------------------------------------------------------------------

---
description: DT_WeaponGlock
---

# CWeaponGlock


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 279 / 328
=== NETPROP: CWeaponHKP2000 ===
Ruta relativa: netprops/CWeaponHKP2000.md
--------------------------------------------------------------------------------

---
description: DT_WeaponHKP2000
---

# CWeaponHKP2000


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 280 / 328
=== NETPROP: CWeaponM249 ===
Ruta relativa: netprops/CWeaponM249.md
--------------------------------------------------------------------------------

---
description: DT_WeaponM249
---

# CWeaponM249


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 281 / 328
=== NETPROP: CWeaponM3 ===
Ruta relativa: netprops/CWeaponM3.md
--------------------------------------------------------------------------------

---
description: DT_WeaponM3
---

# CWeaponM3


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_reloadState` (integer)


--------------------------------------------------------------------------------
SECCION 282 / 328
=== NETPROP: CWeaponM4A1 ===
Ruta relativa: netprops/CWeaponM4A1.md
--------------------------------------------------------------------------------

---
description: DT_WeaponM4A1
---

# CWeaponM4A1


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 283 / 328
=== NETPROP: CWeaponMAC10 ===
Ruta relativa: netprops/CWeaponMAC10.md
--------------------------------------------------------------------------------

---
description: DT_WeaponMAC10
---

# CWeaponMAC10


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 284 / 328
=== NETPROP: CWeaponMP5Navy ===
Ruta relativa: netprops/CWeaponMP5Navy.md
--------------------------------------------------------------------------------

---
description: DT_WeaponMP5Navy
---

# CWeaponMP5Navy


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 285 / 328
=== NETPROP: CWeaponMP7 ===
Ruta relativa: netprops/CWeaponMP7.md
--------------------------------------------------------------------------------

---
description: DT_WeaponMP7
---

# CWeaponMP7


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 286 / 328
=== NETPROP: CWeaponMP9 ===
Ruta relativa: netprops/CWeaponMP9.md
--------------------------------------------------------------------------------

---
description: DT_WeaponMP9
---

# CWeaponMP9


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 287 / 328
=== NETPROP: CWeaponMag7 ===
Ruta relativa: netprops/CWeaponMag7.md
--------------------------------------------------------------------------------

---
description: DT_WeaponMag7
---

# CWeaponMag7


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 288 / 328
=== NETPROP: CWeaponNOVA ===
Ruta relativa: netprops/CWeaponNOVA.md
--------------------------------------------------------------------------------

---
description: DT_WeaponNOVA
---

# CWeaponNOVA


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_reloadState` (integer)


--------------------------------------------------------------------------------
SECCION 289 / 328
=== NETPROP: CWeaponNegev ===
Ruta relativa: netprops/CWeaponNegev.md
--------------------------------------------------------------------------------

---
description: DT_WeaponNegev
---

# CWeaponNegev


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 290 / 328
=== NETPROP: CWeaponP228 ===
Ruta relativa: netprops/CWeaponP228.md
--------------------------------------------------------------------------------

---
description: DT_WeaponP228
---

# CWeaponP228


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 291 / 328
=== NETPROP: CWeaponP250 ===
Ruta relativa: netprops/CWeaponP250.md
--------------------------------------------------------------------------------

---
description: DT_WeaponP250
---

# CWeaponP250


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 292 / 328
=== NETPROP: CWeaponP90 ===
Ruta relativa: netprops/CWeaponP90.md
--------------------------------------------------------------------------------

---
description: DT_WeaponP90
---

# CWeaponP90


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 293 / 328
=== NETPROP: CWeaponSCAR20 ===
Ruta relativa: netprops/CWeaponSCAR20.md
--------------------------------------------------------------------------------

---
description: DT_WeaponSCAR20
---

# CWeaponSCAR20


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 294 / 328
=== NETPROP: CWeaponSG550 ===
Ruta relativa: netprops/CWeaponSG550.md
--------------------------------------------------------------------------------

---
description: DT_WeaponSG550
---

# CWeaponSG550


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 295 / 328
=== NETPROP: CWeaponSG552 ===
Ruta relativa: netprops/CWeaponSG552.md
--------------------------------------------------------------------------------

---
description: DT_WeaponSG552
---

# CWeaponSG552


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 296 / 328
=== NETPROP: CWeaponSG556 ===
Ruta relativa: netprops/CWeaponSG556.md
--------------------------------------------------------------------------------

---
description: DT_WeaponSG556
---

# CWeaponSG556


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 297 / 328
=== NETPROP: CWeaponSSG08 ===
Ruta relativa: netprops/CWeaponSSG08.md
--------------------------------------------------------------------------------

---
description: DT_WeaponSSG08
---

# CWeaponSSG08


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 298 / 328
=== NETPROP: CWeaponSawedoff ===
Ruta relativa: netprops/CWeaponSawedoff.md
--------------------------------------------------------------------------------

---
description: DT_WeaponSawedoff
---

# CWeaponSawedoff


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_reloadState` (integer)


--------------------------------------------------------------------------------
SECCION 299 / 328
=== NETPROP: CWeaponScout ===
Ruta relativa: netprops/CWeaponScout.md
--------------------------------------------------------------------------------

---
description: DT_WeaponScout
---

# CWeaponScout


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 300 / 328
=== NETPROP: CWeaponShield ===
Ruta relativa: netprops/CWeaponShield.md
--------------------------------------------------------------------------------

---
description: DT_WeaponShield
---

# CWeaponShield


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 301 / 328
=== NETPROP: CWeaponTMP ===
Ruta relativa: netprops/CWeaponTMP.md
--------------------------------------------------------------------------------

---
description: DT_WeaponTMP
---

# CWeaponTMP


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 302 / 328
=== NETPROP: CWeaponTaser ===
Ruta relativa: netprops/CWeaponTaser.md
--------------------------------------------------------------------------------

---
description: DT_WeaponTaser
---

# CWeaponTaser


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)
* `m_fFireTime` (float)


--------------------------------------------------------------------------------
SECCION 303 / 328
=== NETPROP: CWeaponTec9 ===
Ruta relativa: netprops/CWeaponTec9.md
--------------------------------------------------------------------------------

---
description: DT_WeaponTec9
---

# CWeaponTec9


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 304 / 328
=== NETPROP: CWeaponUMP45 ===
Ruta relativa: netprops/CWeaponUMP45.md
--------------------------------------------------------------------------------

---
description: DT_WeaponUMP45
---

# CWeaponUMP45


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 305 / 328
=== NETPROP: CWeaponUSP ===
Ruta relativa: netprops/CWeaponUSP.md
--------------------------------------------------------------------------------

---
description: DT_WeaponUSP
---

# CWeaponUSP


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 306 / 328
=== NETPROP: CWeaponXM1014 ===
Ruta relativa: netprops/CWeaponXM1014.md
--------------------------------------------------------------------------------

---
description: DT_WeaponXM1014
---

# CWeaponXM1014


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_reloadState` (integer)


--------------------------------------------------------------------------------
SECCION 307 / 328
=== NETPROP: CWeaponZoneRepulsor ===
Ruta relativa: netprops/CWeaponZoneRepulsor.md
--------------------------------------------------------------------------------

---
description: DT_WeaponZoneRepulsor
---

# CWeaponZoneRepulsor


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_nForceBone` (integer)
* `m_vecForce` (vector)
* `m_nSkin` (integer)
* `m_nBody` (integer)
* `m_nHitboxSet` (integer)
* `m_flModelScale` (float)
* `m_flPoseParameter` (float[0-23])
* `m_nSequence` (integer)
* `m_flPlaybackRate` (float)
* `m_flEncodedController` (float[0-3])
* `m_bClientSideAnimation` (integer)
* `m_bClientSideFrameReset` (integer)
* `m_bClientSideRagdoll` (integer)
* `m_nNewSequenceParity` (integer)
* `m_nResetEventsParity` (integer)
* `m_nMuzzleFlashParity` (integer)
* `m_hLightingOrigin` (integer)
* `m_flCycle` (float)
* `m_flFrozen` (float)
* `m_ScaleType` (integer)
* `m_bSuppressAnimSounds` (integer)
* `m_nHighlightColorR` (integer)
* `m_nHighlightColorG` (integer)
* `m_nHighlightColorB` (integer)
* `lengthprop15` (integer)
* `m_flexWeight` (float[0-95])
* `m_blinktoggle` (integer)
* `m_viewtarget` (vector)
* `m_hOuter` (integer)
* `m_ProviderType` (integer)
* `m_iReapplyProvisionParity` (integer)
* `m_iItemDefinitionIndex` (integer)
* `m_iEntityLevel` (integer)
* `m_iItemIDHigh` (integer)
* `m_iItemIDLow` (integer)
* `m_iAccountID` (integer)
* `m_iEntityQuality` (integer)
* `m_bInitialized` (integer)
* `m_szCustomName` (string)
* `lengthprop32` (integer)
* `m_iPrimaryAmmoType` (integer)
* `m_iSecondaryAmmoType` (integer)
* `m_nViewModelIndex` (integer)
* `m_bFlipViewModel` (integer)
* `m_iWeaponOrigin` (integer)
* `m_iWeaponModule` (integer)
* `m_flNextPrimaryAttack` (float)
* `m_flNextSecondaryAttack` (float)
* `m_nNextThinkTick` (integer)
* `m_flTimeWeaponIdle` (float)
* `m_iViewModelIndex` (integer)
* `m_iWorldModelIndex` (integer)
* `m_iWorldDroppedModelIndex` (integer)
* `m_iState` (integer)
* `m_hOwner` (integer)
* `m_iClip1` (integer)
* `m_iClip2` (integer)
* `m_iPrimaryReserveAmmoCount` (integer)
* `m_iSecondaryReserveAmmoCount` (integer)
* `m_hWeaponWorldModel` (integer)
* `m_iNumEmptyAttacks` (integer)
* `m_weaponMode` (integer)
* `m_fAccuracyPenalty` (float)
* `m_fLastShotTime` (float)
* `m_flRecoilIndex` (float)
* `m_flAnimTime` (integer)
* `m_nSequence` (integer)
* `m_hPrevOwner` (integer)
* `m_bBurstMode` (integer)
* `m_flPostponeFireReadyTime` (float)
* `m_bReloadVisuallyComplete` (integer)
* `m_bSilencerOn` (integer)
* `m_flDoneSwitchingSilencer` (float)
* `m_iOriginalTeamNumber` (integer)
* `m_iIronSightMode` (integer)
* `m_zoomLevel` (integer)
* `m_iBurstShotsRemaining` (integer)


--------------------------------------------------------------------------------
SECCION 308 / 328
=== NETPROP: CWorld ===
Ruta relativa: netprops/CWorld.md
--------------------------------------------------------------------------------

---
description: DT_WORLD
---

# CWorld


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flWaveHeight` (float)
* `m_WorldMins` (vector)
* `m_WorldMaxs` (vector)
* `m_bStartDark` (integer)
* `m_flMaxOccludeeArea` (float)
* `m_flMinOccluderArea` (float)
* `m_flMaxPropScreenSpaceWidth` (float)
* `m_flMinPropScreenSpaceWidth` (float)
* `m_iszDetailSpriteMaterial` (string)
* `m_bColdWorld` (integer)


--------------------------------------------------------------------------------
SECCION 309 / 328
=== NETPROP: CWorldVguiText ===
Ruta relativa: netprops/CWorldVguiText.md
--------------------------------------------------------------------------------

---
description: DT_WorldVguiText
---

# CWorldVguiText


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_bEnabled` (integer)
* `m_szDisplayText` (string)
* `m_szDisplayTextOption` (string)
* `m_szFont` (string)
* `m_iTextPanelWidth` (integer)
* `m_clrText` (integer)


--------------------------------------------------------------------------------
SECCION 310 / 328
=== NETPROP: DustTrail ===
Ruta relativa: netprops/DustTrail.md
--------------------------------------------------------------------------------

---
description: DT_DustTrail
---

# DustTrail


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_SpawnRate` (float)
* `m_Color` (vector)
* `m_ParticleLifetime` (float)
* `m_StopEmitTime` (float)
* `m_MinSpeed` (float)
* `m_MaxSpeed` (float)
* `m_MinDirectedSpeed` (float)
* `m_MaxDirectedSpeed` (float)
* `m_StartSize` (float)
* `m_EndSize` (float)
* `m_SpawnRadius` (float)
* `m_bEmit` (integer)
* `m_Opacity` (float)


--------------------------------------------------------------------------------
SECCION 311 / 328
=== NETPROP: MovieExplosion ===
Ruta relativa: netprops/MovieExplosion.md
--------------------------------------------------------------------------------

---
description: DT_MovieExplosion
---

# MovieExplosion


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)


--------------------------------------------------------------------------------
SECCION 312 / 328
=== NETPROP: ParticleSmokeGrenade ===
Ruta relativa: netprops/ParticleSmokeGrenade.md
--------------------------------------------------------------------------------

---
description: DT_ParticleSmokeGrenade
---

# ParticleSmokeGrenade


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flSpawnTime` (float)
* `m_FadeStartTime` (float)
* `m_FadeEndTime` (float)
* `m_MinColor` (vector)
* `m_MaxColor` (vector)
* `m_CurrentStage` (integer)


--------------------------------------------------------------------------------
SECCION 313 / 328
=== NETPROP: RocketTrail ===
Ruta relativa: netprops/RocketTrail.md
--------------------------------------------------------------------------------

---
description: DT_RocketTrail
---

# RocketTrail


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_SpawnRate` (float)
* `m_StartColor` (vector)
* `m_EndColor` (vector)
* `m_ParticleLifetime` (float)
* `m_StopEmitTime` (float)
* `m_MinSpeed` (float)
* `m_MaxSpeed` (float)
* `m_StartSize` (float)
* `m_EndSize` (float)
* `m_SpawnRadius` (float)
* `m_bEmit` (integer)
* `m_nAttachment` (integer)
* `m_Opacity` (float)
* `m_bDamaged` (integer)
* `m_flFlareScale` (float)


--------------------------------------------------------------------------------
SECCION 314 / 328
=== NETPROP: SmokeTrail ===
Ruta relativa: netprops/SmokeTrail.md
--------------------------------------------------------------------------------

---
description: DT_SmokeTrail
---

# SmokeTrail


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_SpawnRate` (float)
* `m_StartColor` (vector)
* `m_EndColor` (vector)
* `m_ParticleLifetime` (float)
* `m_StopEmitTime` (float)
* `m_MinSpeed` (float)
* `m_MaxSpeed` (float)
* `m_MinDirectedSpeed` (float)
* `m_MaxDirectedSpeed` (float)
* `m_StartSize` (float)
* `m_EndSize` (float)
* `m_SpawnRadius` (float)
* `m_bEmit` (integer)
* `m_nAttachment` (integer)
* `m_Opacity` (float)


--------------------------------------------------------------------------------
SECCION 315 / 328
=== NETPROP: SporeExplosion ===
Ruta relativa: netprops/SporeExplosion.md
--------------------------------------------------------------------------------

---
description: DT_SporeExplosion
---

# SporeExplosion


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flSpawnRate` (float)
* `m_flParticleLifetime` (float)
* `m_flStartSize` (float)
* `m_flEndSize` (float)
* `m_flSpawnRadius` (float)
* `m_bEmit` (integer)
* `m_bDontRemove` (integer)


--------------------------------------------------------------------------------
SECCION 316 / 328
=== NETPROP: SporeTrail ===
Ruta relativa: netprops/SporeTrail.md
--------------------------------------------------------------------------------

---
description: DT_SporeTrail
---

# SporeTrail


* `m_flAnimTime` (integer)
* `m_flSimulationTime` (integer)
* `m_cellbits` (integer)
* `m_cellX` (integer)
* `m_cellY` (integer)
* `m_cellZ` (integer)
* `m_vecOrigin` (vector)
* `m_nModelIndex` (integer)
* `m_vecMins` (vector)
* `m_vecMaxs` (vector)
* `m_nSolidType` (integer)
* `m_usSolidFlags` (integer)
* `m_nSurroundType` (integer)
* `m_triggerBloat` (integer)
* `m_vecSpecifiedSurroundingMins` (vector)
* `m_vecSpecifiedSurroundingMaxs` (vector)
* `m_nRenderFX` (integer)
* `m_nRenderMode` (integer)
* `m_fEffects` (integer)
* `m_clrRender` (integer)
* `m_iTeamNum` (integer)
* `m_iPendingTeamNum` (integer)
* `m_CollisionGroup` (integer)
* `m_flElasticity` (float)
* `m_flShadowCastDistance` (float)
* `m_hOwnerEntity` (integer)
* `m_hEffectEntity` (integer)
* `moveparent` (integer)
* `m_iParentAttachment` (integer)
* `m_iName` (string)
* `movetype` (integer)
* `movecollide` (integer)
* `m_angRotation` (vector)
* `m_iTextureFrameIndex` (integer)
* `m_bSimulatedEveryTick` (integer)
* `m_bAnimatedEveryTick` (integer)
* `m_bAlternateSorting` (integer)
* `m_bSpotted` (integer)
* `m_bSpottedByMask` (integer[0-1])
* `m_bIsAutoaimTarget` (integer)
* `m_fadeMinDist` (float)
* `m_fadeMaxDist` (float)
* `m_flFadeScale` (float)
* `m_nMinCPULevel` (integer)
* `m_nMaxCPULevel` (integer)
* `m_nMinGPULevel` (integer)
* `m_nMaxGPULevel` (integer)
* `m_flUseLookAtAngle` (float)
* `m_flLastMadeNoiseTime` (float)
* `m_flMaxFallVelocity` (float)
* `m_bEligibleForScreenHighlight` (integer)
* `m_flSpawnRate` (float)
* `m_vecEndColor` (vector)
* `m_flParticleLifetime` (float)
* `m_flStartSize` (float)
* `m_flEndSize` (float)
* `m_flSpawnRadius` (float)
* `m_bEmit` (integer)


--------------------------------------------------------------------------------
SECCION 317 / 328
=== NETPROP: baseentities ===
Ruta relativa: netprops/baseentities.md
--------------------------------------------------------------------------------

# Base Entities
---
description: Last updated at 16.01.2021
---


{% page-ref page="CBaseAnimating.md" %}
{% page-ref page="CBaseAnimatingOverlay.md" %}
{% page-ref page="CBaseAttributableItem.md" %}
{% page-ref page="CBaseButton.md" %}
{% page-ref page="CBaseCombatCharacter.md" %}
{% page-ref page="CBaseCombatWeapon.md" %}
{% page-ref page="CBaseDoor.md" %}
{% page-ref page="CBaseEntity.md" %}
{% page-ref page="CBaseFlex.md" %}
{% page-ref page="CBaseParticleEntity.md" %}
{% page-ref page="CBasePlayer.md" %}
{% page-ref page="CBasePropDoor.md" %}
{% page-ref page="CBaseTeamObjectiveResource.md" %}
{% page-ref page="CBaseTempEntity.md" %}
{% page-ref page="CBaseToggle.md" %}
{% page-ref page="CBaseTrigger.md" %}
{% page-ref page="CBaseViewModel.md" %}
{% page-ref page="CBaseVPhysicsTrigger.md" %}
{% page-ref page="CBaseWeaponWorldModel.md" %}


--------------------------------------------------------------------------------
SECCION 318 / 328
=== NETPROP: controllers ===
Ruta relativa: netprops/controllers.md
--------------------------------------------------------------------------------

# Controllers
---
description: Last updated at 16.01.2021
---


{% page-ref page="CDangerZoneController.md" %}
{% page-ref page="CFogController.md" %}
{% page-ref page="CFootstepControl.md" %}
{% page-ref page="CMapVetoPickController.md" %}
{% page-ref page="CMaterialModifyControl.md" %}
{% page-ref page="CPoseController.md" %}
{% page-ref page="CPostProcessController.md" %}
{% page-ref page="CShadowControl.md" %}
{% page-ref page="CTeam.md" %}
{% page-ref page="CTeamplayRoundBasedRulesProxy.md" %}
{% page-ref page="CVoteController.md" %}
{% page-ref page="CWaterLODControl.md" %}


--------------------------------------------------------------------------------
SECCION 319 / 328
=== NETPROP: environment ===
Ruta relativa: netprops/environment.md
--------------------------------------------------------------------------------

# Environment
---
description: Last updated at 16.01.2021
---


{% page-ref page="CColorCorrection.md" %}
{% page-ref page="CColorCorrectionVolume.md" %}
{% page-ref page="CEnvAmbientLight.md" %}
{% page-ref page="CEnvDetailController.md" %}
{% page-ref page="CEnvDOFController.md" %}
{% page-ref page="CEnvGasCanister.md" %}
{% page-ref page="CEnvParticleScript.md" %}
{% page-ref page="CEnvProjectedTexture.md" %}
{% page-ref page="CEnvQuadraticBeam.md" %}
{% page-ref page="CEnvScreenEffect.md" %}
{% page-ref page="CEnvScreenOverlay.md" %}
{% page-ref page="CEnvTonemapController.md" %}
{% page-ref page="CEnvWind.md" %}
{% page-ref page="CSun.md" %}
{% page-ref page="CSunlightShadowControl.md" %}


--------------------------------------------------------------------------------
SECCION 320 / 328
=== NETPROP: important ===
Ruta relativa: netprops/important.md
--------------------------------------------------------------------------------

# Important
---
description: Last updated at 16.01.2021
---


{% page-ref page="CCSGameRulesProxy.md" %}
{% page-ref page="CCSPlayer.md" %}
{% page-ref page="CCSPlayerResource.md" %}


--------------------------------------------------------------------------------
SECCION 321 / 328
=== NETPROP: items ===
Ruta relativa: netprops/items.md
--------------------------------------------------------------------------------

# Items
---
description: Last updated at 16.01.2021
---


{% page-ref page="CAK47.md" %}
{% page-ref page="CBaseCSGrenade.md" %}
{% page-ref page="CBaseGrenade.md" %}
{% page-ref page="CBreachCharge.md" %}
{% page-ref page="CBumpMine.md" %}
{% page-ref page="CC4.md" %}
{% page-ref page="CDEagle.md" %}
{% page-ref page="CDecoyGrenade.md" %}
{% page-ref page="CEconEntity.md" %}
{% page-ref page="CFists.md" %}
{% page-ref page="CFlashbang.md" %}
{% page-ref page="CHEGrenade.md" %}
{% page-ref page="CIncendiaryGrenade.md" %}
{% page-ref page="CItem_Healthshot.md" %}
{% page-ref page="CItemCash.md" %}
{% page-ref page="CItemDogtags.md" %}
{% page-ref page="CKnife.md" %}
{% page-ref page="CKnifeGG.md" %}
{% page-ref page="CMelee.md" %}
{% page-ref page="CMolotovGrenade.md" %}
{% page-ref page="CSCAR17.md" %}
{% page-ref page="CSensorGrenade.md" %}
{% page-ref page="CSmokeGrenade.md" %}
{% page-ref page="CSnowball.md" %}
{% page-ref page="CTablet.md" %}
{% page-ref page="CWeaponAug.md" %}
{% page-ref page="CWeaponAWP.md" %}
{% page-ref page="CWeaponBaseItem.md" %}
{% page-ref page="CWeaponBizon.md" %}
{% page-ref page="CWeaponCSBase.md" %}
{% page-ref page="CWeaponCSBaseGun.md" %}
{% page-ref page="CWeaponCycler.md" %}
{% page-ref page="CWeaponElite.md" %}
{% page-ref page="CWeaponFamas.md" %}
{% page-ref page="CWeaponFiveSeven.md" %}
{% page-ref page="CWeaponG3SG1.md" %}
{% page-ref page="CWeaponGalil.md" %}
{% page-ref page="CWeaponGalilAR.md" %}
{% page-ref page="CWeaponGlock.md" %}
{% page-ref page="CWeaponHKP2000.md" %}
{% page-ref page="CWeaponM249.md" %}
{% page-ref page="CWeaponM3.md" %}
{% page-ref page="CWeaponM4A1.md" %}
{% page-ref page="CWeaponMAC10.md" %}
{% page-ref page="CWeaponMag7.md" %}
{% page-ref page="CWeaponMP5Navy.md" %}
{% page-ref page="CWeaponMP7.md" %}
{% page-ref page="CWeaponMP9.md" %}
{% page-ref page="CWeaponNegev.md" %}
{% page-ref page="CWeaponNOVA.md" %}
{% page-ref page="CWeaponP228.md" %}
{% page-ref page="CWeaponP250.md" %}
{% page-ref page="CWeaponP90.md" %}
{% page-ref page="CWeaponSawedoff.md" %}
{% page-ref page="CWeaponSCAR20.md" %}
{% page-ref page="CWeaponScout.md" %}
{% page-ref page="CWeaponSG550.md" %}
{% page-ref page="CWeaponSG552.md" %}
{% page-ref page="CWeaponSG556.md" %}
{% page-ref page="CWeaponShield.md" %}
{% page-ref page="CWeaponSSG08.md" %}
{% page-ref page="CWeaponTaser.md" %}
{% page-ref page="CWeaponTec9.md" %}
{% page-ref page="CWeaponTMP.md" %}
{% page-ref page="CWeaponUMP45.md" %}
{% page-ref page="CWeaponUSP.md" %}
{% page-ref page="CWeaponXM1014.md" %}
{% page-ref page="CWeaponZoneRepulsor.md" %}
{% page-ref page="ParticleSmokeGrenade.md" %}


--------------------------------------------------------------------------------
SECCION 322 / 328
=== NETPROP: other ===
Ruta relativa: netprops/other.md
--------------------------------------------------------------------------------

# Other
---
description: Last updated at 16.01.2021
---


{% page-ref page="CAI_BaseNPC.md" %}
{% page-ref page="CBeam.md" %}
{% page-ref page="CBeamSpotlight.md" %}
{% page-ref page="CBoneFollower.md" %}
{% page-ref page="CBRC4Target.md" %}
{% page-ref page="CBreakableProp.md" %}
{% page-ref page="CBreakableSurface.md" %}
{% page-ref page="CCascadeLight.md" %}
{% page-ref page="CChicken.md" %}
{% page-ref page="CCSRagdoll.md" %}
{% page-ref page="CCSTeam.md" %}
{% page-ref page="CDangerZone.md" %}
{% page-ref page="CDrone.md" %}
{% page-ref page="CDronegun.md" %}
{% page-ref page="CDynamicLight.md" %}
{% page-ref page="CDynamicProp.md" %}
{% page-ref page="CEconWearable.md" %}
{% page-ref page="CEmbers.md" %}
{% page-ref page="CEntityDissolve.md" %}
{% page-ref page="CEntityFlame.md" %}
{% page-ref page="CEntityFreezing.md" %}
{% page-ref page="CEntityParticleTrail.md" %}
{% page-ref page="CFEPlayerDecal.md" %}
{% page-ref page="CFireCrackerBlast.md" %}
{% page-ref page="CFireSmoke.md" %}
{% page-ref page="CFireTrail.md" %}
{% page-ref page="CFish.md" %}
{% page-ref page="CFunc_Dust.md" %}
{% page-ref page="CFunc_LOD.md" %}
{% page-ref page="CFuncAreaPortalWindow.md" %}
{% page-ref page="CFuncBrush.md" %}
{% page-ref page="CFuncConveyor.md" %}
{% page-ref page="CFuncLadder.md" %}
{% page-ref page="CFuncMonitor.md" %}
{% page-ref page="CFuncMoveLinear.md" %}
{% page-ref page="CFuncOccluder.md" %}
{% page-ref page="CFuncReflectiveGlass.md" %}
{% page-ref page="CFuncRotating.md" %}
{% page-ref page="CFuncSmokeVolume.md" %}
{% page-ref page="CFuncTrackTrain.md" %}
{% page-ref page="CGameRulesProxy.md" %}
{% page-ref page="CGrassBurn.md" %}
{% page-ref page="CHandleTest.md" %}
{% page-ref page="CHostage.md" %}
{% page-ref page="CHostageCarriableProp.md" %}
{% page-ref page="CInferno.md" %}
{% page-ref page="CInfoLadderDismount.md" %}
{% page-ref page="CInfoMapRegion.md" %}
{% page-ref page="CInfoOverlayAccessor.md" %}
{% page-ref page="CLightGlow.md" %}
{% page-ref page="CMovieDisplay.md" %}
{% page-ref page="CParadropChopper.md" %}
{% page-ref page="CParticleFire.md" %}
{% page-ref page="CParticlePerformanceMonitor.md" %}
{% page-ref page="CParticleSystem.md" %}
{% page-ref page="CPhysBox.md" %}
{% page-ref page="CPhysBoxMultiplayer.md" %}
{% page-ref page="CPhysicsProp.md" %}
{% page-ref page="CPhysicsPropMultiplayer.md" %}
{% page-ref page="CPhysMagnet.md" %}
{% page-ref page="CPhysPropAmmoBox.md" %}
{% page-ref page="CPhysPropLootCrate.md" %}
{% page-ref page="CPhysPropRadarJammer.md" %}
{% page-ref page="CPhysPropWeaponUpgrade.md" %}
{% page-ref page="CPlantedC4.md" %}
{% page-ref page="CPlasma.md" %}
{% page-ref page="CPlayerPing.md" %}
{% page-ref page="CPlayerResource.md" %}
{% page-ref page="CPointCamera.md" %}
{% page-ref page="CPointCommentaryNode.md" %}
{% page-ref page="CPointWorldText.md" %}
{% page-ref page="CPrecipitation.md" %}
{% page-ref page="CPrecipitationBlocker.md" %}
{% page-ref page="CPredictedViewModel.md" %}
{% page-ref page="CProp_Hallucination.md" %}
{% page-ref page="CPropCounter.md" %}
{% page-ref page="CPropDoorRotating.md" %}
{% page-ref page="CPropJeep.md" %}
{% page-ref page="CPropVehicleDriveable.md" %}
{% page-ref page="CRagdollManager.md" %}
{% page-ref page="CRagdollProp.md" %}
{% page-ref page="CRagdollPropAttached.md" %}
{% page-ref page="CRopeKeyframe.md" %}
{% page-ref page="CSceneEntity.md" %}
{% page-ref page="CSlideshowDisplay.md" %}
{% page-ref page="CSmokeStack.md" %}
{% page-ref page="CSnowballPile.md" %}
{% page-ref page="CSpatialEntity.md" %}
{% page-ref page="CSpotlightEnd.md" %}
{% page-ref page="CSprite.md" %}
{% page-ref page="CSpriteOriented.md" %}
{% page-ref page="CSpriteTrail.md" %}
{% page-ref page="CStatueProp.md" %}
{% page-ref page="CSteamJet.md" %}
{% page-ref page="CSurvivalSpawnChopper.md" %}
{% page-ref page="CTesla.md" %}
{% page-ref page="CTest_ProxyToggle_Networkable.md" %}
{% page-ref page="CTestTraceline.md" %}
{% page-ref page="CTriggerPlayerMovement.md" %}
{% page-ref page="CTriggerSoundOperator.md" %}
{% page-ref page="CVGuiScreen.md" %}
{% page-ref page="CWaterBullet.md" %}
{% page-ref page="CWorld.md" %}
{% page-ref page="CWorldVguiText.md" %}
{% page-ref page="DustTrail.md" %}
{% page-ref page="MovieExplosion.md" %}
{% page-ref page="RocketTrail.md" %}
{% page-ref page="SmokeTrail.md" %}
{% page-ref page="SporeExplosion.md" %}
{% page-ref page="SporeTrail.md" %}


--------------------------------------------------------------------------------
SECCION 323 / 328
=== NETPROP: projectiles ===
Ruta relativa: netprops/projectiles.md
--------------------------------------------------------------------------------

# Projectiles
---
description: Last updated at 16.01.2021
---


{% page-ref page="CBaseCSGrenadeProjectile.md" %}
{% page-ref page="CBreachChargeProjectile.md" %}
{% page-ref page="CBumpMineProjectile.md" %}
{% page-ref page="CDecoyProjectile.md" %}
{% page-ref page="CMolotovProjectile.md" %}
{% page-ref page="CSensorGrenadeProjectile.md" %}
{% page-ref page="CSmokeGrenadeProjectile.md" %}
{% page-ref page="CSnowballProjectile.md" %}


--------------------------------------------------------------------------------
SECCION 324 / 328
=== NETPROP: tempentities ===
Ruta relativa: netprops/tempentities.md
--------------------------------------------------------------------------------

# Temp Entities
---
description: Last updated at 16.01.2021
---


{% page-ref page="CTEArmorRicochet.md" %}
{% page-ref page="CTEBaseBeam.md" %}
{% page-ref page="CTEBeamEntPoint.md" %}
{% page-ref page="CTEBeamEnts.md" %}
{% page-ref page="CTEBeamFollow.md" %}
{% page-ref page="CTEBeamLaser.md" %}
{% page-ref page="CTEBeamPoints.md" %}
{% page-ref page="CTEBeamRing.md" %}
{% page-ref page="CTEBeamRingPoint.md" %}
{% page-ref page="CTEBeamSpline.md" %}
{% page-ref page="CTEBloodSprite.md" %}
{% page-ref page="CTEBloodStream.md" %}
{% page-ref page="CTEBreakModel.md" %}
{% page-ref page="CTEBSPDecal.md" %}
{% page-ref page="CTEBubbles.md" %}
{% page-ref page="CTEBubbleTrail.md" %}
{% page-ref page="CTEClientProjectile.md" %}
{% page-ref page="CTEDecal.md" %}
{% page-ref page="CTEDust.md" %}
{% page-ref page="CTEDynamicLight.md" %}
{% page-ref page="CTEEffectDispatch.md" %}
{% page-ref page="CTEEnergySplash.md" %}
{% page-ref page="CTEExplosion.md" %}
{% page-ref page="CTEFireBullets.md" %}
{% page-ref page="CTEFizz.md" %}
{% page-ref page="CTEFootprintDecal.md" %}
{% page-ref page="CTEFoundryHelpers.md" %}
{% page-ref page="CTEGaussExplosion.md" %}
{% page-ref page="CTEGlowSprite.md" %}
{% page-ref page="CTEImpact.md" %}
{% page-ref page="CTEKillPlayerAttachments.md" %}
{% page-ref page="CTELargeFunnel.md" %}
{% page-ref page="CTEMetalSparks.md" %}
{% page-ref page="CTEMuzzleFlash.md" %}
{% page-ref page="CTEParticleSystem.md" %}
{% page-ref page="CTEPhysicsProp.md" %}
{% page-ref page="CTEPlantBomb.md" %}
{% page-ref page="CTEPlayerAnimEvent.md" %}
{% page-ref page="CTEPlayerDecal.md" %}
{% page-ref page="CTEProjectedDecal.md" %}
{% page-ref page="CTERadioIcon.md" %}
{% page-ref page="CTEShatterSurface.md" %}
{% page-ref page="CTEShowLine.md" %}
{% page-ref page="CTESmoke.md" %}
{% page-ref page="CTESparks.md" %}
{% page-ref page="CTESprite.md" %}
{% page-ref page="CTESpriteSpray.md" %}
{% page-ref page="CTEWorldDecal.md" %}


--------------------------------------------------------------------------------
SECCION 325 / 328
=== USAGE: usage/README.md ===
Ruta relativa: usage/README.md
--------------------------------------------------------------------------------

# Using lua scripts

## This section explains how to use the cheat and especially the usage of LUA Scripts

**Loading and using LUA Scripts written by other people**:
{% page-ref page="../using\_lua\_scripts.md" %}

**Writing your own LUA Scripts**:
{% page-ref page="../development/getting\_started.md" %}

**Migrating gamesense configs**:


--------------------------------------------------------------------------------
SECCION 326 / 328
=== USAGE: usage/common_issues.md ===
Ruta relativa: usage/common_issues.md
--------------------------------------------------------------------------------

# Common issues

### Out of memory

1. Your computer has been on for a very long time and physical memory has become fragmented, or
2. A process or driver is using a large portion of physical memory.

Try closing programs that are using a lot of memory, or just restart your computer.

### Antivirus

Some antivirus vendors perform very intensive real-time monitoring/sandboxing that can interfere with the client. You don't need to disable Windows Defender. Whitelisting may not work. Make sure the antivirus is closed and its drivers are unloaded. You can re-open them after loading the cheat.

**Known incompatible vendors:** Trend Micro, F-Secure, MalwareBytes

### Unsupported version of Windows

Windows 8.1 or newer is required. Some older versions of Windows 10 may not work. Update to the latest version of Windows 10. If you are on Windows 10.0.14393 or newer and you receive this error, restart your computer and try again.

### Anti-cheat

Some anti-cheat drivers (particularly BattlEye) protect game/Steam processes which can lead to problems.

### Overlays / third party tools

Any program that interferes with the game rendering can cause issues.

**Known incompatible software:**  Fraps, SweetFX, discord overlay, NZXT CAM

**Error codes produced:** none, your game will crash

### "Virtual machine not supported"

Some anti-virus vendors run programs in a virtual machine. If you aren't using an anti-virus, then make sure Hyper-V is disabled.

**Known incompatible vendors:** HitmanPro.Alert

### Client not opening?

If nothing happens when you open the client, then try enabling UAC and restarting Steam. Set it to its default setting, which is one notch from the top.

### Menu shows as a solid black rectangle

Go to CS:GO settings and enable "multi core rendering".

### Menu not displaying or flickering

Remove 'nod3d9ex' from your launch options.

Make sure the Steam overlay is enabled. Check it is enabled in both of these places:
    - Steam > Settings/Preferences > In-game tab. Check the box next to Enable the Steam Overlay while in-game.
    - Right-click CS:GO in your Library > Select Properties > Under the General tab, check the box next to Enable the Steam Overlay while in-game.

### "Hide from OBS" not working

Turn off or disable Razer Synapse.

In your NVIDIA Control Panel, go to 'Manage 3D settings' and be sure the following options match your Global Settings:
    - Antialiasing - FXAA - Off
    - Antialiasing - Mode - Application-controlled
    - Multi-Frame Sampled AA (MFAA) - Off
    - Shader Cache - On
    - Texture filtering - Anisotropic sample optimization - Off
    - Texture filtering - Negative LOD bias - Allow
    - Texture filtering - Quality - Quality
    - Texture filtering - Trilinear optimization - On
    - Threaded optimization - Auto
    - Triple buffering - Off
    - Vertical sync - Use the 3D application setting

Be sure you do not have conflicting settings for CS:GO in the Program Settings tab.

### Initialization Failed *

Can happen if you played a Battleye or EAC protected game, Restart PC or disable the BE/EAC service.

### Client closing right after you open it

Install the game that your subscription is for.
Make sure invitees understand that Windows 8.1 or newer is required.

## Common error codes

Codes | Description
----- | -----------
  D0001409 | [Out of memory](#out-of-memory)
  C000009A |
  D0001600 | [Antivirus](#antivirus)
  D0002001 |
  C0000022 |
  C00000F1 |
  C0000043 |
  C0000077 | [Unsupported version of Windows](#unsupported-version-of-windows)
  D0002103 |
  D0001418 | [Anti-cheat](#anti-cheat)
  D000210A |
  D0002201 | Connection problem
  D0001434 | Game is taking too long to load, use -novid or wait until the main menu to inject
  C0000225 |
  D0001442 | Game crashed while loading
  D0001012 | ["Virtual machine not supported"](#virtual-machine-not-supported)


--------------------------------------------------------------------------------
SECCION 327 / 328
=== USAGE: usage/unlisted_features.md ===
Ruta relativa: usage/unlisted_features.md
--------------------------------------------------------------------------------

# Unlisted features

Unlisted features here


--------------------------------------------------------------------------------
SECCION 328 / 328
=== USAGE: usage/using_lua_scripts.md ===
Ruta relativa: usage/using_lua_scripts.md
--------------------------------------------------------------------------------

# Using lua scripts

## Installing lua scripts

1. Save the Lua script in the same folder as csgo.exe. The file extension should be ".lua".
2. Go to the "MISC" tab and click the "Lua script manager" button. Here you'll see a list of all installed lua scripts

![](https://i.imgur.com/WuyiCxb.png)

1. Select the script you want to load and click "Load script". If you want it to automatically be loaded whenever you load the cheat, tick "Load on startup"

### Common problems:

#### - A script doesn't show up in the Lua script manager:

* Make sure "File name extensions" is enabled in the windows explorer settings

![](https://i.imgur.com/6cNvMHG.png)

If it's not, turn it on, then make sure all scripts actually end with .lua

#### - A script doesn't load \(error sound plays\):

This can have many reasons. The script could for example be outdated or a required dependency isn't installed.

Open your console and look for the red text. Copy that and ask the script creator for help with it.

![](https://i.imgur.com/c7IKT2p.png)


