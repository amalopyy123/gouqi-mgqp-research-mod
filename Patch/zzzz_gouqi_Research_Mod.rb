# encoding: UTF-8
# Research-only class and tribe editor.

module ResearchMod
  SNAPSHOT_KEY = :research_mod_snapshot
  RECRUIT_ACTOR_ID_MIN = 0
  RECRUIT_ACTOR_ID_MAX = 5000
  LOVE_MAX = 9_999_999
  ACTOR_PARAM_NAMES = ['最大HP', '最大MP', '攻击力', '防御力',
                       '魔法力', '魔法防御', '敏捷', '幸运']
  DATABASE_PAGE_SIZE = 200
  BATTLE_PAGE_SIZE = 200
  CUSTOM_BATTLE_HELP_LINES = 10
  LOSE_EVENT_PAGE_SIZE = 200
  MAP_PAGE_SIZE = 100
  CUSTOM_TELEPORT_POINT_COUNT = 10
  # Migrate the old slot key on first access to preserve saved points.
  CUSTOM_TELEPORT_POINTS_KEY = :@research_mod_custom_teleport_points
  CUSTOM_TELEPORT_POINTS_LEGACY_KEY = :@research_mod_teleport_slots
  DEBUG_DATABASE_PAGE_SIZE = 200
  LEARNING_DATABASE_PAGE_SIZE = 200
  DEBUG_VARIABLE_MAX = 999_999_999
  SELF_SWITCH_KEYS = ['A', 'B', 'C', 'D']
  MAP_DETAIL_WRAP_CHARS = 42
  MAP_DETAIL_FONT_SIZE = 18
  ACTOR_ENCYCLOPEDIA_PAGE_SIZE = 100
  ACTOR_CUTIN_PAGE_SIZE = 100
  ACTOR_ENCYCLOPEDIA_LIST_WIDTH = 304
  ACTOR_ENCYCLOPEDIA_WRAP_CHARS = 26
  ACTOR_ENCYCLOPEDIA_FONT_SIZE = 18
  CLASS_SKILL_TYPE_TRANSLATIONS = {
    '戦技アビリティ' => '战技能力',
    '職技アビリティ' => '职技能力',
    '魔法アビリティ' => '魔法能力',
    '防御アビリティ' => '防御能力',
    '特殊アビリティ' => '特殊能力',
    'マスターアビリティ' => '大师能力',
    '短剣技' => '短剑技',
    '剣技' => '剑技',
    '尖剣技' => '尖剑技',
    '刀技' => '刀技',
    '槍技' => '枪技',
    '斧技' => '斧技',
    '棍技' => '棍技',
    '鎌技' => '镰技',
    '弓技' => '弓技',
    '鞭技' => '鞭技',
    '投擲技' => '投掷技',
    '鉄球技' => '铁球技',
    '銃技' => '铳技',
    '聖技' => '圣技',
    '闇技' => '暗技',
    '魔法剣' => '魔法剑',
    '白魔法' => '白魔法',
    '黒魔法' => '黑魔法',
    '時魔法' => '时魔法',
    '召喚' => '召唤',
    '陰陽術' => '阴阳术',
    '忍術' => '忍术',
    '商技' => '商技',
    '盗賊技' => '盗贼技',
    '海賊技' => '海盗技',
    'ヒーロー技' => '英雄技',
    'EXアイテム' => 'EX物品',
    'オラクル' => '神谕',
    '歌う' => '歌唱',
    '話す' => '交谈',
    '錬金術' => '炼金术',
    '魔本術' => '魔本术',
    'マキナ' => '器械',
    '医術' => '医术',
    '御奉仕' => '侍奉',
    '屍技' => '尸技',
    '自然感応' => '自然感应',
    'ブレス' => '吐息',
    '装備武器' => '装备武器',
    '拘束時専用技' => '拘束时专用技',
    '永久拘束時専用技' => '永久拘束时专用技',
    'サイコ' => '念动',
    '妖術' => '妖术',
    '格闘技' => '格斗技',
    'ブーメラン技' => '回旋镖技'
  }
  CLASS_ABILITY_TYPE_TRANSLATIONS = {
    1 => ['戦技アビリティ', '战技能力'],
    2 => ['職技アビリティ', '职技能力'],
    3 => ['魔法アビリティ', '魔法能力'],
    4 => ['防御アビリティ', '防御能力'],
    5 => ['特殊アビリティ', '特殊能力'],
    999 => ['マスターアビリティ', '大师能力']
  }
  PANTY_ARMOR_ID_RANGE = (1801..2097)
  MILK_ITEM_ID_RANGE = (1001..1741)
  MARRIAGE_ARMOR_ID_RANGE = (8001..8020)
  CD_ITEM_ID_RANGE = (1801..1832)
  SMALL_MEDAL_ITEM_ID = 32
  LARGE_MEDAL_ITEM_ID = 900
  LEWD_SOUL_ITEM_ID = 628
  LEECH_CELL_ITEM_ID = 282
  HARPY_FEATHER_ITEM_ID = 23
  HARPY_FEATHER_PLACEHOLDER_NAME = '欠番'
  HARPY_FEATHER_ALL_PLACES_KEY = :@research_mod_harpy_feather_all_places
  GUIDING_THREAD_COMMON_EVENT_ID = 31
  # Common events exposed by the event-call menu.
  CAMP_COMMON_EVENT_ENTRIES = [
    { :kind => :common_event, :id => 301, :name => '野営1' },
    { :kind => :common_event, :id => 302, :name => '野営2' },
    { :kind => :common_event, :id => 304, :name => '野営3' },
    { :kind => :common_event, :id => 295, :name => '野営タルタロス' },
    { :kind => :teleport, :map_id => 711, :x => 8, :y => 7,
      :name => '野営（グランドノア前）' },
    { :kind => :teleport, :map_id => 736, :x => 8, :y => 7,
      :name => '野営（グランゴルド前）' },
    { :kind => :teleport, :map_id => 741, :x => 8, :y => 7,
      :name => '野営（イリアス神殿前）' }
  ].freeze
  # Original maid dialogue common event.
  MAID_DIALOGUE_COMMON_EVENT_ID = 111
  MAID_DIALOGUE_RETURN_KEY = :@research_mod_maid_dialogue_return
  MAID_MENU_RESTORE_KEY = :@research_mod_maid_menu_restore
  # Original divine-priest service event in global map 1187.
  DIVINE_PRIEST_SOURCE_MAP_ID = 1187
  DIVINE_PRIEST_SOURCE_EVENT_ID = 69
  DIVINE_PRIEST_DIALOGUE_RETURN_KEY =
    :@research_mod_divine_priest_dialogue_return
  DIVINE_PRIEST_MENU_RESTORE_KEY =
    :@research_mod_divine_priest_menu_restore
  CUSTOM_TEXTS_KEY = :@research_mod_custom_texts
  SPECIAL_CATEGORY_NAMES = {
    10 => 'Boss', 11 => '人类', 12 => '妖魔', 13 => '亚人',
    14 => '淫魔', 15 => '吸血鬼', 16 => '人鱼', 17 => '精灵',
    18 => '妖精', 19 => '史莱姆', 20 => '魔兽', 21 => '妖狐',
    22 => '拉弥亚', 23 => '斯库拉', 24 => '鸟类', 25 => '龙',
    26 => '陆栖种', 27 => '海栖种', 28 => '虫类', 29 => '植物',
    30 => '僵尸', 31 => '幽灵', 32 => '人偶', 33 => '奇美拉',
    34 => '天使', 35 => '凋亡种', 37 => '巨体', 38 => '机械',
    39 => '梦魔', 40 => '飞行', 41 => '神', 42 => '魔王'
  }
  CHEST_HINT_ENABLED_KEY = :@research_mod_chest_hint_enabled
  CHEST_HINT_VARIABLES_INITIALIZED_KEY =
    :@research_mod_chest_hint_variables_initialized
  CHEST_MONSTER_ICON_VARIABLE_ID = 7999
  CHEST_ITEM_ICON_VARIABLE_ID = 8000
  CHEST_MONSTER_ICON_DEFAULT = 1
  CHEST_ITEM_ICON_DEFAULT = 191
  GRAPHICS_OVERRIDE_DIRECTORY = 'GouqiGraphicsOverride'
  GRAPHICS_OVERRIDE_ENABLED_KEY = :@research_mod_graphics_override_enabled
  POT_CHARACTER_INDEX = 6
  CONTAINER_PENDING_OPEN_KEY = :@research_mod_container_pending_open
  REMOVED_CANDIDATE_ACTOR_IDS_KEY = :@research_mod_removed_candidate_actor_ids
  STUCK_SANT_MOUNTAIN_SWITCH_ID = 2479
  STUCK_SANT_MOUNTAIN_WARP_SWITCH_ID = 100
  STUCK_SANT_MOUNTAIN_FALL_SWITCH_ID = 2116
  STUCK_NEW_HUMAN_VARIABLE_ID = 1150
  STUCK_NEW_HUMAN_TARGET_VALUE = 17
  SMALL_MEDAL_EXCHANGE_VARIABLE_ID = 55
  LARGE_MEDAL_EXCHANGE_VARIABLE_ID = 59
  CASINO_COIN_VARIABLE_ID = 110
  SHURA_BONUS_POINT_VARIABLE_ID = 157
  BF_LOSE_REWARD_VARIABLE_ID = 905
  BF_WIN_REWARD_VARIABLE_ID = 907
  RABBIT_POINT_VARIABLE_ID = 910
  PARTY_MEMBER_MAX_PLUS_VARIABLE_ID = 56
  PARTY_MEMBER_BASE_MAX = 8
  PARTY_MEMBER_TOTAL_MAX = 99
  MAP_FOLLOWER_COUNT_KEY = :@research_mod_map_follower_count
  MAP_FOLLOWER_COUNT_DEFAULT = 3
  MAP_FOLLOWER_COUNT_MAX = 99
  ACCUMULATED_DAMAGE_STAT_MAX = 99_999_999
  ACCUMULATED_DAMAGE_GLOBAL_STAT = {
    :key => :battle_count, :label => '战斗次数',
    :ability => '戦闘データ累積（战斗数据累积）'
  }
  ACCUMULATED_DAMAGE_ACTOR_STATS = [
    { :key => :carry, :label => '使敌人绝顶次数',
      :ability => 'バトルファッカーの経験（BF斗士的经验）' },
    { :key => :down, :label => '战斗不能次数',
      :ability => '敗北の経験（失败的经验）' },
    { :key => :orgasm, :label => '承受绝顶次数',
      :ability => '羞恥の経験（羞耻的经验）' },
    { :key => :defeat, :label => '击败敌人次数',
      :ability => '勝利の経験（胜利的经验）' },
    { :key => :steal, :label => '成功偷窃次数',
      :ability => '盗みの経験（偷窃的经验）' },
    { :key => :love, :label => '角色好感度',
      :ability => '友情の力（友情的力量）' }
  ]
  PARTY_EDIT_ACTOR_ID_KEY = :@research_mod_party_edit_actor_id
  PARTY_EDIT_ACTOR_ID_MENU_NAME = '编队显示角色ID'
  PARTY_EDIT_ACTOR_ID_HELP_TEXT =
    '开启后，打开系统的编辑队伍时，' + 10.chr +
    '在队伍和候补角色名称前显示对应Actor ID。'
  COOKING_NO_COST_KEY = :@research_mod_cooking_no_cost
  ALCHEMY_NO_COST_KEY = :@research_mod_alchemy_no_cost
  MAGIC_BOOK_NO_COST_KEY = :@research_mod_magic_book_no_cost
  MERCHANT_NO_COST_KEY = :@research_mod_merchant_no_cost
  EX_ITEM_NO_COST_KEY = :@research_mod_ex_item_no_cost
  COOKING_SKILL_TYPE_ID = 44
  ALCHEMY_SKILL_TYPE_ID = 41
  MAGIC_BOOK_SKILL_TYPE_ID = 42
  MERCHANT_SKILL_TYPE_ID = 34
  EX_ITEM_SKILL_TYPE_ID = 35
  REFLECTION_MEETING_MENU_NAME = '反省会查看'
  REFLECTION_MEETING_HELP_TEXT =
    '按敌人ID查看对应反省会（败北回想）。' + 10.chr + '直接播放参加反省会内容，不改变当前地图和坐标。'
  VALUE_VARIABLE_MAX = 99_999_999
  VALUE_STAT_MAX = 9_999_999
  STEAL_ALWAYS_SUCCESS_KEY = :@research_mod_steal_always_success
  MILK_ALWAYS_SUCCESS_KEY = :@research_mod_milk_always_success
  DROP_ALWAYS_SUCCESS_KEY = :@research_mod_drop_always_success
  TEMPTATION_IGNORE_HP_KEY = :@research_mod_temptation_ignore_hp
  TEMPTATION_DISABLED_KEY = :@research_mod_temptation_disabled
  LOSE_EVENT_SKIP_KEY = :@research_mod_lose_event_skip
  SURE_HIT_KILL_KEY = :@research_mod_sure_hit_kill
  REMOVE_DAMAGE_VARIANCE_KEY = :@research_mod_remove_damage_variance
  THROUGH_MODE_KEY = :@research_mod_through_mode
  NO_RANDOM_ENCOUNTER_KEY = :@research_mod_no_random_encounter
  ENEMY_STAT_MULTIPLIER_KEY = :@research_mod_enemy_stat_multiplier
  EXPERIMENTAL_FEATURES_ENABLED_KEY = :@research_mod_experimental_features_enabled
  ENEMY_STAT_MULTIPLIER_DEFAULT = 1
  ENEMY_STAT_MULTIPLIER_MAX = 99
  PREVENT_EVENT_LUCA_FRONT_KEY = :@research_mod_prevent_event_luca_front
  FOLLOW_ALWAYS_SUCCESS_KEY = :@research_mod_follow_always_success
  BATTLE_ENEMY_STATUS_KEY = :@research_mod_battle_enemy_status
  BATTLE_PARTY_STATUS_KEY = :@research_mod_battle_party_status
  BATTLE_CUTIN_VIEW_KEY = :@research_mod_battle_cutin_view
  BATTLE_RECORD_KEY = :@research_mod_battle_record
  BATTLE_EDITOR_KEY = :@research_mod_battle_editor
  FORCE_VICTORY_KEY = :@research_mod_force_victory
  DEAD_BATTLE_EXP_KEY = :@research_mod_dead_battle_exp
  PRIORITY_ENCOUNTER_ENABLED_KEY =
    :@research_mod_priority_encounter_enabled
  PRIORITY_ENCOUNTER_MODE_KEY = :@research_mod_priority_encounter_mode
  PRIORITY_ENCOUNTER_BOSS_NEW_ONLY_KEY =
    :@research_mod_priority_encounter_boss_new_only
  PRIORITY_ENCOUNTER_TARGET_KEY = :@research_mod_priority_encounter_target
  PRIORITY_ENCOUNTER_LAST_KEY = :@research_mod_priority_encounter_last
  PRIORITY_ENCOUNTER_MODES = [:undiscovered, :unrecruited, :boss, :original]
  AUTO_VICTORY_ENABLED_KEY = :@research_mod_auto_victory_enabled
  AUTO_VICTORY_SKIP_BOSS_KEY = :@research_mod_auto_victory_skip_boss
  AUTO_VICTORY_SKIP_UNRECRUITED_KEY =
    :@research_mod_auto_victory_skip_unrecruited
  AUTO_VICTORY_RANDOM_ONLY_KEY = :@research_mod_auto_victory_random_only
  AUTO_VICTORY_EXP_RATE_KEY = :@research_mod_auto_victory_exp_rate
  AUTO_VICTORY_CLASS_EXP_RATE_KEY =
    :@research_mod_auto_victory_class_exp_rate
  AUTO_VICTORY_LAST_RESULT_KEY = :@research_mod_auto_victory_last_result
  AUTO_VICTORY_REWARD_ACTIVE_KEY =
    :@research_mod_auto_victory_reward_active
  AUTO_VICTORY_RATE_MAX = 9999
  TEMPTATION_IMMUNITY_KEY = :@research_mod_temptation_immunity
  TEMPTATION_STATE_ID = 26
  MOONLESS_DANCE_SKILL_ID = 9397
  MOONLESS_DANCE_STATE_ID = 503
  AUDIO_OVERLAY_KEY = :@research_mod_audio_overlay
  BATTLE_RECORD_MAX_LINES = 5000
  BATTLE_DIALOGUE_PAGE_SIZE = 100
  ENEMY_ITEM_STEAL_SOURCE_NAMES = {
    1 => '可偷物品', 2 => '可偷食材', 3 => '可偷素材', 4 => '可偷内裤'
  }
  HERO_SKILL_TYPE_ID = 33
  DANCE_SKILL_TYPE_ID = 37
  SING_SKILL_TYPE_ID = 38
  BATTLE_DIALOGUE_SKILL_CATEGORIES = [
    { :label => '武技', :type_ids => (6..21).to_a },
    { :label => '魔法', :type_ids => (22..29).to_a },
    { :label => '职技', :type_ids => (30..49).to_a + [67, 68] },
    { :label => '魔物技（种族技）', :type_ids => (50..62).to_a + [69] },
    { :label => '其他技能', :type_ids => [63, 64, 65, 66, 70] }
  ]
  TRANSFORMATION_SKILL_IDS = [3126, 3127, 9783, 3128, 3129]
  MANUAL_ENEMY_DIALOGUE_KEY = :@research_mod_manual_enemy_dialogue
  SPECIAL_ENEMY_DIALOGUE_SKILL_IDS = [*2109..2122, 9433, 9434]
  TALK_EVENT_CATEGORIES = [
    { :key => :information, :source_label => '情報', :label => '信息' },
    { :key => :question, :source_label => '質問', :label => '问题' },
    { :key => :request, :source_label => '要求', :label => '要求' },
    { :key => :gift, :source_label => '贈与', :label => '赠与' },
    { :key => :refusal, :source_label => nil, :label => '拒绝搭话' }
  ]
  PLAYFUL_DIALOGUE_SKILL_ID = 28
  PLAYFUL_COMMON_EVENT_RANGE = (40..86)
  PLAYFUL_ACTOR_VARIABLE_ID = 100
  MILKING_COMMON_EVENT_ID = 12
  MILKING_RESULT_VARIABLE_ID = 11
  MILKING_SKILL_IDS = [1439, 2380, 2382, 9512]
  # These events have verified, self-contained actor dialogue results.
  SKILL_DIALOGUE_COMMON_EVENT_IDS = [13, 32, 117, 138, 139]
  TEMPTATION_CHECK_COMMON_EVENT_ID = 6
  TEMPTATION_ROLL_VARIABLE_ID = 13
  TEMPTATION_COMMON_EVENT_ID = 203
  TEMPTATION_CURRENT_HP_VARIABLE_ID = 37
  TEMPTATION_THRESHOLD_VARIABLE_ID = 38
  PERSONA_DIALOGUE_COMPATIBILITY_KEY = :@research_mod_persona_dialogue_compatibility
  LOVE_DIALOGUE_COMPATIBILITY_KEY = :@research_mod_love_dialogue_compatibility
  MAOUJOU_GIFT_DIALOGUE_COMPATIBILITY_KEY = :@research_mod_maoujou_gift_dialogue
  MAOUJOU_PLEADING_DIALOGUE_COMPATIBILITY_KEY = :@research_mod_maoujou_pleading_dialogue
  MAOUJOU_REMOVE_CANDIDATE_COMPATIBILITY_KEY = :@research_mod_maoujou_remove_candidate
  MAOUJOU_PLEADING_SUPPRESSION_KEY = :@research_mod_maoujou_pleading_suppression
  CANDIDATE_DIALOGUE_VIEW_KEY = :@research_mod_candidate_dialogue_view
  ALL_DIALOGUE_FORCE_PARTY_KEY = :@research_mod_all_dialogue_force_party
  PERSONA_DIALOGUE_MENU_TEXT = '形態変化させる'
  RESEARCH_PERSONA_DIALOGUE_MENU_TEXT = '魔王城对话形态变化（无视事件）'
  RESEARCH_LOVE_DIALOGUE_MENU_TEXT = '魔王城好感度修改'
  RESEARCH_MAOUJOU_GIFT_DIALOGUE_MENU_TEXT = '魔王城赠送礼物改'
  RESEARCH_MAOUJOU_PLEADING_DIALOGUE_MENU_TEXT = '魔王城撒娇改'
  RESEARCH_MAOUJOU_REMOVE_CANDIDATE_MENU_TEXT = '魔王城移除候补'
  CANDIDATE_DIALOGUE_MENU_TEXT = "魔王城全对话"
  PERSONA_DIALOGUE_VARIABLE_ID = 11
  RING_RECIPIENT_VARIABLE_ID = 1402
  PERSONA_DIALOGUE_BASE_MENU_TEXTS = [
    'プレゼントをあげる',
    'プレゼントリストを見る',
    'やめる'
  ]

  def self.value_entries
    [
      { :key => :gold, :label => '金钱', :type => :gold },
      { :key => :casino_coin, :label => 'カジノコイン（赌场硬币）', :type => :variable,
        :id => CASINO_COIN_VARIABLE_ID, :maximum => VALUE_VARIABLE_MAX },
      { :key => :small_medal, :label => '小さなメダル（小奖章）', :type => :item,
        :id => SMALL_MEDAL_ITEM_ID },
      { :key => :large_medal, :label => '大きなメダル（大奖章）', :type => :item,
        :id => LARGE_MEDAL_ITEM_ID },
      { :key => :rabbit_point, :label => 'うさぎポイント（兔子点数）', :type => :variable,
        :id => RABBIT_POINT_VARIABLE_ID, :maximum => VALUE_VARIABLE_MAX },
      { :key => :shura_bonus, :label => '修羅迷宮ボーナスポイント（修罗迷宫奖励点数）', :type => :variable,
        :id => SHURA_BONUS_POINT_VARIABLE_ID, :maximum => VALUE_VARIABLE_MAX },
      { :key => :party_member_max, :label => '队伍编成人数上限', :type => :party_member_max,
        :id => PARTY_MEMBER_MAX_PLUS_VARIABLE_ID, :minimum => PARTY_MEMBER_BASE_MAX,
        :maximum => PARTY_MEMBER_TOTAL_MAX },
      { :key => :map_follower_count, :label => '地图跟随显示人数',
        :type => :map_follower_count, :minimum => 0,
        :maximum => MAP_FOLLOWER_COUNT_MAX },
      { :key => :bf_win_reward, :label => 'BF胜利奖励进度', :type => :variable,
        :id => BF_WIN_REWARD_VARIABLE_ID, :maximum => VALUE_STAT_MAX },
      { :key => :bf_lose_reward, :label => 'BF败北奖励进度', :type => :variable,
        :id => BF_LOSE_REWARD_VARIABLE_ID, :maximum => VALUE_STAT_MAX },
      { :key => :bf_library_win, :label => 'BF图鉴胜利统计', :type => :library,
        :id => :cnt_battlefuck_win, :maximum => VALUE_STAT_MAX },
      { :key => :bf_library_lose, :label => 'BF图鉴败北统计', :type => :library,
        :id => :cnt_battlefuck_lose, :maximum => VALUE_STAT_MAX },
      { :key => :small_medal_exchange, :label => '累计小奖牌兑换数', :type => :variable,
        :id => SMALL_MEDAL_EXCHANGE_VARIABLE_ID, :maximum => VALUE_STAT_MAX },
      { :key => :large_medal_exchange, :label => '累计大奖牌兑换数', :type => :variable,
        :id => LARGE_MEDAL_EXCHANGE_VARIABLE_ID, :maximum => VALUE_STAT_MAX }
    ]
  end

  def self.value_entry(key)
    value_entries.find { |entry| entry[:key] == key }
  end

  def self.library_party_stat
    stat = $game_library.instance_variable_get(:@party_stat)
    unless stat
      $game_library.send(:init_party_stat)
      stat = $game_library.instance_variable_get(:@party_stat)
    end
    stat
  end

  def self.value_current(entry)
    case entry[:type]
    when :gold
      $game_party.gold
    when :item
      item = $data_items[entry[:id]]
      item ? $game_party.item_number(item) : 0
    when :variable
      $game_variables[entry[:id]]
    when :library
      library_party_stat[entry[:id]] || 0
    when :party_member_max
      PARTY_MEMBER_BASE_MAX + $game_variables[entry[:id]].to_i
    when :map_follower_count
      map_follower_count
    else
      0
    end
  end

  def self.value_minimum(entry)
    entry[:minimum] || 0
  end

  def self.value_maximum(entry)
    case entry[:type]
    when :gold
      $game_party.max_gold
    when :item
      item = $data_items[entry[:id]]
      item ? $game_party.max_item_number(item) : 0
    else
      entry[:maximum] || VALUE_STAT_MAX
    end
  end

  def self.set_value(entry, value)
    minimum = value_minimum(entry)
    maximum = value_maximum(entry)
    value = [[value, maximum].min, minimum].max
    case entry[:type]
    when :gold
      $game_party.gain_gold(value - $game_party.gold)
    when :item
      item = $data_items[entry[:id]]
      return false unless item

      $game_party.gain_item(item, value - $game_party.item_number(item))
    when :variable
      $game_variables[entry[:id]] = value
    when :library
      library_party_stat[entry[:id]] = value
    when :party_member_max
      $game_variables[entry[:id]] = value - PARTY_MEMBER_BASE_MAX
      $game_player.refresh if $game_player
      $game_map.need_refresh = true if $game_map
    when :map_follower_count
      set_map_follower_count(value)
    else
      return false
    end
    true
  end

  def self.lewd_soul_count
    item = $data_items[LEWD_SOUL_ITEM_ID]
    item ? $game_party.item_number(item) : 0
  end

  def self.map_follower_count
    return MAP_FOLLOWER_COUNT_DEFAULT unless $game_system

    value = $game_system.instance_variable_get(MAP_FOLLOWER_COUNT_KEY)
    value = MAP_FOLLOWER_COUNT_DEFAULT if value.nil?
    [[value.to_i, MAP_FOLLOWER_COUNT_MAX].min, 0].max
  end

  def self.set_map_follower_count(value)
    return false unless $game_system

    value = [[value.to_i, MAP_FOLLOWER_COUNT_MAX].min, 0].max
    $game_system.instance_variable_set(MAP_FOLLOWER_COUNT_KEY, value)
    apply_map_follower_count
    true
  end

  def self.apply_map_follower_count
    return unless $game_player && $game_player.followers
    return unless $game_player.followers.respond_to?(:research_mod_resize)

    $game_player.followers.research_mod_resize(map_follower_count, $game_player)
    $game_player.refresh
    $game_map.need_refresh = true if $game_map
  end

  def self.prepare_next_bf_lewd_soul
    return false if lewd_soul_count > 0

    $game_variables[BF_WIN_REWARD_VARIABLE_ID] = 34
    true
  end

  def self.gain_lewd_soul
    return false if lewd_soul_count > 0

    item = $data_items[LEWD_SOUL_ITEM_ID]
    return false unless item

    $game_party.gain_item(item, 1)
    lewd_soul_count > 0
  end

  def self.entries(kind)
    $data_classes.compact.select do |entry|
      kind == :class ? entry.job? : entry.tribe?
    end.sort_by { |entry| [entry.id, entry.name] }
  end

  def self.valid_target?(kind, target_id)
    entry = $data_classes[target_id]
    entry && (kind == :class ? entry.job? : entry.tribe?)
  end

  def self.class_learning_entries(entry)
    return [] unless entry && entry.respond_to?(:learnings)

    entry.learnings.map do |learning|
      skill = $data_skills[learning.skill_id] if $data_skills
      next unless skill

      [learning.level.to_i, skill]
    end.compact.sort_by { |level, skill| [level, skill.id] }
  rescue
    []
  end

  def self.class_learning_category(skill)
    return '技能分类未知' unless skill

    stype_id = skill.respond_to?(:stype_id) ? skill.stype_id.to_i : 0
    ability = skill.respond_to?(:ability?) ? skill.ability? : false
    if ability && CLASS_ABILITY_TYPE_TRANSLATIONS.key?(stype_id)
      pair = CLASS_ABILITY_TYPE_TRANSLATIONS[stype_id]
      return format('%s（%s）', pair[0], pair[1])
    end

    type_name = if $data_system && $data_system.respond_to?(:skill_types)
                  $data_system.skill_types[stype_id].to_s
                else
                  ''
                end
    type_name = '技能分类未知' if type_name.empty?
    translated = CLASS_SKILL_TYPE_TRANSLATIONS[type_name]
    return format('%s（%s）', type_name, translated) if translated

    reverse_name = CLASS_SKILL_TYPE_TRANSLATIONS.key(type_name)
    return format('%s（%s）', reverse_name, type_name) if reverse_name

    type_name
  rescue
    '技能分类未知'
  end

  def self.class_learning_lines(entry, kind = :class)
    kind_name = kind == :class ? '职业' : '种族'
    return [format('%s数据不存在。', kind_name)] unless entry

    lines = [format('%s ID %d  %s', kind_name, entry.id, entry.name)]
    lines << format('最高等级：%d', entry.max_lv.to_i) if entry.respond_to?(:max_lv)
    entries = class_learning_entries(entry)
    if entries.empty?
      lines << '没有配置升级学习的技能或能力。'
      return lines
    end

    entries.group_by { |level, _skill| level }.sort_by { |level, _skills| level }.each do |level, level_entries|
      lines << format('Lv %d', level)
      level_entries.each do |_learning_level, skill|
        lines << format('ID %d', skill.id)
        lines << format('名称：%s', skill.name.to_s)
        lines << format('所属：%s', class_learning_category(skill))
        description = if skill.respond_to?(:description)
                        skill.description.to_s.gsub(92.chr + 'n', 10.chr)
                      else
                        ''
                      end
        lines << '说明：'
        unless description.empty?
          description.split(/\r?\n/, -1).each do |line|
            lines << line.to_s
          end
        end
        lines << ''
      end
    end
    lines
  rescue
    [format('%s学习数据读取失败。', kind_name)]
  end

  def self.class_learning_half_width
    [Graphics.width / 2, 1].max
  end

  # Return valid synthesis recipes grouped by output kind and ID.
  def self.research_mod_synthesis_products(kind = nil)
    return [] unless defined?(NWConst::Synthesize::Recipes)

    grouped = {}
    NWConst::Synthesize::Recipes.each do |recipe_id, recipe|
      next unless recipe.is_a?(Hash)

      output = recipe[:after] || recipe['after']
      next unless output.is_a?(Hash)

      output_kind = (output[:kind] || output['kind']).to_sym
      output_id = (output[:id] || output['id']).to_i
      next unless [:I, :W, :A].include?(output_kind)
      next if kind && output_kind != kind.to_sym

      item = case output_kind
             when :I then $data_items[output_id]
             when :W then $data_weapons[output_id]
             when :A then $data_armors[output_id]
             end
      next unless item && !item.name.to_s.empty?

      key = [output_kind, output_id]
      grouped[key] ||= { :kind => output_kind, :item => item, :recipes => [] }
      grouped[key][:recipes] << { :id => recipe_id.to_i, :data => recipe }
    end
    grouped.values.sort_by { |entry| [entry[:kind].to_s, entry[:item].id.to_i, entry[:item].name.to_s] }
  rescue
    []
  end

  def self.research_mod_synthesis_page(kind, start_id)
    products = research_mod_synthesis_products(kind)
    normalized = [start_id.to_i, 1].max
    available = products.select { |entry| entry[:item].id.to_i >= normalized }
    previous = products.select { |entry| entry[:item].id.to_i < normalized }
    page_entries = available.first(DATABASE_PAGE_SIZE)
    previous_entries = previous.last(DATABASE_PAGE_SIZE)
    {
      :start_id => normalized,
      :entries => page_entries,
      :previous_start_id => previous_entries.empty? ? nil : previous_entries.first[:item].id,
      :next_start_id => available[DATABASE_PAGE_SIZE] && available[DATABASE_PAGE_SIZE][:item].id,
      :maximum_id => products.empty? ? 1 : products.last[:item].id.to_i
    }
  rescue
    { :start_id => 1, :entries => [], :previous_start_id => nil,
      :next_start_id => nil, :maximum_id => 1 }
  end

  def self.research_mod_synthesis_kind_name(kind)
    { :I => '物品', :W => '武器', :A => '防具' }[kind.to_sym] || '未知'
  end

  def self.research_mod_synthesis_object(kind, id)
    case kind.to_sym
    when :I then $data_items[id.to_i]
    when :W then $data_weapons[id.to_i]
    when :A then $data_armors[id.to_i]
    end
  rescue
    nil
  end

  def self.research_mod_synthesis_material_lines(recipe)
    befores = recipe[:befores] || recipe['befores'] || []
    lines = []
    befores.each do |material|
      next unless material.is_a?(Hash)

      kind = (material[:kind] || material['kind']).to_sym
      id = (material[:id] || material['id']).to_i
      number = (material[:num] || material['num']).to_i
      item = research_mod_synthesis_object(kind, id)
      name = item ? item.name.to_s : '未定义'
      owned = item && $game_party ? $game_party.item_number(item) : 0
      lines << format('%s ID %d「%s」：%d（持有%d）',
                      research_mod_synthesis_kind_name(kind), id, name,
                      number, owned)
    end
    lines
  rescue
    []
  end

  def self.research_mod_synthesis_recipe_available?(recipe)
    return false unless recipe.is_a?(Hash)
    price = (recipe[:price] || recipe['price']).to_i
    return false if $game_party.nil? || $game_party.gold < price

    befores = recipe[:befores] || recipe['befores'] || []
    befores.all? do |material|
      kind = (material[:kind] || material['kind']).to_sym
      item = research_mod_synthesis_object(kind, material[:id] || material['id'])
      item && $game_party.item_number(item) >= (material[:num] || material['num']).to_i
    end
  rescue
    false
  end

  def self.research_mod_execute_synthesis(recipe, free_materials = false)
    return false unless recipe.is_a?(Hash) && $game_party

    output = recipe[:after] || recipe['after']
    return false unless output.is_a?(Hash)

    output_kind = (output[:kind] || output['kind']).to_sym
    output_item = research_mod_synthesis_object(output_kind, output[:id] || output['id'])
    return false unless output_item

    price = (recipe[:price] || recipe['price']).to_i
    befores = recipe[:befores] || recipe['befores'] || []
    unless free_materials
      return false unless research_mod_synthesis_recipe_available?(recipe)

      $game_party.gain_gold(-price)
      befores.each do |material|
        kind = (material[:kind] || material['kind']).to_sym
        item = research_mod_synthesis_object(kind, material[:id] || material['id'])
        $game_party.gain_item(item, -(material[:num] || material['num']).to_i) if item
      end
    end
    $game_party.gain_item(output_item, 1)
    if defined?($game_library) && $game_library &&
       $game_library.respond_to?(:count_up_party_synthesize)
      $game_library.count_up_party_synthesize
    end
    true
  rescue
    false
  end

  # Return the same five skill groups used by the battle dialogue browser.
  def self.all_skill_categories
    BATTLE_DIALOGUE_SKILL_CATEGORIES
  end

  # Build the second-level skill-type entries for a top-level category.
  def self.all_skill_type_entries(category)
    return [] unless category

    type_ids = Array(category[:type_ids]).dup
    # Keep ordinary skills with custom database type IDs reachable from the
    # "other skills" group while still excluding ability types.
    if category.equal?(BATTLE_DIALOGUE_SKILL_CATEGORIES.last)
      known_ids = BATTLE_DIALOGUE_SKILL_CATEGORIES.inject([]) do |ids, item|
        ids + Array(item[:type_ids])
      end
      custom_ids = ($data_skills || []).compact.inject([]) do |ids, skill|
        next ids if skill.respond_to?(:ability?) && skill.ability?

        ids + (skill.respond_to?(:stypes) ? Array(skill.stypes) :
          (skill.respond_to?(:stype_id) ? [skill.stype_id] : []))
      end
      type_ids |= custom_ids.compact.map(&:to_i).reject { |id| known_ids.include?(id) }
    end
    type_ids.sort.map do |type_id|
      name = if $data_system && $data_system.respond_to?(:skill_types)
               $data_system.skill_types[type_id].to_s
             else
               ''
             end
      next if name.empty?

      { :type_id => type_id, :name => name,
        :category_label => category[:label] }
    end.compact
  rescue
    []
  end

  # Enumerate every ordinary database skill in the selected skill type.
  def self.all_skill_entries(type_id)
    return [] unless $data_skills

    $data_skills.compact.select do |skill|
      next false if skill.respond_to?(:ability?) && skill.ability?

      type_id.nil? || skill_has_type?(skill, type_id)
    end.sort_by { |skill| [skill.id.to_i, skill.name.to_s] }
  rescue
    []
  end

  # Build an ID-ordered page for the unfiltered skill or ability browser.
  def self.learning_database_page(kind, start_id)
    entries = kind == :ability ? ability_entries(nil) : all_skill_entries(nil)
    maximum_id = [($data_skills ? $data_skills.size - 1 : 1), 1].max
    normalized = [[start_id.to_i, maximum_id].min, 1].max
    available = entries.select { |entry| entry.id.to_i >= normalized }
    previous = entries.select { |entry| entry.id.to_i < normalized }
    page_entries = available.first(LEARNING_DATABASE_PAGE_SIZE)
    next_entry = available[LEARNING_DATABASE_PAGE_SIZE]
    previous_entries = previous.last(LEARNING_DATABASE_PAGE_SIZE)
    {
      :start_id => normalized,
      :entries => page_entries,
      :previous_start_id => previous_entries.empty? ? nil : previous_entries.first.id,
      :next_start_id => next_entry ? next_entry.id : nil,
      :maximum_id => maximum_id
    }
  rescue
    { :start_id => 1, :entries => [], :previous_start_id => nil,
      :next_start_id => nil, :maximum_id => 1 }
  end

  # Format a skill type as Japanese text followed by its Chinese translation.
  def self.all_skill_type_label(type_id)
    name = if $data_system && $data_system.respond_to?(:skill_types)
             $data_system.skill_types[type_id].to_s
           else
             ''
           end
    name = '技能分类未知' if name.empty?
    translated = CLASS_SKILL_TYPE_TRANSLATIONS[name]
    translated ? format('%s（%s）', name, translated) : name
  rescue
    '技能分类未知'
  end

  def self.all_skill_learning_status(actor, skill)
    return false unless actor && skill

    actor.skill_learn?(skill)
  rescue
    false
  end

  # Learn a normal skill and keep the actor backup behavior consistent with
  # the existing learning menu.
  def self.learn_all_skill(actor, skill_id)
    skill = $data_skills[skill_id] if $data_skills
    return false unless actor && skill
    return false if skill.respond_to?(:ability?) && skill.ability?
    return false if all_skill_learning_status(actor, skill)
    return false if actor.respond_to?(:skill_learnable?) && !actor.skill_learnable?(skill)

    snapshot(actor) unless snapshot?(actor)
    actor.learn_skill(skill.id)
    actor.refresh if actor.respond_to?(:refresh)
    all_skill_learning_status(actor, skill)
  rescue
    false
  end

  def self.forget_all_skill(actor, skill_id)
    skill = $data_skills[skill_id] if $data_skills
    return false unless actor && skill
    return false if skill.respond_to?(:ability?) && skill.ability?
    return false unless all_skill_learning_status(actor, skill)

    snapshot(actor) unless snapshot?(actor)
    actor.forget_skill(skill.id)
    actor.refresh if actor.respond_to?(:refresh)
    !all_skill_learning_status(actor, skill)
  rescue
    false
  end

  # Learn every available ordinary skill in the supplied scope.
  def self.learn_all_skills_in_type(actor, type_id, scoped_entries = nil)
    source = scoped_entries || all_skill_entries(type_id)
    skills = source.select do |skill|
      !all_skill_learning_status(actor, skill) &&
        (!actor.respond_to?(:skill_learnable?) || actor.skill_learnable?(skill))
    end
    return 0 if skills.empty?

    snapshot(actor) unless snapshot?(actor)
    skills.each { |skill| actor.learn_skill(skill.id) }
    actor.refresh if actor.respond_to?(:refresh)
    skills.count { |skill| all_skill_learning_status(actor, skill) }
  rescue
    0
  end

  # Forget every learned ordinary skill in the supplied scope.
  def self.forget_all_skills_in_type(actor, type_id, scoped_entries = nil)
    source = scoped_entries || all_skill_entries(type_id)
    skills = source.select do |skill|
      all_skill_learning_status(actor, skill)
    end
    return 0 if skills.empty?

    snapshot(actor) unless snapshot?(actor)
    skills.each { |skill| actor.forget_skill(skill.id) }
    actor.refresh if actor.respond_to?(:refresh)
    skills.count { |skill| !all_skill_learning_status(actor, skill) }
  rescue
    0
  end

  # Return the ability categories defined by the game's ability system.
  def self.ability_type_entries
    CLASS_ABILITY_TYPE_TRANSLATIONS.keys.sort.map do |stype_id|
      pair = CLASS_ABILITY_TYPE_TRANSLATIONS[stype_id]
      { :stype_id => stype_id, :name => pair[0], :translated_name => pair[1] }
    end
  end

  # Enumerate all database abilities in the selected ability category.
  def self.ability_entries(stype_id)
    return [] unless $data_skills

    $data_skills.compact.select do |skill|
      ability = skill.respond_to?(:ability?) && skill.ability?
      ability && (stype_id.nil? ||
        (skill.respond_to?(:stype_id) && skill.stype_id.to_i == stype_id.to_i))
    end.sort_by { |skill| [skill.id.to_i, skill.name.to_s] }
  rescue
    []
  end

  def self.ability_learning_status(actor, ability)
    return false unless actor && ability

    learned = actor.skill_learn?(ability)
    if actor.respond_to?(:all_abilities)
      learned ||= Array(actor.all_abilities).include?(ability.id)
    end
    learned
  rescue
    false
  end

  # Learn one ability without requiring a class or tribe learning record.
  def self.learn_ability(actor, ability_id)
    ability = $data_skills[ability_id] if $data_skills
    return false unless actor && ability && ability_entries(ability.stype_id).include?(ability)
    return false if ability_learning_status(actor, ability)
    return false if actor.respond_to?(:skill_learnable?) && !actor.skill_learnable?(ability)

    snapshot(actor) unless snapshot?(actor)
    actor.learn_skill(ability.id)
    actor.refresh if actor.respond_to?(:refresh)
    ability_learning_status(actor, ability)
  rescue
    false
  end

  # Forget one ability from the current actor.
  def self.forget_ability(actor, ability_id)
    ability = $data_skills[ability_id] if $data_skills
    return false unless actor && ability && ability_entries(ability.stype_id).include?(ability)
    return false unless ability_learning_status(actor, ability)

    snapshot(actor) unless snapshot?(actor)
    actor.forget_skill(ability.id)
    actor.refresh if actor.respond_to?(:refresh)
    !ability_learning_status(actor, ability)
  rescue
    false
  end

  def self.learn_all_abilities_in_type(actor, stype_id, scoped_entries = nil)
    source = scoped_entries || ability_entries(stype_id)
    abilities = source.select do |ability|
      !ability_learning_status(actor, ability) &&
        (!actor.respond_to?(:skill_learnable?) || actor.skill_learnable?(ability))
    end
    return 0 if abilities.empty?

    snapshot(actor) unless snapshot?(actor)
    abilities.each { |ability| actor.learn_skill(ability.id) }
    actor.refresh if actor.respond_to?(:refresh)
    abilities.count { |ability| ability_learning_status(actor, ability) }
  rescue
    0
  end

  def self.forget_all_abilities_in_type(actor, stype_id, scoped_entries = nil)
    source = scoped_entries || ability_entries(stype_id)
    abilities = source.select do |ability|
      ability_learning_status(actor, ability)
    end
    return 0 if abilities.empty?

    snapshot(actor) unless snapshot?(actor)
    abilities.each { |ability| actor.forget_skill(ability.id) }
    actor.refresh if actor.respond_to?(:refresh)
    abilities.count { |ability| !ability_learning_status(actor, ability) }
  rescue
    0
  end

  def self.snapshot_store
    store = $game_system.instance_variable_get(:@research_mod_snapshots)
    return store if store

    store = {}
    $game_system.instance_variable_set(:@research_mod_snapshots, store)
    store
  end

  def self.snapshot(actor)
    snapshot_store[actor.id] = Marshal.load(Marshal.dump({
      :class_id => actor.class_id,
      :tribe_id => actor.tribe_id,
      :exp => actor.instance_variable_get(:@exp),
      :level => actor.instance_variable_get(:@level),
      :level_list => actor.instance_variable_get(:@level_list),
      :skills => actor.instance_variable_get(:@skills),
      :abilities => actor.instance_variable_get(:@abilities),
      :equip_abilities => actor.instance_variable_get(:@equip_abilities),
      :suppressed_level_abilities => actor.instance_variable_get(:@research_mod_suppressed_level_abilities),
      :param_plus => actor.instance_variable_get(:@param_plus),
      :love => actor.love
    }))
  end

  def self.snapshot?(actor)
    snapshot_store.key?(actor.id)
  end

  def self.apply_change(actor, kind, target_id, target_level)
    return false unless valid_target?(kind, target_id)

    entry = $data_classes[target_id]
    target_level = [[target_level.to_i, entry.max_lv].min, 1].max
    snapshot(actor) unless snapshot?(actor)
    actor.change_class(target_id, kind)
    actor.change_level(target_level, false, kind)
    actor.refresh
    true
  end

  def self.unlock_all(actor)
    snapshot(actor) unless snapshot?(actor)

    exp = actor.instance_variable_get(:@exp)
    level_list = actor.instance_variable_get(:@level_list)
    entries(:class).concat(entries(:tribe)).each do |entry|
      level_list[entry.id] = entry.max_lv
      exp[entry.id] = entry.exp_for_level(entry.max_lv)
    end

    level = actor.instance_variable_get(:@level)
    level[:class] = level_list[actor.class_id]
    level[:tribe] = level_list[actor.tribe_id]
    actor.relearn_skills
    actor.refresh
    true
  end

  def self.set_all_actor_love(value = 30_000)
    $data_actors.compact.each do |data_actor|
      next if data_actor.name.empty?

      $game_variables[NWConst::Var::ACTOR_REL_BASE + data_actor.id] = value
    end
    true
  end

  def self.recruitable_actor?(data_actor)
    data_actor.id >= RECRUIT_ACTOR_ID_MIN && data_actor.id <= RECRUIT_ACTOR_ID_MAX &&
      !data_actor.name.empty? && data_actor.persona_kind != :sub
  end

  def self.recruit_all_available_actors
    $data_actors.compact.each do |data_actor|
      next unless recruitable_actor?(data_actor)
      next if $game_party.follow?(data_actor.id)

      $game_party.add_stand_actor(data_actor.id)
    end
    true
  end

  def self.actor_encyclopedia_entries
    $data_actors.compact.select { |actor| !actor.name.empty? }.sort_by(&:id)
  end

  def self.actor_encyclopedia_page(start_id)
    maximum_id = [$data_actors.size - 1, 1].max
    normalized_start_id = [[start_id, maximum_id].min, 1].max
    entries = actor_encyclopedia_entries
    available = entries.select { |actor| actor.id >= normalized_start_id }
    previous = entries.select { |actor| actor.id < normalized_start_id }
    page_entries = available.first(ACTOR_ENCYCLOPEDIA_PAGE_SIZE)
    previous_entries = previous.last(ACTOR_ENCYCLOPEDIA_PAGE_SIZE)
    {
      :start_id => normalized_start_id,
      :entries => page_entries,
      :previous_start_id => previous_entries.empty? ? nil : previous_entries.first.id,
      :next_start_id => available[ACTOR_ENCYCLOPEDIA_PAGE_SIZE] ?
        available[ACTOR_ENCYCLOPEDIA_PAGE_SIZE].id : nil,
      :maximum_id => maximum_id
    }
  end

  def self.actor_fixed_ability(actor)
    return nil unless defined?(NWConst::Library::ACTOR_FIX_ABILITY)

    ability_id = actor.respond_to?(:ability_id) ? actor.ability_id : actor.id
    table = NWConst::Library::ACTOR_FIX_ABILITY
    table[ability_id] || table[actor.id]
  end

  def self.actor_image_name(actor)
    return '' unless actor && defined?(NWConst::Library::ACTOR_IMAGE)

    data = NWConst::Library::ACTOR_IMAGE[actor.id]
    return '' unless data.is_a?(Array) && data[1]

    data[1].to_s
  end

  def self.actor_cutin_file_names(actor)
    return [] unless actor && defined?(NWConst::Actor::SKILL_WORDS)

    actor_id = actor.respond_to?(:word_id) && actor.word_id ? actor.word_id : actor.id
    word_data = NWConst::Actor::SKILL_WORDS[actor_id]
    return [] unless word_data.is_a?(Hash)

    names = []
    collect_actor_cutin_names(word_data, names)
    names.uniq
  rescue
    []
  end

  def self.actor_cutin_entries(actor)
    return [] unless actor && defined?(NWConst::Actor::SKILL_WORDS)

    actor_id = actor.respond_to?(:word_id) && actor.word_id ? actor.word_id : actor.id
    word_data = NWConst::Actor::SKILL_WORDS[actor_id]
    return [] unless word_data.is_a?(Hash)

    entries = []
    word_data.each do |skill_key, nested|
      skill_label = actor_cutin_skill_label(skill_key)
      names = []
      collect_actor_cutin_names(nested, names)
      names.uniq.each { |name| entries << [skill_label, name] }
    end
    entries.uniq
  rescue
    []
  end

  def self.actor_cutin_skill_label(skill_key)
    skill_ids = if skill_key.is_a?(Array)
                  skill_key.flatten
                elsif skill_key.is_a?(Range)
                  skill_key.to_a
                else
                  [skill_key]
                end
    skill_ids = skill_ids.select { |skill_id| skill_id.is_a?(Integer) }
    labels = skill_ids.map do |skill_id|
      skill = defined?($data_skills) ? $data_skills[skill_id] : nil
      skill_name = skill ? skill.name.to_s : ''
      skill_name.empty? ? format('技能ID %d', skill_id) : format('%s（ID %d）', skill_name, skill_id)
    end
    labels.empty? ? '技能名未找到' : labels.join('、')
  end

  def self.collect_actor_cutin_names(value, names)
    if value.is_a?(Hash)
      value.each do |key, nested|
        if key.to_s == 'ct_pic'
          name = nested.to_s
          names << name unless name.empty?
        else
          collect_actor_cutin_names(nested, names)
        end
      end
    elsif value.is_a?(Array)
      value.each { |nested| collect_actor_cutin_names(nested, names) }
    end
  end

  def self.audio_channel_text(label, audio_class)
    audio = audio_class.last
    return format('%s：无', label) unless audio && !audio.name.to_s.empty?

    format('%s：%s　音量：%d　音调：%d', label, audio.name,
           audio.volume, audio.pitch)
  rescue
    format('%s：无法读取', label)
  end

  def self.current_audio_info_text
    [
      '当前音频信息',
      audio_channel_text('BGM', RPG::BGM),
      audio_channel_text('BGS', RPG::BGS),
      audio_channel_text('ME（最后记录）', RPG::ME),
      'BGM 文件位于 Audio/BGM，BGS 位于 Audio/BGS，ME 位于 Audio/ME。',
      'ME 播放结束后，引擎可能仍保留最后一次播放的名称。'
    ].join("\n")
  end

  def self.audio_overlay_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(AUDIO_OVERLAY_KEY) == true
  end

  def self.toggle_audio_overlay
    enabled = !audio_overlay_enabled?
    $game_system.instance_variable_set(AUDIO_OVERLAY_KEY, enabled)
    enabled
  end

  def self.audio_overlay_channel_signature(audio_class)
    audio = audio_class.last
    return ['', 0, 0] unless audio && !audio.name.to_s.empty?

    [audio.name.to_s, audio.volume.to_i, audio.pitch.to_i]
  rescue
    ['', 0, 0]
  end

  def self.current_audio_overlay_signature
    [audio_overlay_channel_signature(RPG::BGM),
     audio_overlay_channel_signature(RPG::BGS)]
  end

def self.author_info_text
  [
    '关于',
    '本研究修改器由作者狗棲制作，主要用于研究、调试和测试游戏内容。',
    '建议适度使用或者不用修改功能；过度的修改可能会失去游戏乐趣。',
    '前章卡圣山：将开关2479「アモス聖山暗転」改为 OFF，即可下山。',
    '建议重新关闭原版不遇敌，关闭开关100「ワープOFFスイッチ」和开关2116「アモス聖山飛び降りフラグ」。',
    '终章卡新人类宴会：将变量1150「サラサ空賊団イベント」改为 17，',
    '然后再与サラサ、爱丽丝对话，即可结束该事件。',
    '蛭蟲細胞是物品 ID 282，可在按 ID 获取物品中直接输入 282。',
    '修改剧情开关或变量前，建议先保存存档，并尽量只修改提示中的目标数值。'
  ].join("
")
end


def self.stuck_help_entries
  [
    {
      :key => :sant_mountain,
      :label => '圣山',
      :description => '前章卡圣山：将开关2479「アモス聖山暗転」改为 OFF，即可下山。' + 10.chr +
        '建议重新关闭原版不遇敌，关闭开关100「ワープOFFスイッチ」和开关2116「アモス聖山飛び降りフラグ」。',
      :state => on_off($game_switches[STUCK_SANT_MOUNTAIN_SWITCH_ID]),
      :state_label => switch_text(STUCK_SANT_MOUNTAIN_SWITCH_ID)
    },
    {
      :key => :new_human_banquet,
      :label => '新人类宴会',
      :description => '终章卡新人类宴会：将变量1150「サラサ空賊団イベント」设为 17，' + 10.chr +
        '再与サラサ、爱丽丝对话，即可结束该事件。',
      :state => $game_variables[STUCK_NEW_HUMAN_VARIABLE_ID].to_i,
      :state_label => variable_text(STUCK_NEW_HUMAN_VARIABLE_ID)
    }
  ]
end

  def self.stuck_help_entry(key)
    stuck_help_entries.find { |entry| entry[:key] == key }
  end

  def self.apply_stuck_help(key)
    case key
    when :sant_mountain
      $game_switches[STUCK_SANT_MOUNTAIN_SWITCH_ID] = false
      $game_switches[STUCK_SANT_MOUNTAIN_WARP_SWITCH_ID] = false
      $game_switches[STUCK_SANT_MOUNTAIN_FALL_SWITCH_ID] = false
      $game_system.encounter_disabled = false if $game_system
    when :new_human_banquet
      $game_variables[STUCK_NEW_HUMAN_VARIABLE_ID] = STUCK_NEW_HUMAN_TARGET_VALUE
    else
      return false
    end
    $game_map.need_refresh = true if $game_map
    true
  end

  def self.persona_entries(actor)
    data_actor = $data_actors[actor.id]
    original_id = data_actor ? data_actor.original_persona_id : actor.id
    persona_entries_for_ids([original_id])
  end

  def self.persona_entries_for_ids(persona_ids)
    original_ids = persona_ids.map do |persona_id|
      data_actor = $data_actors[persona_id]
      data_actor ? data_actor.original_persona_id : nil
    end.compact.uniq
    $data_actors.compact.select do |entry|
      entry.persona_kind != :none && original_ids.include?(entry.original_persona_id)
    end.sort_by { |entry| entry.id }
  end

  def self.apply_persona(actor, persona_id)
    return false unless persona_entries(actor).any? { |entry| entry.id == persona_id }

    $game_party.persona_change(persona_id)
    true
  end

  def self.apply_base_level(actor, level)
    snapshot(actor) unless snapshot?(actor)
    actor.change_level(level, false, :base)
    sync_base_level_abilities(actor, level)
    true
  end

  def self.base_level_ability_requirements(actor)
    actor.original_persona_data_actor.peculiar_skill.each_with_object({}) do |entry, result|
      skill = $data_skills[entry[:id]]
      next unless skill && skill.ability?

      current_level = result[skill.id]
      result[skill.id] = current_level ? [current_level, entry[:lv]].min : entry[:lv]
    end
  end

  def self.sync_base_level_abilities(actor, level)
    learned = actor.instance_variable_get(:@abilities) || {}
    equipped = actor.instance_variable_get(:@equip_abilities) || {}
    suppressed = actor.instance_variable_get(:@research_mod_suppressed_level_abilities) || {}

    base_level_ability_requirements(actor).each do |skill_id, required_level|
      skill = $data_skills[skill_id]
      stype_id = skill.stype_id
      equipped[stype_id] ||= []
      suppressed[stype_id] ||= []

      if required_level > level
        if equipped[stype_id].delete(skill_id)
          suppressed[stype_id] |= [skill_id]
        end
        next
      end

      next unless suppressed[stype_id].include?(skill_id)
      next unless learned.fetch(stype_id, []).include?(skill_id)
      next unless skill.class_conditions_met?(actor)
      next unless skill.memorize_cost <= actor.max_ap(stype_id) - actor.ap(stype_id)

      equipped[stype_id] |= [skill_id]
      suppressed[stype_id].delete(skill_id)
    end

    suppressed.delete_if { |_stype_id, skill_ids| skill_ids.empty? }
    actor.instance_variable_set(:@research_mod_suppressed_level_abilities, suppressed)
    actor.refresh
  end

  def self.apply_love(actor, value)
    snapshot(actor) unless snapshot?(actor)
    actor_snapshot = snapshot_store[actor.id]
    actor_snapshot[:love] = actor.love unless actor_snapshot.key?(:love)
    actor.love = [[value, LOVE_MAX].min, 0].max
    true
  end

  def self.actor_param_name(param_id)
    ACTOR_PARAM_NAMES[param_id] || format('能力%d', param_id)
  end

  def self.actor_param_plus(actor, param_id)
    values = actor.instance_variable_get(:@param_plus)
    values && values[param_id] ? values[param_id].to_i : 0
  end

  def self.actor_param_plus_maximum(actor, param_id)
    actor.max_param_plus(param_id).to_i
  end

  def self.actor_equip_param(actor, param_id)
    values = actor.equip_params
    values && values[param_id] ? values[param_id].to_i : 0
  end

  def self.set_actor_param_plus(actor, param_id, value)
    return false unless actor && (0...ACTOR_PARAM_NAMES.size).include?(param_id)

    snapshot(actor) unless snapshot?(actor)
    actor_snapshot = snapshot_store[actor.id]
    unless actor_snapshot.key?(:param_plus)
      current = actor.instance_variable_get(:@param_plus) || Array.new(ACTOR_PARAM_NAMES.size, 0)
      actor_snapshot[:param_plus] = Marshal.load(Marshal.dump(current))
    end

    maximum = actor_param_plus_maximum(actor, param_id)
    value = [[value.to_i, maximum].min, 0].max
    values = actor.instance_variable_get(:@param_plus)
    unless values && values.size >= ACTOR_PARAM_NAMES.size
      source = values || []
      values = Array.new(ACTOR_PARAM_NAMES.size, 0)
      source.each_with_index { |entry, index| values[index] = entry if index < values.size }
      actor.instance_variable_set(:@param_plus, values)
    end
    values[param_id] = value
    actor.refresh
    true
  end

  def self.panty_armors
    PANTY_ARMOR_ID_RANGE.map { |armor_id| $data_armors[armor_id] }.compact
  end

  def self.owned_panty_count
    panty_armors.count { |armor| $game_party.has_item?(armor, true) }
  end

  def self.gain_all_panties
    gained = 0
    panty_armors.each do |armor|
      next if $game_party.has_item?(armor, true)

      $game_party.gain_item(armor, 1)
      gained += 1
    end
    gained
  end

  def self.milk_items
    MILK_ITEM_ID_RANGE.map { |item_id| $data_items[item_id] }.compact.select do |item|
      !item.name.empty?
    end
  end

  def self.owned_milk_count
    milk_items.count { |item| $game_party.has_item?(item) }
  end

  def self.gain_all_milk
    gained = 0
    milk_items.each do |item|
      next if $game_party.has_item?(item)

      $game_party.gain_item(item, 1)
      gained += 1
    end
    gained
  end

  def self.marriage_armors
    MARRIAGE_ARMOR_ID_RANGE.map { |armor_id| $data_armors[armor_id] }.compact.select do |armor|
      !armor.name.empty?
    end
  end

  def self.owned_marriage_armor_count
    marriage_armors.count { |armor| $game_party.has_item?(armor, true) }
  end

  def self.gain_all_marriage_armors
    gained = 0
    marriage_armors.each do |armor|
      next if $game_party.has_item?(armor, true)

      $game_party.gain_item(armor, 1)
      gained += 1
    end
    gained
  end

  def self.cd_items
    CD_ITEM_ID_RANGE.map { |item_id| $data_items[item_id] }.compact.select do |item|
      !item.name.empty?
    end
  end

  def self.owned_cd_count
    cd_items.count { |item| $game_party.has_item?(item) }
  end

  def self.gain_all_cds
    gained = 0
    cd_items.each do |item|
      next if $game_party.has_item?(item)

      $game_party.gain_item(item, 1)
      gained += 1
    end
    gained
  end

  def self.database(kind)
    case kind
    when :item then $data_items
    when :weapon then $data_weapons
    when :armor then $data_armors
    else []
    end
  end

  def self.database_kind_name(kind)
    { :item => '物品', :weapon => '武器', :armor => '防具' }[kind] || ''
  end

  def self.database_page(kind, start_id)
    data = database(kind)
    maximum_id = [data.size - 1, 1].max
    current_id = [[start_id, maximum_id].min, 1].max
    entries = []
    while current_id < data.size && entries.size < DATABASE_PAGE_SIZE
      entry = data[current_id]
      entries << entry if entry && !entry.name.empty?
      current_id += 1
    end

    next_start_id = nil
    while current_id < data.size
      entry = data[current_id]
      if entry && !entry.name.empty?
        next_start_id = current_id
        break
      end
      current_id += 1
    end

    {
      :start_id => [[start_id, maximum_id].min, 1].max,
      :entries => entries,
      :next_start_id => next_start_id,
      :maximum_id => maximum_id
    }
  end

  def self.database_item_owned(item)
    if item.respond_to?(:need_enchant?) && item.need_enchant?
      return $game_party.uniq_item_number(item)
    end

    $game_party.item_number(item)
  end

  def self.database_item_max(item)
    if item.respond_to?(:need_enchant?) && item.need_enchant?
      return $game_party.uniq_max_item_number(item)
    end

    $game_party.max_item_number(item)
  end

  def self.database_item_capacity(item)
    return 0 unless database_item_supported?(item)

    [database_item_max(item) - database_item_owned(item), 0].max
  end

  def self.database_item_special?(item)
    item.respond_to?(:need_enchant?) && item.need_enchant?
  end

  def self.database_item_supported?(item)
    !database_item_special?(item)
  end

  def self.gain_database_item(item, amount)
    return 0 unless database_item_supported?(item)

    amount = [[amount, database_item_capacity(item)].min, 0].max
    return 0 if amount <= 0

    before = database_item_owned(item)
    $game_party.gain_item(item, amount)
    database_item_owned(item) - before
  end

  def self.battle_database(kind)
    kind == :enemy ? $data_enemies : $data_troops
  end

  def self.battle_kind_name(kind)
    kind == :enemy ? '敌人' : '敌群'
  end

  def self.valid_battle_entry?(kind, entry)
    return entry && !entry.name.empty? if kind == :enemy

    entry && troop_valid_members(entry).any?
  end

  def self.previous_battle_start_id(kind, start_id)
    data = battle_database(kind)
    maximum_id = [data.size - 1, 1].max
    current_id = [[start_id, maximum_id].min, 1].max - 1
    found_ids = []
    while current_id >= 1 && found_ids.size < BATTLE_PAGE_SIZE
      entry = data[current_id]
      found_ids << current_id if valid_battle_entry?(kind, entry)
      current_id -= 1
    end
    found_ids.empty? ? nil : found_ids.last
  end

  def self.battle_page(kind, start_id)
    data = battle_database(kind)
    maximum_id = [data.size - 1, 1].max
    current_id = [[start_id, maximum_id].min, 1].max
    entries = []
    while current_id < data.size && entries.size < BATTLE_PAGE_SIZE
      entry = data[current_id]
      entries << entry if valid_battle_entry?(kind, entry)
      current_id += 1
    end

    next_start_id = nil
    while current_id < data.size
      entry = data[current_id]
      if valid_battle_entry?(kind, entry)
        next_start_id = current_id
        break
      end
      current_id += 1
    end

    {
      :start_id => [[start_id, maximum_id].min, 1].max,
      :entries => entries,
      :previous_start_id => previous_battle_start_id(kind, start_id),
      :next_start_id => next_start_id,
      :maximum_id => maximum_id
    }
  end

  def self.lose_event_supported?(enemy)
    return false unless enemy && !enemy.name.to_s.empty?
    return false unless enemy.respond_to?(:lose_event_id)
    return false if enemy.respond_to?(:no_lose_skip?) && enemy.no_lose_skip?

    event_id = enemy.lose_event_id
    event_id && event_id > 0 && !$data_common_events[event_id].nil?
  end

  def self.lose_event_enemies
    seen_event_ids = {}
    $data_enemies.compact.each_with_object([]) do |enemy, entries|
      next unless lose_event_supported?(enemy)

      event_id = enemy.lose_event_id
      next if seen_event_ids[event_id]

      seen_event_ids[event_id] = true
      entries << enemy
    end
  end

  def self.lose_event_page(start_id)
    maximum_id = [$data_enemies.size - 1, 1].max
    normalized_start_id = [[start_id, maximum_id].min, 1].max
    available = lose_event_enemies.select { |enemy| enemy.id >= normalized_start_id }
    previous = lose_event_enemies.select { |enemy| enemy.id < normalized_start_id }
    entries = available.first(LOSE_EVENT_PAGE_SIZE)
    previous_entries = previous.last(LOSE_EVENT_PAGE_SIZE)
    next_start_id = available[LOSE_EVENT_PAGE_SIZE]

    {
      :start_id => normalized_start_id,
      :entries => entries,
      :previous_start_id => previous_entries.empty? ? nil : previous_entries.first.id,
      :next_start_id => next_start_id ? next_start_id.id : nil,
      :maximum_id => maximum_id
    }
  end

  def self.map_infos
    return @research_mod_map_infos if @research_mod_map_infos

    infos = {}
    division = 0
    loop do
      path = if division == 0
               'Data/MapInfos.rvdata2'
             else
               format('%s/Data/MapInfos.rvdata2', DataManager.over_map_dir(division))
             end
      break if division > 0 && !research_mod_data_file_exist?(path)

      load_data(path).each do |local_id, info|
        next unless local_id && local_id > 0 && info

        infos[division * 1000 + local_id] = info
      end
      division += 1
    end
    @research_mod_map_infos = infos
  rescue
    {}
  end

  def self.debug_database(kind)
    kind == :switch ? $data_system.switches : $data_system.variables
  end

  def self.debug_kind_name(kind)
    kind == :switch ? '开关' : '变量'
  end

def self.debug_known_issue_hint(kind)
  if kind == :switch
    '前章卡圣山：将开关2479「アモス聖山暗転」改为 OFF，即可下山。' + 10.chr +
      '建议重新关闭原版不遇敌，关闭开关100「ワープOFFスイッチ」和开关2116「アモス聖山飛び降りフラグ」。'
  else
    '终章卡新人类宴会：将变量1150「サラサ空賊団イベント」设为17，再与サラサ、爱丽丝对话。' + 10.chr +
      '戒指事件：变量1401「ルシフィナ指輪イベント」设为0可重复拿戒指，设为1可重复送戒指。' + 10.chr +
      '变量1402「指輪誰に渡したか」记录戒指交给了谁。'
  end
end

  def self.debug_variable_entry_hint(entry_id)
    case entry_id
    when CHEST_MONSTER_ICON_VARIABLE_ID
      '研究修改器的怪物宝箱提示图标ID；默认1。负数或超过IconSet范围时不显示。'
    when CHEST_ITEM_ICON_VARIABLE_ID
      '研究修改器的物品宝箱提示图标ID；默认191。负数或超过IconSet范围时不显示。'
    when 1401
      '设为0可以重复拿戒指；设为1可以重复送戒指。'
    when 1402
      '记录戒指交给了谁；修改前建议先保存独立存档。'
    else
      ''
    end
  end

  def self.debug_maximum_id(kind)
    [debug_database(kind).size - 1, 1].max
  end

  def self.debug_entry_name(kind, entry_id)
    name = debug_database(kind)[entry_id].to_s
    name.empty? ? '(无名称)' : name
  end

  def self.debug_entry_value(kind, entry_id)
    kind == :switch ? $game_switches[entry_id] : $game_variables[entry_id]
  end

  def self.debug_entry_value_text(kind, entry_id)
    value = debug_entry_value(kind, entry_id)
    return on_off(value) if kind == :switch

    text = value.inspect.to_s.delete(0.chr)
    text.size > 120 ? text[0, 117] + '...' : text
  end

  def self.set_debug_switch(entry_id, value)
    $game_switches[entry_id] = value == true
  end

  def self.set_debug_variable(entry_id, value)
    value = [[value.to_i, DEBUG_VARIABLE_MAX].min, -DEBUG_VARIABLE_MAX].max
    $game_variables[entry_id] = value
  end

  def self.self_switch_value(map_id, event_id, key)
    $game_self_switches[[map_id, event_id, key]] == true
  end

  def self.set_self_switch(map_id, event_id, key, value)
    return false unless SELF_SWITCH_KEYS.include?(key)

    $game_self_switches[[map_id, event_id, key]] = value == true
    true
  end

  def self.debug_page(kind, start_id)
    maximum_id = debug_maximum_id(kind)
    normalized_start_id = [[start_id, maximum_id].min, 1].max
    last_id = [normalized_start_id + DEBUG_DATABASE_PAGE_SIZE - 1, maximum_id].min
    {
      :start_id => normalized_start_id,
      :entries => (normalized_start_id..last_id).to_a,
      :next_start_id => last_id < maximum_id ? last_id + 1 : nil,
      :maximum_id => maximum_id
    }
  end

  def self.research_mod_data_file_exist?(path)
    if defined?(NWFileTest) && NWFileTest.respond_to?(:file_exist?)
      NWFileTest.file_exist?(path, false)
    else
      File.exist?(path)
    end
  rescue
    File.exist?(path)
  end

  def self.map_maximum_id
    ids = map_infos.keys
    [ids.empty? ? 1 : ids.max, 1].max
  end

  def self.map_name(map_id)
    info = map_infos[map_id]
    name = info ? info.name.to_s : ''
    name.empty? ? '(无名称地图)' : name
  end

  def self.map_data(map_id)
    return $data_map if defined?($data_map) && $data_map && $game_map.map_id == map_id

    path = if DataManager.respond_to?(:map_file_name)
             DataManager.map_file_name(map_id)
           else
             format('Data/Map%03d.rvdata2', map_id)
           end
    load_data(path)
  rescue
    nil
  end

  def self.map_page(start_id)
    maximum_id = map_maximum_id
    normalized_start_id = [[start_id, maximum_id].min, 1].max
    all_ids = map_infos.keys.sort
    ids = all_ids.select { |id| id >= normalized_start_id }
    previous_ids = all_ids.select { |id| id < normalized_start_id }
    entries = ids.first(MAP_PAGE_SIZE)
    next_id = ids[MAP_PAGE_SIZE]
    previous_start_id = previous_ids.last(MAP_PAGE_SIZE).first
    {
      :start_id => normalized_start_id,
      :entries => entries,
      :previous_start_id => previous_start_id,
      :next_start_id => next_id,
      :maximum_id => maximum_id
    }
  end

  def self.map_events(map_id)
    map = map_data(map_id)
    return [] unless map && map.respond_to?(:events)

    map.events.values.compact.sort_by { |event| event.id }
  end

  def self.ensure_chest_hint_variables
    return unless $game_system && $game_variables
    return if $game_system.instance_variable_get(
      CHEST_HINT_VARIABLES_INITIALIZED_KEY
    ) == true

    if $game_variables[CHEST_MONSTER_ICON_VARIABLE_ID].to_i == 0
      $game_variables[CHEST_MONSTER_ICON_VARIABLE_ID] =
        CHEST_MONSTER_ICON_DEFAULT
    end
    if $game_variables[CHEST_ITEM_ICON_VARIABLE_ID].to_i == 0
      $game_variables[CHEST_ITEM_ICON_VARIABLE_ID] = CHEST_ITEM_ICON_DEFAULT
    end
    $game_system.instance_variable_set(
      CHEST_HINT_VARIABLES_INITIALIZED_KEY, true
    )
  end

  def self.chest_hint_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(CHEST_HINT_ENABLED_KEY) == true
  end

  def self.toggle_chest_hint
    ensure_chest_hint_variables
    enabled = !chest_hint_enabled?
    $game_system.instance_variable_set(CHEST_HINT_ENABLED_KEY, enabled)
    enabled
  end

  def self.chest_hint_icon_id(type)
    ensure_chest_hint_variables
    variable_id = type == :monster ? CHEST_MONSTER_ICON_VARIABLE_ID :
                                     CHEST_ITEM_ICON_VARIABLE_ID
    $game_variables[variable_id].to_i
  end

  def self.chest_event?(event)
    return false unless event

    map_id = event.respond_to?(:map_id) ? event.map_id : nil
    if map_id.nil? && defined?($game_map) && $game_map
      map_id = $game_map.map_id
    end
    return container_event?(map_id, event) if map_id

    false
  end

  def self.chest_hint_type(event)
    return nil unless chest_hint_enabled? && chest_event?(event)

    map_id = event.respond_to?(:map_id) ? event.map_id : nil
    map_id = $game_map.map_id if map_id.nil? && defined?($game_map) && $game_map
    type = container_type(map_id, event)
    return container_original_type(map_id, event) if type == :none

    type == :monster || type == :item ? type : nil
  rescue
    nil
  end

  def self.chest_hint_completed?(event)
    return false unless chest_hint_enabled? && chest_event?(event)

    map_id = event.respond_to?(:map_id) ? event.map_id : nil
    map_id = $game_map.map_id if map_id.nil? && defined?($game_map) && $game_map
    return false if map_id.nil?

    container_opened?(map_id, event)
  rescue
    false
  end

  def self.container_event_data(event)
    return nil unless event

    data = if defined?(Game_Event) && event.is_a?(Game_Event)
             event.instance_variable_get(:@event)
           else
             event
           end
    data && data.respond_to?(:pages) ? data : event
  end

  def self.container_event?(map_id, event)
    event = container_event_data(event)
    return false unless event && event.respond_to?(:pages)

    event.pages.any? do |page|
      graphic = page.respond_to?(:graphic) ? page.graphic : nil
      next false unless graphic

      name = graphic.character_name.to_s
      next true if name.downcase.include?('chest') || name.include?('宝箱')

      name.empty? && graphic.character_index.to_i == POT_CHARACTER_INDEX &&
        graphic.tile_id.to_i == 0 && page.priority_type.to_i == 1
    end
  rescue
    false
  end

  def self.container_active_page(map_id, event)
    event = container_event_data(event)
    return nil unless event && event.respond_to?(:pages)

    page_index = active_event_page_index(map_id, event)
    return nil if page_index.nil?

    event.pages[page_index]
  end

  def self.container_event_entries(map_id)
    map_events(map_id).select { |event| container_event?(map_id, event) }
  end

  def self.container_page_commands(map_id, event)
    page = container_active_page(map_id, event)
    page && page.respond_to?(:list) ? page.list.compact : []
  end

  def self.container_original_page(map_id, event)
    event = container_event_data(event)
    return nil unless event && event.respond_to?(:pages)

    event.pages.find do |page|
      graphic = page.respond_to?(:graphic) ? page.graphic : nil
      next false unless graphic

      name = graphic.character_name.to_s
      name.downcase.include?('chest') || name.include?('宝箱') ||
        (name.empty? && graphic.character_index.to_i == POT_CHARACTER_INDEX &&
         graphic.tile_id.to_i == 0 && page.priority_type.to_i == 1)
    end
  end

  def self.container_opened?(map_id, event)
    event = container_event_data(event)
    return false unless event && event.respond_to?(:pages)

    active_index = active_event_page_index(map_id, event)
    original_page = container_original_page(map_id, event)
    original_index = original_page ? event.pages.index(original_page) : nil
    !active_index.nil? && !original_index.nil? && active_index > original_index
  end

  def self.container_type(map_id, event)
    return :none if container_opened?(map_id, event)

    codes = container_page_commands(map_id, event).map { |command| command.code }
    return :monster if codes.include?(301)
    return :item unless (codes & [125, 126, 127, 128]).empty?

    :unknown
  rescue
    :unknown
  end

  def self.container_original_type(map_id, event)
    page = container_original_page(map_id, event)
    codes = page ? page.list.to_a.map { |command| command.code } : []
    return :monster if codes.include?(301)
    return :item unless (codes & [125, 126, 127, 128]).empty?

    :unknown
  rescue
    :unknown
  end

  def self.container_hint_label(map_id, event)
    return '' unless chest_hint_enabled?

    case container_type(map_id, event)
    when :monster then ' [怪物]'
    when :item then ' [物品]'
    when :none then ' [无]'
    else ''
    end
  end

  def self.container_static_rewards(map_id, event)
    commands = container_page_commands(map_id, event)
    return nil if commands.empty? || container_type(map_id, event) != :item

    rewards = []
    self_switches = []
    commands.each do |command|
      code = command.code
      parameters = command.parameters || []
      case code
      when 0, 101, 115, 401, 205, 230, 250, 411, 412, 505
        next
      when 111
        # Only accept the standard script branch used for chest lock checks.
        return nil unless parameters[0].to_i == 12 &&
                          parameters[1].to_s =~ /unlock_level\s*[<>=!]/
      when 123
        return nil unless parameters[1].to_i == 0
        self_switches << parameters[0].to_s
      when 125
        return nil unless parameters[0].to_i == 0 && parameters[1].to_i == 0
        rewards << [:gold, parameters[2].to_i]
      when 126, 127, 128
        return nil unless parameters[1].to_i == 0 && parameters[2].to_i == 0
        type = code == 126 ? :item : (code == 127 ? :weapon : :armor)
        rewards << [type, parameters[0].to_i, parameters[3].to_i]
      else
        return nil
      end
    end
    return nil if rewards.empty? || self_switches.empty? ||
                  rewards.any? { |reward| reward.last.to_i <= 0 }

    { :rewards => rewards, :self_switches => self_switches.uniq,
      :locked => commands.any? { |command| command.code == 111 } }
  rescue
    nil
  end

  def self.container_force_openable?(map_id, event)
    !container_static_rewards(map_id, event).nil?
  end

  def self.container_normal_batch_openable?(map_id, event)
    data = container_static_rewards(map_id, event)
    data && !data[:locked]
  end

  def self.container_batch_available?
    chest_hint_enabled?
  end

  def self.container_reward_summary_lines(rewards)
    totals = Hash.new(0)
    Array(rewards).each do |reward|
      key = reward[0] == :gold ? [:gold, 0] : [reward[0], reward[1]]
      totals[key] += reward[0] == :gold ? reward[1].to_i : reward[2].to_i
    end
    return ['没有获得物品。'] if totals.empty?

    order = { :gold => 0, :item => 1, :weapon => 2, :armor => 3 }
    totals.sort_by { |key, _amount| [order[key[0]] || 9, key[1]] }.map do |key, amount|
      type, id = key
      case type
      when :gold
        format('金币 x%d', amount)
      when :item
        format('物品：%s x%d', short_item_name($data_items[id].name), amount)
      when :weapon
        format('武器：%s x%d', short_item_name($data_weapons[id].name), amount)
      when :armor
        format('防具：%s x%d', short_item_name($data_armors[id].name), amount)
      end
    end.compact
  rescue
    ['获得物品列表无法读取。']
  end

  def self.force_open_container(map_id, event, reward_log = nil)
    data = container_static_rewards(map_id, event)
    return false unless data

    data[:rewards].each do |reward|
      reward_log << reward if reward_log
      case reward[0]
      when :gold
        $game_party.gain_gold(reward[1])
      when :item
        $game_party.gain_item($data_items[reward[1]], reward[2])
      when :weapon
        $game_party.gain_item($data_weapons[reward[1]], reward[2])
      when :armor
        $game_party.gain_item($data_armors[reward[1]], reward[2])
      end
    end
    data[:self_switches].each do |key|
      set_self_switch(map_id, event.id, key, true)
    end
    $game_map.refresh if current_map_id?(map_id)
    true
  rescue
    false
  end

  def self.container_access_position(event)
    return nil unless event && current_map_id?($game_map.map_id)

    [[event.x, event.y - 1, 2], [event.x + 1, event.y, 4],
     [event.x, event.y + 1, 8], [event.x - 1, event.y, 6]].find do |x, y, direction|
      $game_map.valid?(x, y) && $game_map.events_xy_nt(x, y).empty? &&
        [2, 4, 6, 8].any? { |pass_direction| $game_map.passable?(x, y, pass_direction) }
    end
  rescue
    nil
  end

  def self.reserve_container_teleport(event, open_after_transfer = false)
    position = container_access_position(event)
    return false unless position

    x, y, direction = position
    $game_temp.instance_variable_set(
      CONTAINER_PENDING_OPEN_KEY,
      open_after_transfer ? {
        :map_id => $game_map.map_id, :event_id => event.id,
        :mode => open_after_transfer == :force ? :force : :normal
      } : nil
    )
    $game_player.reserve_transfer($game_map.map_id, x, y, direction)
    $game_temp.fade_type = 0 if $game_temp.respond_to?(:fade_type=)
    true
  end

  def self.start_pending_container_event
    pending = $game_temp.instance_variable_get(CONTAINER_PENDING_OPEN_KEY)
    $game_temp.instance_variable_set(CONTAINER_PENDING_OPEN_KEY, nil)
    return unless pending && pending[:map_id] == $game_map.map_id

    event = $game_map.events[pending[:event_id]]
    return unless event && !event.empty?

    if pending[:mode] == :force
      rewards = []
      return unless force_open_container($game_map.map_id, event, rewards)

      show_container_force_rewards(rewards)
    else
      event.start
    end
  rescue
    $game_temp.instance_variable_set(CONTAINER_PENDING_OPEN_KEY, nil)
  end

  def self.show_container_force_rewards(rewards)
    return unless defined?($game_message) && $game_message

    $game_message.add('强制打开：获得以下物品')
    container_reward_summary_lines(rewards).each do |line|
      $game_message.add(line)
    end
  rescue
  end

  def self.teleport_target_valid?(map_id, x, y)
    map = map_data(map_id)
    return false unless map && map.respond_to?(:width) && map.respond_to?(:height)

    x.to_i >= 0 && x.to_i < map.width && y.to_i >= 0 && y.to_i < map.height
  end

  def self.harpy_feather_all_places
    return [] unless defined?(WarpManager) && WarpManager.respond_to?(:all_places)

    WarpManager.all_places.reject do |place|
      place[:name].to_s == HARPY_FEATHER_PLACEHOLDER_NAME
    end
  end

  def self.harpy_feather_original_usable?
    defined?(WarpManager) && WarpManager.usable?
  end

  def self.harpy_feather_modified_usable?
    defined?(Scene_Warp) && !harpy_feather_all_places.empty?
  end

  def self.harpy_feather_all_places_active?
    @harpy_feather_all_places_active == true
  end

  def self.harpy_feather_all_places_active=(value)
    @harpy_feather_all_places_active = !!value
  end

  def self.reserve_teleport(map_id, x, y)
    return false unless teleport_target_valid?(map_id, x, y)

    $game_player.reserve_transfer(map_id.to_i, x.to_i, y.to_i, 2)
    $game_temp.fade_type = 0 if $game_temp.respond_to?(:fade_type=)
    true
  end

  def self.custom_teleport_points
    slots = $game_system.instance_variable_get(CUSTOM_TELEPORT_POINTS_KEY)
    if !slots.is_a?(Array)
      legacy_slots = $game_system.instance_variable_get(
        CUSTOM_TELEPORT_POINTS_LEGACY_KEY
      )
      slots = legacy_slots if legacy_slots.is_a?(Array)
    end
    unless slots.is_a?(Array)
      slots = []
    end
    $game_system.instance_variable_set(CUSTOM_TELEPORT_POINTS_KEY, slots)
    slots.fill(nil, slots.length...CUSTOM_TELEPORT_POINT_COUNT)
    slots.slice!(CUSTOM_TELEPORT_POINT_COUNT, slots.length) if slots.length > CUSTOM_TELEPORT_POINT_COUNT
    slots
  end

  def self.custom_teleport_point(index)
    custom_teleport_points[index.to_i]
  end

  def self.custom_teleport_point_valid?(point)
    return false unless point.is_a?(Hash)

    teleport_target_valid?(point[:map_id], point[:x], point[:y])
  end

  def self.save_current_custom_teleport_point(index)
    custom_teleport_points[index.to_i] = {
      :map_id => $game_map.map_id,
      :x => $game_player.x,
      :y => $game_player.y
    }
  end

  def self.clear_custom_teleport_point(index)
    custom_teleport_points[index.to_i] = nil
  end

  def self.reserve_custom_teleport_point(index)
    point = custom_teleport_point(index)
    return false unless custom_teleport_point_valid?(point)

    reserve_teleport(point[:map_id], point[:x], point[:y])
  end

  def self.custom_teleport_point_text(index, point = custom_teleport_point(index))
    return format('点位 %02d：空', index.to_i + 1) unless point.is_a?(Hash)

    format('点位 %02d：地图 %04d「%s」 X=%d Y=%d', index.to_i + 1,
           point[:map_id].to_i, map_name(point[:map_id].to_i),
           point[:x].to_i, point[:y].to_i)
  end

  def self.event_display_name(event)
    name = event ? event.name.to_s : ''
    name.empty? ? '(无名称事件)' : name
  end

  def self.switch_name(switch_id)
    name = $data_system.switches[switch_id].to_s
    name.empty? ? '(无名称)' : name
  end

  def self.variable_name(variable_id)
    name = $data_system.variables[variable_id].to_s
    name.empty? ? '(无名称)' : name
  end

  def self.on_off(value)
    value ? 'ON' : 'OFF'
  end

  def self.switch_text(switch_id)
    format('%04d「%s」', switch_id, switch_name(switch_id))
  end

  def self.variable_text(variable_id)
    format('%04d「%s」', variable_id, variable_name(variable_id))
  end

  def self.event_page_conditions_met?(map_id, event, page)
    return false unless event && page

    condition = page.condition
    return false if condition.switch1_valid && !$game_switches[condition.switch1_id]
    return false if condition.switch2_valid && !$game_switches[condition.switch2_id]
    if condition.variable_valid
      return false if $game_variables[condition.variable_id] < condition.variable_value
    end
    if condition.self_switch_valid
      key = [map_id, event.id, condition.self_switch_ch]
      return false unless $game_self_switches[key] == true
    end
    if condition.item_valid
      item = $data_items[condition.item_id]
      return false unless item && $game_party.has_item?(item)
    end
    if condition.actor_valid
      joined = $game_party.members.any? { |member| member.id == condition.actor_id }
      return false unless joined
    end
    true
  end

  def self.current_map_id?(map_id)
    defined?($game_map) && $game_map && $game_map.map_id == map_id
  end

  def self.active_event_page_index(map_id, event)
    return nil unless event && event.respond_to?(:pages)

    if current_map_id?(map_id)
      runtime_event = $game_map.events[event.id]
      return nil unless runtime_event

      runtime_page = runtime_event.instance_variable_get(:@page)
      return nil unless runtime_page

      runtime_data = runtime_event.instance_variable_get(:@event)
      runtime_pages = runtime_data && runtime_data.respond_to?(:pages) ? runtime_data.pages : event.pages
      return runtime_pages.index(runtime_page)
    end

    (event.pages.size - 1).downto(0) do |page_index|
      page = event.pages[page_index]
      return page_index if event_page_conditions_met?(map_id, event, page)
    end
    nil
  end

  def self.event_graphic_text(map_id, event, page_index = nil)
    return '图像：无' unless event && event.respond_to?(:pages)

    active_page = page_index.nil?
    page_index ||= active_event_page_index(map_id, event)
    return '图像：无生效事件页' if page_index.nil?

    page = event.pages[page_index]
    return '图像：无' unless page && page.respond_to?(:graphic)

    graphic = page.graphic
    character_name = graphic.character_name.to_s
    character_index = graphic.character_index.to_i
    tile_id = graphic.tile_id.to_i
    if active_page && current_map_id?(map_id)
      runtime_event = $game_map.events[event.id]
      if runtime_event
        character_name = runtime_event.instance_variable_get(:@character_name).to_s
        character_index = runtime_event.instance_variable_get(:@character_index).to_i
        tile_id = runtime_event.instance_variable_get(:@tile_id).to_i
      end
    end

    unless character_name.empty?
      return format('图像：Graphics/Characters/%s.png　索引%d',
                    character_name, character_index)
    end
    return format('图像：地图图块 Tile ID %d', tile_id) if tile_id > 0

    '图像：无'
  end

  def self.event_graphic_data(map_id, event)
    return nil unless event && event.respond_to?(:pages)

    page_index = active_event_page_index(map_id, event)
    page_index = 0 if page_index.nil? && !event.pages.empty?
    page = page_index.nil? ? nil : event.pages[page_index]
    return nil unless page && page.respond_to?(:graphic)

    graphic = page.graphic
    data = {
      :character_name => graphic.character_name.to_s,
      :character_index => graphic.character_index.to_i,
      :tile_id => graphic.tile_id.to_i
    }
    if current_map_id?(map_id)
      runtime_event = $game_map.events[event.id]
      if runtime_event
        data[:character_name] = runtime_event.instance_variable_get(:@character_name).to_s
        data[:character_index] = runtime_event.instance_variable_get(:@character_index).to_i
        data[:tile_id] = runtime_event.instance_variable_get(:@tile_id).to_i
      end
    end
    data
  rescue
    nil
  end

  def self.event_coordinate_tile_id(map_id, event)
    return nil unless event

    if current_map_id?(map_id)
      [2, 1, 0].each do |z|
        tile_id = $game_map.tile_id(event.x, event.y, z).to_i
        return tile_id if tile_id > 0
      end
      return nil
    end

    map = map_data(map_id)
    return nil unless map && map.respond_to?(:data)

    [2, 1, 0].each do |z|
      tile_id = map.data[event.x, event.y, z].to_i
      return tile_id if tile_id > 0
    end
    nil
  rescue
    nil
  end

  def self.event_page_status(map_id, event, page_index, active_page_index = nil)
    active_page_index = active_event_page_index(map_id, event) if active_page_index.nil?
    if page_index == active_page_index
      return current_map_id?(map_id) ? '当前实际生效' : '按当前存档推算生效'
    end

    matched = event_page_conditions_met?(map_id, event, event.pages[page_index])
    return '条件未满足' unless matched
    return '条件满足但当前未生效' if active_page_index.nil?

    '条件满足但被后页覆盖'
  end

  def self.event_page_condition_lines(map_id, event, page)
    condition = page.condition
    lines = []
    if condition.switch1_valid
      id = condition.switch1_id
      lines << format('开关 %s：需要 ON，当前 %s', switch_text(id), on_off($game_switches[id]))
    end
    if condition.switch2_valid
      id = condition.switch2_id
      lines << format('开关 %s：需要 ON，当前 %s', switch_text(id), on_off($game_switches[id]))
    end
    if condition.variable_valid
      id = condition.variable_id
      lines << format('变量 %s：需要 >= %d，当前 %s', variable_text(id),
                      condition.variable_value, $game_variables[id].inspect)
    end
    if condition.self_switch_valid
      key = [map_id, event.id, condition.self_switch_ch]
      lines << format('独立开关 %s：需要 ON，当前 %s', condition.self_switch_ch,
                      on_off($game_self_switches[key]))
    end
    if condition.item_valid
      item = $data_items[condition.item_id]
      name = item ? item.name.to_s : '(不存在)'
      count = item ? $game_party.item_number(item) : 0
      lines << format('物品 %04d「%s」：需要持有，当前 %d', condition.item_id, name, count)
    end
    if condition.actor_valid
      actor = $game_actors[condition.actor_id]
      name = actor ? actor.name.to_s : '(不存在)'
      joined = $game_party.members.any? { |member| member.id == condition.actor_id }
      lines << format('角色 %04d「%s」：需要在队伍，当前 %s', condition.actor_id, name,
                      joined ? '是' : '否')
    end
    lines.empty? ? ['（无事件页出现条件）'] : lines
  end

  def self.variable_operation_name(operation)
    ['代入', '加', '减', '乘', '除', '取余'][operation] || '操作'
  end

  def self.variable_operand_text(params)
    case params[3]
    when 0
      params[4].inspect
    when 1
      '变量 ' + variable_text(params[4]) + '，当前 ' + $game_variables[params[4]].inspect
    when 2
      format('随机 %s～%s', params[4].inspect, params[5].inspect)
    when 3
      '游戏数据'
    when 4
      '脚本：' + params[4].to_s.delete(0.chr)[0, 100]
    else
      '未知操作数'
    end
  end

  def self.variable_condition_operator(code)
    ['==', '>=', '<=', '>', '<', '!='][code] || '?'
  end

  def self.event_command_reference_lines(map_id, event, page)
    lines = []
    page.list.to_a.each do |command|
      params = command.parameters
      case command.code
      when 111
        case params[0]
        when 0
          id = params[1]
          expected = params[2] == 0 ? 'ON' : 'OFF'
          lines << format('条件分歧：开关 %s == %s，当前 %s', switch_text(id), expected,
                          on_off($game_switches[id]))
        when 1
          id = params[1]
          right = params[2] == 0 ? params[3].inspect : '变量 ' + variable_text(params[3])
          lines << format('条件分歧：变量 %s %s %s，当前 %s', variable_text(id),
                          variable_condition_operator(params[4]), right, $game_variables[id].inspect)
        when 2
          key = [map_id, event.id, params[1]]
          expected = params[2] == 0 ? 'ON' : 'OFF'
          lines << format('条件分歧：独立开关 %s == %s，当前 %s', params[1], expected,
                          on_off($game_self_switches[key]))
        when 12
          script = params[1].to_s.delete(0.chr)
          lines << '脚本条件：' + script[0, 120]
        end
      when 117
        common_event = $data_common_events[params[0]]
        name = common_event ? common_event.name.to_s : '(不存在)'
        lines << format('调用公共事件 %04d「%s」', params[0], name)
      when 121
        range = params[0] == params[1] ? switch_text(params[0]) :
          format('%04d～%04d', params[0], params[1])
        lines << format('开关操作：%s -> %s', range, params[2] == 0 ? 'ON' : 'OFF')
      when 122
        range = params[0] == params[1] ? variable_text(params[0]) :
          format('%04d～%04d', params[0], params[1])
        lines << format('变量操作：%s %s %s', range, variable_operation_name(params[2]),
                        variable_operand_text(params))
      when 123
        key = [map_id, event.id, params[0]]
        lines << format('独立开关操作：%s -> %s，当前 %s', params[0],
                        params[1] == 0 ? 'ON' : 'OFF', on_off($game_self_switches[key]))
      when 355, 655
        script = params[0].to_s.delete(0.chr)
        if script.include?('$game_switches') || script.include?('$game_variables') ||
           script.include?('$game_self_switches')
          lines << '相关脚本：' + script[0, 120]
        end
      end
    end
    lines.empty? ? ['（未发现直接引用的开关、变量、独立开关或公共事件）'] : lines
  end

  def self.event_page_detail_lines(map_id, event, page_index)
    page = event.pages[page_index]
    return ['事件页不存在。'] unless page

    lines = [format('地图 %04d「%s」', map_id, map_name(map_id)),
             format('事件 %04d「%s」 坐标 X=%d Y=%d', event.id,
                    event_display_name(event), event.x, event.y),
             format('事件页 %d/%d', page_index + 1, event.pages.size), '',
             '【事件页出现条件】']
    lines.concat(event_page_condition_lines(map_id, event, page))
    lines << ''
    lines << '【事件内容中的引用与操作】'
    lines.concat(event_command_reference_lines(map_id, event, page))
    lines
  end

  def self.lose_event_base_enemy_id(enemy)
    base_enemy = enemy.respond_to?(:base_enemy) ? enemy.base_enemy : enemy
    base_enemy ? base_enemy.id : enemy.id
  end

  def self.setup_lose_event(enemy)
    return false unless lose_event_supported?(enemy)

    enemy_id = enemy.id
    base_enemy_id = lose_event_base_enemy_id(enemy)
    library = NWConst::Library
    images = if library.const_defined?(:MEMORY_BG_IMAGE)
               library.const_get(:MEMORY_BG_IMAGE)
             else
               {}
             end
    default_image = if library.const_defined?(:DEFAULT_MEMORY_BG_IMAGE)
                      library.const_get(:DEFAULT_MEMORY_BG_IMAGE)
                    elsif library.const_defined?(:H_SCENE_DEFAULT_MEMORY_BG_IMAGE)
                      library.const_get(:H_SCENE_DEFAULT_MEMORY_BG_IMAGE)
                    else
                      ''
                    end
    background = images[enemy_id] || images[base_enemy_id]
    if background
      $game_novel.bg_data = background
    elsif !default_image.to_s.empty?
      $game_novel.bg_data = { :pic => default_image }
    else
      $game_novel.bg_data = nil
    end
    if $game_temp.respond_to?(:lib_enemy_index=)
      $game_temp.lib_enemy_index = 0
    end
    $game_novel.setup(enemy.lose_event_id)
    true
  end

  def self.setup_reflection_meeting(enemy)
    return false unless setup_lose_event(enemy)
    return false unless $game_novel && $game_novel.interpreter
    return false unless $game_novel.interpreter.respond_to?(:goto_reflection_meeting)

    return false unless $game_novel.interpreter.goto_reflection_meeting

    true
  end

  def self.start_lose_event_preview
    return unless $game_temp

    $game_temp.instance_variable_set(:@research_mod_lose_event_preview, true)
  end

  def self.lose_event_preview_playing?
    return false unless $game_temp

    $game_temp.instance_variable_get(:@research_mod_lose_event_preview) == true
  end

  def self.finish_lose_event_preview
    return unless $game_temp

    $game_temp.instance_variable_set(:@research_mod_lose_event_preview, false)
  end

  def self.enable_party_followers
    return unless $game_player && $game_player.respond_to?(:followers)

    followers = $game_player.followers
    return unless followers

    followers.visible = true
    $game_player.refresh
  end

  def self.troop_valid_members(troop)
    return [] unless troop && troop.respond_to?(:members)

    troop.members.select do |member|
      member && $data_enemies[member.enemy_id]
    end
  end

  def self.troop_member_summary(troop, maximum_length = 100)
    counts = {}
    troop_valid_members(troop).each do |member|
      enemy = $data_enemies[member.enemy_id]
      name = enemy.name.empty? ? format('[Enemy %d]', enemy.id) : enemy.name
      key = [enemy.id, name]
      counts[key] = counts.fetch(key, 0) + 1
    end
    summary = counts.map do |key, count|
      text = format('%d %s', key[0], key[1])
      count > 1 ? text + format(' x%d', count) : text
    end.join(', ')
    return summary if summary.size <= maximum_length

    summary[0, maximum_length - 3] + '...'
  end

  def self.troop_display_name(troop)
    name = troop.name.to_s
    members = troop_member_summary(troop)
    return members if name.empty?
    return name if members.empty?

    name + ' - ' + members
  end

  def self.troops_for_enemy(enemy_id)
    troops = $data_troops.compact.select do |troop|
      troop_valid_members(troop).any? { |member| member.enemy_id == enemy_id }
    end
    troops.sort_by do |troop|
      [troop_valid_members(troop).size == 1 ? 0 : 1, troop.id]
    end
  end

  def self.queue_battle(request)
    @pending_battle = request
  end

  def self.pending_battle?
    !@pending_battle.nil?
  end

  def self.setup_battle_request(request)
    return false unless request

    troop_id = if request[:temporary_enemy_id]
                 install_temporary_troop(request[:temporary_enemy_id])
               else
                 request[:troop_id]
               end
    unless troop_id && valid_battle_entry?(:troop, $data_troops[troop_id])
      cleanup_temporary_troop
      return false
    end

    BattleManager.setup(troop_id, true, true)
    BattleManager.on_encounter if request[:encounter]
    true
  end

  def self.start_pending_battle
    request = @pending_battle
    @pending_battle = nil
    setup_battle_request(request)
  end

  def self.install_temporary_troop(enemy_id)
    enemy = $data_enemies[enemy_id]
    return nil unless enemy && !enemy.name.empty?

    cleanup_temporary_troop
    troop = RPG::Troop.new
    troop_id = $data_troops.size
    troop.id = troop_id
    troop.name = format('ResearchMod Enemy %d', enemy.id)
    troop.pages.clear
    member = RPG::Troop::Member.new
    member.enemy_id = enemy_id
    template = temporary_troop_member_template(enemy_id)
    member.x = template ? template.x : Graphics.width / 2
    member.y = template ? template.y : Graphics.height / 2
    member.hidden = false
    troop.members << member
    $data_troops[troop_id] = troop
    @temporary_troop_id = troop_id
    @temporary_troop = troop
    troop_id
  end

  def self.temporary_troop_member_template(enemy_id)
    $data_troops.compact.each do |troop|
      member = troop_valid_members(troop).find { |entry| entry.enemy_id == enemy_id }
      return member if member
    end
    nil
  end

  def self.cleanup_temporary_troop
    return unless @temporary_troop_id

    if $data_troops[@temporary_troop_id].equal?(@temporary_troop)
      if @temporary_troop_id == $data_troops.size - 1
        $data_troops.pop
      else
        $data_troops[@temporary_troop_id] = nil
      end
    end
    @temporary_troop_id = nil
    @temporary_troop = nil
  end

  def self.learning_skills
    skill_ids = $data_skills.compact.map(&:learning_skill).compact.uniq
    skill_ids.map { |skill_id| $data_skills[skill_id] }.compact.sort_by do |skill|
      [skill.id, skill.name]
    end
  end

  def self.learning_skill_available?(actor, skill)
    actor.skill_learnable?(skill) && !actor.skill_learn?(skill)
  end

  def self.learn_learning_skill(actor, skill_id)
    skill = $data_skills[skill_id]
    return false unless skill && learning_skills.any? { |entry| entry.id == skill_id }
    return false unless learning_skill_available?(actor, skill)

    snapshot(actor) unless snapshot?(actor)
    actor.learn_skill(skill_id)
    actor.refresh
    actor.skill_learn?(skill)
  end

  def self.learn_all_learning_skills(actor)
    skills = learning_skills.select do |skill|
      learning_skill_available?(actor, skill)
    end
    return 0 if skills.empty?

    snapshot(actor) unless snapshot?(actor)
    skills.each { |skill| actor.learn_skill(skill.id) }
    actor.refresh
    skills.count { |skill| actor.skill_learn?(skill) }
  end

  def self.steal_always_success?
    return false unless $game_system

    $game_system.instance_variable_get(STEAL_ALWAYS_SUCCESS_KEY) == true
  end

  def self.toggle_steal_always_success
    enabled = !steal_always_success?
    $game_system.instance_variable_set(STEAL_ALWAYS_SUCCESS_KEY, enabled)
    enabled
  end

  def self.steal_item?(item)
    return false unless item && item.respond_to?(:effects)

    item.effects.any? do |effect|
      effect.code == NWUsableEffect::EFFECT_STEAL ||
        effect.code == NWUsableEffect::EFFECT_FORCE_STEAL
    end
  end

  def self.milk_always_success?
    return false unless $game_system

    $game_system.instance_variable_get(MILK_ALWAYS_SUCCESS_KEY) == true
  end

  def self.toggle_milk_always_success
    enabled = !milk_always_success?
    $game_system.instance_variable_set(MILK_ALWAYS_SUCCESS_KEY, enabled)
    enabled
  end

  def self.drop_always_success?
    return false unless $game_system

    $game_system.instance_variable_get(DROP_ALWAYS_SUCCESS_KEY) == true
  end

  def self.toggle_drop_always_success
    enabled = !drop_always_success?
    $game_system.instance_variable_set(DROP_ALWAYS_SUCCESS_KEY, enabled)
    enabled
  end

  def self.accumulated_damage_actor_stats
    ACCUMULATED_DAMAGE_ACTOR_STATS
  end

  def self.accumulated_damage_stat(key)
    return ACCUMULATED_DAMAGE_GLOBAL_STAT if key == :battle_count

    accumulated_damage_actor_stats.find { |entry| entry[:key] == key }
  end

  def self.accumulated_damage_maximum(key)
    key == :love ? LOVE_MAX : ACCUMULATED_DAMAGE_STAT_MAX
  end

  def self.accumulated_damage_valid_actors
    actor_encyclopedia_entries.map { |actor| $game_actors[actor.id] }.compact
  end

  def self.actor_stat_store
    store = $game_library.instance_variable_get(:@actor_stat)
    unless store
      store = {}
      $game_library.instance_variable_set(:@actor_stat, store)
    end
    store
  end

  def self.actor_stat_key(actor)
    data_actor = actor.is_a?(Game_Actor) ? actor.actor : $data_actors[actor.to_i]
    return nil unless data_actor

    data_actor.original_persona_id
  end

  def self.accumulated_damage_value(scope, actor, key)
    return $game_system.battle_count.to_i if scope == :global
    return actor.love.to_i if key == :love && actor

    stat_key = actor_stat_key(actor)
    return 0 unless stat_key

    (actor_stat_store[stat_key] || {})[key].to_i
  end

  def self.set_accumulated_damage_value(scope, actor, key, value)
    value = [[value.to_i, ACCUMULATED_DAMAGE_STAT_MAX].min, 0].max
    if scope == :global
      $game_system.battle_count = value
      return true
    end
    if key == :love
      actor.love = [[value, LOVE_MAX].min, 0].max
      return true
    end

    stat_key = actor_stat_key(actor)
    return false unless stat_key

    actor_stat_store[stat_key] ||= {}
    actor_stat_store[stat_key][key] = value
    true
  end

  def self.skill_has_type?(skill, type_id)
    return false unless skill

    if skill.respond_to?(:stypes)
      Array(skill.stypes).include?(type_id)
    else
      skill.respond_to?(:stype_id) && skill.stype_id == type_id
    end
  end

  def self.cooking_no_cost?
    return false unless $game_system

    $game_system.instance_variable_get(COOKING_NO_COST_KEY) == true
  end

  def self.cooking_menu_no_item_cost?
    @cooking_menu_no_item_cost == true
  end

  def self.cooking_menu_no_item_cost=(enabled)
    @cooking_menu_no_item_cost = enabled == true
  end

  def self.toggle_cooking_no_cost
    enabled = !cooking_no_cost?
    $game_system.instance_variable_set(COOKING_NO_COST_KEY, enabled)
    enabled
  end

  def self.alchemy_no_cost?
    return false unless $game_system

    $game_system.instance_variable_get(ALCHEMY_NO_COST_KEY) == true
  end

  def self.toggle_alchemy_no_cost
    enabled = !alchemy_no_cost?
    $game_system.instance_variable_set(ALCHEMY_NO_COST_KEY, enabled)
    enabled
  end

  def self.magic_book_no_cost?
    return false unless $game_system

    $game_system.instance_variable_get(MAGIC_BOOK_NO_COST_KEY) == true
  end

  def self.toggle_magic_book_no_cost
    enabled = !magic_book_no_cost?
    $game_system.instance_variable_set(MAGIC_BOOK_NO_COST_KEY, enabled)
    enabled
  end

  def self.merchant_no_cost?
    return false unless $game_system

    $game_system.instance_variable_get(MERCHANT_NO_COST_KEY) == true
  end

  def self.toggle_merchant_no_cost
    enabled = !merchant_no_cost?
    $game_system.instance_variable_set(MERCHANT_NO_COST_KEY, enabled)
    enabled
  end

  def self.ex_item_no_cost?
    return false unless $game_system

    $game_system.instance_variable_get(EX_ITEM_NO_COST_KEY) == true
  end

  def self.toggle_ex_item_no_cost
    enabled = !ex_item_no_cost?
    $game_system.instance_variable_set(EX_ITEM_NO_COST_KEY, enabled)
    enabled
  end

  def self.no_cost_skill?(skill)
    return :gold if merchant_no_cost? && skill_has_type?(skill, MERCHANT_SKILL_TYPE_ID)
    cooking_free = cooking_no_cost? || cooking_menu_no_item_cost?
    return :item if cooking_free && skill_has_type?(skill, COOKING_SKILL_TYPE_ID)
    return :item if alchemy_no_cost? && skill_has_type?(skill, ALCHEMY_SKILL_TYPE_ID)
    return :item if magic_book_no_cost? && skill_has_type?(skill, MAGIC_BOOK_SKILL_TYPE_ID)
    return :item if ex_item_no_cost? && skill_has_type?(skill, EX_ITEM_SKILL_TYPE_ID)

    nil
  end

  def self.temptation_ignore_hp?
    return false unless $game_system

    $game_system.instance_variable_get(TEMPTATION_IGNORE_HP_KEY) == true
  end

  def self.toggle_temptation_ignore_hp
    enabled = !temptation_ignore_hp?
    $game_system.instance_variable_set(TEMPTATION_IGNORE_HP_KEY, enabled)
    enabled
  end

  def self.temptation_disabled?
    return false unless $game_system

    $game_system.instance_variable_get(TEMPTATION_DISABLED_KEY) == true
  end

  def self.toggle_temptation_disabled
    enabled = !temptation_disabled?
    $game_system.instance_variable_set(TEMPTATION_DISABLED_KEY, enabled)
    enabled
  end

  def self.lose_event_skip?
    return false unless $game_system

    $game_system.instance_variable_get(LOSE_EVENT_SKIP_KEY) == true
  end

  def self.toggle_lose_event_skip
    enabled = !lose_event_skip?
    $game_system.instance_variable_set(LOSE_EVENT_SKIP_KEY, enabled)
    enabled
  end

  def self.force_lose_event_view?
    @force_lose_event_view == true
  end

  def self.force_lose_event_view=(enabled)
    @force_lose_event_view = enabled == true
  end

  def self.sure_hit_kill?
    return false unless $game_system

    $game_system.instance_variable_get(SURE_HIT_KILL_KEY) == true
  end

  def self.toggle_sure_hit_kill
    enabled = !sure_hit_kill?
    $game_system.instance_variable_set(SURE_HIT_KILL_KEY, enabled)
    enabled
  end

  def self.remove_damage_variance?
    return false unless $game_system

    $game_system.instance_variable_get(REMOVE_DAMAGE_VARIANCE_KEY) == true
  end

  def self.toggle_remove_damage_variance
    enabled = !remove_damage_variance?
    $game_system.instance_variable_set(REMOVE_DAMAGE_VARIANCE_KEY, enabled)
    enabled
  end

  def self.through_mode?
    return false unless $game_system

    $game_system.instance_variable_get(THROUGH_MODE_KEY) == true
  end

  def self.apply_through_mode
    return unless $game_player

    player_through = through_mode?
    player_through ||= $game_player.in_airship? if $game_player.respond_to?(:in_airship?)
    $game_player.instance_variable_set(:@through, player_through)
  end

  def self.toggle_through_mode
    enabled = !through_mode?
    $game_system.instance_variable_set(THROUGH_MODE_KEY, enabled)
    apply_through_mode
    enabled
  end

  def self.no_random_encounter?
    return false unless $game_system

    $game_system.instance_variable_get(NO_RANDOM_ENCOUNTER_KEY) == true
  end

  def self.toggle_no_random_encounter
    enabled = !no_random_encounter?
    $game_system.instance_variable_set(NO_RANDOM_ENCOUNTER_KEY, enabled)
    $game_player.make_encounter_count if $game_player
    enabled
  end

  def self.original_encounter_disabled?
    return false unless $game_system

    $game_system.encounter_disabled == true
  end

  def self.toggle_original_encounter_disabled
    return false unless $game_system

    enabled = !original_encounter_disabled?
    $game_system.encounter_disabled = enabled
    $game_player.make_encounter_count if $game_player
    enabled
  end

  def self.original_formation_disabled?
    return false unless $game_system

    $game_system.formation_disabled == true
  end

  def self.toggle_original_formation_disabled
    return false unless $game_system

    enabled = !original_formation_disabled?
    $game_system.formation_disabled = enabled
    enabled
  end
  def self.enemy_stat_multiplier
    return ENEMY_STAT_MULTIPLIER_DEFAULT unless $game_system

    value = $game_system.instance_variable_get(ENEMY_STAT_MULTIPLIER_KEY)
    value = ENEMY_STAT_MULTIPLIER_DEFAULT if value.nil?
    [[value.to_i, ENEMY_STAT_MULTIPLIER_MAX].min, 0].max
  end

  def self.experimental_features_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(EXPERIMENTAL_FEATURES_ENABLED_KEY) == true
  end

  def self.toggle_experimental_features
    snapshots = enemy_resource_snapshots
    enabled = !experimental_features_enabled?
    $game_system.instance_variable_set(EXPERIMENTAL_FEATURES_ENABLED_KEY, enabled)
    refresh_enemy_resources(snapshots)
    enabled
  end

  def self.enemy_stat_multiplier_effective
    return 1 unless experimental_features_enabled?

    value = enemy_stat_multiplier
    value <= 1 ? 1 : value
  end

  def self.enemy_stat_multiplier_label
    value = enemy_stat_multiplier
    return '0（不调整）' if value == 0

    format('%d倍', value)
  end

  def self.set_enemy_stat_multiplier(value)
    snapshots = enemy_resource_snapshots
    value = [[value.to_i, ENEMY_STAT_MULTIPLIER_MAX].min, 0].max
    $game_system.instance_variable_set(ENEMY_STAT_MULTIPLIER_KEY, value)
    refresh_enemy_resources(snapshots)
    value
  end

  def self.enemy_resource_snapshots
    return [] unless $game_troop

    $game_troop.members.compact.map do |enemy|
      [enemy, enemy.hp, enemy.mhp, enemy.mp, enemy.mmp]
    end
  end

  def self.refresh_enemy_resources(snapshots)
    snapshots.each do |enemy, old_hp, old_mhp, old_mp, old_mmp|
      enemy.refresh
      new_hp = old_mhp.to_i > 0 ? old_hp.to_i * enemy.mhp / old_mhp.to_i : old_hp
      new_mp = old_mmp.to_i > 0 ? old_mp.to_i * enemy.mmp / old_mmp.to_i : old_mp
      enemy.hp = [[new_hp, enemy.mhp].min, 0].max
      enemy.mp = [[new_mp, enemy.mmp].min, 0].max
    end
  end

  def self.apply_enemy_stat_multiplier(value)
    multiplier = enemy_stat_multiplier_effective
    return value if multiplier == 1

    (value * multiplier).to_i
  end

  def self.prevent_event_luca_front?
    return false unless $game_system

    $game_system.instance_variable_get(PREVENT_EVENT_LUCA_FRONT_KEY) == true
  end

  def self.toggle_prevent_event_luca_front
    enabled = !prevent_event_luca_front?
    $game_system.instance_variable_set(PREVENT_EVENT_LUCA_FRONT_KEY, enabled)
    enabled
  end

  def self.current_party_order
    return [] unless $game_party && $game_party.respond_to?(:actors)

    $game_party.actors.to_a
  end

  def self.restore_party_order(order)
    return unless prevent_event_luca_front?
    return unless order && !order.empty? && $game_party

    current = current_party_order
    restored = order.select { |actor_id| current.include?(actor_id) }
    restored.concat(current.reject { |actor_id| restored.include?(actor_id) })
    return if restored == current

    actors = $game_party.actors
    actors.respond_to?(:set) ? actors.set(restored) : $game_party.set_actors(restored)
    $game_player.refresh if $game_player
    $game_map.need_refresh = true if $game_map
  end

  def self.battle_enemy_status?
    return false unless $game_system

    $game_system.instance_variable_get(BATTLE_ENEMY_STATUS_KEY) == true
  end

  def self.toggle_battle_enemy_status
    enabled = !battle_enemy_status?
    $game_system.instance_variable_set(BATTLE_ENEMY_STATUS_KEY, enabled)
    enabled
  end

  def self.battle_party_status?
    return false unless $game_system

    $game_system.instance_variable_get(BATTLE_PARTY_STATUS_KEY) == true
  end

  def self.toggle_battle_party_status
    enabled = !battle_party_status?
    $game_system.instance_variable_set(BATTLE_PARTY_STATUS_KEY, enabled)
    enabled
  end

  def self.battle_cutin_view?
    return false unless $game_system

    $game_system.instance_variable_get(BATTLE_CUTIN_VIEW_KEY) == true
  end

  def self.toggle_battle_cutin_view
    enabled = !battle_cutin_view?
    $game_system.instance_variable_set(BATTLE_CUTIN_VIEW_KEY, enabled)
    enabled
  end

  def self.battle_record_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(BATTLE_RECORD_KEY) == true
  end

  def self.toggle_battle_record
    enabled = !battle_record_enabled?
    $game_system.instance_variable_set(BATTLE_RECORD_KEY, enabled)
    clear_battle_records unless enabled
    enabled
  end

  def self.party_edit_actor_id?
    return false unless $game_system

    $game_system.instance_variable_get(PARTY_EDIT_ACTOR_ID_KEY) == true
  end

  def self.toggle_party_edit_actor_id
    enabled = !party_edit_actor_id?
    $game_system.instance_variable_set(PARTY_EDIT_ACTOR_ID_KEY, enabled)
    enabled
  end

  def self.battle_editor_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(BATTLE_EDITOR_KEY) == true
  end

  def self.toggle_battle_editor
    enabled = !battle_editor_enabled?
    $game_system.instance_variable_set(BATTLE_EDITOR_KEY, enabled)
    enabled
  end

  def self.graphics_override_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(GRAPHICS_OVERRIDE_ENABLED_KEY) == true
  end

  def self.graphics_override_path(path)
    return nil unless graphics_override_enabled?

    value = path.to_s.tr('\\', '/')
    @graphics_override_path_cache ||= {}
    return @graphics_override_path_cache[value] if
      @graphics_override_path_cache.key?(value)

    match = value.match(/\AGraphics\/?(.+)\z/i)
    unless match
      @graphics_override_path_cache[value] = nil
      return nil
    end

    relative = match[1]
    base = File.join(GRAPHICS_OVERRIDE_DIRECTORY, relative)
    if File.file?(base)
      @graphics_override_path_cache[value] = base
      return base
    end

    ['.png', '.jpg', '.jpeg'].each do |extension|
      candidate = base + extension
      next unless File.file?(candidate)

      @graphics_override_path_cache[value] = candidate
      return candidate
    end
    @graphics_override_path_cache[value] = nil
    nil
  rescue
    nil
  end

  def self.clear_graphics_cache
    Cache.clear if defined?(Cache) && Cache.respond_to?(:clear)
  rescue
  end

  def self.toggle_graphics_override
    enabled = !graphics_override_enabled?
    $game_system.instance_variable_set(GRAPHICS_OVERRIDE_ENABLED_KEY, enabled)
    @graphics_override_path_cache = {}
    clear_graphics_cache
    enabled
  end

  def self.force_victory_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(FORCE_VICTORY_KEY) == true
  end

  def self.toggle_force_victory
    enabled = !force_victory_enabled?
    $game_system.instance_variable_set(FORCE_VICTORY_KEY, enabled)
    enabled
  end

  def self.dead_battle_exp_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(DEAD_BATTLE_EXP_KEY) == true
  end

  def self.toggle_dead_battle_exp
    enabled = !dead_battle_exp_enabled?
    $game_system.instance_variable_set(DEAD_BATTLE_EXP_KEY, enabled)
    enabled
  end

  def self.dead_battle_exp_actor?(actor)
    return false unless dead_battle_exp_enabled? && actor && $game_party
    return false unless actor.respond_to?(:death_state?) && actor.death_state?

    Array($game_party.all_members).include?(actor)
  rescue
    false
  end

  def self.without_death_state(actor)
    states = actor.instance_variable_get(:@states)
    death_id = actor.respond_to?(:death_state_id) ? actor.death_state_id : nil
    return yield unless states.is_a?(Array) && death_id

    snapshot = states.dup
    states.delete(death_id)
    yield
  ensure
    states.replace(snapshot) if snapshot && states.is_a?(Array)
  end

  def self.priority_encounter_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(PRIORITY_ENCOUNTER_ENABLED_KEY) == true
  end

  def self.toggle_priority_encounter
    enabled = !priority_encounter_enabled?
    $game_system.instance_variable_set(
      PRIORITY_ENCOUNTER_ENABLED_KEY, enabled
    )
    enabled
  end

  def self.priority_encounter_mode
    return :undiscovered unless $game_system

    mode = $game_system.instance_variable_get(PRIORITY_ENCOUNTER_MODE_KEY)
    PRIORITY_ENCOUNTER_MODES.include?(mode) ? mode : :undiscovered
  end

  def self.priority_encounter_mode_name(mode = priority_encounter_mode)
    names = {
      :undiscovered => '未遭遇',
      :unrecruited => '未入队',
      :boss => 'Boss',
      :original => '原版随机'
    }
    names[mode] || names[:undiscovered]
  end

  def self.set_priority_encounter_mode(mode)
    value = PRIORITY_ENCOUNTER_MODES.include?(mode) ? mode : :undiscovered
    return value unless $game_system

    $game_system.instance_variable_set(PRIORITY_ENCOUNTER_MODE_KEY, value)
    value
  end

  def self.priority_encounter_boss_new_only?
    auto_victory_boolean_setting(
      PRIORITY_ENCOUNTER_BOSS_NEW_ONLY_KEY, true
    )
  end

  def self.toggle_priority_encounter_boss_new_only
    set_auto_victory_setting(
      PRIORITY_ENCOUNTER_BOSS_NEW_ONLY_KEY,
      !priority_encounter_boss_new_only?
    )
  end

  def self.priority_encounter_target_id
    return 0 unless $game_system

    value = $game_system.instance_variable_get(PRIORITY_ENCOUNTER_TARGET_KEY)
    [value.to_i, 0].max
  end

  def self.set_priority_encounter_target(enemy_id)
    return 0 unless $game_system

    value = [enemy_id.to_i, 0].max
    $game_system.instance_variable_set(PRIORITY_ENCOUNTER_TARGET_KEY, value)
    value
  end

  def self.priority_encounter_target_text
    enemy_id = priority_encounter_target_id
    return '无' if enemy_id <= 0

    enemy = $data_enemies[enemy_id] if defined?($data_enemies)
    name = enemy ? enemy.name.to_s : '未知敌人'
    name = battle_dialogue_display_text(name, 16, 40)
    format('E%d %s', enemy_id, name)
  end

  def self.priority_encounter_enemy_join_text(enemy_id)
    enemy = $data_enemies[enemy_id.to_i] if defined?($data_enemies)
    actor_id = enemy_follower_actor_id(enemy)
    return '不可入队' unless actor_id && actor_id > 0

    enemy_follower_status_text(actor_id)
  rescue
    '无法判断'
  end

  def self.priority_encounter_first_member_text(troop)
    return '无有效成员' unless troop && troop.respond_to?(:members)

    member = troop.members.to_a.find do |entry|
      entry && entry.enemy_id.to_i > 0 && $data_enemies[entry.enemy_id.to_i]
    end
    return '无有效成员' unless member

    enemy_id = member.enemy_id.to_i
    enemy = $data_enemies[enemy_id]
    name = battle_dialogue_display_text(enemy.name.to_s, 10, 24)
    status = priority_encounter_enemy_join_text(enemy_id)
    format('E%d %s：%s', enemy_id, name, status)
  rescue
    '无法判断'
  end

  def self.priority_encounter_last_result
    return '尚无选择记录' unless $game_system

    text = $game_system.instance_variable_get(
      PRIORITY_ENCOUNTER_LAST_KEY
    ).to_s
    text.empty? ? '尚无选择记录' : text
  end

  def self.set_priority_encounter_last_result(text)
    return unless $game_system

    value = battle_dialogue_display_text(text.to_s, 32, 80)
    $game_system.instance_variable_set(PRIORITY_ENCOUNTER_LAST_KEY, value)
  end

  def self.priority_encounter_entries
    return [] unless $game_map && $game_player
    return [] unless $game_map.respond_to?(:encounter_list)

    result = []
    $game_map.encounter_list.to_a.each do |encounter|
      next unless encounter
      next unless priority_encounter_entry_allowed?(encounter)

      troop = $data_troops[encounter.troop_id.to_i]
      next unless troop && !priority_encounter_enemy_ids(troop).empty?
      next unless encounter.weight.to_i > 0

      result << { :encounter => encounter, :troop => troop }
    end
    result
  rescue
    []
  end

  def self.priority_encounter_entry_allowed?(encounter)
    return false unless $game_player.respond_to?(:encounter_ok?)

    $game_player.encounter_ok?(encounter)
  rescue
    false
  end

  def self.priority_encounter_enemy_ids(troop)
    return [] unless troop && troop.respond_to?(:members)

    troop.members.to_a.map { |member| member.enemy_id.to_i }.select do |id|
      id > 0 && $data_enemies[id]
    end.uniq
  rescue
    []
  end

  def self.priority_encounter_enemy_discovered?(enemy_id)
    return false unless $game_library && $game_library.respond_to?(:enemy)

    library = $game_library.enemy
    library.respond_to?(:discovery?) && library.discovery?(enemy_id.to_i)
  rescue
    false
  end

  def self.priority_encounter_enemy_unrecruited?(enemy_id)
    enemy = $data_enemies[enemy_id.to_i]
    actor_id = enemy_follower_actor_id(enemy)
    actor_id && actor_id > 0 && !auto_victory_actor_recruited?(actor_id)
  rescue
    false
  end

  def self.priority_encounter_enemy_boss?(enemy_id)
    enemy = $data_enemies[enemy_id.to_i]
    enemy && auto_victory_boss_enemy?(enemy)
  rescue
    false
  end

  def self.priority_encounter_entry_match?(entry, mode)
    ids = priority_encounter_enemy_ids(entry[:troop])
    case mode
    when :undiscovered
      ids.any? { |id| !priority_encounter_enemy_discovered?(id) }
    when :unrecruited
      ids.any? { |id| priority_encounter_enemy_unrecruited?(id) }
    when :boss
      ids.any? do |id|
        next false unless priority_encounter_enemy_boss?(id)

        !priority_encounter_boss_new_only? ||
          !priority_encounter_enemy_discovered?(id)
      end
    else
      false
    end
  end

  def self.priority_encounter_weighted_troop_id(entries)
    valid = entries.select do |entry|
      entry[:encounter].weight.to_i > 0
    end
    total = valid.inject(0) do |sum, entry|
      sum + entry[:encounter].weight.to_i
    end
    return nil if total <= 0

    value = rand(total)
    valid.each do |entry|
      value -= entry[:encounter].weight.to_i
      return entry[:troop].id.to_i if value < 0
    end
    nil
  end

  def self.priority_encounter_pick
    entries = priority_encounter_entries
    return [nil, nil] if entries.empty?

    target_id = priority_encounter_target_id
    if target_id > 0
      matches = entries.select do |entry|
        priority_encounter_enemy_ids(entry[:troop]).include?(target_id)
      end
      troop_id = priority_encounter_weighted_troop_id(matches)
      return [troop_id, format('手动E%d', target_id)] if troop_id
    end

    mode = priority_encounter_mode
    unless mode == :original
      matches = entries.select do |entry|
        priority_encounter_entry_match?(entry, mode)
      end
      troop_id = priority_encounter_weighted_troop_id(matches)
      return [troop_id, priority_encounter_mode_name(mode)] if troop_id
    end
    [nil, nil]
  rescue
    [nil, nil]
  end

  def self.priority_encounter_candidates
    groups = {}
    priority_encounter_entries.each do |entry|
      troop = entry[:troop]
      data = groups[troop.id] ||= {
        :troop => troop, :weight => 0, :enemy_ids => []
      }
      data[:weight] += entry[:encounter].weight.to_i
      data[:enemy_ids] |= priority_encounter_enemy_ids(troop)
    end
    groups.values.sort_by { |data| data[:troop].id.to_i }
  end

  def self.priority_encounter_enemy_candidates
    ids = priority_encounter_candidates.inject([]) do |result, data|
      result | data[:enemy_ids]
    end
    ids.map { |id| $data_enemies[id] }.compact.sort_by(&:id)
  end

  def self.priority_encounter_candidate_flags(data)
    ids = data[:enemy_ids]
    flags = []
    if ids.any? { |id| !priority_encounter_enemy_discovered?(id) }
      flags << '未遭遇'
    end
    if ids.any? { |id| priority_encounter_enemy_unrecruited?(id) }
      flags << '未入队'
    end
    if ids.any? { |id| priority_encounter_enemy_boss?(id) }
      flags << 'Boss'
    end
    flags.empty? ? '普通' : flags.join('／')
  end

  def self.priority_encounter_troop_name(troop)
    return '[无名称敌群]' unless troop

    name = troop.name.to_s.gsub(/<BGM(?::|：)[^>]*>/i, '').strip
    name.empty? ? '[无名称敌群]' : name
  end

  def self.priority_encounter_rule_status(data)
    ids = data[:enemy_ids]
    undiscovered = ids.any? do |id|
      !priority_encounter_enemy_discovered?(id)
    end
    unrecruited = ids.any? do |id|
      priority_encounter_enemy_unrecruited?(id)
    end
    boss = ids.any? { |id| priority_encounter_enemy_boss?(id) }
    {
      :undiscovered => undiscovered,
      :unrecruited => unrecruited,
      :boss => boss
    }
  end

  def self.priority_encounter_current_rule_text(data)
    mode = priority_encounter_mode
    name = priority_encounter_mode_name(mode)
    return format('%s（不筛选）', name) if mode == :original

    matched = priority_encounter_entry_match?(data, mode)
    format('%s（%s）', name, matched ? '符合' : '不符合')
  end

  def self.priority_encounter_region_text
    return '当前位置不可用' unless $game_map && $game_player

    region = if $game_player.respond_to?(:encount_region)
               $game_player.encount_region
             else
               $game_player.region_id
             end
    format('地图%d／区块%d', $game_map.map_id.to_i, region.to_i)
  rescue
    '当前区块读取失败'
  end

  def self.auto_victory_enabled?
    return false unless $game_system

    $game_system.instance_variable_get(AUTO_VICTORY_ENABLED_KEY) == true
  end

  def self.toggle_auto_victory
    set_auto_victory_setting(
      AUTO_VICTORY_ENABLED_KEY, !auto_victory_enabled?
    )
  end

  def self.auto_victory_skip_boss?
    auto_victory_boolean_setting(AUTO_VICTORY_SKIP_BOSS_KEY, true)
  end

  def self.toggle_auto_victory_skip_boss
    set_auto_victory_setting(
      AUTO_VICTORY_SKIP_BOSS_KEY, !auto_victory_skip_boss?
    )
  end

  def self.auto_victory_skip_unrecruited?
    auto_victory_boolean_setting(
      AUTO_VICTORY_SKIP_UNRECRUITED_KEY, true
    )
  end

  def self.toggle_auto_victory_skip_unrecruited
    set_auto_victory_setting(
      AUTO_VICTORY_SKIP_UNRECRUITED_KEY,
      !auto_victory_skip_unrecruited?
    )
  end

  def self.auto_victory_random_only?
    auto_victory_boolean_setting(AUTO_VICTORY_RANDOM_ONLY_KEY, true)
  end

  def self.toggle_auto_victory_random_only
    set_auto_victory_setting(
      AUTO_VICTORY_RANDOM_ONLY_KEY, !auto_victory_random_only?
    )
  end

  def self.auto_victory_exp_rate
    auto_victory_rate(AUTO_VICTORY_EXP_RATE_KEY)
  end

  def self.auto_victory_class_exp_rate
    auto_victory_rate(AUTO_VICTORY_CLASS_EXP_RATE_KEY)
  end

  def self.set_auto_victory_exp_rate(value)
    set_auto_victory_rate(AUTO_VICTORY_EXP_RATE_KEY, value)
  end

  def self.set_auto_victory_class_exp_rate(value)
    set_auto_victory_rate(AUTO_VICTORY_CLASS_EXP_RATE_KEY, value)
  end

  def self.auto_victory_last_result
    return '尚无判定记录' unless $game_system

    text = $game_system.instance_variable_get(
      AUTO_VICTORY_LAST_RESULT_KEY
    ).to_s
    text.empty? ? '尚无判定记录' : text
  end

  def self.set_auto_victory_last_result(text)
    return unless $game_system

    $game_system.instance_variable_set(
      AUTO_VICTORY_LAST_RESULT_KEY, text.to_s
    )
  end

  def self.auto_victory_decision
    return [false, '跳过：总开关关闭'] unless auto_victory_enabled?
    return [false, '跳过：战斗测试'] if defined?($BTEST) && $BTEST
    if BattleManager.respond_to?(:memory_battle?) &&
       BattleManager.memory_battle?
      return [false, '跳过：回想战斗']
    end
    if BattleManager.respond_to?(:research_mod_custom_battle?) &&
       BattleManager.research_mod_custom_battle?
      return [false, '跳过：研究模拟战']
    end
    if $game_troop && $game_troop.respond_to?(:challenge_battle?) &&
       $game_troop.challenge_battle?
      return [false, '跳过：挑战战斗']
    end
    if auto_victory_random_only? &&
       (!BattleManager.respond_to?(:research_mod_random_encounter?) ||
        !BattleManager.research_mod_random_encounter?)
      return [false, '跳过：不是随机遇敌']
    end

    enemies = $game_troop ? $game_troop.members.compact : []
    return [false, '跳过：没有有效敌人'] if enemies.empty?

    if auto_victory_skip_boss?
      boss = enemies.find do |enemy|
        auto_victory_boss_enemy?(enemy)
      end
      return [false, auto_victory_enemy_reason('Boss', boss)] if boss
    end

    if auto_victory_skip_unrecruited?
      enemy = enemies.find do |member|
        actor_id = enemy_follower_actor_id(member)
        actor_id && actor_id > 0 && !auto_victory_actor_recruited?(actor_id)
      end
      if enemy
        return [false, auto_victory_enemy_reason('尚未入队', enemy)]
      end
    end

    [true, '已执行：符合自动胜利条件']
  rescue => error
    [false, format('跳过：判定异常 %s', error.class)]
  end

  def self.auto_victory_actor_recruited?(actor_id)
    return false unless $game_party

    id = actor_id.to_i
    party_ids = $game_party.respond_to?(:actors) ?
                  $game_party.actors.to_a.map(&:to_i) : []
    return true if party_ids.include?(id)

    reserve_ids = $game_party.respond_to?(:stand_actors) ?
                    $game_party.stand_actors.to_a.map(&:to_i) : []
    return true if reserve_ids.include?(id)

    $game_party.respond_to?(:follow?) && $game_party.follow?(id)
  rescue
    false
  end

  def self.auto_victory_boss_enemy?(enemy)
    return true if enemy_special_category_ids(enemy).include?(10)

    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    return false unless database_enemy &&
                        database_enemy.respond_to?(:base_enemy)

    base_enemy = database_enemy.base_enemy
    base_enemy && enemy_special_category_ids(base_enemy).include?(10)
  rescue
    false
  end

  def self.auto_victory_enemy_reason(reason, enemy)
    enemy_id = enemy.respond_to?(:enemy_id) ? enemy.enemy_id.to_i : 0
    name = enemy.respond_to?(:name) ? enemy.name.to_s : ''
    name = battle_dialogue_display_text(name, 18, 48)
    format('跳过：%s E%d %s', reason, enemy_id, name)
  end

  def self.begin_auto_victory_reward
    return unless $game_temp

    $game_temp.instance_variable_set(AUTO_VICTORY_REWARD_ACTIVE_KEY, true)
  end

  def self.end_auto_victory_reward
    return unless $game_temp

    $game_temp.instance_variable_set(AUTO_VICTORY_REWARD_ACTIVE_KEY, nil)
  end

  def self.auto_victory_reward_active?
    $game_temp && $game_temp.instance_variable_get(
      AUTO_VICTORY_REWARD_ACTIVE_KEY
    ) == true
  end

  def self.apply_auto_victory_reward_rate(value, rate)
    return value unless auto_victory_reward_active?

    value.to_i * rate.to_i / 100
  end

  def self.auto_victory_boolean_setting(key, default)
    return default unless $game_system
    return default unless $game_system.instance_variable_defined?(key)

    $game_system.instance_variable_get(key) == true
  end

  def self.set_auto_victory_setting(key, value)
    return false unless $game_system

    $game_system.instance_variable_set(key, !!value)
    !!value
  end

  def self.auto_victory_rate(key)
    return 100 unless $game_system

    value = $game_system.instance_variable_get(key)
    value = 100 if value.nil?
    [[value.to_i, AUTO_VICTORY_RATE_MAX].min, 0].max
  end

  def self.set_auto_victory_rate(key, value)
    return 100 unless $game_system

    rate = [[value.to_i, AUTO_VICTORY_RATE_MAX].min, 0].max
    $game_system.instance_variable_set(key, rate)
    rate
  end

  def self.temptation_immunity?
    return false unless $game_system

    $game_system.instance_variable_get(TEMPTATION_IMMUNITY_KEY) == true
  end

  def self.toggle_temptation_immunity
    enabled = !temptation_immunity?
    $game_system.instance_variable_set(TEMPTATION_IMMUNITY_KEY, enabled)
    clear_battle_temptation if enabled
    enabled
  end

  def self.battle_party_members
    return [] unless $game_party

    $game_party.battle_members.compact.select do |battler|
      battler.respond_to?(:exist?) && battler.exist? && battler.alive?
    end
  end

  def self.battle_enemy_members
    return [] unless $game_troop

    $game_troop.members.compact.select do |battler|
      battler.respond_to?(:exist?) && battler.exist? && battler.alive?
    end
  end

  def self.battle_all_members
    (battle_party_members + battle_enemy_members).uniq
  end

  def self.clear_battle_temptation
    battle_all_members.each do |battler|
      battler.remove_state(TEMPTATION_STATE_ID) if battler.state?(TEMPTATION_STATE_ID)
    end
  end

  def self.force_add_battle_state(battler, state_id)
    return false unless battler && battler.alive?
    return false unless $data_states[state_id]
    return false if state_id == TEMPTATION_STATE_ID && temptation_immunity?

    battler.add_new_state(state_id) unless battler.state?(state_id)
    battler.reset_state_counts(state_id)
    battler.refresh
    true
  end

  def self.force_remove_battle_state(battler, state_id)
    return false unless battler && battler.state?(state_id)

    battler.remove_state(state_id)
    true
  end

  def self.battle_records
    return [] unless defined?($game_temp) && $game_temp

    $game_temp.instance_variable_get(:@research_mod_battle_records) || []
  end

  def self.clear_battle_records
    return unless defined?($game_temp) && $game_temp

    $game_temp.instance_variable_set(:@research_mod_battle_records, [])
  end

  def self.append_battle_record(text)
    return unless battle_record_enabled?
    return unless defined?($game_temp) && $game_temp

    line = text.to_s.dup
    line.gsub!(/\\[A-Za-z]+(?:\[[^\]]*\])?/, '')
    line.gsub!(/\e[A-Za-z]+(?:\[[^\]]*\])?/, '')
    line = line.strip
    return if line.empty?

    records = battle_records
    records << line unless records.last == line
    records.shift while records.size > BATTLE_RECORD_MAX_LINES
    $game_temp.instance_variable_set(:@research_mod_battle_records, records)
  end
  def self.enemy_battler_file_name(enemy)
    return '' unless enemy && enemy.respond_to?(:battler_name)

    enemy.battler_name.to_s
  rescue
    ''
  end

  def self.enemy_cutin_file_names(enemy)
    return [] unless enemy && enemy.respond_to?(:skill_word_hash)

    skill_ids = enemy.all_actions.map(&:skill_id).uniq
    names = []
    enemy.skill_word_hash.each do |skill_key, word_data|
      next unless word_data.is_a?(Hash)
      next if (enemy_dialogue_skill_ids(skill_key) & skill_ids).empty?

      collect_enemy_cutin_names(word_data, names)
    end
    names.uniq
  rescue
    []
  end

  def self.enemy_all_cutin_file_names(enemy)
    return [] unless enemy && enemy.respond_to?(:skill_word_hash)

    names = []
    enemy.skill_word_hash.each_value do |word_data|
      collect_enemy_cutin_names(word_data, names) if word_data.is_a?(Hash)
    end
    names.uniq
  rescue
    []
  end

  def self.collect_enemy_cutin_names(value, names)
    if value.is_a?(Hash)
      value.each do |key, nested|
        if key.to_s == 'ct_pic'
          name = nested.to_s
          names << name unless name.empty?
        else
          collect_enemy_cutin_names(nested, names)
        end
      end
    elsif value.is_a?(Array)
      value.each { |nested| collect_enemy_cutin_names(nested, names) }
    end
  end

  def self.battle_preview_text(text, maximum = 46)
    value = text.to_s
    maximum = [maximum.to_i, 4].max
    value.split(10.chr).map do |line|
      next line if line.size <= maximum

      line[0, maximum - 3] + '...'
    end.join(10.chr)
  end

  def self.short_item_name(name, maximum = 15)
    value = name.to_s
    chars = value.each_char.to_a
    return value if chars.size <= maximum

    chars.first([maximum - 3, 1].max).join + '...'
  rescue
    value[0, maximum]
  end

  def self.battle_preview_pair(left_label, left_text, right_label, right_text,
                               maximum = 10)
    left_value = left_text.to_s.split(10.chr).join('、')
    right_value = right_text.to_s.split(10.chr).join('、')
    left = format('%s%s', left_label, battle_preview_text(left_value, maximum))
    right = format('%s%s', right_label, battle_preview_text(right_value, maximum))
    left + '　' + right
  end

  def self.enemy_drop_texts(enemy, include_chance = true, multiline = false)
    return ['无', ''] unless enemy

    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    return ['无', ''] unless database_enemy && database_enemy.respond_to?(:drop_items)

    entries = enemy_drop_entry_texts(enemy, include_chance)
    return multiline ? '无' : ['无', ''] if entries.empty?

    return entries.join(10.chr) if multiline

    lines = entries.first(2)
    lines[1] = lines[1].to_s + format(' 等%d项', entries.size - 2) if entries.size > 2
    lines.fill('', lines.size...2)
  rescue
    ['读取失败', '']
  end

  def self.enemy_drop_entry_texts(enemy, include_chance = true)
    return [] unless enemy

    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    return [] unless database_enemy && database_enemy.respond_to?(:drop_items)

    database_enemy.drop_items.each_with_object([]) do |drop, result|
      next unless drop && drop.kind.to_i > 0

      object = database_object(drop)
      result << enemy_drop_entry_text(enemy, drop, object, include_chance) if object
    end
  rescue
    []
  end

  def self.enemy_drop_entry_text(enemy, drop, object, include_chance = true)
    type_name = case drop.kind.to_i
                when 1 then '道具'
                when 2 then '武器'
                when 3 then '护甲'
                else '物品'
                end
    name = short_item_name(object.name)
    return format('%s#%d %s', type_name, object.id, name) unless include_chance

    chance = if drop_always_success?
               '必掉'
             else
               enemy_drop_chance_text(enemy, drop)
             end
    format('%s#%d %s（%s）', type_name, object.id, name, chance)
  end

  def self.enemy_drop_chance_text(enemy, drop)
    denominator = drop.denominator.to_i
    return '概率未知' if denominator <= 0

    rate = enemy.respond_to?(:drop_item_rate) ? enemy.drop_item_rate.to_f : 1.0
    percent = [rate * 100.0 / denominator, 100.0].min
    format('基础概率1/%d（%.1f%%）', denominator, percent)
  rescue
    format('1/%d', denominator)
  end

  def self.enemy_steal_text(enemy, list_id, include_chance = true)
    return '无' unless enemy && enemy.respond_to?(:steal_list)

    texts = enemy_steal_entry_texts(enemy, list_id, include_chance)
    return '无' if texts.empty?

    text = texts.first(2).join('、')
    text += format(' 等%d项', texts.size - 2) if texts.size > 2
    text
  rescue
    '读取失败'
  end

  def self.enemy_steal_entry_texts(enemy, list_id, include_chance = true)
    return [] unless enemy && enemy.respond_to?(:steal_list)

    entries = enemy.steal_list[list_id.to_i] || []
    entries.each_with_object([]) do |steal, result|
      object = steal_object(steal)
      next unless object

      type_name = case steal[:kind].to_i
                  when 1 then '道具'
                  when 2 then '武器'
                  when 3 then '护甲'
                  else '物品'
                  end
      name = object.name.to_s.empty? ? '（空名）' : short_item_name(object.name)
      unless include_chance
        result << format('%s#%d %s', type_name, object.id, name)
        next
      end

      chance = if steal_always_success?
                 '必成'
               else
                 denominator = steal[:denominator].to_i
                 denominator > 0 ? format('基础概率1/%d', denominator) : '概率未知'
      end
      result << format('%s#%d %s（%s）', type_name, object.id, name, chance)
    end
  rescue
    []
  end

  def self.enemy_help_item_lines(label, texts)
    values = Array(texts).flat_map { |text| text.to_s.split(/[、\n]/) }
    values = ['无'] if values.empty?
    values = values.reject(&:empty?)
    first = values.shift
    lines = [format('%s%s', label, first)]
    values.each_slice(2) { |pair| lines << pair.join('　') }
    lines
  end

  def self.enemy_help_item_lines_for(enemy)
    [
      enemy_help_item_lines('掉落：', enemy_drop_entry_texts(enemy, false)),
      enemy_help_item_lines('可偷物品：', enemy_steal_entry_texts(enemy, 1, false)),
      enemy_help_item_lines('可偷食材：', enemy_steal_entry_texts(enemy, 2, false)),
      enemy_help_item_lines('可偷素材：', enemy_steal_entry_texts(enemy, 3, false)),
      enemy_help_item_lines('可偷内裤：', enemy_steal_entry_texts(enemy, 4, false)),
      enemy_help_item_lines('可偷牛奶：', [enemy_milk_text(enemy)])
    ].flatten
  end

  # Build a temporary battler only for read-only preview calculations.
  def self.enemy_preview_battler(enemy)
    return nil unless enemy
    return enemy if enemy.respond_to?(:element_rate) && enemy.respond_to?(:state_rate)

    Game_Enemy.new(0, enemy.id)
  rescue
    nil
  end

  def self.enemy_preview_number(value)
    value.to_i.to_s.reverse.scan(/.{1,3}/).join(',').reverse
  rescue
    value.to_i.to_s
  end

  def self.enemy_preview_difficulty_label
    value = $game_variables[NWConst::Var::CURRENT_DIFFICULTY].to_i
    value = [[value, -3].max, 4].min
    {
      -3 => '未通关', -2 => 'VERY EASY', -1 => 'EASY',
      0 => 'NORMAL', 1 => 'HARD', 2 => 'VERY HARD',
      3 => 'HELL', 4 => 'PARADOX'
    }[value] || '未知'
  rescue
    '未知'
  end

  def self.enemy_preview_stat_lines(enemy)
    battler = enemy_preview_battler(enemy)
    return ['无法创建预览敌人对象。'] unless battler

    labels = [['最大HP', :mhp], ['最大MP', :mmp], ['攻击', :atk],
              ['防御', :def], ['魔力', :mat], ['精神', :mdf],
              ['灵巧', :luk], ['速度', :agi]]
    values = labels.map { |label, method_name|
      format('%s：%s', label, enemy_preview_number(battler.send(method_name)))
    }
    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    stat_rows = [values[0] + '　' + values[1],
                 values[2] + '　' + values[3] + '　' + values[4],
                 values[5] + '　' + values[6] + '　' + values[7]]
    [format('当前难度：%s', enemy_preview_difficulty_label),
     format('难度HP倍率变量：%s%%', $game_variables[41].to_i),
     format('Mod敌方属性倍率：%s', enemy_stat_multiplier_label),
     (database_enemy.respond_to?(:no_difficulty?) && database_enemy.no_difficulty? ?
       '该敌人：无视难度修正' : '该敌人：使用难度修正'),
     '', *stat_rows,
     '以上为预计战斗值；战斗事件可能继续修改数值。']
  rescue
    ['预计能力读取失败。']
  end

  def self.enemy_preview_element_lines(enemy)
    battler = enemy_preview_battler(enemy)
    return ['无法读取属性抗性。'] unless battler

    elements = defined?($data_system) && $data_system ? $data_system.elements : []
    lines = ['属性抗性（仅列出非100%的项目）：']
    (1...elements.size).each do |id|
      rate = battler.element_rate(id).to_f
      next if (rate - 1.0).abs < 0.001

      name = elements[id].to_s
      name = format('属性%d', id) if name.empty?
      text = if rate <= 0.001
               '无效/吸收'
             else
               format('%.0f%%', rate * 100.0)
             end
      lines << format('%s：%s', name, text)
    end
    lines << '未列出的属性按100%处理。' if lines.size == 1
    lines
  rescue
    ['属性或特性读取失败。']
  end

  def self.enemy_preview_state_lines(enemy)
    battler = enemy_preview_battler(enemy)
    return ['状态抗性读取失败。'] unless battler

    states = defined?($data_states) && $data_states ? $data_states : []
    lines = ['状态抗性（仅列出非100%的项目）：']
    (1...states.size).each do |id|
      resisted = battler.respond_to?(:state_resist?) && battler.state_resist?(id)
      rate = resisted ? 0.0 : battler.state_rate(id).to_f
      next if (rate - 1.0).abs < 0.001

      name = states[id] ? states[id].name.to_s : ''
      name = format('状态%d', id) if name.empty?
      text = rate <= 0.001 ? '无效' : format('%.0f%%', rate * 100.0)
      lines << format('%s：%s', name, text)
    end
    lines << '未列出的状态按100%处理。' if lines.size == 1
    lines
  rescue
    ['状态抗性读取失败。']
  end

  def self.enemy_preview_special_lines(enemy)
    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    return [] unless database_enemy

    result = ['特殊战斗特性：']
    checks = [
      ['难度修正无视', :no_difficulty?], ['HP无限', :hp_infinite?],
      ['MP无限', :mp_infinite?], ['捕食无效', :no_predation?],
      ['败北跳过不可用', :no_lose_skip?]
    ]
    enabled = checks.select { |_label, method_name|
      database_enemy.respond_to?(method_name) && database_enemy.send(method_name)
    }.map(&:first)
    result << (enabled.empty? ? '无已知特殊标签。' : enabled.join('、'))
    result
  rescue
    ['特殊特性读取失败。']
  end

  def self.enemy_preview_action_condition(action)
    p1 = action.condition_param1.to_i
    p2 = action.condition_param2.to_i
    case action.condition_type.to_i
    when 1
      p2 == 0 ? format('第%d回合', p1) : format('第%d回合起，每%d回合', p1, p2)
    when 2 then format('HP %d%%～%d%%', p1, p2)
    when 3 then format('MP %d%%～%d%%', p1, p2)
    when 4
      state = $data_states[p1]
      format('拥有状态：%s', state ? state.name.to_s : format('状态%d', p1))
    when 5 then format('我方最高等级%d以上', p1)
    when 6
      switch_name = $data_system && $data_system.switches[p1]
      switch_name = format('开关%d', p1) if switch_name.to_s.empty?
      format('开关开启：%s', switch_name)
    else
      '无条件'
    end
  rescue
    '条件读取失败'
  end

  def self.enemy_preview_action_lines(enemy)
    actions = if enemy.respond_to?(:all_actions)
                enemy.all_actions
              else
                enemy.actions
              end
    lines = ['普通行动配置（不预测实际行动）：']
    actions = Array(actions)
    if actions.empty?
      lines << '无行动配置。'
    else
      actions.each_with_index do |action, index|
        skill = $data_skills[action.skill_id]
        name = skill ? skill.name.to_s : format('技能%d', action.skill_id)
        lines << format('%d. %s（ID%d）', index + 1,
                        battle_preview_text(name, 24), action.skill_id)
        lines << format('条件：%s　评分：%d', enemy_preview_action_condition(action),
                        action.rating.to_i)
      end
    end
    lines << '评分是选择权重，不等于固定使用概率。'
    lines << '状态、封印、冷却、战斗事件和随机选择会影响实际行动。'
    lines
  rescue
    ['行动配置读取失败。']
  end

  def self.enemy_preview_reward_lines(enemy)
    lines = [format('经验值：%s　金币：%s', enemy_preview_number(enemy.exp),
                    enemy_preview_number(enemy.gold)), '掉落：']
    drops = enemy_drop_entry_texts(enemy, true)
    lines.concat(drops.empty? ? ['无'] : drops)
    { 1 => '可偷物品：', 2 => '可偷食材：', 3 => '可偷素材：',
      4 => '可偷内裤：' }.each do |list_id, label|
      lines << label
      values = enemy_steal_entry_texts(enemy, list_id, true)
      lines.concat(values.empty? ? ['无'] : values)
    end
    lines << '可偷牛奶：' << enemy_milk_text(enemy).to_s
    lines
  rescue
    ['掉落或偷盗信息读取失败。']
  end

  def self.enemy_preview_related_lines(enemy)
    troops = troops_for_enemy(enemy.id)
    follower = enemy_follower_actor(enemy)
    cutins = enemy_all_cutin_file_names(enemy)
    lines = [format('对应敌群数量：%d', troops.size),
             format('敌群ID：%s', troops.empty? ? '无' : troops.map(&:id).join('、')),
             format('单人临时挑战：%s', '支持'),
             format('战斗图：%s', enemy_battler_file_name(enemy).to_s.empty? ?
               '无' : enemy_battler_file_name(enemy)),
             format('技能Cut-in：%s', cutins.empty? ? '无' : cutins.join('、'))]
    if follower
      joined = $game_party && $game_party.respond_to?(:follow?) &&
               $game_party.follow?(follower.id)
      lines << format('候补角色：ID%d %s（已加入：%s）', follower.id, follower.name,
                      joined ? '是' : '否')
    else
      lines << '候补角色：无对应角色'
    end
    lines
  rescue
    ['关联信息读取失败。']
  end

  def self.enemy_follower_actor_id(enemy)
    return nil unless enemy

    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    return nil unless database_enemy

    [enemy, database_enemy].compact.uniq.each do |candidate|
      next unless candidate.respond_to?(:follower_actor_id)

      value = candidate.follower_actor_id
      actor_id = value.respond_to?(:to_i) ? value.to_i : 0
      return actor_id if actor_id > 0
    end

    settings = defined?(NWConst::Follower::SETTINGS) ?
               NWConst::Follower::SETTINGS : {}
    enemy_ids = [database_enemy.id.to_i]
    if database_enemy.respond_to?(:base_enemy)
      base_enemy = database_enemy.base_enemy
      enemy_ids << base_enemy.id.to_i if base_enemy
    end
    enemy_ids.uniq.each do |enemy_id|
      setting = settings[enemy_id]
      next unless setting.is_a?(Hash)

      actor_id = setting[:actor_id].to_i
      return actor_id if actor_id > 0
    end

    if database_enemy.respond_to?(:join_switch)
      join_switch = database_enemy.join_switch.to_i
      actor_base = if defined?(NWConst::Sw::ADD_ACTOR_BASE)
                     NWConst::Sw::ADD_ACTOR_BASE.to_i
                   end
      if actor_base && join_switch > actor_base
        return join_switch - actor_base
      end
    end
    nil
  rescue
    nil
  end

  def self.enemy_special_category_ids(enemy)
    return [] unless enemy

    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    values = if database_enemy.respond_to?(:ex_category)
               database_enemy.ex_category
             else
               note = database_enemy.respond_to?(:note) ? database_enemy.note.to_s : ''
               match = note.match(/<特殊カテゴリー\s*([^>]+)>/)
               match ? match[1].split(',').map(&:to_i) : []
             end
    Array(values).map(&:to_i).select { |id| SPECIAL_CATEGORY_NAMES.key?(id) }.uniq
  rescue
    []
  end

  def self.enemy_special_category_text(enemy)
    ids = enemy_special_category_ids(enemy)
    return '无' if ids.empty?

    ids.map { |id| format('%s(%d)', SPECIAL_CATEGORY_NAMES[id], id) }.join('、')
  end

  def self.custom_texts
    return {} unless $game_system

    texts = $game_system.instance_variable_get(CUSTOM_TEXTS_KEY)
    unless texts.is_a?(Hash)
      texts = {}
      $game_system.instance_variable_set(CUSTOM_TEXTS_KEY, texts)
    end
    texts
  end

  def self.custom_text(key)
    custom_texts[key.to_sym].to_s
  end

  def self.set_custom_text(key, value)
    custom_texts[key.to_sym] = value.to_s
  end

  # Request a one-time return to the research menu after maid dialogue ends.
  def self.prepare_maid_dialogue_return
    return unless $game_temp && $game_map

    $game_temp.instance_variable_set(
      MAID_DIALOGUE_RETURN_KEY,
      { :map_id => $game_map.map_id, :wait => 2, :started => false,
        :returning => false }
    )
  end

  def self.clear_maid_dialogue_return
    return unless $game_temp

    $game_temp.instance_variable_set(MAID_DIALOGUE_RETURN_KEY, nil)
  end

  def self.request_maid_menu_restore
    return unless $game_temp

    $game_temp.instance_variable_set(MAID_MENU_RESTORE_KEY, true)
  end

  def self.consume_maid_menu_restore
    return false unless $game_temp

    restore = $game_temp.instance_variable_get(MAID_MENU_RESTORE_KEY)
    $game_temp.instance_variable_set(MAID_MENU_RESTORE_KEY, nil)
    !!restore
  end

  # Copy only the original greeting and job-change call from the map event.
  def self.divine_priest_dialogue_commands
    filename = DataManager.map_file_name(DIVINE_PRIEST_SOURCE_MAP_ID)
    map = load_data(filename)
    event = map.events[DIVINE_PRIEST_SOURCE_EVENT_ID]
    return nil unless event && event.pages && event.pages[0]

    list = event.pages[0].list
    greeting_index = list.index do |command|
      command.code == 401 &&
        command.parameters[0].to_s.include?('祝福なき勇者ルカよ')
    end
    return nil unless greeting_index

    start_index = greeting_index
    while start_index > 0 && list[start_index].code != 101
      start_index -= 1
    end
    return nil unless list[start_index].code == 101

    job_change_index = (greeting_index...list.size).find do |index|
      command = list[index]
      command.code == 355 &&
        command.parameters[0].to_s.include?('Scene_JobChange')
    end
    return nil unless job_change_index

    finish_index = job_change_index
    if list[finish_index + 1] && list[finish_index + 1].code == 230
      finish_index += 1
    end
    dialogue_header = list[start_index]
    dialogue_lines = list[greeting_index...job_change_index].take_while do |command|
      command.code == 401
    end
    commands = Marshal.load(Marshal.dump([dialogue_header] + dialogue_lines))
    commands << Marshal.load(Marshal.dump(list[job_change_index]))
    if finish_index > job_change_index
      commands << Marshal.load(Marshal.dump(list[finish_index]))
    end
    commands << RPG::EventCommand.new(0, 0, [])
    commands
  rescue
    nil
  end

  def self.prepare_divine_priest_dialogue(commands)
    return unless $game_temp && $game_map

    $game_temp.instance_variable_set(
      DIVINE_PRIEST_DIALOGUE_RETURN_KEY,
      { :map_id => $game_map.map_id, :commands => commands,
        :started => false, :wait => 2, :returning => false }
    )
  end

  def self.clear_divine_priest_dialogue_return
    return unless $game_temp

    $game_temp.instance_variable_set(DIVINE_PRIEST_DIALOGUE_RETURN_KEY, nil)
  end

  def self.request_divine_priest_menu_restore
    return unless $game_temp

    $game_temp.instance_variable_set(DIVINE_PRIEST_MENU_RESTORE_KEY, true)
  end

  def self.consume_divine_priest_menu_restore
    return false unless $game_temp

    restore = $game_temp.instance_variable_get(DIVINE_PRIEST_MENU_RESTORE_KEY)
    $game_temp.instance_variable_set(DIVINE_PRIEST_MENU_RESTORE_KEY, nil)
    !!restore
  end

  # Open the reusable research-mod text input scene.
  def self.open_text_input(key, title, default_text = '', max_chars = 16,
                           help_text = nil, &result_handler)
    SceneManager.call(Scene_ResearchModTextInput)
    SceneManager.scene.prepare(
      key, title, default_text, max_chars, help_text, result_handler
    )
  end

  def self.enemy_follower_actor(enemy)
    actor_id = enemy_follower_actor_id(enemy)
    return nil unless actor_id && $data_actors && $data_actors[actor_id]

    if $game_actors && $game_actors.respond_to?(:[])
      actor = $game_actors[actor_id]
      return actor if actor
    end
    $data_actors[actor_id]
  rescue
    nil
  end

  def self.follower_dialogue_word(actor, key)
    return nil unless actor

    settings = defined?(NWConst::Follower::SETTINGS) ? NWConst::Follower::SETTINGS : {}
    setting = settings.values.find do |entry|
      entry.is_a?(Hash) && entry[:actor_id].to_i == actor.id.to_i
    end
    value = setting && (setting[key] || setting[key.to_s])
    return nil unless value.is_a?(Array) && !value.empty?

    Word.new(value[0], value[1], value[2])
  rescue
    nil
  end

  def self.enemy_follower_status_text(actor_id)
    party = $game_party
    return '未入队' unless party

    id = actor_id.to_i
    party_actor_ids = party.respond_to?(:actors) ? party.actors.to_a : []
    return '已入队' if party_actor_ids.include?(id)

    if party.respond_to?(:stand_actors) &&
       party.stand_actors.to_a.include?(id)
      return '候补中'
    end
    return '已入队' if party.respond_to?(:follow?) && party.follow?(id)

    '未入队'
  rescue
    '未入队'
  end

  def self.enemy_follower_help_lines(enemy)
    actor_id = enemy_follower_actor_id(enemy)
    unless actor_id
      return ['对应队友：无　入队状态：不适用']
    end

    actor = $data_actors[actor_id] if defined?($data_actors) && $data_actors
    actor_name = actor && !actor.name.to_s.empty? ? actor.name.to_s : '未知角色'
    status = enemy_follower_status_text(actor_id)
    enemy_help_item_lines(
      '对应队友：',
      [format('%d %s　入队状态：%s', actor_id, actor_name, status)]
    )
  rescue
    ['对应队友：无　入队状态：不适用']
  end

  def self.database_object(drop)
    case drop.kind.to_i
    when 1 then $data_items[drop.data_id.to_i]
    when 2 then $data_weapons[drop.data_id.to_i]
    when 3 then $data_armors[drop.data_id.to_i]
    end
  end

  def self.steal_object(steal)
    case steal[:kind].to_i
    when 1 then $data_items[steal[:data_id].to_i]
    when 2 then $data_weapons[steal[:data_id].to_i]
    when 3 then $data_armors[steal[:data_id].to_i]
    end
  end

  def self.enemy_item_entries(enemy)
    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    return [] unless database_enemy

    entries = []
    indexed_entries = {}
    append_entry = proc do |item, source|
      next unless item

      key = [item.class, item.id.to_i]
      entry = indexed_entries[key]
      unless entry
        entry = { :item => item, :sources => [] }
        indexed_entries[key] = entry
        entries << entry
      end
      entry[:sources] << source unless entry[:sources].include?(source)
    end

    if database_enemy.respond_to?(:drop_items)
      database_enemy.drop_items.each do |drop|
        next unless drop && drop.kind.to_i > 0

        append_entry.call(database_object(drop), '掉落')
      end
    end

    append_entry.call(enemy_milk_item(database_enemy), '牛奶')

    if database_enemy.respond_to?(:steal_list)
      steal_list = database_enemy.steal_list || {}
      ENEMY_ITEM_STEAL_SOURCE_NAMES.each do |list_id, source|
        Array(steal_list[list_id]).each do |steal|
          append_entry.call(steal_object(steal), source)
        end
      end
    end
    entries
  rescue
    []
  end

  def self.enemy_item_type_name(item)
    return '物品' if item.is_a?(RPG::Item)
    return '武器' if item.is_a?(RPG::Weapon)
    return '防具' if item.is_a?(RPG::Armor)

    '物品'
  end

  def self.enemy_item_available_entries(entries)
    Array(entries).select do |entry|
      item = entry && entry[:item]
      item && database_item_capacity(item) > 0
    end
  end

  def self.enemy_item_quantity_maximum(entries)
    capacities = enemy_item_available_entries(entries).map do |entry|
      database_item_capacity(entry[:item])
    end
    capacities.max.to_i
  end

  def self.manual_enemy_dialogue?
    return false unless $game_system

    $game_system.instance_variable_get(MANUAL_ENEMY_DIALOGUE_KEY) == true
  end

  def self.toggle_manual_enemy_dialogue
    enabled = !manual_enemy_dialogue?
    $game_system.instance_variable_set(MANUAL_ENEMY_DIALOGUE_KEY, enabled)
    enabled
  end

  def self.enemy_dialogue_skill_ids(skill_key)
    case skill_key
    when Array
      skill_key
    when Range
      skill_key.to_a
    else
      [skill_key]
    end.select { |skill_id| skill_id.is_a?(Integer) }
  end

  def self.enemy_dialogue_word_lines(word)
    Array(word.instance_variable_get(:@words)).map(&:to_s)
  end

  def self.expanded_dialogue_word_lines(word)
    enemy_dialogue_word_lines(word).each_with_object([]) do |raw_line, lines|
      raw_line.split(/\\n|\r\n|\r|\n/).each { |line| lines << line }
    end
  rescue
    enemy_dialogue_word_lines(word)
  end

  def self.expanded_dialogue_word(word)
    expanded_word = Marshal.load(Marshal.dump(word))
    expanded_word.instance_variable_set(:@words, expanded_dialogue_word_lines(expanded_word))
    expanded_word
  rescue
    word
  end

  def self.skill_temptation_message_words(skill, user_name, target_name)
    return [] unless skill

    [skill.instance_variable_get(:@message1),
     skill.instance_variable_get(:@message2)].each_with_index.each_with_object([]) do |entry, words|
      message, index = entry
      text = message.to_s
      next if text.empty?

      if text =~ /\\(u|e)/i
        text = text.gsub(/\\U/i, user_name.to_s).gsub(/\\E/i, target_name.to_s)
      elsif index == 0
        text = user_name.to_s + text
      end
      words << Word.new(text, '', 0)
    end
  rescue
    []
  end

  def self.battle_dialogue_protagonist_name
    if defined?($game_actors) && $game_actors && $game_actors[1]
      name = $game_actors[1].name.to_s
      return name unless name.empty?
    end
    'ルカ'
  rescue
    'ルカ'
  end

  def self.battle_dialogue_first_sentence(lines)
    parts = Array(lines).map(&:to_s).map(&:strip).reject(&:empty?)
    parts.shift if parts.first && parts.first =~ /\A【.*】\z/
    text = parts.first.to_s
    text = text.split(/(?<=[。！？!?])/, 2).first.to_s
    text.empty? ? '(无文字)' : text
  rescue
    '(无法显示的台词)'
  end

  def self.battle_dialogue_question_text(lines)
    parts = Array(lines).map(&:to_s).map(&:strip).reject(&:empty?)
    parts.reject! { |line| line =~ /\A【.*】\z/ }
    parts.last.to_s
  rescue
    ''
  end

  def self.battle_dialogue_display_text(text, maximum = nil, maximum_bytes = nil)
    display_text = text.to_s.gsub(/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]/, ' ')
    display_text = display_text.gsub('\\', '＼').gsub(/[\r\n\t]+/, ' ')
    display_text = display_text.gsub(/\s+/, ' ').strip
    exceeds_characters = maximum && display_text.size > maximum
    exceeds_bytes = maximum_bytes && display_text.bytesize > maximum_bytes
    return display_text unless exceeds_characters || exceeds_bytes

    suffix = '…'
    character_limit = maximum ? [maximum - 1, 0].max : nil
    byte_limit = maximum_bytes ? [maximum_bytes - suffix.bytesize, 0].max : nil
    result = ''
    display_text.each_char do |character|
      break if character_limit && result.size >= character_limit
      break if byte_limit && result.bytesize + character.bytesize > byte_limit

      result << character
    end
    result + suffix
  rescue
    '(无法显示的台词)'
  end

  def self.battle_dialogue_display_chunks(text, maximum, maximum_bytes)
    display_text = battle_dialogue_display_text(text)
    return [''] if display_text.empty?

    chunks = []
    chunk = ''
    display_text.each_char do |character|
      if !chunk.empty? &&
         (chunk.size >= maximum ||
          chunk.bytesize + character.bytesize > maximum_bytes)
        chunks << chunk
        chunk = ''
      end
      chunk << character
    end
    chunks << chunk unless chunk.empty?
    chunks.empty? ? [''] : chunks
  rescue
    ['(无法显示)']
  end

  def self.mtool_active?
    return @research_mod_mtool_active unless @research_mod_mtool_active.nil?

    get_module_handle = Win32API.new('kernel32', 'GetModuleHandleA', 'p', 'l')
    @research_mod_mtool_active = get_module_handle.call('RGSSHook.dll') != 0
  rescue
    @research_mod_mtool_active = false
  end

  def self.battle_dialogue_help_lines(lines)
    display_lines = Array(lines).each_with_object([]) do |line, result|
      line.to_s.split(/[\r\n]+/).each do |part|
        text = battle_dialogue_display_text(part, 90)
        result << text unless text.empty?
      end
    end
    omitted = display_lines.size > 3
    display_lines = display_lines.first(3)
    display_lines[-1] += '（后续省略）' if omitted && !display_lines.empty?
    display_lines.empty? ? ['(无文字)'] : display_lines
  rescue
    ['(无法显示的台词)']
  end

  def self.battler_dialogue_id(battler)
    return battler.actor_id if battler.respond_to?(:actor_id)
    return battler.enemy_id if battler.respond_to?(:enemy_id)

    battler.id
  rescue
    0
  end

  def self.actor_talk_dialogue_entries(actor)
    return [] unless actor

    word_hash = actor.respond_to?(:skill_word_hash) ? actor.skill_word_hash : nil
    return [] unless word_hash.is_a?(Hash)

    entries = []
    word_hash.each do |skill_key, word_data|
      begin
        next unless word_data.is_a?(Hash)
        next unless enemy_dialogue_skill_ids(skill_key).include?(2109)

        skill = $data_skills[2109]
        skill_name = skill && !skill.name.to_s.empty? ? skill.name : '話し掛ける'
        NWConst::Actor.create_skill_words(word_data).each_with_index do |word, word_index|
          lines = enemy_dialogue_word_lines(word)
          entries << {
            :category => '我方搭话',
            :skill_id => 2109,
            :skill_name => skill_name,
            :word_index => word_index + 1,
            :preview => lines.join(' ').strip,
            :lines => lines,
            :word => word
          }
        end
      rescue
        next
      end
    end
    entries
  rescue
    []
  end

  def self.talk_initiator_dialogue_entries(battler)
    return [] unless battler

    if battler.respond_to?(:enemy_id)
      enemy_dialogue_entries(battler, :special).select do |entry|
        entry[:skill_id].to_i == 2109
      end
    else
      actor_talk_dialogue_entries(battler)
    end
  rescue
    []
  end

  def self.actor_skill_dialogue_entries(actor, learned_only = true,
                                        include_temptation = learned_only)
    return [] unless actor

    word_hash = if actor.respond_to?(:skill_word_hash)
                  actor.skill_word_hash
                elsif defined?(NWConst::Actor::SKILL_WORDS)
                  actor_id = actor.respond_to?(:word_id) && actor.word_id ? actor.word_id : actor.id
                  NWConst::Actor::SKILL_WORDS[actor_id]
                end
    word_hash = {} unless word_hash.is_a?(Hash)

    entries = []
    common_event_skill_ids = {}
    learned_skill_ids = if learned_only && actor.respond_to?(:skills)
                          Array(actor.skills).map(&:id)
                        end
    word_hash.each do |skill_key, word_data|
      begin
        next unless word_data.is_a?(Hash)

        skill_ids = enemy_dialogue_skill_ids(skill_key)
        skill_ids &= learned_skill_ids if learned_skill_ids
        next if skill_ids.empty?

        skill = skill_ids.map { |skill_id| $data_skills[skill_id] }.compact.find do |entry|
          !entry.name.to_s.empty?
        end
        skill_id = skill ? skill.id : skill_ids.first
        skill_name = skill ? skill.name : '未命名技能'
        skill_names = skill_ids.map { |skill_id| $data_skills[skill_id] }.compact.map do |entry|
          entry.name.to_s
        end.reject(&:empty?).uniq
        skill_names = [skill_name] if skill_names.empty?
        NWConst::Actor.create_skill_words(word_data).each_with_index do |word, word_index|
          lines = enemy_dialogue_word_lines(word)
          preview = lines.join(' ').strip
          preview = '(无文字)' if preview.empty?
          entries << {
            :category => '我方技能台词',
            :skill_id => skill_id,
            :skill_ids => skill_ids,
            :skill_name => skill_name,
            :skill_names => skill_names,
            :word_index => word_index + 1,
            :preview => preview,
            :lines => lines,
            :word => word
          }
        end
        skill_ids.each do |common_skill_id|
          next if common_event_skill_ids[common_skill_id]

          common_entries = actor_skill_common_event_dialogue_entries(common_skill_id)
          entries.concat(common_entries) unless common_entries.empty?
          common_event_skill_ids[common_skill_id] = true
        end
      rescue
        next
      end
    end
    # Include event-only skills that do not have a SkillWords entry.
    if actor.respond_to?(:skills)
      Array(actor.skills).map(&:id).each do |common_skill_id|
        next if common_event_skill_ids[common_skill_id]

        common_entries = actor_skill_common_event_dialogue_entries(common_skill_id)
        entries.concat(common_entries) unless common_entries.empty?
        common_event_skill_ids[common_skill_id] = true
      end
    end
    if include_temptation
      actor_temptation_dialogue_entries(actor, true).each do |entry|
        temptation_entry = entry.dup
        temptation_entry[:category] = '我方技能台词'
        temptation_entry[:source] = :temptation
        entries << temptation_entry
      end
    end
    entries
  rescue
    []
  end

  def self.actor_skill_common_event_dialogue_entries(skill_id)
    return [] unless $data_skills && $data_common_events

    skill = $data_skills[skill_id.to_i]
    return [] unless skill

    common_event_ids = Array(skill.instance_variable_get(:@effects)).each_with_object([]) do |effect, ids|
      next unless effect.instance_variable_get(:@code).to_i == 44
      event_id = effect.instance_variable_get(:@data_id).to_i
      ids << event_id if event_id > 0 && !ids.include?(event_id)
    end
    common_event_ids &= SKILL_DIALOGUE_COMMON_EVENT_IDS
    return [] if common_event_ids.empty?

    entries = []
    common_event_ids.each do |common_event_id|
      common_event = $data_common_events[common_event_id]
      next unless common_event

      list = Array(common_event.instance_variable_get(:@list))
      # A top-level conditional branch represents one possible result.
      starts = list.each_index.select do |index|
        command = list[index]
        command.instance_variable_get(:@code).to_i == 111 &&
          command.instance_variable_get(:@indent).to_i == 0
      end
      blocks = if starts.empty?
                 [list]
               else
                 result = []
                 prefix = list[0...starts.first]
                 result << prefix unless event_message_groups(prefix).empty?
                 starts.each_with_index do |start_index, branch_index|
                   finish = starts[branch_index + 1] || list.length
                   result << list[start_index...finish]
                 end
                 result
               end

      blocks.each_with_index do |block, block_index|
        groups = event_message_groups(block).select do |group|
          !group[:face_name].to_s.empty? ||
            Array(group[:lines]).any? { |line| line.to_s.strip.start_with?('【') }
        end
        next if groups.empty?

        words = groups.map do |group|
          text = Array(group[:lines]).map(&:to_s).join(10.chr)
          Word.new(text, group[:face_name].to_s, group[:face_index].to_i)
        end
        lines = groups.each_with_object([]) do |group, result|
          result.concat(Array(group[:lines]).map(&:to_s))
        end
        entries << {
          :category => '技能公共事件结果', :skill_id => skill.id,
          :skill_ids => [skill.id],
          :skill_name => format('%s／%s', skill.name.to_s, common_event.instance_variable_get(:@name).to_s),
          :skill_names => [skill.name.to_s], :word_index => entries.size + 1,
          :preview => lines.join(' ').strip, :lines => lines,
          :word => words.first, :words => words, :common_event_id => common_event_id,
          :common_event_block_index => block_index + 1
        }
      end
    end

    entries
  rescue
    []
  end

  def self.hero_skill_dialogue_entry?(entry)
    return false unless entry && entry[:skill_id]

    skill = $data_skills[entry[:skill_id]] if $data_skills
    return false unless skill

    if skill.respond_to?(:stypes)
      skill.stypes.include?(HERO_SKILL_TYPE_ID)
    else
      skill.stype_id.to_i == HERO_SKILL_TYPE_ID
    end
  rescue
    false
  end

  def self.skill_type_dialogue_entries(battler, skill_type_id, category)
    return [] unless battler

    entries = if battler.respond_to?(:enemy_id)
                enemy_dialogue_entries(battler, :all_skills)
              else
                actor_skill_dialogue_entries(battler, false)
              end
    entries.map do |entry|
      skill_ids = entry[:skill_ids].is_a?(Array) ? entry[:skill_ids] : [entry[:skill_id]]
      matched_skills = skill_ids.map { |skill_id| $data_skills[skill_id] }.compact.select do |skill|
        if skill.respond_to?(:stypes)
          skill.stypes.include?(skill_type_id)
        else
          skill.stype_id.to_i == skill_type_id
        end
      end.sort_by { |skill| skill.id }
      next if matched_skills.empty?

      type_entry = entry.dup
      names = matched_skills.map { |skill| skill.name.to_s }.reject(&:empty?).uniq
      names = [entry[:skill_name].to_s] if names.empty?
      type_entry[:category] = category
      type_entry[:skill_id] = matched_skills.first.id
      type_entry[:skill_ids] = matched_skills.map { |skill| skill.id }
      type_entry[:skill_name] = names.first.to_s
      type_entry[:skill_names] = names
      type_entry[:show_skill_relations] = true
      type_entry
    end.compact
  rescue
    []
  end

  def self.skill_id_dialogue_entries(battler, target_skill_ids, category)
    return [] unless battler

    entries = if battler.respond_to?(:enemy_id)
                enemy_dialogue_entries(battler, :all_skills)
              else
                actor_skill_dialogue_entries(battler, false)
              end
    entries.map do |entry|
      skill_ids = entry[:skill_ids].is_a?(Array) ? entry[:skill_ids] : [entry[:skill_id]]
      matched_skills = skill_ids.select do |skill_id|
        target_skill_ids.include?(skill_id.to_i)
      end.map { |skill_id| $data_skills[skill_id] }.compact.sort_by do |skill|
        skill.id
      end
      next if matched_skills.empty?

      type_entry = entry.dup
      names = matched_skills.map { |skill| skill.name.to_s }.reject(&:empty?).uniq
      names = [entry[:skill_name].to_s] if names.empty?
      type_entry[:category] = category
      type_entry[:skill_id] = matched_skills.first.id
      type_entry[:skill_ids] = matched_skills.map { |skill| skill.id }
      type_entry[:skill_name] = names.first.to_s
      type_entry[:skill_names] = names
      type_entry[:show_skill_relations] = true
      type_entry
    end.compact
  rescue
    []
  end

  def self.transformation_skill_dialogue_entries(battler)
    skill_id_dialogue_entries(battler, TRANSFORMATION_SKILL_IDS, '变身类')
  end

  def self.hero_skill_dialogue_entries(battler)
    skill_type_dialogue_entries(battler, HERO_SKILL_TYPE_ID, 'ヒーロー技')
  end

  def self.dance_skill_dialogue_entries(battler)
    skill_type_dialogue_entries(battler, DANCE_SKILL_TYPE_ID, '踊る')
  end

  def self.sing_skill_dialogue_entries(battler)
    skill_type_dialogue_entries(battler, SING_SKILL_TYPE_ID, '歌う')
  end

  def self.actor_playful_dialogue_entries(actor)
    return [] unless actor

    blocks = playful_actor_event_commands(actor)
    return [] if blocks.empty?

    # Older callers may provide a single command list; normalize it to blocks.
    blocks = [{ :commands => blocks }] unless blocks.first.is_a?(Hash)

    skill = $data_skills[PLAYFUL_DIALOGUE_SKILL_ID]
    skill_name = skill && !skill.name.to_s.empty? ? skill.name : '遊ぶ'
    entries = []
    blocks.each_with_index do |block, block_index|
      commands = block.is_a?(Hash) ? block[:commands] : block
      variant_name = block.is_a?(Hash) ? block[:variant_name].to_s : ''
      playful_actor_outcomes(commands).each do |outcome|
        groups = event_message_groups(outcome[:commands])
        next if groups.empty?

        # The first speaker line identifies the form used by this event block.
        if variant_name.empty?
          speaker_line = groups.each_with_object([]) do |group, lines|
            lines.concat(Array(group[:lines]))
          end.find do |line|
            text = line.to_s.strip
            text.start_with?('【') && text.end_with?('】')
          end
          variant_name = speaker_line.to_s.strip[1...-1].to_s unless speaker_line.nil?
        end
        words = groups.map do |group|
          lines = group[:lines].map(&:to_s)
          Word.new(lines.join(10.chr), group[:face_name].to_s,
                   group[:face_index].to_i)
        end
        lines = groups.each_with_object([]) do |group, result|
          result.concat(group[:lines].map(&:to_s))
        end
        entry = {
          :category => '爱玩',
          :skill_id => PLAYFUL_DIALOGUE_SKILL_ID,
          :skill_name => skill_name,
          :word_index => outcome[:index],
          :preview => lines.join(' ').strip,
          :lines => lines,
          :word => words.first,
          :words => words
        }
        entry[:variant_name] = variant_name unless variant_name.empty?
        entry[:variant_index] = block_index + 1 if blocks.size > 1
        entries << entry
      end
    end

    entries
  rescue
    []
  end

  def self.playful_actor_outcomes(commands)
    outcomes = []
    current = nil
    Array(commands).each do |command|
      code = command.instance_variable_get(:@code)
      indent = command.instance_variable_get(:@indent).to_i
      params = Array(command.instance_variable_get(:@parameters))
      if code == 111 && indent == 1 && params[0, 3] == [1, 11, 0]
        outcomes << current if current
        current = { :index => params[3].to_i, :commands => [] }
      elsif current && code == 412 && indent == 1
        outcomes << current
        current = nil
      elsif current
        current[:commands] << command
      end
    end
    outcomes << current if current
    return outcomes unless outcomes.empty?

    [{ :index => 1, :commands => Array(commands) }]
  end

  def self.playful_actor_event_commands(actor)
    return [] unless actor && $data_common_events

    actor_id = actor.respond_to?(:actor_id) ? actor.actor_id : actor.id
    blocks = []
    PLAYFUL_COMMON_EVENT_RANGE.each do |common_event_id|
      common_event = $data_common_events[common_event_id]
      next unless common_event

      list = Array(common_event.instance_variable_get(:@list))
      start_indices = list.each_index.select do |index|
        command = list[index]
        command.instance_variable_get(:@code) == 111 &&
          command.instance_variable_get(:@indent).to_i == 0 &&
          command.instance_variable_get(:@parameters) ==
            [1, PLAYFUL_ACTOR_VARIABLE_ID, 0, actor_id, 0]
      end
      start_indices.each_with_index do |start_index, block_index|
        finish_index = (start_index + 1...list.size).find do |index|
          command = list[index]
          params = Array(command.instance_variable_get(:@parameters))
          command.instance_variable_get(:@code) == 111 &&
            command.instance_variable_get(:@indent).to_i == 0 &&
            params[0, 2] == [1, PLAYFUL_ACTOR_VARIABLE_ID]
        end || list.size
        block_commands = list[(start_index + 1)...finish_index]
        groups = event_message_groups(block_commands)
        speaker_line = groups.each_with_object([]) do |group, lines|
          lines.concat(Array(group[:lines]))
        end.find do |line|
          text = line.to_s.strip
          text.start_with?('【') && text.end_with?('】')
        end
        variant_name = speaker_line.to_s.strip[1...-1].to_s unless speaker_line.nil?
        blocks << {
          :commands => block_commands,
          :common_event_id => common_event_id,
          :block_index => block_index,
          :variant_name => variant_name.to_s
        }
      end
    end
    return [] if blocks.empty?

    # Preserve the original command-list return shape for single-block actors.
    blocks.size == 1 ? blocks.first[:commands] : blocks
  rescue
    []
  end

  def self.actor_temptation_dialogue_entries(actor, learned_only = false)
    return [] unless actor

    word_hash = if actor.respond_to?(:skill_word_hash)
                  actor.skill_word_hash
                elsif defined?(NWConst::Actor::SKILL_WORDS)
                  actor_id = actor.respond_to?(:word_id) && actor.word_id ? actor.word_id : actor.id
                  NWConst::Actor::SKILL_WORDS[actor_id]
                end
    return [] unless word_hash.is_a?(Hash)

    entries = []
    word_hash.each do |skill_key, word_data|
      begin
        next unless word_data.is_a?(Hash)

        skill_ids = enemy_dialogue_skill_ids(skill_key)
        next if skill_ids.empty?

        skill = skill_ids.map { |skill_id| $data_skills[skill_id] }.compact.find do |entry|
          !entry.name.to_s.empty?
        end
        skill_id = skill ? skill.id : skill_ids.first
        skill_name = skill ? skill.name : '未命名技能'
        words = NWConst::Actor.create_skill_words(word_data).select do |word|
          word.respond_to?(:condition) && word.condition == :temptation?
        end
        words.each_with_index do |word, word_index|
          playback_word = expanded_dialogue_word(word)
          message_words = skill_temptation_message_words(skill, actor.name, '目标')
          all_words = [playback_word] + message_words
          all_lines = all_words.each_with_object([]) do |entry_word, result|
            result.concat(expanded_dialogue_word_lines(entry_word))
          end
          preview = battle_dialogue_first_sentence(all_lines)
          entries << {
            :category => '诱惑反应',
            :skill_id => skill_id,
            :skill_name => skill_name,
            :word_index => word_index + 1,
            :preview => preview,
            :lines => all_lines,
            :word => all_words.first,
            :words => all_words
          }
        end
      rescue
        next
      end
    end
    entries
  rescue
    []
  end

  def self.enemy_base_data(enemy)
    data = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    data = data.base_enemy if data && data.respond_to?(:base_enemy)
    data
  rescue
    nil
  end

  def self.milking_common_event_block(enemy)
    return [] unless enemy && $data_common_events

    common_event = $data_common_events[MILKING_COMMON_EVENT_ID]
    return [] unless common_event

    base_enemy = enemy_base_data(enemy)
    enemy_id = if base_enemy && base_enemy.respond_to?(:id)
                 base_enemy.id
               elsif enemy.respond_to?(:enemy_id)
                 enemy.enemy_id
               end
    return [] unless enemy_id

    list = Array(common_event.instance_variable_get(:@list))
    start_index = list.index do |command|
      command.instance_variable_get(:@code) == 111 &&
        command.instance_variable_get(:@indent).to_i == 0 &&
        command.instance_variable_get(:@parameters) == [1, 12, 0, enemy_id, 0]
    end
    return [] unless start_index

    finish_index = (start_index + 1...list.size).find do |index|
      command = list[index]
      command.instance_variable_get(:@code) == 111 &&
        command.instance_variable_get(:@indent).to_i == 0
    end || list.size
    list[start_index...finish_index]
  rescue
    []
  end

  def self.enemy_milk_item(enemy)
    milking_common_event_block(enemy).each do |command|
      next unless command.instance_variable_get(:@code) == 126

      params = command.instance_variable_get(:@parameters)
      next unless params && params[1].to_i == 0 && params[2].to_i == 0
      next unless params[3].to_i > 0

      item_id = params[0].to_i
      next unless MILK_ITEM_ID_RANGE.include?(item_id)

      item = $data_items[item_id]
      return item if item
    end
    nil
  rescue
    nil
  end

  def self.enemy_milk_text(enemy)
    item = enemy_milk_item(enemy)
    item ? format('物品#%d %s', item.id, short_item_name(item.name)) : '无'
  end

  def self.event_message_groups(commands)
    groups = []
    current = nil
    Array(commands).each do |command|
      code = command.instance_variable_get(:@code)
      params = command.instance_variable_get(:@parameters)
      if code == 101
        groups << current if current && !current[:lines].empty?
        current = {
          :face_name => params[0].to_s,
          :face_index => params[1].to_i,
          :indent => command.instance_variable_get(:@indent).to_i,
          :lines => []
        }
      elsif code == 401 && current
        current[:lines] << params[0].to_s
      elsif current && !current[:lines].empty?
        groups << current
        current = nil
      end
    end
    groups << current if current && !current[:lines].empty?
    groups
  end

  def self.current_troop_id
    return nil unless defined?($game_troop) && $game_troop

    return $game_troop.troop_id.to_i if $game_troop.respond_to?(:troop_id)
    troop = $game_troop.troop if $game_troop.respond_to?(:troop)
    return troop.id.to_i if troop && troop.respond_to?(:id)

    nil
  rescue
    nil
  end

  def self.troop_story_dialogue_entries(troop_id = nil)
    return [] unless defined?($data_troops) && $data_troops

    troop_id ||= current_troop_id
    troop = $data_troops[troop_id.to_i]
    return [] unless troop

    entries = []
    Array(troop.instance_variable_get(:@pages)).each_with_index do |page, page_index|
      groups = event_message_groups(page.instance_variable_get(:@list))
      next if groups.empty?

      words = groups.map do |group|
        text = Array(group[:lines]).map(&:to_s).join(10.chr)
        Word.new(text, group[:face_name].to_s, group[:face_index].to_i)
      end
      lines = groups.each_with_object([]) do |group, result|
        result.concat(Array(group[:lines]).map(&:to_s))
      end
      entries << {
        :category => '七尾兵队剧情',
        :choice_label => format('兵队%03d「%s」 第%d页', troop.id,
                                troop.name.to_s, page_index + 1),
        :word_index => entries.size + 1,
        :preview => lines.join(' ').strip,
        :lines => lines,
        :word => words.first,
        :words => words,
        :troop_id => troop.id,
        :troop_page_index => page_index + 1
      }
    end
    entries
  rescue
    []
  end

  def self.milking_reaction_entries(enemy)
    block = milking_common_event_block(enemy)
    return [] if block.empty?

    base_enemy = enemy_base_data(enemy)
    base_name = base_enemy && base_enemy.respond_to?(:name) ? base_enemy.name.to_s : ''
    current_name = enemy.name.to_s
    groups = event_message_groups(block)
    failure = groups.reverse.find do |group|
      group[:lines].any? do |line|
        text = line.to_s
        text.include?('搾れなかった') ||
          text.include?('没能挤出乳汁') ||
          text.include?('挤不出乳汁')
      end
    end
    failure ||= groups.last if groups.size > 1 && groups.last[:face_name].empty?
    reaction_groups = groups.select do |group|
      !group[:face_name].empty? && !group.equal?(failure)
    end
    result = []
    unless reaction_groups.empty?
      words = reaction_groups.map do |group|
        lines = group[:lines].map do |line|
          base_name.empty? ? line : line.gsub(base_name, current_name)
        end
        Word.new(lines.join(92.chr + 'n'), group[:face_name],
                 group[:face_index], enemy.battler_hue)
      end
      lines = reaction_groups.each_with_object([]) do |group, all_lines|
        group[:lines].each do |line|
          all_lines << (base_name.empty? ? line : line.gsub(base_name, current_name))
        end
      end
      result << {
        :category => '乳搾り成功反应', :skill_id => nil,
        :skill_name => '乳搾り成功', :word_index => 1,
        :preview => lines.join(' '), :lines => lines, :word => words.first,
        :words => words
      }
    end
    if failure
      lines = failure[:lines]
      word = Word.new(lines.join(92.chr + 'n'), failure[:face_name],
                      failure[:face_index], enemy.battler_hue)
      result << {
        :category => '乳搾り失败', :skill_id => nil,
        :skill_name => '乳搾り失败', :word_index => 1,
        :preview => lines.join(' '), :lines => lines, :word => word
      }
    end
    result
  rescue
    []
  end

  def self.battler_reaction_entries(battler)
    return [] unless battler

    entries = []
    if battler.respond_to?(:enemy_id)
      entries.concat(milking_reaction_entries(battler))
      entries.concat(enemy_dialogue_entries(battler, :down))
    elsif battler.respond_to?(:down_word_hash) && battler.down_word_hash
      reaction_types = {
        :dead_word => '普通击败', :orgasm_word => '快乐击败',
        :predation_word => '捕食击败', :incontinence_word => '失禁异常'
      }
      reaction_types.each do |word_key, category|
        begin
          word_data = battler.down_word_hash[word_key]
          word = battler.create_down_word(word_data) if word_data
          next unless word

          lines = enemy_dialogue_word_lines(word)
          entries << {
            :category => category, :skill_id => nil, :skill_name => category,
            :word_index => 1, :preview => lines.join(' '), :lines => lines,
            :word => word
          }
        rescue
          next
        end
      end
    end
    entries
  rescue
    []
  end

  def self.resolve_talk_common_event_id(common_event_id)
    return nil unless $data_common_events

    event_id = common_event_id.to_i
    visited = {}
    loop do
      return nil if event_id <= 0 || visited[event_id]

      visited[event_id] = true
      common_event = $data_common_events[event_id]
      return nil unless common_event

      commands = Array(common_event.instance_variable_get(:@list))
      has_message = commands.any? do |command|
        command.instance_variable_get(:@code).to_i == 401
      end
      relay_commands = commands.reject do |command|
        # Code 999 stores the event's own ID and has no runtime effect.
        [0, 999].include?(command.instance_variable_get(:@code).to_i)
      end
      return event_id if has_message || relay_commands.size != 1
      return event_id unless relay_commands.first.instance_variable_get(:@code).to_i == 117

      called_event_id = Array(
        relay_commands.first.instance_variable_get(:@parameters)
      ).first.to_i
      return event_id if called_event_id <= 0

      # Dialogue relay events contain no text and only call the real dialogue event.
      event_id = called_event_id
    end
  rescue
    nil
  end

  def self.enemy_talk_event_entries(enemy)
    return [] unless enemy
    return [] unless $data_common_events

    base_enemy = enemy_base_data(enemy)
    dialogue_enemy_id = base_enemy.id if base_enemy && base_enemy.respond_to?(:id)
    unless dialogue_enemy_id.is_a?(Integer)
      dialogue_enemy_id = enemy.enemy_id if enemy.respond_to?(:enemy_id)
      if (1001..2000).include?(dialogue_enemy_id)
        dialogue_enemy_id -= 1000
      elsif (2001..3000).include?(dialogue_enemy_id)
        dialogue_enemy_id -= 2000
      end
    end
    return [] unless dialogue_enemy_id.is_a?(Integer)

    common_event_id = resolve_talk_common_event_id(1000 + dialogue_enemy_id)
    common_event = common_event_id ? $data_common_events[common_event_id] : nil
    return [] unless common_event

    base_enemy_name = if base_enemy && base_enemy.respond_to?(:name)
                        base_enemy.name.to_s
                      else
                        ''
                      end
    current_enemy_name = enemy.respond_to?(:name) ? enemy.name.to_s : ''

    commands = Array(common_event.instance_variable_get(:@list))
    categories = {}
    TALK_EVENT_CATEGORIES.each do |category|
      source_label = category[:source_label]
      categories[source_label] = category if source_label
    end
    # Embedded Chinese data translates the category labels stored in event commands.
    {
      '情报' => :information, '信息' => :information,
      '提问' => :question, '问题' => :question,
      '赠与' => :gift
    }.each do |source_label, key|
      category = TALK_EVENT_CATEGORIES.find { |entry| entry[:key] == key }
      categories[source_label] = category if category
    end
    current_category = nil
    standard_category_found = false
    category_counts = Hash.new(0)
    entries = []
    index = 0
    while index < commands.size
      command = commands[index]
      code = command.instance_variable_get(:@code)
      indent = command.instance_variable_get(:@indent).to_i
      params = Array(command.instance_variable_get(:@parameters))
      if code == 118
        current_category = categories[params[0].to_s]
        standard_category_found ||= !current_category.nil?
      elsif current_category && talk_random_result_condition?(params, code, indent)
        branch_end = talk_event_branch_end(commands, index + 1, indent)
        break unless branch_end

        prefix = talk_preceding_message_commands(commands, index)
        body = prefix + commands[(index + 1)...branch_end]
        flow = parse_enemy_perfume_event_nodes(
          enemy, body, 0, nil, base_enemy_name, current_enemy_name
        ).first
        flow = talk_browse_nodes(flow)
        words = talk_flow_words(flow)
        unless words.empty?
          category_counts[current_category[:key]] += 1
          lines = talk_flow_lines(flow)
          entries << {
            :category => current_category[:label],
            :talk_category => current_category[:key],
            :talk_category_index => category_counts[current_category[:key]],
            :skill_id => nil,
            :skill_name => common_event.instance_variable_get(:@name).to_s,
            :word_index => entries.size + 1,
            :preview => battle_dialogue_first_sentence(lines),
            :lines => lines,
            :word => words.first,
            :words => words,
            :flow => flow
          }
        end
        index = branch_end
      end
      index += 1
    end
    event_name = common_event.instance_variable_get(:@name).to_s
    direct_message_found = commands.any? do |command|
      command.instance_variable_get(:@code) == 401
    end
    if !standard_category_found && direct_message_found &&
       talk_event_name?(event_name)
      refusal_category = TALK_EVENT_CATEGORIES.find do |category|
        category[:key] == :refusal
      end
      flow = parse_enemy_perfume_event_nodes(
        enemy, commands, 0, nil, base_enemy_name, current_enemy_name
      ).first
      flow = talk_browse_nodes(flow)
      words = talk_flow_words(flow)
      unless words.empty?
        lines = talk_flow_lines(flow)
        entries << {
          :category => refusal_category[:label],
          :talk_category => refusal_category[:key],
          :talk_category_index => 1,
          :skill_id => nil,
          :skill_name => event_name,
          :word_index => 1,
          :preview => battle_dialogue_first_sentence(lines),
          :lines => lines,
          :word => words.first,
          :words => words,
          :flow => flow
        }
      end
    end
    entries
  rescue
    []
  end

  def self.talk_event_name?(name)
    value = name.to_s
    ['会話：', '会話:', '对话：', '对话:'].any? do |prefix|
      value.start_with?(prefix)
    end
  end

  def self.enemy_special_common_event_entries(enemy)
    enemy_talk_event_entries(enemy)
  end

  def self.talk_random_result_condition?(params, code, indent)
    code == 111 && indent == 0 && params[0].to_i == 1 &&
      params[1].to_i == 13 && params[2].to_i == 0 && params[4].to_i == 2
  rescue
    false
  end

  def self.talk_preceding_message_commands(commands, condition_index)
    index = condition_index.to_i - 1
    return [] if index < 0

    while index >= 0
      command = commands[index]
      break unless command.instance_variable_get(:@code) == 401
      break unless command.instance_variable_get(:@indent).to_i == 0

      index -= 1
    end
    return [] if index < 0

    command = commands[index]
    return [] unless command.instance_variable_get(:@code) == 101
    return [] unless command.instance_variable_get(:@indent).to_i == 0

    commands[index...condition_index]
  rescue
    []
  end

  def self.talk_event_branch_end(commands, start_index, indent)
    index = start_index
    while index < commands.size
      command = commands[index]
      if command.instance_variable_get(:@code) == 412 &&
         command.instance_variable_get(:@indent).to_i == indent
        return index
      end
      index += 1
    end
    nil
  end

  # Convert save-dependent conditions into explicit choices for research.
  def self.talk_browse_nodes(nodes)
    Array(nodes).each_with_object([]) do |node, result|
      case node[:type]
      when :message, :terminate
        result << node
      when :choice
        copy = node.dup
        copy[:branches] = Array(node[:branches]).map do |branch|
          branch_copy = branch.dup
          branch_copy[:nodes] = talk_browse_nodes(branch[:nodes])
          branch_copy
        end
        result << copy
      when :conditional
        description = talk_condition_description(node[:parameters])
        true_nodes = talk_browse_nodes(node[:true_nodes])
        false_nodes = talk_browse_nodes(node[:false_nodes])
        true_label = "满足：#{description}"
        false_label = "不满足：#{description}"
        true_label += '（无独立台词）' unless talk_nodes_have_words?(true_nodes)
        false_label += '（无独立台词）' unless talk_nodes_have_words?(false_nodes)
        result << {
          :type => :choice,
          :prompt => nil,
          :choices => [true_label, false_label],
          :branches => [
            { :label => '满足', :choice_index => 0, :cancel => false,
              :nodes => true_nodes },
            { :label => '不满足', :choice_index => 1, :cancel => false,
              :nodes => false_nodes }
          ],
          :choice_position => 2,
          :choice_background => 0
        }
      end
    end
  rescue
    []
  end

  def self.talk_nodes_have_words?(nodes)
    !talk_flow_words(nodes).empty?
  rescue
    false
  end

  def self.talk_condition_description(parameters)
    values = Array(parameters)
    case values[0].to_i
    when 0
      format('开关%04d为%s', values[1].to_i, values[2].to_i == 0 ? 'ON' : 'OFF')
    when 1
      operators = ['=', '>=', '<=', '>', '<', '!=']
      right = values[2].to_i == 0 ? values[3].to_i : "变量#{values[3].to_i}"
      format('变量%d %s %s', values[1].to_i,
             operators[values[4].to_i] || '?', right)
    when 7
      format('持有金钱%s%dG', values[2].to_i == 0 ? '>=' : '<=', values[1].to_i)
    when 8
      item = $data_items[values[1].to_i] if $data_items
      format('持有物品：%s', item ? item.name : "ID #{values[1].to_i}")
    when 9
      weapon = $data_weapons[values[1].to_i] if $data_weapons
      format('持有武器：%s', weapon ? weapon.name : "ID #{values[1].to_i}")
    when 10
      armor = $data_armors[values[1].to_i] if $data_armors
      format('持有防具：%s', armor ? armor.name : "ID #{values[1].to_i}")
    else
      '原版事件条件'
    end
  rescue
    '原版事件条件'
  end

  def self.talk_flow_words(nodes)
    Array(nodes).each_with_object([]) do |node, words|
      if node[:type] == :message
        words << node[:word] if node[:word]
      elsif node[:type] == :choice
        prompt = node[:prompt]
        words << prompt[:word] if prompt && prompt[:word]
        Array(node[:branches]).each do |branch|
          words.concat(talk_flow_words(branch[:nodes]))
        end
      end
    end
  rescue
    []
  end

  def self.talk_flow_lines(nodes)
    Array(nodes).each_with_object([]) do |node, lines|
      if node[:type] == :message
        lines.concat(Array(node[:lines]))
      elsif node[:type] == :choice
        prompt = node[:prompt]
        lines.concat(Array(prompt[:lines])) if prompt
        Array(node[:branches]).each do |branch|
          lines.concat(talk_flow_lines(branch[:nodes]))
        end
      end
    end
  rescue
    []
  end

  # Return perfume temptation choices and the corresponding dialogue lines.
  def self.enemy_perfume_dialogue_entries(enemy)
    return [] unless enemy && $data_common_events

    enemy_data = enemy.respond_to?(:enemy) ? enemy.enemy : nil
    base_enemy = if enemy_data && enemy_data.respond_to?(:base_enemy)
                   enemy_data.base_enemy
                 else
                   enemy_data
                 end
    dialogue_enemy_id = base_enemy.id if base_enemy && base_enemy.respond_to?(:id)
    unless dialogue_enemy_id.is_a?(Integer)
      dialogue_enemy_id = enemy.enemy_id if enemy.respond_to?(:enemy_id)
      dialogue_enemy_id -= 1000 if (1001..2000).include?(dialogue_enemy_id)
      dialogue_enemy_id -= 2000 if (2001..3000).include?(dialogue_enemy_id)
    end
    return [] unless dialogue_enemy_id.is_a?(Integer)

    common_event = enemy_perfume_common_event(dialogue_enemy_id)
    return [] unless common_event

    flow = enemy_perfume_event_flow(enemy, common_event)
    return [] if flow.empty?

    first_node = flow.find { |node| node[:type] == :message }
    first_word = first_node && first_node[:word]
    if first_word.nil?
      choice_node = flow.find { |node| node[:type] == :choice }
      prompt = choice_node && choice_node[:prompt]
      first_word = prompt[:word] if prompt.is_a?(Hash)
    end
    [{
      :category => '诱惑（香水）',
      :skill_id => nil,
      :skill_name => common_event.instance_variable_get(:@name).to_s,
      :word_index => 1,
      :preview => battle_dialogue_first_sentence(first_node ? first_node[:lines] : []),
      :lines => first_node ? first_node[:lines] : [],
      :word => first_word,
      :flow => flow
    }]
  rescue
    []
  end

  # Perfume temptation events use the 2000-series common-event range.
  def self.enemy_perfume_common_event(enemy_id)
    return nil unless $data_common_events && enemy_id.is_a?(Integer)

    event = $data_common_events[2000 + enemy_id]
    return nil unless event

    name = event.instance_variable_get(:@name).to_s
    name.start_with?('誘惑：', '誘惑:', '诱惑：', '诱惑:') ? event : nil
  rescue
    nil
  end

  # Return the original post-battle recruitment dialogue as a playable flow.
  def self.enemy_follow_dialogue_entries(enemy)
    return [] unless enemy

    question_word = enemy.respond_to?(:follow_question_word) ?
                    enemy.follow_question_word : nil
    yes_word = enemy.respond_to?(:follow_yes_word) ? enemy.follow_yes_word : nil
    no_word = enemy.respond_to?(:follow_no_word) ? enemy.follow_no_word : nil
    return [] unless question_word || yes_word || no_word

    enemy_name = enemy.respond_to?(:name) ? enemy.name.to_s : ''
    prompt_text = [
      format('なんと%sが起き上がり、', enemy_name),
      '仲間になりたそうにこちらを見ている！',
      '仲間にしてあげますか？'
    ]
    prompt_word = begin
      Word.new(prompt_text.join(10.chr), '', 0, enemy.battler_hue)
    rescue
      nil
    end
    branches = [
      { :label => 'はい', :choice_index => 0, :cancel => false,
        :nodes => enemy_follow_branch_nodes(enemy, yes_word, true) },
      { :label => 'いいえ', :choice_index => 1, :cancel => false,
        :nodes => enemy_follow_branch_nodes(enemy, no_word, false) }
    ]
    flow = []
    flow << { :type => :message, :word => question_word,
              :lines => enemy_follow_word_lines(question_word) } if question_word
    flow << {
      :type => :choice, :prompt => prompt_word ? {
        :word => prompt_word, :lines => prompt_text
      } : nil, :choices => ['はい', 'いいえ'], :branches => branches,
      :choice_position => 2, :choice_background => 0
    }
    return [] if flow.empty?

    first_node = flow.find { |node| node[:type] == :message }
    first_word = first_node && first_node[:word]
    [{
      :category => '入队模拟',
      :skill_id => nil,
      :skill_name => '战斗后入队',
      :word_index => 1,
      :preview => battle_dialogue_first_sentence(first_node ? first_node[:lines] : []),
      :lines => first_node ? first_node[:lines] : [],
      :word => first_word,
      :flow => flow
    }]
  rescue
    []
  end

  def self.enemy_follow_branch_nodes(enemy, word, accepted)
    nodes = []
    if word
      nodes << { :type => :message, :word => word,
                 :lines => enemy_follow_word_lines(word) }
    end
    name = enemy.respond_to?(:name) ? enemy.name.to_s : ''
    text = if accepted
             format('%sが仲間に加わった！', name)
           else
             format('%sは悲しそうに去っていった……', name)
           end
    begin
      farewell_word = Word.new(text, '', 0, enemy.battler_hue)
      nodes << { :type => :message, :word => farewell_word, :lines => [text] }
    rescue
    end
    nodes
  end

  def self.enemy_follow_word_lines(word)
    return [] unless word

    enemy_dialogue_word_lines(word)
  rescue
    []
  end

  # Convert the original perfume event into message and choice nodes.
  def self.enemy_perfume_event_flow(enemy, common_event)
    base_enemy = enemy_base_data(enemy)
    base_name = base_enemy && base_enemy.respond_to?(:name) ? base_enemy.name.to_s : ''
    current_name = enemy.respond_to?(:name) ? enemy.name.to_s : ''
    commands = Array(common_event.instance_variable_get(:@list))
    parse_enemy_perfume_event_nodes(enemy, commands, 0, nil, base_name, current_name).first
  rescue
    []
  end

  def self.parse_enemy_perfume_event_nodes(enemy, commands, start_index,
                                            stop_indent, base_name, current_name)
    nodes = []
    index = start_index
    while index < commands.size
      command = commands[index]
      code = command.instance_variable_get(:@code)
      indent = command.instance_variable_get(:@indent).to_i
      params = Array(command.instance_variable_get(:@parameters))
      if stop_indent && indent <= stop_indent &&
         [402, 403, 404, 411, 412].include?(code)
        return [nodes, index]
      elsif code == 101
        group = { :face_name => params[0].to_s, :face_index => params[1].to_i, :lines => [] }
        line_index = index + 1
        while line_index < commands.size &&
              commands[line_index].instance_variable_get(:@code) == 401
          line = Array(commands[line_index].instance_variable_get(:@parameters))[0].to_s
          line = line.gsub(base_name, current_name) unless base_name.empty? || current_name.empty?
          group[:lines] << line
          line_index += 1
        end
        begin
          word = Word.new(group[:lines].join("\\n"), group[:face_name],
                          group[:face_index], enemy.battler_hue)
          nodes << { :type => :message, :word => word, :lines => group[:lines] }
        rescue
          # Keep parsing later commands even if one optional face/message
          # cannot be represented by the current battle scene.
        end
        index = line_index
        next
      elsif code == 102
        prompt = nodes.pop if nodes.last && nodes.last[:type] == :message
        labels = params[0].is_a?(Array) ? params[0].map(&:to_s) : []
        choice_node = {
          :type => :choice, :prompt => prompt, :choices => labels,
          :branches => [],
          :choice_position => params[2].nil? ? nil : params[2].to_i,
          :choice_background => params[3].nil? ? nil : params[3].to_i
        }
        index += 1
        while index < commands.size
          branch_command = commands[index]
          branch_code = branch_command.instance_variable_get(:@code)
          branch_indent = branch_command.instance_variable_get(:@indent).to_i
          break unless [402, 403].include?(branch_code) && branch_indent == indent
          branch_params = Array(branch_command.instance_variable_get(:@parameters))
          branch = {
            :label => branch_code == 402 ? branch_params[1].to_s : '取消',
            :choice_index => branch_code == 402 ? branch_params[0].to_i : nil,
            :cancel => branch_code == 403
          }
          branch[:nodes], index = parse_enemy_perfume_event_nodes(
            enemy, commands, index + 1, indent, base_name, current_name
          )
          choice_node[:branches] << branch
          index += 1 if index < commands.size &&
                        commands[index].instance_variable_get(:@code) == 404
        end
        nodes << choice_node
        next
      elsif code == 111
        true_nodes, branch_end = parse_enemy_perfume_event_nodes(
          enemy, commands, index + 1, indent, base_name, current_name
        )
        false_nodes = []
        index = branch_end
        if index < commands.size &&
           commands[index].instance_variable_get(:@code) == 411 &&
           commands[index].instance_variable_get(:@indent).to_i == indent
          false_nodes, index = parse_enemy_perfume_event_nodes(
            enemy, commands, index + 1, indent, base_name, current_name
          )
          index += 1 if index < commands.size &&
                        commands[index].instance_variable_get(:@code) == 412
        elsif index < commands.size &&
              commands[index].instance_variable_get(:@code) == 412 &&
              commands[index].instance_variable_get(:@indent).to_i == indent
          index += 1
        end
        nodes << {
          :type => :conditional, :parameters => params.dup,
          :true_nodes => true_nodes, :false_nodes => false_nodes
        }
        next
      elsif code == 117
        common_event_id = params[0].to_i
        called_event = $data_common_events[common_event_id] if $data_common_events
        if called_event
          called_commands = Array(called_event.instance_variable_get(:@list))
          begin
            called_nodes = parse_enemy_perfume_event_nodes(
              enemy, called_commands, 0, nil, base_name, current_name
            ).first
            nodes.concat(called_nodes)
          rescue
            # Ignore an unsupported nested common event and continue the
            # original event flow.
          end
        end
      elsif code == 115 && stop_indent
        # End event processing.  This is used by failure branches such as
        # the original "ignore temptation" path.
        nodes << { :type => :terminate }
      elsif code == 231
        # Preserve original battle cut-in pictures used by perfume events.
        nodes << { :type => :picture_show, :parameters => params.dup }
      elsif code == 232
        nodes << { :type => :picture_move, :parameters => params.dup }
      elsif code == 235
        nodes << { :type => :picture_erase, :picture_id => params[0].to_i }
      elsif code == 250
        nodes << { :type => :sound_effect, :sound => params[0] }
      end
      index += 1
    end
    [nodes, index]
  rescue
    [nodes, commands.size]
  end

  def self.enemy_choice_response_entries(enemy, common_event_base = 1000,
                                         category = '选项回应', include_prefix = false)
    return [] unless enemy && $data_common_events

    enemy_data = enemy.respond_to?(:enemy) ? enemy.enemy : nil
    base_enemy = if enemy_data && enemy_data.respond_to?(:base_enemy)
                   enemy_data.base_enemy
                 else
                   enemy_data
                 end
    dialogue_enemy_id = base_enemy.id if base_enemy && base_enemy.respond_to?(:id)
    unless dialogue_enemy_id.is_a?(Integer)
      dialogue_enemy_id = enemy.enemy_id if enemy.respond_to?(:enemy_id)
      dialogue_enemy_id -= 1000 if (1001..2000).include?(dialogue_enemy_id)
      dialogue_enemy_id -= 2000 if (2001..3000).include?(dialogue_enemy_id)
    end
    return [] unless dialogue_enemy_id.is_a?(Integer)

    common_event = $data_common_events[common_event_base + dialogue_enemy_id]
    return [] unless common_event

    base_name = base_enemy && base_enemy.respond_to?(:name) ? base_enemy.name.to_s : ''
    current_name = enemy.respond_to?(:name) ? enemy.name.to_s : ''
    commands = Array(common_event.instance_variable_get(:@list))
    branches = []
    active_branches = {}
    choice_prompts = {}
    choice_prefixes = {}
    pending_groups = []
    choice_group_index = 0
    last_group = nil
    last_group_owner = nil
    index = 0
    while index < commands.size
      command = commands[index]
      code = command.instance_variable_get(:@code)
      indent = command.instance_variable_get(:@indent).to_i
      params = Array(command.instance_variable_get(:@parameters))
      if code == 101
        group = {
          :face_name => params[0].to_s,
          :face_index => params[1].to_i,
          :lines => []
        }
        line_index = index + 1
        while line_index < commands.size &&
              commands[line_index].instance_variable_get(:@code) == 401
          line_params = Array(commands[line_index].instance_variable_get(:@parameters))
          line = line_params[0].to_s
          line = line.gsub(base_name, current_name) unless base_name.empty? || current_name.empty?
          group[:lines] << line
          line_index += 1
        end
        active_levels = active_branches.keys.select { |level| level < indent }.sort
        owner = active_levels.empty? ? nil : active_branches[active_levels.last]
        if owner
          owner[:responses] << group
        else
          pending_groups << group
        end
        last_group = group
        last_group_owner = owner
        index = line_index
        next
      elsif code == 102
        if last_group_owner && last_group_owner[:responses].last.equal?(last_group)
          last_group_owner[:responses].pop
        end
        choice_group_index += 1
        last_group[:choice_group_index] = choice_group_index if last_group
        # Older event data stores only choices and cancel type.
        last_group[:choice_position] = (params[2] || 0).to_i if last_group
        last_group[:choice_background] = (params[3] || 0).to_i if last_group
        choice_prompts[indent] = last_group
        choice_prefixes[indent] = if pending_groups.last.equal?(last_group)
                                    pending_groups[0...-1]
                                  else
                                    pending_groups.dup
                                  end
        pending_groups = []
        last_group = nil
        last_group_owner = nil
      elsif code == 402 || code == 403
        active_branches.delete_if { |level, _branch| level >= indent }
        parent_levels = active_branches.keys.select { |level| level < indent }.sort
        label = code == 402 ? params[1].to_s : '取消'
        path = parent_levels.map { |level| active_branches[level][:label] }
        prompt_levels = (parent_levels + [indent]).uniq
        branch = {
          :label => label,
          :path => path + [label],
          :prompts => prompt_levels.map { |level| choice_prompts[level] }.compact,
          :prefix_groups => choice_prefixes[indent] || [],
          :choice_group_index => choice_prompts[indent] ? choice_prompts[indent][:choice_group_index] : nil,
          :choice_position => choice_prompts[indent] ? choice_prompts[indent][:choice_position] : 2,
          :choice_background => choice_prompts[indent] ? choice_prompts[indent][:choice_background] : 0,
          :responses => []
        }
        branches << branch
        active_branches[indent] = branch
        last_group = nil
        last_group_owner = nil
      elsif code == 404
        active_branches.delete_if { |level, _branch| level >= indent }
        choice_prompts.delete_if { |level, _prompt| level >= indent }
        last_group = nil
        last_group_owner = nil
      else
        last_group = nil unless code == 401
        last_group_owner = nil unless code == 401
      end
      index += 1
    end

    entries = []
    branches.each do |branch|
      next if branch[:responses].empty?

      groups = (include_prefix ? branch[:prefix_groups] : []) +
               branch[:prompts] + branch[:responses]
      words = groups.map do |group|
        Word.new(group[:lines].join(10.chr), group[:face_name],
                 group[:face_index], enemy.battler_hue)
      end
      lines = groups.each_with_object([]) do |group, result|
        result.concat(group[:lines])
      end
      choice_label = branch[:path].join(' → ')
      entries << {
        :category => category,
        :skill_id => nil,
        :skill_name => common_event.instance_variable_get(:@name).to_s,
        :word_index => entries.size + 1,
        :choice_label => choice_label,
        :choice_group_index => branch[:choice_group_index],
        :choice_position => branch[:choice_position],
        :choice_background => branch[:choice_background],
        :preview => battle_dialogue_first_sentence(branch[:responses].first[:lines]),
        :lines => lines,
        :word => words.first,
        :words => words,
        :prefix_words => words[0, (include_prefix ? branch[:prefix_groups].size : 0)] || [],
        :prompt_word_offset => (include_prefix ? branch[:prefix_groups].size : 0),
        :prompt_words => words[(include_prefix ? branch[:prefix_groups].size : 0),
                               branch[:prompts].size] || [],
        :response_words => words[(include_prefix ? branch[:prefix_groups].size : 0) +
                                 branch[:prompts].size..-1] || []
      }
    end
    return entries unless entries.empty?

    return [] if common_event_base != 1000

    enemy_special_common_event_entries(enemy).each_with_index.map do |entry, fallback_index|
      fallback = entry.dup
      fallback[:category] = '选项回应'
      fallback[:choice_label] = format('无法识别的选项（候选%d）', fallback_index + 1)
      fallback
    end
  rescue
    []
  end

  def self.enemy_dialogue_entries(enemy, mode = :all)
    return [] unless enemy

    word_hash = if enemy.respond_to?(:skill_word_hash)
                  enemy.skill_word_hash
                else
                  {}
                end
    word_hash = {} unless word_hash.is_a?(Hash)
    entries = []

    unless mode == :down
      available_skill_ids = begin
        enemy.all_actions.map(&:skill_id).uniq
      rescue
        []
      end
      word_hash.each do |skill_key, word_data|
        begin
          next unless word_data.is_a?(Hash)

        skill_ids = enemy_dialogue_skill_ids(skill_key)
          if mode == :available
            skill_ids &= available_skill_ids
          elsif mode == :special
            skill_ids &= SPECIAL_ENEMY_DIALOGUE_SKILL_IDS
          elsif mode == :playful
            skill_ids &= [PLAYFUL_DIALOGUE_SKILL_ID]
          end
          next if skill_ids.empty?

          skill = skill_ids.map { |skill_id| $data_skills[skill_id] }.compact.find do |entry|
            !entry.name.to_s.empty?
          end
          skill_id = skill ? skill.id : skill_ids.first
          skill_name = skill ? skill.name : '未命名技能'
          skill_names = skill_ids.map { |skill_id| $data_skills[skill_id] }.compact.map do |entry|
            entry.name.to_s
          end.reject(&:empty?).uniq
          skill_names = [skill_name] if skill_names.empty?
          words = NWConst::Actor.create_skill_words(word_data).select do |word|
            if mode == :temptation
              word.respond_to?(:condition) && word.condition == :temptation?
            else
              enemy.word_conditions_met?(word)
            end
          end
          words.each_with_index do |word, word_index|
            converted = enemy.create_skill_words(word)
            next unless converted

            playback_word = mode == :temptation ?
                            expanded_dialogue_word(converted) : converted
            lines = mode == :temptation ?
                    expanded_dialogue_word_lines(playback_word) :
                    enemy_dialogue_word_lines(playback_word)
            if mode == :temptation
              message_words = skill_temptation_message_words(
                skill, enemy.name, battle_dialogue_protagonist_name
              )
              all_words = [playback_word] + message_words
              lines = all_words.each_with_object([]) do |entry_word, result|
                result.concat(expanded_dialogue_word_lines(entry_word))
              end
            else
              all_words = [playback_word]
            end
            preview = battle_dialogue_first_sentence(lines)
            entries << {
              :category => if mode == :playful
                             '爱玩'
                           elsif mode == :temptation
                             '诱惑反应'
                           else
                             '技能台词'
                           end,
              :skill_id => skill_id,
              :skill_ids => skill_ids,
              :skill_name => skill_name,
              :skill_names => skill_names,
              :word_index => word_index + 1,
              :preview => preview,
              :lines => lines,
              :word => all_words.first,
              :words => all_words
            }
          end
        rescue
          next
        end
      end
    end

    if mode == :special
      entries.concat(enemy_special_common_event_entries(enemy))
    end

    if mode == :down || mode == :all
      if enemy.respond_to?(:down_word_hash)
        down_word_types = {
          :dead_word => '普通击败',
          :orgasm_word => '快乐击败',
          :predation_word => '捕食击败',
          :incontinence_word => '失禁异常'
        }
        down_word_types.each do |word_key, category|
          begin
            down_words = enemy.down_word_hash
            next unless down_words.is_a?(Hash)

            word_data = down_words[word_key]
            word = enemy.create_down_word(word_data) if word_data
            next unless word

            lines = enemy_dialogue_word_lines(word)
            preview = lines.join(' ').strip
            preview = '(无文字)' if preview.empty?
            entries << {
              :category => category,
              :skill_id => nil,
              :skill_name => category,
              :word_index => 1,
              :preview => preview,
              :lines => lines,
              :word => word
            }
          rescue
            next
          end
        end
      end
    end
    entries
  end

  def self.follow_always_success?
    return false unless $game_system

    $game_system.instance_variable_get(FOLLOW_ALWAYS_SUCCESS_KEY) == true
  end

  def self.toggle_follow_always_success
    enabled = !follow_always_success?
    $game_system.instance_variable_set(FOLLOW_ALWAYS_SUCCESS_KEY, enabled)
    enabled
  end

  def self.sure_hit_kill_target?(target, user, item)
    sure_hit_kill? && target && user && item && user.actor? && target.enemy? &&
      item.respond_to?(:for_opponent?) && item.for_opponent?
  end

  def self.sure_kill_damage_item?(item)
    return false unless item && item.respond_to?(:damage) && item.damage

    item.damage.to_hp? && !item.damage.recover?
  end

  def self.temptation_hp_condition?(common_event_id, params)
    common_event_id == TEMPTATION_COMMON_EVENT_ID &&
      params == [1, TEMPTATION_CURRENT_HP_VARIABLE_ID, 1,
                 TEMPTATION_THRESHOLD_VARIABLE_ID, 4]
  end

  def self.temptation_entry_condition?(common_event_id, params)
    common_event_id == TEMPTATION_CHECK_COMMON_EVENT_ID &&
      params == [1, TEMPTATION_ROLL_VARIABLE_ID, 0, 1, 0]
  end

  def self.persona_dialogue_compatibility?
    return false unless $game_system

    $game_system.instance_variable_get(PERSONA_DIALOGUE_COMPATIBILITY_KEY) == true
  end

  def self.toggle_persona_dialogue_compatibility
    enabled = !persona_dialogue_compatibility?
    $game_system.instance_variable_set(PERSONA_DIALOGUE_COMPATIBILITY_KEY, enabled)
    $game_map.need_refresh = true if $game_map
    enabled
  end

  def self.love_dialogue_compatibility?
    return false unless $game_system

    $game_system.instance_variable_get(LOVE_DIALOGUE_COMPATIBILITY_KEY) == true
  end

  def self.toggle_love_dialogue_compatibility
    enabled = !love_dialogue_compatibility?
    $game_system.instance_variable_set(LOVE_DIALOGUE_COMPATIBILITY_KEY, enabled)
    $game_map.need_refresh = true if $game_map
    enabled
  end

  def self.maoujou_gift_dialogue_compatibility?
    return false unless $game_system

    $game_system.instance_variable_get(MAOUJOU_GIFT_DIALOGUE_COMPATIBILITY_KEY) == true
  end

  def self.toggle_maoujou_gift_dialogue_compatibility
    enabled = !maoujou_gift_dialogue_compatibility?
    $game_system.instance_variable_set(MAOUJOU_GIFT_DIALOGUE_COMPATIBILITY_KEY, enabled)
    $game_map.need_refresh = true if $game_map
    enabled
  end

  def self.maoujou_pleading_dialogue_compatibility?
    return false unless $game_system

    $game_system.instance_variable_get(MAOUJOU_PLEADING_DIALOGUE_COMPATIBILITY_KEY) == true
  end

  def self.toggle_maoujou_pleading_dialogue_compatibility
    enabled = !maoujou_pleading_dialogue_compatibility?
    $game_system.instance_variable_set(MAOUJOU_PLEADING_DIALOGUE_COMPATIBILITY_KEY, enabled)
    $game_map.need_refresh = true if $game_map
    enabled
  end

  def self.maoujou_pleading_suppression?
    return false unless $game_temp

    $game_temp.instance_variable_get(MAOUJOU_PLEADING_SUPPRESSION_KEY) == true
  end

  def self.set_maoujou_pleading_suppression(value)
    return unless $game_temp

    $game_temp.instance_variable_set(MAOUJOU_PLEADING_SUPPRESSION_KEY, value == true)
  end

  def self.maoujou_pleading_request_pending?
    @maoujou_pleading_request_pending == true
  end

  def self.set_maoujou_pleading_request_pending(value)
    @maoujou_pleading_request_pending = (value == true)
  end

  def self.maoujou_pleading_request_choice_count
    @maoujou_pleading_request_choice_count.to_i
  end

  def self.set_maoujou_pleading_request_choice_count(value)
    @maoujou_pleading_request_choice_count = value.to_i
  end

  def self.maoujou_pleading_choice_mode
    @maoujou_pleading_choice_mode
  end

  def self.set_maoujou_pleading_choice_mode(value)
    @maoujou_pleading_choice_mode = value
  end

  def self.maoujou_remove_candidate_compatibility?
    return false unless $game_system

    $game_system.instance_variable_get(MAOUJOU_REMOVE_CANDIDATE_COMPATIBILITY_KEY) == true
  end

  def self.toggle_maoujou_remove_candidate_compatibility
    enabled = !maoujou_remove_candidate_compatibility?
    $game_system.instance_variable_set(MAOUJOU_REMOVE_CANDIDATE_COMPATIBILITY_KEY, enabled)
    $game_map.need_refresh = true if $game_map
    enabled
  end

  def self.removed_candidate_actor_ids
    return [] unless $game_system

    ids = $game_system.instance_variable_get(REMOVED_CANDIDATE_ACTOR_IDS_KEY)
    ids = [] unless ids.is_a?(Array)
    ids.map(&:to_i).select { |id| id > 0 }.uniq
  end

  def self.removed_candidate_actor?(actor_id)
    id = actor_id.to_i
    original_id = if $game_actors && $game_actors.respond_to?(:original_id)
                    ($game_actors.original_id(id) rescue id).to_i
                  else
                    id
                  end
    removed_candidate_actor_ids.include?(id) ||
      removed_candidate_actor_ids.include?(original_id)
  end

  def self.mark_removed_candidate_actor(actor_id)
    return unless $game_system

    ids = removed_candidate_actor_ids
    id = actor_id.to_i
    ids << id unless ids.include?(id)
    if $game_actors && $game_actors.respond_to?(:original_id)
      original_id = ($game_actors.original_id(id) rescue id).to_i
      ids << original_id if original_id > 0 && !ids.include?(original_id)
    end
    $game_system.instance_variable_set(REMOVED_CANDIDATE_ACTOR_IDS_KEY, ids)
  end

  def self.clear_removed_candidate_actor(actor_id)
    return unless $game_system

    ids = removed_candidate_actor_ids
    id = actor_id.to_i
    ids.delete(id)
    if $game_actors && $game_actors.respond_to?(:original_id)
      ids.delete(($game_actors.original_id(id) rescue id).to_i)
    end
    $game_system.instance_variable_set(REMOVED_CANDIDATE_ACTOR_IDS_KEY, ids)
  end

  def self.candidate_dialogue_view?
    return false unless $game_system

    $game_system.instance_variable_get(CANDIDATE_DIALOGUE_VIEW_KEY) == true
  end

  def self.toggle_candidate_dialogue_view
    enabled = !candidate_dialogue_view?
    $game_system.instance_variable_set(CANDIDATE_DIALOGUE_VIEW_KEY, enabled)
    enabled
  end

  def self.all_dialogue_force_party?
    return false unless $game_system

    $game_system.instance_variable_get(ALL_DIALOGUE_FORCE_PARTY_KEY) == true
  end

  def self.toggle_all_dialogue_force_party
    enabled = !all_dialogue_force_party?
    $game_system.instance_variable_set(ALL_DIALOGUE_FORCE_PARTY_KEY, enabled)
    enabled
  end

  def self.all_dialogue_state
    candidate_enabled = candidate_dialogue_view?
    force_party_enabled = all_dialogue_force_party?
    return :enabled if candidate_enabled && force_party_enabled
    return :disabled unless candidate_enabled || force_party_enabled

    :partial
  end

  def self.all_dialogue_state_text
    case all_dialogue_state
    when :enabled
      '已开启'
    when :partial
      '部分开启'
    else
      '已关闭'
    end
  end

  def self.toggle_all_dialogue
    enabled = all_dialogue_state != :enabled
    $game_system.instance_variable_set(CANDIDATE_DIALOGUE_VIEW_KEY, enabled)
    $game_system.instance_variable_set(ALL_DIALOGUE_FORCE_PARTY_KEY, enabled)
    enabled
  end

  def self.persona_dialogue_page?(page)
    return false unless page

    !persona_ids_from_page(page).empty?
  end

  def self.persona_ids_from_page(page)
    page.list.flat_map do |command|
      command.parameters.grep(String).flat_map do |parameter|
        parameter.scan(/persona_change\s*\(\s*(\d+)\s*\)/).flatten.map(&:to_i)
      end
    end.uniq
  end

  def self.persona_dialogue_menu?(var_id, names)
    return false unless var_id.to_i == PERSONA_DIALOGUE_VARIABLE_ID

    normalized = Array(names).map { |name| name.to_s.strip }
    return true if PERSONA_DIALOGUE_BASE_MENU_TEXTS.all? { |text| normalized.include?(text) }

    # The embedded Chinese release translates event choice labels in the data.
    has_gift = normalized.any? do |text|
      text.include?('プレゼント') || text.include?('礼物')
    end
    has_gift_list = normalized.any? do |text|
      text.include?('リスト') || text.include?('列表')
    end
    has_cancel = normalized.any? { |text| persona_dialogue_cancel_text?(text) }
    has_gift && (has_gift_list || has_cancel)
  end

  def self.persona_dialogue_pleading_text?(text)
    value = text.to_s.strip
    value == 'おねだりする' || value.include?('撒娇')
  end

  def self.persona_dialogue_cancel_text?(text)
    %w[やめる 放弃 取消].include?(text.to_s.strip)
  end

  def self.candidate_dialogue_menu?(var_id, names)
    persona_dialogue_menu?(var_id, names)
  end

  def self.candidate_dialogue_command?(command, code)
    command && command.code == code
  end

  def self.candidate_dialogue_text_blocks(list, start_index, end_index)
    blocks = []
    current = nil
    from = [start_index, 0].max
    to = [end_index, list.size].min
    (from...to).each do |index|
      command = list[index]
      code = command.code
      parameters = command.parameters
      if code == 101
        blocks << current if current && !current[:lines].empty?
        current = {
          :face_name => parameters[0].to_s,
          :face_index => parameters[1].to_i,
          :lines => []
        }
      elsif code == 401
        current[:lines] << parameters[0].to_s if current
      elsif current && !current[:lines].empty?
        blocks << current
        current = nil
      end
    end
    blocks << current if current && !current[:lines].empty?
    blocks
  end

  def self.candidate_dialogue_actor_jump_index(list, choice_index)
    return nil unless list && choice_index

    upper_bound = [choice_index, list.size].min - 1
    upper_bound.downto(0) do |index|
      command = list[index]
      next unless candidate_dialogue_command?(command, 355)
      next unless command.parameters[0].to_s.strip == 'actor_label_jump'

      return index
    end
    nil
  end

  def self.ring_dialogue_condition?(command)
    return false unless candidate_dialogue_command?(command, 111)

    parameters = command.parameters
    parameters[0].to_i == 1 &&
      parameters[1].to_i == RING_RECIPIENT_VARIABLE_ID &&
      parameters[2].to_i == 0 && parameters[4].to_i == 0
  end

  def self.ring_dialogue_branch_end(list, condition_index, upper_bound)
    condition = list[condition_index]
    indent = condition.indent
    index = condition_index + 1
    while index < upper_bound
      command = list[index]
      if command.indent == indent && (command.code == 411 || command.code == 412)
        return index
      end
      index += 1
    end
    upper_bound
  end

  def self.ring_dialogue_preview(blocks)
    lines = blocks.flat_map { |block| block[:lines] }
    preview = lines.find { |line| line !~ /^【.*】/ }.to_s
    preview = lines.first.to_s if preview.empty?
    preview.size > 28 ? preview[0, 28] + '…' : preview
  end

  def self.ring_dialogue_entries(list, choice_index)
    actor_jump_index = candidate_dialogue_actor_jump_index(list, choice_index)
    return [] unless actor_jump_index

    entries = []
    (0...actor_jump_index).each do |index|
      command = list[index]
      next unless ring_dialogue_condition?(command)

      end_index = ring_dialogue_branch_end(list, index, actor_jump_index)
      blocks = candidate_dialogue_text_blocks(list, index + 1, end_index)
      next if blocks.empty?

      ring_value = command.parameters[3].to_i
      entries << {
        :ring_value => ring_value,
        :name => format('戒指对象%d：%s', ring_value,
                        ring_dialogue_preview(blocks)),
        :blocks => blocks
      }
    end
    entries.uniq do |entry|
      [entry[:ring_value], entry[:blocks].map { |block| block[:lines] }]
    end
  rescue
    []
  end

  def self.candidate_dialogue_actor_name(actor_id, blocks)
    actor = $data_actors[actor_id]
    name = actor ? actor.name.to_s : ''
    return name unless name.empty?

    if defined?($game_actors) && $game_actors && $game_actors[actor_id]
      name = $game_actors[actor_id].name.to_s
      return name unless name.empty?
    end

    blocks.each do |block|
      block[:lines].each do |line|
        match = line.to_s.match(/^【([^】]+)】/)
        return match[1] if match
      end
    end
    "Actor #{actor_id}"
  rescue
    "Actor #{actor_id}"
  end

  def self.candidate_dialogue_entries(list, choice_index)
    return [] unless list && choice_index

    actor_label_jump_index = candidate_dialogue_actor_jump_index(list, choice_index)
    return [] unless actor_label_jump_index

    entries = []
    menu_label = "メニュー"
    first_menu_jump = nil
    ((actor_label_jump_index + 1)...choice_index).each do |index|
      command = list[index]
      if candidate_dialogue_command?(command, 119) &&
         command.parameters[0].to_s == menu_label
        first_menu_jump = index
        break
      end
    end
    if first_menu_jump
      blocks = candidate_dialogue_text_blocks(
        list, actor_label_jump_index + 1, first_menu_jump
      )
      entries << {
        :actor_id => nil,
        :name => "默认对话（无匹配队友）",
        :blocks => blocks
      } unless blocks.empty?
    end

    label_indices = []
    ((actor_label_jump_index + 1)...choice_index).each do |index|
      command = list[index]
      next unless candidate_dialogue_command?(command, 118)

      label = command.parameters[0].to_s
      break if label == menu_label
      label_indices << [index, label.to_i] if label =~ /^\d+$/
    end
    label_indices.each_with_index do |(label_index, actor_id), label_position|
      next_index = if label_position + 1 < label_indices.size
                     label_indices[label_position + 1][0]
                   else
                     choice_index
                   end
      end_index = label_index + 1
      while end_index < next_index
        command = list[end_index]
        break if candidate_dialogue_command?(command, 119)
        end_index += 1
      end
      blocks = candidate_dialogue_text_blocks(list, label_index + 1, end_index)
      next if blocks.empty?

      entries << {
        :actor_id => actor_id,
        :name => candidate_dialogue_actor_name(actor_id, blocks),
        :blocks => blocks
      }
    end
    entries
  rescue
    []
  end

  def self.restore(actor)
    snapshot = snapshot_store[actor.id]
    return false unless snapshot

    actor.change_class(snapshot[:class_id], :class)
    actor.change_class(snapshot[:tribe_id], :tribe)
    actor.instance_variable_set(:@exp, Marshal.load(Marshal.dump(snapshot[:exp])))
    actor.instance_variable_set(:@level, Marshal.load(Marshal.dump(snapshot[:level])))
    actor.instance_variable_set(:@level_list, Marshal.load(Marshal.dump(snapshot[:level_list])))
    actor.instance_variable_set(:@skills, Marshal.load(Marshal.dump(snapshot[:skills])))
    actor.instance_variable_set(:@abilities, Marshal.load(Marshal.dump(snapshot[:abilities]))) if snapshot.key?(:abilities)
    if snapshot.key?(:equip_abilities)
      actor.instance_variable_set(:@equip_abilities, Marshal.load(Marshal.dump(snapshot[:equip_abilities])))
    end
    if snapshot.key?(:suppressed_level_abilities)
      actor.instance_variable_set(:@research_mod_suppressed_level_abilities,
                                  Marshal.load(Marshal.dump(snapshot[:suppressed_level_abilities])))
    end
    if snapshot.key?(:param_plus)
      actor.instance_variable_set(:@param_plus, Marshal.load(Marshal.dump(snapshot[:param_plus])))
    end
    actor.love = snapshot[:love] if snapshot.key?(:love)
    actor.refresh
    true
  end

  def self.next_actor(actor)
    members = $game_party.members
    return actor if members.empty?

    index = members.index(actor) || -1
    members[(index + 1) % members.size]
  end
end

module Cache
  class << self
    alias research_mod_graphics_override_normal_bitmap normal_bitmap
    alias research_mod_graphics_override_hue_changed_bitmap hue_changed_bitmap

    def normal_bitmap(path)
      override = ResearchMod.graphics_override_path(path)
      research_mod_graphics_override_normal_bitmap(override || path)
    end

    def hue_changed_bitmap(path, hue)
      override = ResearchMod.graphics_override_path(path)
      research_mod_graphics_override_hue_changed_bitmap(override || path, hue)
    end
  end
end

# Provide achievement record editing without treating medals as switches.
module ResearchMod
  ACHIEVEMENT_PAGE_SIZE = 200 unless const_defined?(:ACHIEVEMENT_PAGE_SIZE)
  ACHIEVEMENT_BACKUP_KEY = :@research_mod_achievement_backup unless
    const_defined?(:ACHIEVEMENT_BACKUP_KEY)
  ACHIEVEMENT_AUTO_SUPPRESSION_KEY =
    :@research_mod_achievement_auto_suppression unless
    const_defined?(:ACHIEVEMENT_AUTO_SUPPRESSION_KEY)

  def self.achievement_ids
    return [] unless defined?(NWConst::Library::MEDAL_DATA)

    excluded = if defined?(NWConst::Library::NO_USE_MEDAL)
                 NWConst::Library::NO_USE_MEDAL
               else
                 []
               end
    NWConst::Library::MEDAL_DATA.keys.select do |id|
      id.is_a?(Integer) && !excluded.include?(id)
    end.sort
  rescue
    []
  end

  def self.achievement_maximum_id
    ids = achievement_ids
    ids.empty? ? 1 : ids.last
  end

  def self.achievement_data(id)
    return nil unless defined?(NWConst::Library::MEDAL_DATA)

    NWConst::Library::MEDAL_DATA[id]
  rescue
    nil
  end

  def self.achievement_title(id)
    data = achievement_data(id)
    title = data ? data[:title].to_s : ''
    title.empty? ? '(无标题)' : title
  end

  def self.achievement_description(id)
    data = achievement_data(id)
    data ? data[:description].to_s : ''
  end

  def self.achievement_medal_store
    return {} unless $game_library

    store = $game_library.instance_variable_get(:@medal)
    unless store.is_a?(Hash)
      store = {}
      $game_library.instance_variable_set(:@medal, store)
    end
    store
  end

  def self.achievement_achieved?(id)
    achievement_medal_store.key?(id)
  end

  def self.achievement_time
    if $game_system && $game_system.respond_to?(:realtime_s)
      $game_system.realtime_s
    else
      Time.now.to_i
    end
  rescue
    Time.now.to_i
  end

  def self.unlock_achievement_library
    return unless $game_library

    if $game_library.respond_to?(:unlock_lib_medal)
      $game_library.unlock_lib_medal
      return
    end
    unlock = $game_library.instance_variable_get(:@unlock)
    unlock[:medal] = true if unlock.is_a?(Hash)
  end

  def self.set_achievement(id, achieved)
    return false unless achievement_ids.include?(id.to_i)

    id = id.to_i
    if achieved
      resume_achievement_auto(id)
      achievement_medal_store[id] = achievement_time unless
        achievement_achieved?(id)
      unlock_achievement_library
    else
      achievement_medal_store.delete(id)
    end
    true
  rescue
    false
  end

  def self.achievement_auto_suppressed_ids
    return [] unless $game_system

    value = $game_system.instance_variable_get(
      ACHIEVEMENT_AUTO_SUPPRESSION_KEY
    )
    unless value.is_a?(Array)
      value = []
      $game_system.instance_variable_set(
        ACHIEVEMENT_AUTO_SUPPRESSION_KEY, value
      )
    end
    value
  end

  def self.achievement_auto_suppressed?(id)
    achievement_auto_suppressed_ids.include?(id.to_i)
  end

  def self.suppress_achievement_auto(id)
    id = id.to_i
    return false unless achievement_ids.include?(id)

    ids = achievement_auto_suppressed_ids
    ids << id unless ids.include?(id)
    true
  end

  def self.resume_achievement_auto(id)
    achievement_auto_suppressed_ids.delete(id.to_i)
    true
  end

  def self.clear_and_suppress_achievement(id)
    return false unless achievement_ids.include?(id.to_i)

    id = id.to_i
    achievement_medal_store.delete(id)
    suppress_achievement_auto(id)
    clear_pending_achievement_notifications
    true
  end

  def self.achievement_status_label(id)
    return '已达成' if achievement_achieved?(id)
    return '暂停自动' if achievement_auto_suppressed?(id)

    '未达成'
  end

  def self.achievement_summary
    ids = achievement_ids
    achieved = ids.count { |id| achievement_achieved?(id) }
    suppressed = ids.count { |id| achievement_auto_suppressed?(id) }
    format('状态：已达成%d/%d，暂停自动%d', achieved, ids.size, suppressed)
  end

  def self.suppress_all_achievement_auto
    ids = achievement_ids
    achievement_medal_store
    ids.each { |id| suppress_achievement_auto(id) }
    set_all_achievements(false)
    clear_pending_achievement_notifications
    ids.size
  end

  def self.resume_all_achievement_auto
    ids = achievement_auto_suppressed_ids
    count = ids.size
    ids.clear
    count
  end

  def self.clear_pending_achievement_notifications
    return false unless $game_temp

    pending = $game_temp.instance_variable_get(:@gain_medals)
    pending.clear if pending.respond_to?(:clear)
    true
  end

  def self.auto_medal_check_interpreter?(interpreter)
    return false unless $game_map && interpreter

    interpreter.equal?($game_map.instance_variable_get(:@medal_event))
  rescue
    false
  end

  def self.auto_medal_check_active?
    @achievement_auto_check_depth.to_i > 0
  end

  def self.with_auto_medal_check
    @achievement_auto_check_depth = @achievement_auto_check_depth.to_i + 1
    yield
  ensure
    @achievement_auto_check_depth =
      [@achievement_auto_check_depth.to_i - 1, 0].max
  end

  def self.set_all_achievements(achieved)
    ids = achievement_ids
    if achieved
      resume_all_achievement_auto
      time = achievement_time
      store = achievement_medal_store
      ids.each { |id| store[id] = time unless store.key?(id) }
      unlock_achievement_library unless ids.empty?
      clear_pending_achievement_notifications
    else
      store = achievement_medal_store
      ids.each { |id| store.delete(id) }
      clear_pending_achievement_notifications
    end
    ids.size
  rescue
    0
  end

  def self.achievement_page(start_id)
    ids = achievement_ids
    maximum = achievement_maximum_id
    start_id = [[start_id.to_i, maximum].min, 1].max
    available = ids.select { |id| id >= start_id }
    entries = available.first(ACHIEVEMENT_PAGE_SIZE)
    next_id = available[ACHIEVEMENT_PAGE_SIZE]
    { :start_id => start_id, :entries => entries,
      :next_start_id => next_id, :maximum_id => maximum }
  end

  def self.achievement_backup?
    return false unless $game_system

    data = $game_system.instance_variable_get(ACHIEVEMENT_BACKUP_KEY)
    data.is_a?(Hash) && data[:medal].is_a?(Hash)
  end

  def self.backup_achievements
    return false unless $game_system && $game_library

    unlock = $game_library.instance_variable_get(:@unlock)
    data = {
      :medal => Marshal.load(Marshal.dump(achievement_medal_store)),
      :unlocked => unlock.is_a?(Hash) ? unlock[:medal] == true : false,
      :auto_suppressed => Marshal.load(
        Marshal.dump(achievement_auto_suppressed_ids)
      )
    }
    $game_system.instance_variable_set(ACHIEVEMENT_BACKUP_KEY, data)
    true
  rescue
    false
  end

  def self.restore_achievements
    return false unless achievement_backup? && $game_library

    data = $game_system.instance_variable_get(ACHIEVEMENT_BACKUP_KEY)
    medal = Marshal.load(Marshal.dump(data[:medal]))
    $game_library.instance_variable_set(:@medal, medal)
    unlock = $game_library.instance_variable_get(:@unlock)
    unlock[:medal] = data[:unlocked] == true if unlock.is_a?(Hash)
    suppressed = data[:auto_suppressed]
    suppressed = [] unless suppressed.is_a?(Array)
    $game_system.instance_variable_set(
      ACHIEVEMENT_AUTO_SUPPRESSION_KEY, suppressed.map(&:to_i).uniq
    )
    clear_pending_achievement_notifications
    true
  rescue
    false
  end

  def self.achievement_wrap(text, width = 34, max_lines = 2)
    value = text.to_s.gsub(/\r?\n/, '')
    lines = []
    until value.empty? || lines.size >= max_lines
      lines << value.slice!(0, width)
    end
    if !value.empty? && lines.any?
      lines[-1] = lines[-1][0, width - 3] + '...'
    end
    lines
  end
end

class Game_Library
  alias research_mod_achievement_gain_medal gain_medal

  def gain_medal(id)
    if ResearchMod.auto_medal_check_active? &&
       ResearchMod.achievement_auto_suppressed?(id)
      return
    end

    research_mod_achievement_gain_medal(id)
  end
end

class Game_Interpreter
  alias research_mod_achievement_execute_command execute_command

  def execute_command
    if ResearchMod.auto_medal_check_interpreter?(self)
      ResearchMod.with_auto_medal_check do
        research_mod_achievement_execute_command
      end
    else
      research_mod_achievement_execute_command
    end
  end
end

class Window_ResearchModAchievementMenu < Window_Command
  def initialize(help_window)
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  def window_width
    380
  end

  def visible_line_number
    4
  end

  def make_command_list
    add_command('修改成就记录', :edit)
    add_command('备份成就数据', :backup)
    add_command('还原成就数据', :restore,
                ResearchMod.achievement_backup?)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    lines = case current_symbol
            when :edit
              ['按有效成就ID修改取得记录。',
               '可区分清除记录和暂停自动重获。',
               '修改前一定要备份游戏存档。']
            when :backup
              ['备份当前成就取得记录。',
               '旧的成就数据备份会被覆盖。',
               '仍建议先备份游戏存档。']
            when :restore
              ['用成就数据备份覆盖当前记录。',
               '此操作不会还原其它游戏数据。',
               '执行前一定要备份游戏存档。']
            else
              ['返回研究修改器。']
    end
    lines.unshift(ResearchMod.achievement_summary)
    help_window.set_text(lines.join(10.chr))
  end
end

class Window_ResearchModAchievementIdInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(initial_id)
    @maximum = ResearchMod.achievement_maximum_id
    value = [[initial_id.to_i, @maximum].min, 1].max
    start(@maximum.to_s.size, value)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModAchievementList < Window_Command
  attr_reader :page

  def initialize(start_id, history, help_window)
    @history = history
    @page = ResearchMod.achievement_page(start_id)
    @help_height = help_window.height
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @help_height
  end

  def cursor_up(wrap = false)
    return select(item_max - 1) if index == 0

    super
  end

  def make_command_list
    add_command('重新输入起始ID', :reinput)
    add_command(format('加载上一批%d项',
                       ResearchMod::ACHIEVEMENT_PAGE_SIZE),
                :previous, !@history.empty?)
    add_command('全部设为达成', :all_on)
    add_command('全部清除记录', :all_off)
    add_command('全部清除并暂停自动重获', :all_off_suppressed)
    add_command('恢复全部自动判定', :resume_auto)
    add_command('清空待显示成就提示', :clear_notifications)
    @page[:entries].each do |id|
      state = ResearchMod.achievement_status_label(id)
      title = ResearchMod.achievement_title(id)[0, 38]
      add_command(format('%4d [%s] %s', id, state, title),
                  :select, true, id)
    end
    add_command(format('加载下一批%d项',
                       ResearchMod::ACHIEVEMENT_PAGE_SIZE),
                :next, !@page[:next_start_id].nil?)
    add_command('重新输入起始ID', :reinput)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      id = current_ext
      state = ResearchMod.achievement_status_label(id)
      lines = [format('成就ID：%d　状态：%s', id, state)]
      lines.concat(ResearchMod.achievement_wrap(
                     ResearchMod.achievement_title(id), 34, 1
                   ))
      lines.concat(ResearchMod.achievement_wrap(
                     ResearchMod.achievement_description(id), 34, 2
                   ))
      lines << '确认后修改；请先备份游戏存档。'
      help_window.set_text(lines.join(10.chr))
      return
    end

    lines = case current_symbol
            when :reinput
              ['重新输入成就起始ID。']
            when :previous
              ['返回上一批有效成就。']
            when :next
              ['加载下一批有效成就。']
            when :all_on
              ['将全部有效成就设为达成。',
               '不会连续弹出原版取得提示。',
               '执行前一定要备份游戏存档。']
            when :all_off
              ['将全部有效成就设为未达成。',
               '满足条件时仍可能被自动重新授予。',
               '不会改变剧情开关或统计数据。']
            when :all_off_suppressed
              ['清除全部成就并暂停自动重获。',
               '剧情和Boss事件仍可正常授予成就。',
               '可用“恢复全部自动判定”解除。']
            when :resume_auto
              ['恢复全部成就的原版自动判定。',
               '满足条件的成就可能重新出现提示。']
            when :clear_notifications
              ['清空当前等待显示的成就提示。',
               '不会改变成就取得记录。']
             else
               ['返回成就数据菜单。']
             end
    lines.unshift(ResearchMod.achievement_summary)
    help_window.set_text(lines.join(10.chr))
  end
end

class Window_ResearchModAchievementAction < Window_Command
  def initialize(id, help_window)
    @achievement_id = id
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    self.z = 500
    update_help
  end

  def window_width
    340
  end

  def visible_line_number
    5
  end

  def make_command_list
    add_command('设为达成', :set, true, true)
    add_command('清除取得记录', :set, true, false)
    add_command('清除并暂停自动重获', :suppress, true)
    add_command('恢复自动判定', :resume_auto,
                ResearchMod.achievement_auto_suppressed?(@achievement_id))
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    current = ResearchMod.achievement_achieved?(@achievement_id)
    target = current_symbol == :set ? current_ext : current
    lines = [format('成就ID：%d', @achievement_id),
             ResearchMod.achievement_title(@achievement_id)[0, 34],
             format('当前：%s　目标：%s',
                    ResearchMod.achievement_status_label(@achievement_id),
                    target ? '达成' : '未达成'),
             '修改前一定要备份游戏存档。']
    help_window.set_text(lines.join(10.chr))
  end
end

class Window_ResearchModAchievementConfirm < Window_Command
  attr_reader :operation

  def initialize(operation, help_window)
    @operation = operation
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    self.z = 600
    update_help
  end

  def window_width
    360
  end

  def visible_line_number
    2
  end

  def make_command_list
    add_command('确认执行', :execute)
    add_command('取消', :cancel)
  end

  def update_help
    return unless help_window

    label = case @operation
            when :restore then '还原成就数据备份'
            when :all_on then '将全部成就设为达成'
            when :all_off then '清除全部成就记录'
            when :all_off_suppressed then '清除全部记录并暂停自动重获'
            when :resume_auto then '恢复全部自动判定'
            else '执行成就数据操作'
            end
    lines = [label]
    if [:all_on, :all_off, :all_off_suppressed, :restore].include?(@operation)
      lines << '该操作会覆盖当前成就状态。'
    end
    lines << '请确认已备份游戏存档。'
    help_window.set_text(lines.join(10.chr))
  end
end

module ResearchModAchievementCommandExtension
  def research_mod_add_achievement_command
    add_command('成就数据', :achievement_data)
    command = @list.pop
    value_index = @list.index { |entry| entry[:symbol] == :value_editor }
    insert_index = value_index ? value_index + 1 : @list.length
    @list.insert(insert_index, command)
  end

  def research_mod_update_achievement_help
    return unless help_window && current_symbol == :achievement_data

    help_window.set_text(
      ['修改、备份或还原成就取得记录。',
       '可暂停自动重获，但不阻止剧情授予。',
       '操作前一定要备份游戏存档。'].join(10.chr)
    )
  end
end

module ResearchModAchievementSceneExtension
  def research_mod_setup_achievement_handler
    @command_window.set_handler(
      :achievement_data, method(:open_achievement_data)
    )
  end

  def open_achievement_data
    @achievement_help_window = Window_Help.new(6)
    @achievement_help_window.y =
      Graphics.height - @achievement_help_window.height
    @achievement_menu_window = Window_ResearchModAchievementMenu.new(
      @achievement_help_window
    )
    @achievement_menu_window.set_handler(
      :edit, method(:open_achievement_id_input)
    )
    @achievement_menu_window.set_handler(
      :backup, method(:backup_achievement_data)
    )
    @achievement_menu_window.set_handler(
      :restore, method(:confirm_restore_achievement_data)
    )
    @achievement_menu_window.set_handler(
      :cancel, method(:close_achievement_data)
    )
    @achievement_start_id ||= 1
    @achievement_history = []
    @command_window.deactivate
  end

  def close_achievement_data
    defer_research_mod_window_dispose(@achievement_confirm_window)
    defer_research_mod_window_dispose(@achievement_action_window)
    defer_research_mod_window_dispose(@achievement_list_window)
    defer_research_mod_window_dispose(@achievement_id_window)
    defer_research_mod_window_dispose(@achievement_menu_window)
    defer_research_mod_window_dispose(@achievement_help_window)
    @achievement_confirm_window = nil
    @achievement_action_window = nil
    @achievement_list_window = nil
    @achievement_id_window = nil
    @achievement_menu_window = nil
    @achievement_help_window = nil
    @achievement_history = []
    @command_window.activate
    @command_window.update_help
  end

  def backup_achievement_data
    if ResearchMod.backup_achievements
      @achievement_help_window.set_text(
        ['成就数据备份完成。',
         '自动重获暂停状态也会备份。',
         '备份随当前游戏存档保存。',
         '仍建议保留独立游戏存档。'].join(10.chr)
      )
    else
      Sound.play_buzzer
      @achievement_help_window.set_text('成就数据备份失败。')
    end
    @achievement_menu_window.refresh
    @achievement_menu_window.activate
  end

  def confirm_restore_achievement_data
    open_achievement_confirm(:restore)
  end

  def open_achievement_id_input
    unless @achievement_id_window
      @achievement_id_window = Window_ResearchModAchievementIdInput.new
      @achievement_id_window.set_handler(
        :ok, method(:apply_achievement_start_id)
      )
      @achievement_id_window.set_handler(
        :cancel, method(:close_achievement_id_input)
      )
    end
    @achievement_return_to_list = false
    @achievement_menu_window.deactivate
    @achievement_id_window.setup(@achievement_start_id)
    @achievement_help_window.set_text(
      [format('输入起始ID：1～%d。',
              ResearchMod.achievement_maximum_id),
       format('确认后加载最多%d项。',
              ResearchMod::ACHIEVEMENT_PAGE_SIZE),
       '只显示有效成就ID。',
       '修改前一定要备份游戏存档。'].join(10.chr)
    )
  end

  def close_achievement_id_input
    @achievement_id_window.close
    @achievement_id_window.deactivate
    if @achievement_return_to_list && @achievement_list_window
      @achievement_list_window.show
      @achievement_list_window.activate
      @achievement_list_window.update_help
    else
      @achievement_menu_window.show
      @achievement_menu_window.activate
      @achievement_menu_window.update_help
    end
    @achievement_return_to_list = false
  end

  def apply_achievement_start_id
    @achievement_start_id = @achievement_id_window.number
    @achievement_history = []
    @achievement_id_window.close
    @achievement_id_window.deactivate
    @achievement_menu_window.hide
    dispose_achievement_list
    open_achievement_list(@achievement_start_id)
  end

  def open_achievement_list(start_id)
    @achievement_list_window = Window_ResearchModAchievementList.new(
      start_id, @achievement_history, @achievement_help_window
    )
    @achievement_list_window.set_handler(
      :select, method(:select_achievement_entry)
    )
    @achievement_list_window.set_handler(
      :reinput, method(:reinput_achievement_start_id)
    )
    @achievement_list_window.set_handler(
      :previous, method(:load_previous_achievement_page)
    )
    @achievement_list_window.set_handler(
      :next, method(:load_next_achievement_page)
    )
    @achievement_list_window.set_handler(
      :all_on, method(:confirm_all_achievements_on)
    )
    @achievement_list_window.set_handler(
      :all_off, method(:confirm_all_achievements_off)
    )
    @achievement_list_window.set_handler(
      :all_off_suppressed, method(:confirm_all_achievements_off_suppressed)
    )
    @achievement_list_window.set_handler(
      :resume_auto, method(:confirm_resume_all_achievement_auto)
    )
    @achievement_list_window.set_handler(
      :clear_notifications, method(:clear_achievement_notifications)
    )
    @achievement_list_window.set_handler(
      :cancel, method(:close_achievement_list)
    )
  end

  def dispose_achievement_list
    defer_research_mod_window_dispose(@achievement_list_window)
    @achievement_list_window = nil
  end

  def close_achievement_list
    dispose_achievement_list
    @achievement_menu_window.show
    @achievement_menu_window.refresh
    @achievement_menu_window.activate
    @achievement_menu_window.update_help
  end

  def reinput_achievement_start_id
    @achievement_list_window.hide
    @achievement_list_window.deactivate
    @achievement_return_to_list = true
    @achievement_id_window ||= Window_ResearchModAchievementIdInput.new
    @achievement_id_window.set_handler(
      :ok, method(:apply_achievement_start_id)
    )
    @achievement_id_window.set_handler(
      :cancel, method(:close_achievement_id_input)
    )
    @achievement_id_window.setup(@achievement_start_id)
    @achievement_help_window.set_text(
      ['重新输入成就起始ID。',
       '确认：加载；取消：返回列表。',
       '修改前一定要备份游戏存档。'].join(10.chr)
    )
  end

  def load_next_achievement_page
    next_id = @achievement_list_window.page[:next_start_id]
    return @achievement_list_window.activate unless next_id

    @achievement_history << @achievement_list_window.page[:start_id]
    @achievement_start_id = next_id
    dispose_achievement_list
    open_achievement_list(next_id)
  end

  def load_previous_achievement_page
    previous_id = @achievement_history.pop
    return @achievement_list_window.activate unless previous_id

    @achievement_start_id = previous_id
    dispose_achievement_list
    open_achievement_list(previous_id)
  end

  def select_achievement_entry
    @achievement_id = @achievement_list_window.current_ext
    @achievement_list_window.deactivate
    @achievement_action_window = Window_ResearchModAchievementAction.new(
      @achievement_id, @achievement_help_window
    )
    @achievement_action_window.set_handler(
      :set, method(:apply_achievement_state)
    )
    @achievement_action_window.set_handler(
      :suppress, method(:suppress_selected_achievement)
    )
    @achievement_action_window.set_handler(
      :resume_auto, method(:resume_selected_achievement_auto)
    )
    @achievement_action_window.set_handler(
      :cancel, method(:close_achievement_action)
    )
  end

  def apply_achievement_state
    target = @achievement_action_window.current_ext
    Sound.play_buzzer unless ResearchMod.set_achievement(
      @achievement_id, target
    )
    close_achievement_action
  end

  def close_achievement_action
    defer_research_mod_window_dispose(@achievement_action_window)
    @achievement_action_window = nil
    refresh_achievement_list
  end

  def confirm_all_achievements_on
    open_achievement_confirm(:all_on)
  end

  def confirm_all_achievements_off
    open_achievement_confirm(:all_off)
  end

  def confirm_all_achievements_off_suppressed
    open_achievement_confirm(:all_off_suppressed)
  end

  def confirm_resume_all_achievement_auto
    open_achievement_confirm(:resume_auto)
  end

  def clear_achievement_notifications
    ResearchMod.clear_pending_achievement_notifications
    @achievement_help_window.set_text(
      ['待显示的成就提示已清空。', '成就记录没有改变。'].join(10.chr)
    )
    @achievement_list_window.activate
    @achievement_list_window.update_help
  end

  def open_achievement_confirm(operation)
    source = operation == :restore ? @achievement_menu_window :
      @achievement_list_window
    source.deactivate if source
    @achievement_confirm_window = Window_ResearchModAchievementConfirm.new(
      operation, @achievement_help_window
    )
    @achievement_confirm_window.set_handler(
      :execute, method(:execute_achievement_confirm)
    )
    @achievement_confirm_window.set_handler(
      :cancel, method(:close_achievement_confirm)
    )
  end

  def execute_achievement_confirm
    operation = @achievement_confirm_window.operation
    success = case operation
              when :restore
                ResearchMod.restore_achievements
              when :all_on
                ResearchMod.set_all_achievements(true) > 0
              when :all_off
                ResearchMod.set_all_achievements(false) > 0
              when :all_off_suppressed
                ResearchMod.suppress_all_achievement_auto > 0
              when :resume_auto
                ResearchMod.resume_all_achievement_auto >= 0
              else
                false
              end
    Sound.play_buzzer unless success
    close_achievement_confirm
    if operation == :restore
      @achievement_menu_window.refresh
      @achievement_menu_window.activate
      @achievement_menu_window.update_help
    else
      refresh_achievement_list
    end
  end

  def close_achievement_confirm
    operation = @achievement_confirm_window.operation
    defer_research_mod_window_dispose(@achievement_confirm_window)
    @achievement_confirm_window = nil
    if operation == :restore
      @achievement_menu_window.activate
      @achievement_menu_window.update_help
    else
      @achievement_list_window.activate
      @achievement_list_window.update_help
    end
  end

  def suppress_selected_achievement
    success = ResearchMod.clear_and_suppress_achievement(@achievement_id)
    Sound.play_buzzer unless success
    close_achievement_action
  end

  def resume_selected_achievement_auto
    success = ResearchMod.resume_achievement_auto(@achievement_id)
    Sound.play_buzzer unless success
    close_achievement_action
  end

  def refresh_achievement_list
    return unless @achievement_list_window

    index = @achievement_list_window.index
    @achievement_list_window.refresh
    maximum = @achievement_list_window.item_max - 1
    @achievement_list_window.select([index, maximum].min)
    @achievement_list_window.activate
    @achievement_list_window.update_help
    @achievement_id = nil
  end
end

module WarpManager
  class << self
    alias research_mod_opend_places opend_places

    def opend_places
      return ResearchMod.harpy_feather_all_places if ResearchMod.harpy_feather_all_places_active?

      research_mod_opend_places
    end
  end
end

class Scene_Warp < Scene_MenuBase
  alias research_mod_prepare_harpy_feather prepare
  alias research_mod_terminate_harpy_feather terminate

  def prepare(cost_item)
    enabled = cost_item && cost_item.instance_variable_get(
      ResearchMod::HARPY_FEATHER_ALL_PLACES_KEY
    )
    ResearchMod.harpy_feather_all_places_active = enabled
    research_mod_prepare_harpy_feather(cost_item)
  end

  def terminate
    research_mod_terminate_harpy_feather
  ensure
    ResearchMod.harpy_feather_all_places_active = false
  end
end

class Game_Actor
  alias research_mod_make_cost_value_consumption make_cost_value
  alias research_mod_skill_cost_item_consumption skill_cost_item
  alias research_mod_skill_gold_cost_consumption skill_gold_cost

  def skill_cost_item(skill)
    return [] if ResearchMod.no_cost_skill?(skill) == :item

    research_mod_skill_cost_item_consumption(skill)
  end

  def skill_gold_cost(skill)
    return 0 if ResearchMod.no_cost_skill?(skill) == :gold

    research_mod_skill_gold_cost_consumption(skill)
  end

  def make_cost_value(skill)
    result = research_mod_make_cost_value_consumption(skill)
    case ResearchMod.no_cost_skill?(skill)
    when :gold
      result[:GOLD] = 0
    when :item
      result[:ITEM] = []
    end
    result
  end
end

class Game_BattlerBase
  alias research_mod_steal_success steal_success

  def steal_success
    research_mod_steal_success
  end
end

class Game_Battler
  alias research_mod_item_effect_steal item_effect_steal
  alias research_mod_item_hit item_hit
  alias research_mod_item_block_rate item_block_rate
  alias research_mod_sure_hit_item_apply_hit item_apply_hit
  alias research_mod_sure_kill_execute_damage execute_damage
  alias research_mod_remove_damage_variance_apply_variance apply_variance
  alias research_mod_remove_damage_variance_make_damage_value make_damage_value

  def apply_variance(damage, variance)
    return damage if instance_variable_get(:@research_mod_skip_damage_variance)

    research_mod_remove_damage_variance_apply_variance(damage, variance)
  end

  def make_damage_value(user, item, *args)
    skip_variance = ResearchMod.remove_damage_variance? && $game_party &&
                    $game_party.in_battle && item && item.damage &&
                    item.damage.to_hp? && !item.damage.recover?
    unless skip_variance
      return research_mod_remove_damage_variance_make_damage_value(user, item, *args)
    end

    previous = instance_variable_get(:@research_mod_skip_damage_variance)
    instance_variable_set(:@research_mod_skip_damage_variance, true)
    research_mod_remove_damage_variance_make_damage_value(user, item, *args)
  ensure
    instance_variable_set(:@research_mod_skip_damage_variance, previous) if skip_variance
  end

  def item_effect_steal(user, item, effect)
    unless user.actor? && ResearchMod.steal_always_success?
      return research_mod_item_effect_steal(user, item, effect)
    end

    @result.stealed = true
    @result.success = true
    list = steal_list[effect.data_id] || []
    @result.stealed_item_empty = list.empty? ? true : false
    return if $game_switches[NWConst::Sw::STEAL_FAIL]

    # Choose one remaining item with equal probability.
    steal = list.empty? ? nil : list[rand(list.size)]
    return unless steal

    $game_library.count_up_actor_steal(user.id)
    item_steal(user, effect.data_id, steal)
    list.clear
  end

  def item_hit(user, item)
    if user.actor? && ResearchMod.steal_always_success? && ResearchMod.steal_item?(item)
      return 3.0
    end

    research_mod_item_hit(user, item)
  end

  def item_block_rate(user, item)
    if user.actor? && ResearchMod.steal_always_success? && ResearchMod.steal_item?(item)
      return 0.0
    end

    research_mod_item_block_rate(user, item)
  end

  def item_apply_hit(user, item, opt)
    research_mod_sure_hit_item_apply_hit(user, item, opt)
    return unless @result.used
    return unless ResearchMod.sure_hit_kill_target?(self, user, item)

    @result.missed = false
    @result.evaded = false
    @result.blocked = false
  end

  def execute_damage(user, item)
    sure_kill = ResearchMod.sure_hit_kill_target?(self, user, item) &&
      ResearchMod.sure_kill_damage_item?(item)
    @result.hp_damage = [@result.hp_damage.to_i, hp].max if sure_kill && hp > 0
    research_mod_sure_kill_execute_damage(user, item)
    self.hp = 0 if sure_kill && hp > 0
  end
end

class Game_Enemy
  alias research_mod_enemy_item_effect_steal item_effect_steal
  alias research_mod_enemy_item_effect_force_steal item_effect_force_steal
  alias research_mod_enemy_stat_multiplier_mhp mhp
  alias research_mod_enemy_stat_multiplier_mmp mmp
  alias research_mod_enemy_stat_multiplier_atk atk
  alias research_mod_enemy_stat_multiplier_def def
  alias research_mod_enemy_stat_multiplier_mat mat
  alias research_mod_enemy_stat_multiplier_mdf mdf
  alias research_mod_enemy_stat_multiplier_agi agi
  alias research_mod_enemy_stat_multiplier_luk luk

  def item_effect_steal(user, item, effect)
    unless user.actor? && ResearchMod.steal_always_success?
      return research_mod_enemy_item_effect_steal(user, item, effect)
    end

    @result.stealed = true
    @result.success = true
    list = steal_list[effect.data_id] || []
    @result.stealed_item_empty = list.empty?
    return if $game_switches[NWConst::Sw::STEAL_FAIL]

    # Choose one remaining item with equal probability.
    steal = list.empty? ? nil : list[rand(list.size)]
    return unless steal

    $game_library.count_up_actor_steal(user.id)
    item_steal(user, effect.data_id, steal)
    list.clear
  end

  def item_effect_force_steal(user, item, effect)
    unless user.actor? && ResearchMod.steal_always_success?
      return research_mod_enemy_item_effect_force_steal(user, item, effect)
    end

    @result.stealed = true
    @result.success = true
    list = steal_list[effect.data_id] || []
    @result.stealed_item_empty = list.empty?
    return if $game_switches[NWConst::Sw::STEAL_FAIL]

    $game_library.count_up_actor_steal(user.id)
    list.each { |steal| item_steal(user, effect.data_id, steal) }
    list.clear
  end

  def mhp
    ResearchMod.apply_enemy_stat_multiplier(research_mod_enemy_stat_multiplier_mhp)
  end

  def mmp
    ResearchMod.apply_enemy_stat_multiplier(research_mod_enemy_stat_multiplier_mmp)
  end

  def atk
    ResearchMod.apply_enemy_stat_multiplier(research_mod_enemy_stat_multiplier_atk)
  end

  def def
    ResearchMod.apply_enemy_stat_multiplier(research_mod_enemy_stat_multiplier_def)
  end

  def mat
    ResearchMod.apply_enemy_stat_multiplier(research_mod_enemy_stat_multiplier_mat)
  end

  def mdf
    ResearchMod.apply_enemy_stat_multiplier(research_mod_enemy_stat_multiplier_mdf)
  end

  def agi
    ResearchMod.apply_enemy_stat_multiplier(research_mod_enemy_stat_multiplier_agi)
  end

  def luk
    ResearchMod.apply_enemy_stat_multiplier(research_mod_enemy_stat_multiplier_luk)
  end

  alias research_mod_make_drop_items make_drop_items

  def make_drop_items
    return research_mod_make_drop_items unless ResearchMod.drop_always_success?

    result = enemy.drop_items.select { |drop| drop.kind > 0 }
    result.each { |drop| $game_library.count_up_drop_item(id, drop) }
    result.map(&:object)
  end
end

class Game_Party
  alias research_mod_add_item_data_nil_guard add_item_data

  def add_item_data(item, number)
    return unless item

    research_mod_add_item_data_nil_guard(item, number)
  end
end

class RPG::Actor
  def actor_categories
    categories = data_ex.fetch(:actor_category, [])
	# ノーライフキング
    return categories unless id == 787

    categories.map { |category| category == :サキュバス ? :淫魔 : category }.uniq
  end
end

class Window_PresentItem
  alias research_mod_present_dispose dispose
  alias research_mod_present_update update
  alias research_mod_present_update_placement update_placement
  alias research_mod_present_item_height item_height
  alias research_mod_present_make_item_list make_item_list
  alias research_mod_present_start start
  alias research_mod_present_draw_item draw_item
  alias research_mod_present_update_help update_help
  alias research_mod_present_current_item_enabled current_item_enabled?
  alias research_mod_present_on_ok on_ok
  alias research_mod_present_on_cancel on_cancel

  def research_mod_present_mode
    return nil unless $game_message

    $game_message.instance_variable_get(:@research_mod_present_mode)
  end

  def research_mod_present_custom?
    return false unless $game_message

    entries = $game_message.instance_variable_get(:@research_mod_present_entries)
    !research_mod_present_mode.nil? && entries.is_a?(Array)
  end

  def research_mod_present_all_view?
    research_mod_present_mode == :all_view
  end

  def make_item_list
    unless research_mod_present_custom?
      return research_mod_present_make_item_list
    end

    entries = $game_message.instance_variable_get(:@research_mod_present_entries)
    @data = Array(entries).map { |entry| entry[:item] }.compact
  rescue
    @data = []
  end

  def start
    return research_mod_present_start unless research_mod_present_custom?

    make_item_list if research_mod_present_all_view?
    update_placement
    @research_mod_present_actor_id = $game_message.present_actor_id
    research_mod_present_create_help_window
    make_item_list unless research_mod_present_all_view?
    refresh
    select(0)
    update_help
    open
    activate
    if @data.empty?
      $game_temp.choice_present_id = 0 if $game_temp
      deactivate
      close
      research_mod_present_hide_help
    end
  end

  def update_placement
    return research_mod_present_update_placement unless research_mod_present_all_view?

    self.width = Graphics.width - 32
    desired_height = padding * 2 + [@data.size, 1].max * item_height
    self.height = [desired_height, Graphics.height - 32].min
    self.x = 16
    self.y = 16
  end

  def item_height
    return line_height * 2 if research_mod_present_all_view?

    research_mod_present_item_height
  end

  def update
    research_mod_present_update
    return unless research_mod_present_custom?

    @research_mod_present_help_window.update if @research_mod_present_help_window
    update_help
  end

  def dispose
    research_mod_present_hide_help(true)
    research_mod_present_dispose
  end

  def research_mod_present_create_help_window
    if @research_mod_present_help_window &&
       !@research_mod_present_help_window.disposed?
      @research_mod_present_help_window.x = 0
      @research_mod_present_help_window.y = Graphics.height -
        @research_mod_present_help_window.height
      @research_mod_present_help_window.z = self.z + 1
      @research_mod_present_help_window.show
      @research_mod_present_help_window.open
      @help_window = @research_mod_present_help_window
      return
    end

    @research_mod_present_help_window = Window_Help.new(2)
    @research_mod_present_help_window.width = Graphics.width
    @research_mod_present_help_window.height =
      @research_mod_present_help_window.fitting_height(2)
    @research_mod_present_help_window.x = 0
    @research_mod_present_help_window.y = Graphics.height -
      @research_mod_present_help_window.height
    @research_mod_present_help_window.z = self.z + 1
    @research_mod_present_help_window.show
    @research_mod_present_help_window.open
    @help_window = @research_mod_present_help_window
  rescue
    @research_mod_present_help_window = nil
  end

  def research_mod_present_actor
    actor_id = @research_mod_present_actor_id.to_i
    $game_actors[actor_id] if actor_id > 0
  end

  def research_mod_present_hide_help(dispose = false)
    window = @research_mod_present_help_window
    return unless window

    if dispose
      window.dispose unless window.disposed?
      @research_mod_present_help_window = nil
      @help_window = nil if @help_window.equal?(window)
    else
      window.close
      window.hide
    end
  rescue
    @research_mod_present_help_window = nil if dispose
  end

  def draw_item(index)
    return research_mod_present_draw_item(index) unless research_mod_present_custom?

    item = @data[index]
    return unless item

    rect = item_rect(index)
    if research_mod_present_all_view?
      change_color(system_color)
      draw_text(rect.x, rect.y, rect.width, line_height,
                format('%04d  %s', item.id,
                       ResearchMod.short_item_name(item.name, 18)), 0)
      change_color(normal_color)
      draw_text(rect.x, rect.y + line_height, rect.width, line_height,
                research_mod_present_preview(item), 0)
      return
    end

    love = begin
      actor = research_mod_present_actor
      actor.present_loveup(item.id).to_i
    rescue
      0
    end
    id_width = 52
    name_width = [rect.width - 120 - id_width, 80].max
    change_color(system_color)
    draw_text(rect.x, rect.y, id_width, line_height,
              format('%04d', item.id), 0)
    draw_item_name(item, rect.x + id_width, rect.y, true, name_width)
    delta = love >= 0 ? format('+%d', love) : love.to_s
    change_color(normal_color)
    draw_text(rect.x + id_width + name_width, rect.y,
              rect.width - id_width - name_width,
              line_height, delta, 2)
  end

  def research_mod_present_preview(item)
    actor = research_mod_present_actor
    data = actor && actor.respond_to?(:present_data) ? actor.present_data : nil
    entry = data[item.id] || data[item.id.to_s] if data.is_a?(Hash)
    value = if entry.is_a?(Hash)
              entry[:word_1] || entry['word_1']
            end
    text = value.is_a?(Array) ? value[0].to_s : ''
    text = text.gsub(/\\n/, ' ').gsub(/\r?\n/, ' ')
    text = '（无对白预览）' if text.empty?
    ResearchMod.short_item_name(text, 42)
  rescue
    '（无对白预览）'
  end

  def current_item_enabled?
    return true if research_mod_present_custom? && @data[index]

    research_mod_present_current_item_enabled
  end

  def update_help
    return research_mod_present_update_help unless research_mod_present_custom?

    item = @data[index]
    actor = research_mod_present_actor if item
    if item && actor && @help_window && @help_window.respond_to?(:set_text)
      love = actor.present_loveup(item.id).to_i
      delta = love >= 0 ? format('+%d', love) : love.to_s
      @help_window.set_text(
        format('物品ID：%04d　%s', item.id,
               ResearchMod.short_item_name(item.name, 15)) + 10.chr +
        format('好感度变化：%s', delta)
      )
    elsif @help_window && @help_window.respond_to?(:set_text)
      @help_window.set_text('选择要赠送或查看的礼物；按取消返回。')
    end
  end

  def on_ok
    return research_mod_present_on_ok unless research_mod_present_custom?

    item = @data[index]
    return process_cancel unless item

    $game_temp.choice_present_id = item.id if $game_temp
    $game_temp.choice_present_index = index if $game_temp
    close
    deactivate
    research_mod_present_hide_help
  end

  def on_cancel
    return research_mod_present_on_cancel unless research_mod_present_custom?

    $game_temp.choice_present_id = -1 if $game_temp
    $game_temp.choice_present_index = 0 if $game_temp
    research_mod_present_hide_help
    close
    deactivate
  end

end

class Window_NumberInput
  alias research_mod_love_number_process_cancel process_cancel

  def process_cancel
    if $game_message && $game_message.instance_variable_get(
      :@research_mod_love_input_cancelable
    )
      $game_message.instance_variable_set(
        :@research_mod_love_input_cancelled, true
      )
      deactivate
      close
    else
      research_mod_love_number_process_cancel
    end
  end
end

class Game_Message
  alias research_mod_pleading_choice_proc_set choice_proc=

  def choice_proc=(handler)
    choices = instance_variable_get(:@choices)
    pleading_choices = ResearchMod.maoujou_pleading_request_pending? &&
                       choices.is_a?(Array) && choices[0].to_s == '拒绝'
    unless pleading_choices
      instance_variable_set(:@research_mod_pleading_choice_help_active, false)
      return self.research_mod_pleading_choice_proc_set(handler)
    end

    instance_variable_set(:@research_mod_pleading_choice_help_active, true)
    original_count = ResearchMod.maoujou_pleading_request_choice_count
    wrapped_handler = proc do |selected|
      selected_index = selected.to_i
      if selected_index == 0
        mapped_index = 0
        mode = :refusal
      elsif selected_index < original_count
        mapped_index = selected_index - 1
        mode = :success
      else
        mapped_index = [original_count - 1, 0].max
        mode = nil
      end
      ResearchMod.set_maoujou_pleading_choice_mode(mode)
      handler.call(mapped_index)
      instance_variable_set(:@research_mod_pleading_choice_help_active, false)
    end
    self.research_mod_pleading_choice_proc_set(wrapped_handler)
  end
end

class Game_Interpreter
  alias research_mod_move_actor_ex move_actor_ex
  alias research_mod_maoujou_pleading_move_actor move_actor
  alias research_mod_maoujou_pleading_release_temp_actors release_temp_actors
  alias research_mod_unlimited_choices unlimited_choices
  alias research_mod_pleading_execute_command execute_command
  alias research_mod_command_111 command_111
  alias research_mod_maoujou_pleading_command_102 command_102
  alias research_mod_maoujou_pleading_command_137 command_137
  alias research_mod_maoujou_pleading_command_355 command_355
  if method_defined?(:forced_transfer)
    alias research_mod_maoujou_pleading_forced_transfer forced_transfer
  end
  alias research_mod_actor_label_jump actor_label_jump
  alias research_mod_command_122 command_122
  alias research_mod_command_117 command_117

  def actor_label_jump
    return research_mod_actor_label_jump unless ResearchMod.all_dialogue_force_party?

    labels = $data_actors.compact.map { |actor| actor.id.to_s }
    indices = @list.each_index.select do |index|
      command = @list[index]
      command.code == 118 && labels.include?(command.parameters[0].to_s)
    end
    @index = indices.sample unless indices.empty?
  end

  def command_102
    if @research_mod_pleading_prepared
      result = research_mod_maoujou_pleading_command_102
      @research_mod_pleading_prepared = false
      research_mod_restore_pleading_request_command
      return result
    end
    pending_request_menu = @research_mod_pleading_request_menu
    if !pending_request_menu && $game_temp
      pending_request_menu = $game_temp.instance_variable_get(
        :@research_mod_pleading_request_menu
      ) == true
    end
    pending_request_menu ||= ResearchMod.maoujou_pleading_request_pending?
    unless pending_request_menu
      return research_mod_maoujou_pleading_command_102
    end

    original_params = @params
    original_choices = (@params[0] || []).dup
    prepared_refusal = original_choices.last.to_s == '拒绝'
    original_choices = original_choices[0...-1] if prepared_refusal
    @params = @params.dup
    @params[0] = original_choices + ['拒绝']
    # Reserve a separate cancel index so cancelling cannot select the refusal.
    @params[1] = @params[0].size + 1
    result = research_mod_maoujou_pleading_command_102
    selected = @branch[@indent]
    if selected == original_choices.size
      # Select the original request branch and force its affection check to fail.
      @branch[@indent] = 0
      @research_mod_pleading_force_insufficient = true
    elsif selected && selected < original_choices.size &&
          !ResearchMod.persona_dialogue_cancel_text?(original_choices[selected])
      ResearchMod.set_maoujou_pleading_suppression(true)
      @research_mod_pleading_force_success = true
    else
      @branch[@indent] = [original_choices.size - 1, 0].max
    end
    @research_mod_pleading_request_menu = false
    ResearchMod.set_maoujou_pleading_request_pending(false)
    $game_temp.instance_variable_set(:@research_mod_pleading_request_menu, false) if $game_temp
    result
  ensure
    @params = original_params if original_params
  end

  def command_111
    pleading_mode = ResearchMod.maoujou_pleading_choice_mode
    if pleading_mode && maoujou_pleading_affection_condition?
      forced_result = pleading_mode == :success
      ResearchMod.set_maoujou_pleading_suppression(true) if forced_result
      ResearchMod.set_maoujou_pleading_choice_mode(nil)
      ResearchMod.set_maoujou_pleading_request_pending(false)
      $game_temp.instance_variable_set(:@research_mod_pleading_request_menu, false) if $game_temp
      @research_mod_pleading_prepared = false
      research_mod_restore_pleading_request_command
      return maoujou_pleading_evaluate_condition(forced_result)
    end
    if @research_mod_pleading_force_insufficient && maoujou_pleading_affection_condition?
      @research_mod_pleading_force_insufficient = false
      return maoujou_pleading_evaluate_condition(false)
    end

    if @research_mod_pleading_force_success && maoujou_pleading_affection_condition?
      @research_mod_pleading_force_success = false
      return maoujou_pleading_evaluate_condition(true)
    end

    if ResearchMod.maoujou_pleading_request_pending? &&
       maoujou_pleading_affection_condition?
      parent_branch = @branch[@indent - 1]
      choice_count = ResearchMod.maoujou_pleading_request_choice_count
      if parent_branch.is_a?(Integer) && choice_count > 1
        prepared_request = @research_mod_pleading_prepared
        if prepared_request && parent_branch.to_i == 0
          @research_mod_pleading_force_insufficient = true
        elsif prepared_request && parent_branch.to_i < choice_count
          @branch[@indent - 1] = parent_branch.to_i - 1
          ResearchMod.set_maoujou_pleading_suppression(true)
          @research_mod_pleading_force_success = true
        elsif parent_branch.to_i < (choice_count - 1)
          ResearchMod.set_maoujou_pleading_suppression(true)
          @research_mod_pleading_force_success = true
        end
        ResearchMod.set_maoujou_pleading_request_pending(false)
        $game_temp.instance_variable_set(:@research_mod_pleading_request_menu, false) if $game_temp
        @research_mod_pleading_prepared = false if prepared_request
        research_mod_restore_pleading_request_command
        if @research_mod_pleading_force_insufficient
          @research_mod_pleading_force_insufficient = false
          return maoujou_pleading_evaluate_condition(false)
        elsif @research_mod_pleading_force_success
          @research_mod_pleading_force_success = false
          return maoujou_pleading_evaluate_condition(true)
        end
      end
    end

    if ResearchMod.all_dialogue_force_party? &&
       all_dialogue_actor_party_condition? &&
       all_dialogue_text_branch?(@index + 1)
      @branch[@indent] = true
      return
    end

    if ResearchMod.temptation_ignore_hp?
      common_event_id = research_mod_common_event_id
      if ResearchMod.temptation_entry_condition?(common_event_id, @params) ||
         ResearchMod.temptation_hp_condition?(common_event_id, @params)
        @branch[@indent] = true
        return
      end
    end

    research_mod_command_111
  end

  def execute_command
    prepared_request = @research_mod_pleading_prepared &&
                       @params && @params[0].is_a?(Array)
    result = research_mod_pleading_execute_command
    unless prepared_request
      return result
    end

    selected = @branch[@indent] if @params && @params[0].is_a?(Array)
    choice_count = ResearchMod.maoujou_pleading_request_choice_count
    if selected && choice_count > 1
      if selected.to_i == 0
        @branch[@indent] = 0
        @research_mod_pleading_force_insufficient = true
      elsif selected.to_i < choice_count
        @branch[@indent] = selected.to_i - 1
        ResearchMod.set_maoujou_pleading_suppression(true)
        @research_mod_pleading_force_success = true
      else
        @branch[@indent] = choice_count - 1
      end
    end
    @research_mod_pleading_prepared = false
    ResearchMod.set_maoujou_pleading_request_pending(false)
    $game_temp.instance_variable_set(:@research_mod_pleading_request_menu, false) if $game_temp
    research_mod_restore_pleading_request_command
    result
  end

  def maoujou_pleading_affection_condition?
    # Affection variables use the 3000-3999 range in the original events.
    return false unless @params && @params[0].is_a?(Integer) &&
                        @params[1].is_a?(Integer)

    @params[0] == 1 && (3000...4000).include?(@params[1])
  end

  def maoujou_pleading_evaluate_condition(result)
    original_params = @params
    @params = @params.dup
    @params[3] = result ? 0 : 2_147_483_647
    result_value = research_mod_command_111
    result_value
  ensure
    @params = original_params if original_params
  end

  def command_137
    return true if ResearchMod.maoujou_pleading_suppression?

    research_mod_maoujou_pleading_command_137
  end

  def command_355
    if ResearchMod.maoujou_pleading_suppression? &&
       @params.to_s.include?('forced_transfer(154')
      return true
    end

    research_mod_maoujou_pleading_command_355
  end

  def forced_transfer(map_id, x, y)
    # Keep the actor on the current map during the modified pleading scene.
    if ResearchMod.maoujou_pleading_suppression? && map_id.to_i == 154
      return
    end

    if respond_to?(:research_mod_maoujou_pleading_forced_transfer)
      research_mod_maoujou_pleading_forced_transfer(map_id, x, y)
    else
      $game_player.reserve_transfer(map_id, x, y)
      $game_player.perform_transfer
    end
  end

  def command_117
    if ResearchMod.temptation_disabled? &&
       @params[0].to_i == ResearchMod::TEMPTATION_COMMON_EVENT_ID
      return true
    end

    research_mod_command_117
  end

  def all_dialogue_actor_party_condition?
    @params[0] == 4 && @params[2] == 0 && $game_actors[@params[1]]
  end

  def all_dialogue_text_branch?(start_index)
    index = start_index
    while index < @list.size
      command = @list[index]
      break if command.indent <= @indent
      return true if command.code == 401
      index += 1
    end
    false
  end

  def research_mod_common_event_id
    return @common_event_id if @common_event_id && @common_event_id > 0

    common_event = $data_common_events.compact.find do |event|
      @list.equal?(event.list)
    end
    common_event ? common_event.id : 0
  end

  def command_122
    original_params = nil
    unless ResearchMod.milk_always_success? &&
           @common_event_id == ResearchMod::MILKING_COMMON_EVENT_ID &&
           @params[0] <= ResearchMod::MILKING_RESULT_VARIABLE_ID &&
           ResearchMod::MILKING_RESULT_VARIABLE_ID <= @params[1] &&
           @params[2] == 0 && @params[3] == 2
      return research_mod_command_122
    end

    original_params = @params
    @params = @params.dup
    @params[3] = 0
    @params[4] = 1
    research_mod_command_122
  ensure
    @params = original_params if original_params
  end

  def move_actor_ex(actor_id = nil)
    return if ResearchMod.maoujou_pleading_suppression?

    if actor_id.nil?
      # クレオ・アドラ
      return research_mod_move_actor_ex(695) if map_id == 103 && event_id == 36

      raise ArgumentError, 'missing actor_id'
    end

    research_mod_move_actor_ex(actor_id)
  end

  def move_actor(actor_id)
    return if ResearchMod.maoujou_pleading_suppression?

    research_mod_maoujou_pleading_move_actor(actor_id)
  end

  def release_temp_actors
    return if ResearchMod.maoujou_pleading_suppression?

    research_mod_maoujou_pleading_release_temp_actors
  end

  def unlimited_choices(var_id, names)
    pleading_menu_names = names.is_a?(Array) && names.any? do |name|
      ResearchMod.persona_dialogue_pleading_text?(name)
    end
    if pleading_menu_names
      if ResearchMod.maoujou_pleading_request_pending? &&
         !@research_mod_pleading_prepared
        ResearchMod.set_maoujou_pleading_request_pending(false)
        ResearchMod.set_maoujou_pleading_choice_mode(nil)
        $game_temp.instance_variable_set(:@research_mod_pleading_request_menu, false) if $game_temp
      end
    end
    if ResearchMod.maoujou_pleading_suppression? &&
       names.any? { |name| ResearchMod.persona_dialogue_pleading_text?(name) } &&
       ResearchMod.persona_dialogue_menu?(var_id, names)
      ResearchMod.set_maoujou_pleading_suppression(false)
    end
    event = $game_map.events[event_id] if $game_map && event_id > 0
    persona_ids = event ? event.research_mod_persona_ids : []
    candidate_entries = if ResearchMod.candidate_dialogue_view? &&
                          ResearchMod.candidate_dialogue_menu?(var_id, names)
                          ResearchMod.candidate_dialogue_entries(@list, @index)
                        else
                          []
                        end
    ring_entries = if ResearchMod.candidate_dialogue_view? &&
                      ResearchMod.candidate_dialogue_menu?(var_id, names)
                     ResearchMod.ring_dialogue_entries(@list, @index)
                   else
                     []
                   end
    persona_enabled = ResearchMod.persona_dialogue_compatibility? &&
                      ResearchMod.persona_dialogue_menu?(var_id, names) &&
                      !persona_ids.empty?
    love_enabled = ResearchMod.love_dialogue_compatibility? &&
                   ResearchMod.persona_dialogue_menu?(var_id, names)
    gift_enabled = ResearchMod.maoujou_gift_dialogue_compatibility? &&
                   ResearchMod.persona_dialogue_menu?(var_id, names)
    pleading_enabled = ResearchMod.maoujou_pleading_dialogue_compatibility? &&
                       ResearchMod.persona_dialogue_menu?(var_id, names) &&
                       names.any? { |name| ResearchMod.persona_dialogue_pleading_text?(name) }
    remove_candidate_enabled = ResearchMod.maoujou_remove_candidate_compatibility? &&
                               ResearchMod.persona_dialogue_menu?(var_id, names)
    dialogue_enabled = !candidate_entries.empty? || !ring_entries.empty?
    unless persona_enabled || love_enabled || gift_enabled || pleading_enabled ||
           remove_candidate_enabled || dialogue_enabled
      return research_mod_unlimited_choices(var_id, names)
    end

    choices = names.dup
    inserted_actions = []
    quit_index = choices.index { |name| ResearchMod.persona_dialogue_cancel_text?(name) } || choices.size
    if persona_enabled
      choices.insert(quit_index, ResearchMod::RESEARCH_PERSONA_DIALOGUE_MENU_TEXT)
      inserted_actions << [quit_index, :persona]
      quit_index += 1
    end
    if love_enabled
      choices.insert(quit_index, ResearchMod::RESEARCH_LOVE_DIALOGUE_MENU_TEXT)
      inserted_actions << [quit_index, :love]
      quit_index += 1
    end
    if gift_enabled
      choices.insert(quit_index, ResearchMod::RESEARCH_MAOUJOU_GIFT_DIALOGUE_MENU_TEXT)
      inserted_actions << [quit_index, :gift]
      quit_index += 1
    end
    if pleading_enabled
      choices.insert(quit_index, ResearchMod::RESEARCH_MAOUJOU_PLEADING_DIALOGUE_MENU_TEXT)
      inserted_actions << [quit_index, :pleading]
      quit_index += 1
    end
    if remove_candidate_enabled
      choices.insert(quit_index, ResearchMod::RESEARCH_MAOUJOU_REMOVE_CANDIDATE_MENU_TEXT)
      inserted_actions << [quit_index, :remove_candidate]
      quit_index += 1
    end
    if dialogue_enabled
      choices.insert(quit_index, ResearchMod::CANDIDATE_DIALOGUE_MENU_TEXT)
      inserted_actions << [quit_index, :dialogue]
    end
    research_mod_unlimited_choices(var_id, choices)

    selected_index = $game_variables[var_id]
    selected_action = inserted_actions.find { |index, _action| selected_index == index }
    if pleading_menu_names
    end
    if selected_action
      action = selected_action[1]
      if action == :persona
        research_mod_choose_persona(persona_ids)
      elsif action == :love
        research_mod_choose_love
      elsif action == :gift
        research_mod_choose_gift
      elsif action == :pleading
        research_mod_prepare_pleading_request_command
        ResearchMod.set_maoujou_pleading_choice_mode(nil)
        @research_mod_pleading_request_menu = true
        ResearchMod.set_maoujou_pleading_request_pending(true)
        $game_temp.instance_variable_set(:@research_mod_pleading_request_menu, true) if $game_temp
        $game_variables[var_id] = names.index { |name| ResearchMod.persona_dialogue_pleading_text?(name) } || names.size
        return
      elsif action == :remove_candidate
        research_mod_remove_candidate
      else
        research_mod_choose_candidate_dialogue(candidate_entries, ring_entries)
      end
      $game_variables[var_id] = names.index { |name| ResearchMod.persona_dialogue_cancel_text?(name) } || names.size
    elsif selected_index
      ResearchMod.set_maoujou_pleading_request_pending(false)
      ResearchMod.set_maoujou_pleading_choice_mode(nil)
      $game_temp.instance_variable_set(:@research_mod_pleading_request_menu, false) if $game_temp
      research_mod_restore_pleading_request_command
      removed_count = inserted_actions.count { |index, _action| index < selected_index }
      $game_variables[var_id] = selected_index - removed_count
    end
  end

  def research_mod_prepare_pleading_request_command
    return unless @list

    command_index = ((@index.to_i + 1)...@list.size).find do |index|
      @list[index].code == 102
    end
    return unless command_index

    command = @list[command_index]
    parameters = command.parameters
    choices = parameters[0]
    return unless choices.is_a?(Array)
    original_choices = choices.reject { |choice| choice.to_s == '拒绝' }
    @research_mod_pleading_command = command
    @research_mod_pleading_original_choices = original_choices.dup
    @research_mod_pleading_original_cancel = parameters[1]
    parameters[0] = ['拒绝'] + original_choices
    parameters[1] = parameters[0].size + 1
    ResearchMod.set_maoujou_pleading_request_choice_count(original_choices.size)
    @research_mod_pleading_prepared = true
  end

  def research_mod_restore_pleading_request_command
    command = @research_mod_pleading_command
    choices = @research_mod_pleading_original_choices
    return unless command && choices

    parameters = command.parameters
    parameters[0] = choices.dup
    parameters[1] = @research_mod_pleading_original_cancel
    @research_mod_pleading_command = nil
    @research_mod_pleading_original_choices = nil
    @research_mod_pleading_original_cancel = nil
  end

  def research_mod_choose_persona(persona_ids)
    entries = ResearchMod.persona_entries_for_ids(persona_ids)
    return if entries.empty?

    selected_index = nil
    choices = entries.map { |entry| format('%4d  %s', entry.id, entry.name) }
    choices << "やめる"
    choices.each { |name| $game_message.choices.push(name) }
    $game_message.choice_cancel_type = choices.size
    $game_message.choice_proc = proc { |index| selected_index = index }
    Fiber.yield while $game_message.choice?
    return unless selected_index && selected_index < entries.size

    $game_party.persona_change(entries[selected_index].id)
  end

  def research_mod_dialogue_speaker_ids
    return [] unless @list

    # The speaker's relationship variable is usually embedded in the nearby
    # dialogue text (for example, \\V[3053]); script calls such as
    # present_start(53) are accepted as a fallback.
    current_index = @index.to_i
    from = [current_index - 24, 0].max
    to = [current_index + 120, @list.size - 1].min
    ids = []
    (from..to).each do |index|
      command = @list[index]
      code = command.code
      params = command.parameters
      strings = params.select { |value| value.is_a?(String) }.map(&:to_s)
      strings.each do |text|
        text.scan(/\\V\[(30\d+)\]/i).flatten.each do |variable_id|
          ids << variable_id.to_i - 3000
        end
        text.scan(/(?:present_start|move_actor_ex|add_actor_ex|persona_change)\s*\(\s*(\d+)\s*\)/).flatten.each do |actor_id|
          ids << actor_id.to_i
        end
      end
      # Stop at the next top-level menu marker so another NPC's menu is not
      # accidentally included in the current speaker list.
      break if index > current_index && code == 119 &&
                ['メニュー', '菜单'].include?(params[0].to_s)
    end
    ids.select! do |id|
      actor = $data_actors[id]
      actor && !actor.name.to_s.empty?
    end
    ids.uniq
  rescue
    []
  end

  def research_mod_choose_love
    actor_ids = research_mod_dialogue_speaker_ids
    if actor_ids.empty?
      research_mod_play_dialogue_notice('未能识别当前对话的说话角色。')
      return
    end

    # Use the first actor referenced by the current dialogue block.  This is
    # the NPC speaking in the menu, rather than a party member selection.
    actor_id = actor_ids.first

    actor = $game_actors[actor_id]
    return unless actor

    old_recipient = $game_variables[ResearchMod::RING_RECIPIENT_VARIABLE_ID]
    $game_message.instance_variable_set(:@research_mod_love_input_cancelable, true)
    $game_message.instance_variable_set(:@research_mod_love_input_cancelled, false)
    $game_message.add(
      format('请输入%s的新好感度（0～9999999）：', actor.name) + 10.chr +
      '降低好感度后，即使再次升高，也不会重复获得已经领取过的礼物。' + 10.chr +
      '已领取的礼物记录不会因好感度修改而重置。'
    )
    $game_message.num_input_variable_id = ResearchMod::RING_RECIPIENT_VARIABLE_ID
    $game_message.num_input_digits_max = 7
    $game_variables[ResearchMod::RING_RECIPIENT_VARIABLE_ID] = actor.love.to_i
    Fiber.yield while $game_message.num_input?
    value = [[ $game_variables[ResearchMod::RING_RECIPIENT_VARIABLE_ID].to_i,
               ResearchMod::LOVE_MAX].min, 0].max
    $game_variables[ResearchMod::RING_RECIPIENT_VARIABLE_ID] = old_recipient
    return if $game_message.instance_variable_get(
      :@research_mod_love_input_cancelled
    )
    actor.love = value
    research_mod_play_dialogue_notice(
      format('%s的好感度已设为%d。', actor.name, value)
    )
  rescue
    unless old_recipient.nil?
      $game_variables[ResearchMod::RING_RECIPIENT_VARIABLE_ID] = old_recipient
    end
  ensure
    if $game_message
      $game_message.instance_variable_set(:@research_mod_love_input_cancelable, false)
      $game_message.instance_variable_set(:@research_mod_love_input_cancelled, false)
    end
  end

  def research_mod_candidate_refusal_word(actor)
    settings = defined?(NWConst::Follower::SETTINGS) ? NWConst::Follower::SETTINGS : {}
    setting = settings.values.find do |entry|
      entry.is_a?(Hash) && entry[:actor_id].to_i == actor.id
    end
    value = setting && (setting[:no] || setting['no'])
    return nil unless value.is_a?(Array) && !value.empty?

    Word.new(value[0], value[1], value[2])
  rescue
    nil
  end

  def research_mod_remove_candidate
    actor_ids = research_mod_dialogue_speaker_ids
    if actor_ids.empty?
      research_mod_play_dialogue_notice('未能识别当前对话的说话角色。')
      return
    end

    actor = $game_actors[actor_ids.first]
    unless actor
      research_mod_play_dialogue_notice('当前对话角色不存在。')
      return
    end
    unless $game_party.respond_to?(:stand_actors) &&
           $game_party.stand_actors.include?(actor.id)
      research_mod_play_dialogue_notice('当前角色不在候补名单中。')
      return
    end

    scene = SceneManager.scene
    scene.research_mod_show_candidate_remove_help(actor) if scene.respond_to?(:research_mod_show_candidate_remove_help)
    selected_index = nil
    choices = ['是，移出候补', '否，返回']
    choices.each { |name| $game_message.choices.push(name) }
    $game_message.choice_cancel_type = choices.size
    $game_message.choice_proc = proc { |index| selected_index = index.to_i }
    Fiber.yield while $game_message.choice?
    scene.research_mod_hide_candidate_remove_help if scene.respond_to?(:research_mod_hide_candidate_remove_help)
    return unless selected_index == 0

    $game_party.remove_stand_actor(actor.id)
    ResearchMod.mark_removed_candidate_actor(actor.id)
    refusal_word = research_mod_candidate_refusal_word(actor)
    if refusal_word
      refusal_word.execute
      wait_for_message
    else
      research_mod_play_dialogue_notice(
        format('%s已移出候补名单。', actor.name)
      )
    end
  rescue
    scene.research_mod_hide_candidate_remove_help if scene && scene.respond_to?(:research_mod_hide_candidate_remove_help)
    research_mod_play_dialogue_notice('移出候补失败。')
  end

  def research_mod_dialogue_gift_items(actor)
    return [] unless actor && actor.respond_to?(:present_data)

    data = actor.present_data
    return [] unless data.is_a?(Hash)

    data.keys.map do |present_id|
      item_id = present_id.to_i
      item = $data_items[item_id] if item_id > 0 && $data_items
      next unless item && !item.name.to_s.empty?

      love = begin
        actor.present_loveup(item_id).to_i
      rescue
        present_entry = data[present_id] || data[present_id.to_s]
        present_entry.is_a?(Hash) ? present_entry[:love].to_i : 0
      end
      { :item => item, :love => love }
    end.compact.uniq { |entry| entry[:item].id }
  rescue
    []
  end

  def research_mod_present_words(actor, item_id)
    words = begin
      actor.present_words(item_id)
    rescue
      []
    end
    return words unless words.empty?

    data = actor.present_data
    entry = data[item_id] || data[item_id.to_s]
    return [] unless entry.is_a?(Hash)

    (1..10).map do |index|
      value = entry[format('word_%d', index).to_sym] ||
              entry[format('word_%d', index)]
      next unless value.is_a?(Array) && !value.empty?

      Word.new(value[0], value[1], value[2])
    end.compact
  rescue
    []
  end

  def research_mod_choose_gift
    actor_ids = research_mod_dialogue_speaker_ids
    if actor_ids.empty?
      research_mod_play_dialogue_notice('未能识别当前对话的说话角色。')
      return
    end

    actor = $game_actors[actor_ids.first]
    unless actor
      research_mod_play_dialogue_notice('当前对话角色不存在。')
      return
    end

    selected_index = nil
    choices = ['赠送', '仅查看对话', '查看全部礼物对话', '返回']
    $game_message.choices.clear if $game_message.respond_to?(:choices) &&
                                   $game_message.choices
    choices.each { |name| $game_message.choices.push(name) }
    $game_message.choice_cancel_type = choices.size
    $game_message.choice_proc = proc { |index| selected_index = index.to_i }
    Fiber.yield while $game_message.choice?
    return unless selected_index && selected_index < 3

    if selected_index == 2
      research_mod_choose_gift_item(actor, false, :all_view)
    else
      research_mod_choose_gift_item(actor, selected_index == 0)
    end
  end

  def research_mod_choose_gift_item(actor, send_gift, present_mode = nil)
    entries = research_mod_dialogue_gift_items(actor)
    if entries.empty?
      research_mod_play_dialogue_notice('当前角色没有可用的礼物数据。')
      return
    end

    $game_temp.choice_present_id = 0 if $game_temp
    $game_temp.choice_present_index = 0 if $game_temp
    mode = present_mode || (send_gift ? :send : :view)
    $game_message.instance_variable_set(
      :@research_mod_present_entries, entries
    )
    $game_message.instance_variable_set(
      :@research_mod_present_mode, mode
    )
    $game_message.present_actor_id = actor.id
    Fiber.yield while $game_message.present_choice?
    item_id = $game_temp.choice_present_id.to_i
    $game_message.instance_variable_set(:@research_mod_present_entries, nil)
    $game_message.instance_variable_set(:@research_mod_present_mode, nil)
    if item_id <= 0
      $game_message.present_actor_id = 0
      return
    end

    entry = entries.find { |candidate| candidate[:item].id == item_id }
    unless entry
      $game_message.present_actor_id = 0
      return
    end
    item = entry[:item]
    if mode == :send
      actor.love += entry[:love].to_i
    end

    words = research_mod_present_words(actor, item.id)
    words.each do |word|
      word.execute
      # The original present flow clears this flag before waiting for text.
      # Keep the same timing so Game_Message does not remain busy.
      $game_message.present_actor_id = 0
      wait_for_message
    end
    $game_message.present_actor_id = 0
    if mode == :send
      love_result_message(actor.id, entry[:love].to_i) if respond_to?(:love_result_message)
    end
  rescue
    research_mod_play_dialogue_notice('礼物对白读取失败。')
  ensure
    if $game_message
      $game_message.present_actor_id = 0 if $game_message.respond_to?(:present_actor_id=)
      $game_message.instance_variable_set(:@research_mod_present_entries, nil)
      $game_message.instance_variable_set(:@research_mod_present_mode, nil)
    end
  end

  def research_mod_choose_candidate_dialogue(entries, ring_entries = [])
    default_entry = entries.find { |entry| !entry[:actor_id] }
    actor_entries = entries.select { |entry| entry[:actor_id] }
    choices = ['未送戒指（默认对话）']
    actions = [[:default, default_entry]]
    unless ring_entries.empty?
      choices << '已送戒指（戒指专属对话）'
      actions << [:ring, ring_entries]
    end
    actor_entries.each do |entry|
      choices << format('%4d  %s', entry[:actor_id], entry[:name])
      actions << [:actor, entry]
    end
    choices << '返回'
    loop do
      selected_index = nil
      choices.each { |name| $game_message.choices.push(name) }
      $game_message.choice_cancel_type = choices.size
      $game_message.choice_proc = proc { |index| selected_index = index }
      Fiber.yield while $game_message.choice?
      break unless selected_index && selected_index < actions.size

      action, data = actions[selected_index]
      case action
      when :default
        if data
          research_mod_play_dialogue_blocks(data[:blocks])
        else
          research_mod_play_dialogue_notice('当前事件没有检测到默认对话。')
        end
      when :ring
        research_mod_choose_ring_dialogue(data)
      when :actor
        research_mod_play_dialogue_blocks(data[:blocks])
      end
    end
  end

  def research_mod_choose_ring_dialogue(entries)
    if entries.empty?
      research_mod_play_dialogue_notice('当前事件没有检测到戒指专属对话。')
      return true
    end

    entry = entries.first
    if entries.size > 1
      selected_index = nil
      choices = entries.map { |item| item[:name] }
      choices << '返回'
      choices.each { |name| $game_message.choices.push(name) }
      $game_message.choice_cancel_type = choices.size
      $game_message.choice_proc = proc { |index| selected_index = index }
      Fiber.yield while $game_message.choice?
      return false unless selected_index && selected_index < entries.size

      entry = entries[selected_index]
    end
    research_mod_play_dialogue_blocks(entry[:blocks])
    true
  end

  def research_mod_play_dialogue_notice(text)
    wait_for_message
    $game_message.face_name = ''
    $game_message.face_index = 0
    $game_message.background = 0
    $game_message.position = 2
    $game_message.add(text)
    wait_for_message
  end

  def research_mod_play_dialogue_blocks(blocks)
    blocks.each do |block|
      wait_for_message
      $game_message.face_name = block[:face_name]
      $game_message.face_index = block[:face_index]
      $game_message.background = 0
      $game_message.position = 2
      block[:lines].each { |line| $game_message.add(line) }
      wait_for_message
    end
  end

end

class Game_Event
  def research_mod_persona_ids
    @event.pages.flat_map do |page|
      ResearchMod.persona_ids_from_page(page)
    end.uniq
  end
end

class Game_Follower
  def actor
    return nil unless $game_party

    actor_id = $game_party.actors[@member_index]
    actor = actor_id ? $game_actors[actor_id] : nil
    actor && actor.exist? ? actor : nil
  end
end

class Game_Followers
  alias research_mod_map_follower_initialize initialize

  def initialize(leader)
    research_mod_map_follower_initialize(leader)
    research_mod_resize(ResearchMod.map_follower_count, leader)
  end

  def research_mod_resize(count, leader = nil)
    count = [[count.to_i, ResearchMod::MAP_FOLLOWER_COUNT_MAX].min, 0].max
    return if @data && @data.size == count

    leader ||= $game_player
    return unless leader

    @data = []
    preceding_character = leader
    1.upto(count) do |member_index|
      follower = Game_Follower.new(member_index, preceding_character)
      follower.moveto(leader.x, leader.y)
      follower.set_direction(leader.direction)
      @data.push(follower)
      preceding_character = follower
    end
    refresh
  end
end

class Game_Player
  alias research_mod_through_update update
  alias research_mod_no_random_encounter encounter

  def update
    research_mod_through_update
    ResearchMod.apply_through_mode if ResearchMod.through_mode?
  end

  def encounter
    return false if ResearchMod.no_random_encounter?

    research_mod_no_random_encounter
  end
end

class Game_Interpreter
  alias research_mod_luca_front_command_216 command_216

  def command_216
    unless ResearchMod.prevent_event_luca_front? && @params[0] != 0
      return research_mod_luca_front_command_216
    end

    $game_player.followers.visible = false
    $game_player.refresh
  end
end

class Game_Troop
  alias research_mod_follow_check_getup check_getup

  def check_getup
    return research_mod_follow_check_getup unless ResearchMod.follow_always_success?

    self.follower_enemy = @dead_enemies.reverse.uniq.find do |enemy|
      $game_party.followable?(enemy)
    end
  end
end

class Game_Party
  alias research_mod_followable_without_removed_candidate followable?
  alias research_mod_add_stand_actor_without_removed_candidate add_stand_actor

  def followable?(enemy)
    actor_id = begin
      enemy && enemy.follower_actor_id
    rescue
      nil
    end
    if actor_id && ResearchMod.removed_candidate_actor?(actor_id)
      return !follow?(actor_id)
    end

    research_mod_followable_without_removed_candidate(enemy)
  end

  def add_stand_actor(actor_id)
    result = research_mod_add_stand_actor_without_removed_candidate(actor_id)
    ResearchMod.clear_removed_candidate_actor(actor_id)
    result
  end
end


class Game_Battler < Game_BattlerBase
  alias research_mod_temptation_immunity_add_state add_state
  alias research_mod_temptation_immunity_add_new_state add_new_state

  def add_state(state_id, user = nil)
    return if state_id == ResearchMod::TEMPTATION_STATE_ID &&
              ResearchMod.temptation_immunity?

    research_mod_temptation_immunity_add_state(state_id, user)
  end

  def add_new_state(state_id)
    return if state_id == ResearchMod::TEMPTATION_STATE_ID &&
              ResearchMod.temptation_immunity?

    research_mod_temptation_immunity_add_new_state(state_id)
  end
end

class Game_Actor
  # Keep defeated party actors eligible for battle rewards when enabled.
  alias research_mod_dead_exp_final_exp_rate final_exp_rate
  alias research_mod_dead_exp_final_cexp_rate final_cexp_rate

  def final_exp_rate
    return research_mod_dead_exp_final_exp_rate unless ResearchMod.dead_battle_exp_actor?(self)

    ResearchMod.without_death_state(self) do
      research_mod_dead_exp_final_exp_rate
    end
  end

  def final_cexp_rate
    return research_mod_dead_exp_final_cexp_rate unless ResearchMod.dead_battle_exp_actor?(self)

    ResearchMod.without_death_state(self) do
      research_mod_dead_exp_final_cexp_rate
    end
  end
end

module BattleManager
  class << self
    alias research_mod_luca_order_giveup giveup
    alias research_mod_luca_order_process_defeat process_defeat
    alias research_mod_lose_event_skip_change_novel_scene change_novel_scene

    def giveup
      order = ResearchMod.current_party_order if ResearchMod.prevent_event_luca_front?
      result = research_mod_luca_order_giveup
      ResearchMod.restore_party_order(order)
      result
    end

    def process_defeat
      order = ResearchMod.current_party_order if ResearchMod.prevent_event_luca_front?
      result = research_mod_luca_order_process_defeat
      ResearchMod.restore_party_order(order)
      result
    end

    def change_novel_scene
      return research_mod_lose_event_skip_change_novel_scene unless ResearchMod.lose_event_skip?
      return research_mod_lose_event_skip_change_novel_scene unless $game_system
      return research_mod_lose_event_skip_change_novel_scene unless $game_system.conf

      config = $game_system.conf
      had_setting = config.key?(:ls_skip)
      previous_setting = config[:ls_skip]
      config[:ls_skip] = 1
      ResearchMod.force_lose_event_view = true
      begin
        research_mod_lose_event_skip_change_novel_scene
      ensure
        ResearchMod.force_lose_event_view = false
        if had_setting
          config[:ls_skip] = previous_setting
        else
          config.delete(:ls_skip)
        end
      end
    end
  end
end

class Game_Library
  alias research_mod_lose_event_skip_viewed lose_event_view?

  def lose_event_view?(lose_event_id)
    return true if ResearchMod.force_lose_event_view?

    research_mod_lose_event_skip_viewed(lose_event_id)
  end
end

class Window_BattleLog < Window_Selectable
  alias research_mod_battle_record_add_text add_text
  alias research_mod_battle_record_replace_text replace_text

  def add_text(text)
    research_mod_battle_record_add_text(text)
    ResearchMod.append_battle_record(text)
  end

  def replace_text(text)
    research_mod_battle_record_replace_text(text)
    ResearchMod.append_battle_record(text)
  end
end
class Window_ResearchModBattleStatusBase < Window_Command
  def window_width
    Graphics.width - 16
  end

  def formatted_number(value)
    number = value.to_i
    return number.give_unit if number.respond_to?(:give_unit)

    text = number.to_s
    sign = text.start_with?('-') ? '-' : ''
    digits = sign.empty? ? text : text[1..-1]
    sign + digits.reverse.scan(/.{1,3}/).join(',').reverse
  end

  def buff_levels(battler)
    if battler.respond_to?(:buffs)
      battler.buffs || []
    else
      battler.instance_variable_get(:@buffs) || []
    end
  end

  def state_text(battler)
    states = battler.states.compact.map { |state| state.name.to_s }.reject(&:empty?)
    states.empty? ? '无' : states.join('、')
  end

  def buff_text(battler)
    names = buff_levels(battler).each_with_index.each_with_object([]) do |(level, param_id), result|
      next if level.to_i == 0

      label = ResearchMod.actor_param_name(param_id)
      sign = level.to_i > 0 ? '+' : ''
      result << format('%s%s%d', label, sign, level.to_i)
    end
    names.empty? ? '无' : names.join('、')
  end
end

class Window_ResearchModBattleEnemyStatus < Window_ResearchModBattleStatusBase
  def initialize
    @enemies = battle_enemies
    super(8, 8)
    self.z = 500
    deactivate
    unselect
    hide
  end

  def window_height
    item_count = [@enemies.size + 1, 2].max
    [fitting_height(item_count), Graphics.height - 16].min
  end

  def item_height
    line_height
  end

  def battle_enemies
    return [] unless $game_troop

    $game_troop.members.select { |enemy| enemy && enemy.exist? }
  end

  def make_command_list
    @enemies.each do |enemy|
      add_command(enemy.name, :enemy_status, true, enemy)
    end
    add_command('返回', :cancel)
  end

  def set_enemies(enemies)
    signature = enemies.map do |enemy|
      [enemy.object_id, enemy.hp, enemy.mhp, enemy.mp, enemy.mmp,
       enemy.atk, enemy.def, enemy.mat, enemy.mdf, enemy.luk, enemy.agi,
       ResearchMod.enemy_battler_file_name(enemy),
       ResearchMod.enemy_cutin_file_names(enemy),
       ResearchMod.enemy_drop_texts(enemy),
       ResearchMod.drop_always_success?,
       enemy.states.map(&:id), buff_levels(enemy)]
    end
    return if @enemy_signature == signature

    size_changed = @enemies.size != enemies.size
    @enemies = enemies
    @enemy_signature = signature
    self.height = window_height if size_changed
    refresh
    select([index, item_max - 1].min) if index >= 0
  end

  def draw_item(index)
    rect = item_rect(index)
    contents.font.size = 18
    change_color(normal_color)
    if @list[index] && @list[index][:symbol] == :cancel
      draw_text(rect.x, rect.y, rect.width, line_height, '返回', 1)
      return
    end

    enemy = command_ext(index)
    return unless enemy

    draw_text(rect.x, rect.y, rect.width, line_height,
              format('%d：%s', enemy.enemy_id, enemy.name), 0)
  end
end

class Game_Interpreter
  def goto_reflection_meeting
    source_list = respond_to?(:indirect_check) ? indirect_check(@list) : @list
    list = source_list.dup
    marker_index = list.index do |command|
      command.code == 355 && command.parameters[0].to_s == 'memory_interruption'
    end
    return false unless marker_index

    choice_index = ((marker_index + 1)...list.size).find do |index|
      list[index].code == 102
    end
    return false unless choice_index

    branch_index = ((choice_index + 1)...list.size).find do |index|
      command = list[index]
      command.code == 402 && command.parameters[0].to_i == 0
    end
    return false unless branch_index

    branch_indent = list[branch_index].indent
    end_index = ((branch_index + 1)...list.size).find do |index|
      command = list[index]
      (command.code == 402 || command.code == 404) && command.indent <= branch_indent
    end
    end_index ||= list.size
    branch_list = list[(branch_index + 1)...end_index]
    return false if branch_list.nil? || branch_list.empty?

    branch_list.unshift(RPG::EventCommand.new(230, 0, [60]))
    branch_list.unshift(RPG::EventCommand.new(221))
    @list = branch_list
    @index = 0
    true
  end
end

class Game_Player
  alias research_mod_reflection_reserve_transfer reserve_transfer
  alias research_mod_maoujou_pleading_perform_transfer perform_transfer

  def reserve_transfer(map_id, x, y, d = 2)
    return if ResearchMod.lose_event_preview_playing?
    return if ResearchMod.maoujou_pleading_suppression? && map_id.to_i == 154

    research_mod_reflection_reserve_transfer(map_id, x, y, d)
  end

  def perform_transfer
    # Block any already queued transfer to the underworld map during pleading.
    if ResearchMod.maoujou_pleading_suppression? &&
       instance_variable_get(:@new_map_id).to_i == 154
      return
    end

    research_mod_maoujou_pleading_perform_transfer
  end
end

class Window_ResearchModBattleEnemyDetail < Window_ResearchModBattleStatusBase
  def initialize
    @enemy = nil
    @enemy_signature = nil
    @page_index = 0
    @pages = []
    super(8, 8)
    self.z = 510
    deactivate
    unselect
    hide
  end

  def window_height
    Graphics.height - 16
  end

  def item_height
    Graphics.height - 16 - standard_padding * 2
  end

  def make_command_list
    add_command('', :detail)
  end

  def set_enemy(enemy)
    signature = enemy_detail_signature(enemy)
    return if @enemy_signature == signature

    @page_index = 0 unless @enemy.equal?(enemy)
    @enemy = enemy
    @enemy_signature = signature
    refresh
  end

  def enemy_detail_signature(enemy)
    return nil unless enemy

    [enemy.object_id, enemy.enemy_id, enemy.hp, enemy.mhp, enemy.mp, enemy.mmp,
     enemy.atk, enemy.def, enemy.mat, enemy.mdf, enemy.luk, enemy.agi,
     ResearchMod.enemy_battler_file_name(enemy),
     ResearchMod.enemy_cutin_file_names(enemy),
     ResearchMod.enemy_drop_texts(enemy),
     ResearchMod.enemy_milk_text(enemy),
     ResearchMod.enemy_steal_text(enemy, 1),
     ResearchMod.enemy_steal_text(enemy, 2),
     ResearchMod.enemy_steal_text(enemy, 3),
     ResearchMod.enemy_steal_text(enemy, 4),
     ResearchMod.enemy_follower_help_lines(enemy),
     ResearchMod.enemy_special_category_ids(enemy),
     ResearchMod.steal_always_success?,
     ResearchMod.drop_always_success?,
     enemy.states.map(&:id), buff_levels(enemy)]
  end

  def cursor_right(wrap = false)
    switch_page(1) || Sound.play_buzzer
  end

  def cursor_left(wrap = false)
    switch_page(-1) || Sound.play_buzzer
  end

  def process_cursor_move
    return unless active

    if Input.trigger?(:RIGHT)
      cursor_right
    elsif Input.trigger?(:LEFT)
      cursor_left
    end
  end

  def update
    super
    return unless active

    if Input.trigger?(:R)
      cursor_right
    elsif Input.trigger?(:L)
      cursor_left
    end
  end

  def switch_page(amount)
    return false if @pages.nil? || @pages.size <= 1

    target = [[@page_index + amount.to_i, 0].max, @pages.size - 1].min
    return false if target == @page_index

    @page_index = target
    refresh
    Sound.play_cursor
    true
  end

  def refresh
    contents.font.size = 18 if contents && !contents.disposed?
    @pages = build_pages
    @page_index = [[@page_index.to_i, 0].max, @pages.size - 1].min
    super
  end

  def draw_item(index)
    return unless index == 0 && @enemy

    rect = item_rect(index)
    contents.font.size = 18
    change_color(normal_color)
    page = @pages[@page_index] || {:title => '基本信息', :lines => []}
    draw_text(rect.x, rect.y, rect.width, line_height,
              format('%d：%s', @enemy.enemy_id, @enemy.name), 0)
    hint = format('第 %d/%d 页　%s　左右键翻页　取消键返回',
                  @page_index + 1, @pages.size, page[:title])
    change_color(system_color)
    draw_text(rect.x, rect.y + line_height, rect.width, line_height, hint, 0)
    change_color(normal_color)
    page[:lines].each_with_index do |text, line_index|
      draw_text(rect.x, rect.y + line_height * (line_index + 2),
                rect.width, line_height, text, 0)
    end
  end

  private

  def build_pages
    return [{:title => '基本信息', :lines => []}] unless @enemy

    pages = [{:title => '基本信息', :lines => basic_detail_lines}]
    resistance_lines = ResearchMod.enemy_preview_element_lines(@enemy) +
      [''] + ResearchMod.enemy_preview_state_lines(@enemy)
    wrap_detail_lines(resistance_lines).each_slice(visible_body_lines) do |lines|
      pages << {:title => '属性/状态抗性', :lines => lines}
    end
    pages
  end

  def visible_body_lines
    [contents_height / line_height - 2, 1].max
  end

  def basic_detail_lines
    enemy = @enemy
    battler_name = ResearchMod.enemy_battler_file_name(enemy)
    battler_name = '无' if battler_name.empty?
    cutin_names = ResearchMod.enemy_cutin_file_names(enemy)
    cutin_text = cutin_names.empty? ? '无' : cutin_names.join(', ')
    lines = ResearchMod.enemy_follower_help_lines(enemy)
    lines += [
      format('HP %s / %s　　MP %s / %s',
             formatted_number(enemy.hp), formatted_number(enemy.mhp),
             formatted_number(enemy.mp), formatted_number(enemy.mmp)),
      '以下能力值已应用当前Buff/Debuff：',
      format('攻击 %s　防御 %s　魔力 %s',
             formatted_number(enemy.atk), formatted_number(enemy.def),
             formatted_number(enemy.mat)),
      format('精神 %s　灵巧 %s　速度 %s',
             formatted_number(enemy.mdf), formatted_number(enemy.luk),
             formatted_number(enemy.agi)),
      format('种族：%s', ResearchMod.enemy_special_category_text(enemy)),
      format('战斗图：%s', battler_name),
      format('状态：%s', state_text(enemy)),
      format('强化/弱化：%s', buff_text(enemy)),
      format('技能Cut-in：%s', cutin_text)
    ]
    lines + ResearchMod.enemy_help_item_lines_for(enemy)
  end

  def wrap_detail_lines(lines)
    result = []
    Array(lines).each do |line|
      text = line.to_s
      if text.empty?
        result << ''
        next
      end

      current = ''
      text.each_char do |character|
        candidate = current + character
        if !current.empty? && text_size(candidate).width > contents_width
          result << current
          current = character
        else
          current = candidate
        end
      end
      result << current unless current.empty?
    end
    result
  end
end

class Window_ResearchModBattlePartyStatus < Window_ResearchModBattleStatusBase
  def initialize
    @actors = battle_actors
    super(8, 8)
    self.z = 500
    deactivate
    unselect
    hide
  end

  def window_height
    item_count = [@actors.size + 1, 2].max
    [fitting_height(item_count * 6), Graphics.height - 16].min
  end

  def item_height
    line_height * 6
  end

  def battle_actors
    return [] unless $game_party

    members = if $game_party.respond_to?(:battle_members)
                $game_party.battle_members
              else
                $game_party.members
              end
    members.compact
  end

  def make_command_list
    @actors.each do |actor|
      add_command(actor.name, :actor_status, true, actor)
    end
    add_command('返回', :cancel)
  end

  def set_actors(actors)
    signature = actors.map do |actor|
      [actor.object_id, actor.hp, actor.mhp, actor.mp, actor.mmp,
       (actor.respond_to?(:base_level) ? actor.base_level : actor.level),
       actor.class_id, actor.tribe_id, actor.states.map(&:id),
       buff_levels(actor), actor.atk, actor.def, actor.mat, actor.agi]
    end
    return if @actor_signature == signature

    size_changed = @actors.size != actors.size
    @actors = actors
    @actor_signature = signature
    self.height = window_height if size_changed
    refresh
    select([index, item_max - 1].min) if index >= 0
  end

  def class_name(actor)
    entry = $data_classes[actor.class_id] if $data_classes
    entry && !entry.name.to_s.empty? ? entry.name.to_s : format('职业%d', actor.class_id)
  end

  def tribe_name(actor)
    entry = $data_classes[actor.tribe_id] if $data_classes
    entry && !entry.name.to_s.empty? ? entry.name.to_s : format('种族%d', actor.tribe_id)
  end

  def draw_item(index)
    rect = item_rect(index)
    contents.font.size = 18
    change_color(normal_color)
    if @list[index] && @list[index][:symbol] == :cancel
      draw_text(rect.x, rect.y, rect.width, item_height, '返回', 1)
      return
    end

    actor = command_ext(index)
    return unless actor

    actor_id = actor.respond_to?(:actor_id) ? actor.actor_id : actor.id
    level = actor.respond_to?(:base_level) ? actor.base_level : actor.level
    draw_text(rect.x, rect.y, rect.width, line_height,
              format('%d：%s　Lv.%s', actor_id, actor.name,
                     formatted_number(level)), 0)
    draw_text(rect.x, rect.y + line_height, rect.width, line_height,
              format('HP %s / %s　　MP %s / %s',
                     formatted_number(actor.hp), formatted_number(actor.mhp),
                     formatted_number(actor.mp), formatted_number(actor.mmp)), 0)
    draw_text(rect.x, rect.y + line_height * 2, rect.width, line_height,
              format('职业：%s　种族：%s', class_name(actor), tribe_name(actor)), 0)
    draw_text(rect.x, rect.y + line_height * 3, rect.width, line_height,
              format('状态：%s', state_text(actor)), 0)
    draw_text(rect.x, rect.y + line_height * 4, rect.width, line_height,
              format('强化/弱化：%s', buff_text(actor)), 0)
    draw_text(rect.x, rect.y + line_height * 5, rect.width, line_height,
              format('攻击 %s　防御 %s　魔法力 %s　敏捷 %s',
                     formatted_number(actor.atk), formatted_number(actor.def),
                     formatted_number(actor.mat), formatted_number(actor.agi)), 0)
  end
end
class Window_ResearchModBattleDialogueMain < Window_Command
  def initialize
    super(8, 8)
    self.z = 520
    hide
    deactivate
    unselect
  end

  def window_width
    320
  end

  def make_command_list
    add_command('搭话模拟', :custom_talk)
    add_command('诱惑模拟（香水）', :temptation)
    add_command('入队模拟', :follow)
    add_command('特殊战斗台词', :special)
    add_command('效果反应台词', :reaction)
    add_command('各技能台词', :skill_category)
    add_command('我方技能台词', :party_skill)
    add_command('敌方技能台词', :enemy_skill)
    add_command('双方组合预览', :combo)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModBattleDialogueBattlerList < Window_Command
  def initialize
    @entries = []
    @cancel_label = '返回'
    super(0, 0)
    self.z = 530
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height
  end

  def setup(entries, cancel_label = '返回')
    @entries = entries
    @cancel_label = cancel_label
    refresh
    select(0)
  end

  def make_command_list
    @entries.each do |entry|
      add_command(entry[:label], :select, entry.fetch(:enabled, true), entry)
    end
    add_command(@cancel_label, :cancel)
  end
end

class Window_ResearchModBattleDialogueEnemyMode < Window_Command
  def initialize
    super(8, 8)
    self.z = 540
    hide
    deactivate
    unselect
  end

  def window_width
    320
  end

  def make_command_list
    add_command('可用技能台词', :available)
    add_command('全部技能台词', :all_skills)
    add_command('击败与异常台词', :down)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModBattleDialogueSpecialMode < Window_Command
  def initialize
    super(8, 8)
    self.z = 540
    hide
    deactivate
    unselect
  end

  def window_width
    320
  end

  def make_command_list
    add_command('搭话回应', :dialogue)
    add_command('选项回应', :choice_response)
    add_command('变身类', :transformation)
    add_command('爱玩', :playful)
    add_command('诱惑反应', :temptation)
    add_command('七尾兵队剧情', :troop_story)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModBattleDialogueSkillCategory < Window_Command
  def initialize
    super(8, 8)
    self.z = 545
    hide
    deactivate
    unselect
  end

  def window_width
    400
  end

  def make_command_list
    ResearchMod::BATTLE_DIALOGUE_SKILL_CATEGORIES.each do |category|
      add_command(category[:label], :select, true, category)
    end
    add_command('返回', :cancel)
  end
end

class Window_ResearchModBattleDialogueSkillType < Window_Command
  def initialize
    @skill_types = []
    super(8, 8)
    self.z = 550
    hide
    deactivate
    unselect
  end

  def window_width
    400
  end

  def window_height
    Graphics.height - 16
  end

  def setup(category)
    type_ids = category ? Array(category[:type_ids]) : []
    @skill_types = type_ids.map do |type_id|
      name = $data_system.skill_types[type_id].to_s
      next if name.empty?

      { :type_id => type_id, :name => name,
        :category_label => category[:label] }
    end.compact
    refresh
    select(0)
  end

  def make_command_list
    @skill_types.each do |skill_type|
      add_command(format('%2d  %s', skill_type[:type_id], skill_type[:name]),
                  :select, true, skill_type)
    end
    add_command('返回', :cancel)
  end
end

class Window_ResearchModBattleEnemyDialogueEnemyList < Window_Command
  def initialize
    @enemy_entries = []
    @dialogue_mode = :all
    super(0, 0)
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height
  end

  def setup(enemies, mode)
    @dialogue_mode = mode
    @enemy_entries = enemies.map do |enemy|
      [enemy, ResearchMod.enemy_dialogue_entries(enemy, mode)]
    end
    refresh
    select(0)
  end

  def make_command_list
    @enemy_entries.each do |enemy, entries|
      add_command(format('%4d  %s', enemy.enemy_id, enemy.name),
                  :select, !entries.empty?,
                  { :enemy => enemy, :entries => entries })
    end
    add_command('返回战斗菜单', :cancel)
  end
end

class Window_ResearchModBattleEnemyDialogueList < Window_Command
  attr_reader :entries

  MTOOL_DIALOGUE_ITEM_LINES = 3
  MTOOL_DIALOGUE_PAGE_SIZE = 23

  def initialize(help_window)
    @enemy = nil
    @entries = []
    @dialogue_help_window = help_window
    @page_index = 0
    @page_max = 1
    super(0, 0)
    self.help_window = help_window
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @dialogue_help_window.height
  end

  def item_height
    ResearchMod.mtool_active? ? line_height * MTOOL_DIALOGUE_ITEM_LINES : super
  end

  def setup(enemy, entries, owner_label = nil, cancel_text = nil)
    @enemy = enemy
    @entries = entries
    @entries.each_with_index do |entry, index|
      if special_dialogue_entry?(entry)
        entry[:display_candidate_index] = index + 1
      else
        entry.delete(:display_candidate_index)
      end
    end
    @page_index = 0
    page_size = dialogue_page_size
    @page_max = [(@entries.size + page_size - 1) / page_size, 1].max
    @owner_label = owner_label || enemy.name.to_s
    @cancel_text = cancel_text || '返回人物列表'
    refresh
    select(0)
    update_help
  end

  def make_command_list
    page_size = dialogue_page_size
    start_index = @page_index * page_size
    page_entries = @entries[start_index, page_size] || []
    add_command(format('上一批（%d/%d）', @page_index + 1, @page_max),
                :previous, @page_index > 0)
    page_entries.each do |entry|
      candidate_index = dialogue_candidate_index(entry)
      if ResearchMod.mtool_active?
        if entry[:choice_label]
          label = format('[%s] %s', entry[:category],
                         dialogue_choice_label(entry, 48))
        elsif entry[:skill_id]
          skill_name = dialogue_skill_summary(entry, 30, 90)
          label = format('[%s] %04d　%s　候选%d', entry[:category],
                         entry[:skill_id], skill_name, candidate_index)
        else
          label = format('[%s] 候选%d', entry[:category], candidate_index)
        end
      else
        preview = ResearchMod.battle_dialogue_display_text(entry[:preview], 72)
        if entry[:choice_label]
          label = format('[%s] %s  %s', entry[:category],
                         dialogue_choice_label(entry, 48), preview)
        elsif entry[:skill_id]
          label = format('[%s] %4d  %s  候选%d  %s', entry[:category],
                         entry[:skill_id],
                         dialogue_skill_summary(entry, 42, 126),
                         candidate_index, preview)
        elsif special_dialogue_entry?(entry)
          label = format('[%s] 候选%d  %s', entry[:category],
                         candidate_index, preview)
        else
          label = format('[%s] %s', entry[:category], preview)
        end
      end
      add_command(dialogue_command_text(label), :select, true, entry)
    end
    add_command(format('下一批（%d/%d）', @page_index + 1, @page_max),
                :next, @page_index + 1 < @page_max)
    add_command(@cancel_text, :cancel)
  end

  def previous_page
    return false if @page_index <= 0

    @page_index -= 1
    refresh
    select(0)
    update_help
    true
  end

  def next_page
    return false if @page_index + 1 >= @page_max

    @page_index += 1
    refresh
    select(0)
    update_help
    true
  end

  def select_entry(entry)
    index = @entries.index(entry)
    return unless index

    @page_index = index / dialogue_page_size
    refresh
    select(index % dialogue_page_size)
    update_help
  end

  def dialogue_page_size
    ResearchMod.mtool_active? ? MTOOL_DIALOGUE_PAGE_SIZE :
                                ResearchMod::BATTLE_DIALOGUE_PAGE_SIZE
  end

  def special_dialogue_entry?(entry)
    talk_categories = ResearchMod::TALK_EVENT_CATEGORIES.map do |category|
      category[:label]
    end
    (['对话台词', '对话回应', '选项回应', '爱玩', '诱惑反应',
      '入队模拟', '七尾兵队剧情'] + talk_categories).include?(entry[:category])
  end

  def dialogue_candidate_index(entry)
    entry[:display_candidate_index] || entry[:word_index] || 1
  end

  def dialogue_choice_label(entry, maximum = nil)
    ResearchMod.battle_dialogue_display_text(entry[:choice_label], maximum)
  end

  def dialogue_skill_ids(entry)
    return [] unless entry && entry[:show_skill_relations]

    Array(entry[:skill_ids]).map(&:to_i).select { |skill_id| skill_id > 0 }.uniq
  end

  def dialogue_skill_summary(entry, maximum = nil, maximum_bytes = nil)
    name = entry[:skill_name].to_s
    variant_name = entry[:variant_name].to_s
    name += "／#{variant_name}" unless variant_name.empty? || name.include?(variant_name)
    count = dialogue_skill_ids(entry).size
    name += format('（关联%d项）', count) if count > 1
    ResearchMod.battle_dialogue_display_text(name, maximum, maximum_bytes)
  end

  def dialogue_command_text(text)
    if ResearchMod.mtool_active?
      ResearchMod.battle_dialogue_display_text(text, 64, 168)
    else
      ResearchMod.battle_dialogue_display_text(text, 140, 360)
    end
  end

  def update
    super
    return unless active && current_symbol == :select
    return unless dialogue_skill_ids(current_ext).size > 1
    return unless Input.trigger?(:RIGHT) || Input.trigger?(:R)

    Sound.play_ok
    deactivate
    call_handler(:skills)
  end

  def mtool_preview_lines(entry)
    text = ResearchMod.battle_dialogue_display_text(entry[:preview], 84)
    return ['预览：（无文字）'] if text.empty?

    words = text.scan(/.{1,42}/)
    words = ['（无文字）'] if words.empty?
    lines = ['预览：' + words[0]]
    lines << '　　　' + words[1] if words[1]
    lines
  rescue
    ['预览：（无法显示）']
  end

  def draw_item(index)
    return super unless ResearchMod.mtool_active?

    rect = item_rect(index)
    contents.font.size = 18
    command = @list[index]
    change_color(normal_color, command && command[:enabled])
    unless command && command[:symbol] == :select
      name = command ? command[:name].to_s : ''
      draw_text(rect.x, rect.y, rect.width, item_height, name, 1)
      return
    end

    entry = command_ext(index)
    return unless entry

    if entry[:choice_label]
      first_line = format('[%s] %s', entry[:category],
                          dialogue_choice_label(entry, 48))
    elsif entry[:skill_id]
      skill_name = dialogue_skill_summary(entry, 30, 90)
      first_line = format('[%s] %04d　%s　候选%d', entry[:category],
                          entry[:skill_id], skill_name,
                          dialogue_candidate_index(entry))
    else
      first_line = format('[%s] 候选%d', entry[:category],
                          dialogue_candidate_index(entry))
    end
    draw_text(rect.x, rect.y, rect.width, line_height, first_line, 0)
    mtool_preview_lines(entry).each_with_index do |line, line_index|
      draw_text(rect.x, rect.y + line_height * (line_index + 1),
                rect.width, line_height, line, 0)
    end
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      entry = current_ext
      battler_id = ResearchMod.battler_dialogue_id(@enemy)
      if ResearchMod.mtool_active? && entry[:choice_label]
        help_window.set_text(
          [format('%s编号：%04d　选项：%s', @owner_label, battler_id,
                  dialogue_choice_label(entry, 54)),
           'MTool兼容显示：确认后播放提问和对应回应。'].join(10.chr)
        )
        return
      elsif ResearchMod.mtool_active? && entry[:skill_id]
        skill_name = dialogue_skill_summary(entry, 36, 108)
        relation_hint = dialogue_skill_ids(entry).size > 1 ?
                        '　右键：查看全部关联技能。' : ''
        help_window.set_text(
          [format('%s编号：%04d　技能：%04d「%s」　候选：%d',
                  @owner_label, battler_id, entry[:skill_id], skill_name,
                  dialogue_candidate_index(entry)),
           'MTool兼容显示：确认后播放完整台词。' + relation_hint].join(10.chr)
        )
        return
      elsif ResearchMod.mtool_active?
        help_window.set_text(
          [format('%s编号：%04d　候选：%d',
                  @owner_label, battler_id, dialogue_candidate_index(entry)),
           'MTool兼容显示：确认后播放完整台词。'].join(10.chr)
        )
        return
      elsif entry[:choice_label]
        header = format('%s：%04d「%s」  类型：%s  选项：%s',
                        @owner_label, battler_id, @enemy.name, entry[:category],
                        dialogue_choice_label(entry, 54))
      elsif entry[:skill_id]
        skill_name = dialogue_skill_summary(entry, 44, 132)
        relation_hint = dialogue_skill_ids(entry).size > 1 ?
                        '  右键：关联技能' : ''
        header = format('%s：%04d「%s」  类型：%s  技能：%04d「%s」  候选%d',
                        @owner_label, battler_id, @enemy.name, entry[:category],
                        entry[:skill_id], skill_name,
                        dialogue_candidate_index(entry)) + relation_hint
      else
        header = format('%s：%04d「%s」  类型：%s  候选%d',
                        @owner_label, battler_id, @enemy.name, entry[:category],
                        dialogue_candidate_index(entry))
      end
      header = ResearchMod.battle_dialogue_display_text(header, 100)
      lines = ResearchMod.battle_dialogue_help_lines(entry[:lines])
      help_window.set_text(([header] + lines).join(10.chr))
    elsif current_symbol == :previous
      help_window.set_text('加载上一批战斗台词。')
    elsif current_symbol == :next
      help_window.set_text('加载下一批战斗台词。')
    else
      help_window.set_text('返回上一级。选择对话只播放台词，不会发动技能或应用效果。')
    end
  end
end

class Window_ResearchModBattleDialogueSkillList < Window_Command
  PAGE_SIZE = 12

  def initialize(help_window)
    @dialogue_help_window = help_window
    @entry = nil
    @skill_lines = []
    @page_index = 0
    @page_max = 1
    super(0, 0)
    self.help_window = help_window
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @dialogue_help_window.height
  end

  def setup(entry)
    @entry = entry
    @skill_lines = build_skill_lines(entry)
    @page_index = 0
    @page_max = [(@skill_lines.size + PAGE_SIZE - 1) / PAGE_SIZE, 1].max
    refresh
    select(0)
    update_help
  end

  def make_command_list
    start_index = @page_index * PAGE_SIZE
    page_lines = @skill_lines[start_index, PAGE_SIZE] || []
    add_command(format('上一页（%d/%d）', @page_index + 1, @page_max),
                :previous, @page_index > 0)
    page_lines.each { |line| add_command(line, :skill_line) }
    add_command(format('下一页（%d/%d）', @page_index + 1, @page_max),
                :next, @page_index + 1 < @page_max)
    add_command('返回台词候选', :cancel)
  end

  def previous_page
    return false if @page_index <= 0

    @page_index -= 1
    refresh
    select(0)
    update_help
    true
  end

  def next_page
    return false if @page_index + 1 >= @page_max

    @page_index += 1
    refresh
    select(0)
    update_help
    true
  end

  def update
    super
    return unless active

    if Input.trigger?(:RIGHT) || Input.trigger?(:R)
      next_page ? Sound.play_cursor : Sound.play_buzzer
    elsif Input.trigger?(:LEFT) || Input.trigger?(:L)
      previous_page ? Sound.play_cursor : Sound.play_buzzer
    end
  end

  def build_skill_lines(entry)
    skill_ids = Array(entry[:skill_ids]).map(&:to_i).select do |skill_id|
      skill_id > 0
    end.uniq.sort
    skill_ids.each_with_object([]) do |skill_id, lines|
      skill = $data_skills[skill_id] if $data_skills
      name = skill && !skill.name.to_s.empty? ? skill.name.to_s : '未命名技能'
      chunks = ResearchMod.battle_dialogue_display_chunks(name, 34, 102)
      lines << format('%04d  %s', skill_id, chunks.shift.to_s)
      chunks.each { |chunk| lines << '      ' + chunk }
    end
  rescue
    ['（关联技能读取失败）']
  end

  def update_help
    return unless help_window

    skill_count = Array(@entry && @entry[:skill_ids]).map(&:to_i).uniq.size
    help_window.set_text(
      [format('关联技能：%d项　显示页：%d/%d', skill_count,
              @page_index + 1, @page_max),
       '技能按ID排序；长名称会换行完整显示。左右键或页面命令翻页，取消返回。'].join(10.chr)
    )
  end
end

class Window_ResearchModBattleRecord < Window_Selectable
  def initialize
    super(0, 0, Graphics.width, Graphics.height)
    self.z = 600
    hide
    deactivate
    unselect
  end

  def item_max
    @records ? @records.size : 0
  end

  def setup(records)
    @records = Array(records).map(&:to_s)
    refresh
    select(0) if item_max > 0
  end

  def draw_item(index)
    return unless @records && @records[index]

    contents.font.size = 20
    draw_text(item_rect_for_text(index), @records[index])
  end
end

class Window_ResearchModBattleCutinType < Window_Command
  def initialize
    super(8, 8)
    self.z = 520
    deactivate
    unselect
    hide
  end

  def window_width
    280
  end

  def make_command_list
    add_command('查看敌方Cut-in', :enemy)
    add_command('查看我方Cut-in', :party)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModBattleCutinBattlerList < Window_Command
  def initialize
    @battlers = []
    @side = :party
    super(8, 8)
    self.z = 530
    deactivate
    unselect
    hide
  end

  def window_width
    Graphics.width - 16
  end

  def window_height
    [fitting_height([@battlers.size + 1, 2].max), Graphics.height - 16].min
  end

  def setup(battlers, side)
    @battlers = battlers.compact
    @side = side
    self.height = window_height
    refresh
    select(0)
  end

  def make_command_list
    @battlers.each do |battler|
      id = @side == :party ? battler.actor_id : battler.enemy_id
      add_command(format('%4d  %s', id, battler.name), :select, true, battler)
    end
    add_command('返回', :cancel)
  end
end

class Window_ResearchModBattleCutinEnemyMode < Window_Command
  def initialize
    super(8, 8)
    self.z = 540
    deactivate
    unselect
    hide
  end

  def window_width
    320
  end

  def make_command_list
    add_command('可用技能Cut-in', :available)
    add_command('全部配置Cut-in', :all)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModBattleCutinList < Window_Command
  attr_reader :entries

  def initialize(help_window)
    @entries = []
    @owner_label = ''
    @page_index = 0
    @page_max = 1
    @cutin_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.z = 560
    deactivate
    unselect
    hide
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @cutin_help_window.height
  end

  def setup(owner_label, entries, page_index = 0)
    @owner_label = owner_label.to_s
    @entries = entries.compact.map(&:to_s).reject(&:empty?).uniq
    @page_max = [(@entries.size + ResearchMod::ACTOR_CUTIN_PAGE_SIZE - 1) /
                 ResearchMod::ACTOR_CUTIN_PAGE_SIZE, 1].max
    @page_index = [[page_index, @page_max - 1].min, 0].max
    refresh
    select(0)
    update_help
  end

  def make_command_list
    start_index = @page_index * ResearchMod::ACTOR_CUTIN_PAGE_SIZE
    page_entries = @entries[start_index, ResearchMod::ACTOR_CUTIN_PAGE_SIZE] || []
    add_command(format('上一批（%d/%d）', @page_index + 1, @page_max),
                :previous, @page_index > 0)
    page_entries.each_with_index do |file_name, index|
      global_index = start_index + index
      add_command(format('%4d  %s', global_index + 1, file_name),
                  :select, true, [global_index, file_name])
    end
    add_command(format('下一批（%d/%d）', @page_index + 1, @page_max),
                :next, @page_index + 1 < @page_max)
    add_command('返回', :cancel)
  end

  def previous_page
    return false if @page_index <= 0

    setup(@owner_label, @entries, @page_index - 1)
    true
  end

  def next_page
    return false if @page_index + 1 >= @page_max

    setup(@owner_label, @entries, @page_index + 1)
    true
  end

  def select_global_index(global_index)
    @page_index = global_index / ResearchMod::ACTOR_CUTIN_PAGE_SIZE
    refresh
    select(global_index % ResearchMod::ACTOR_CUTIN_PAGE_SIZE)
  end

  def update_help
    if current_symbol == :select
      global_index, file_name = current_ext
      @cutin_help_window.set_text(
        format('%s　Cut-in %d/%d\n文件名：%s\n确认：查看图片　取消：返回',
               @owner_label, global_index + 1, @entries.size,
               file_name).gsub(92.chr + 'n', 10.chr)
      )
    elsif current_symbol == :previous
      @cutin_help_window.set_text('加载上一批 Cut-in 文件名。')
    elsif current_symbol == :next
      @cutin_help_window.set_text('加载下一批 Cut-in 文件名。')
    else
      @cutin_help_window.set_text('返回战斗人物列表。')
    end
  end
end

class Window_ResearchModBattleEditBase < Window_Command
  def initialize(help_window)
    @research_mod_help_window = help_window
    super(0, 0)
    self.y = [(@research_mod_help_window.y - height) / 2, 0].max
    self.z = 560
    self.help_window = @research_mod_help_window
    hide
    deactivate
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    [[item_max, 1].max, 12].min
  end

  def open_window
    select(0)
    show
    activate
    update_help
  end
end

class Window_ResearchModBattleEditMain < Window_ResearchModBattleEditBase
  def make_command_list
    add_command('异常状态', :state)
    add_command('Buff', :buff)
    add_command('获取敌人物品', :enemy_items)
    add_command('候补管理', :candidate_manage)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :state
             '修改当前战斗中敌我成员的异常状态，不消耗回合。'
           when :buff
             '赋予当前战斗中敌我成员的增益效果，不消耗回合。'
           when :enemy_items
             '选择当前战斗中的敌人，然后查看并获取其掉落和可偷物品。'
           when :candidate_manage
             '选择当前战斗中的敌人，然后管理其对应角色的候补状态。'
           else
             '返回战斗队伍指令菜单。'
           end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModBattleEditTalkActor < Window_Command
  def initialize(help_window)
    @battlers = []
    @talk_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.z = 560
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @talk_help_window.height
  end

  def setup(battlers)
    @battlers = battlers.compact
    refresh
    select(0)
    show
    activate
    update_help
  end

  def make_command_list
    @battlers.each do |battler|
      entries = ResearchMod.talk_initiator_dialogue_entries(battler)
      enemy_side = battler.respond_to?(:enemy_id)
      side_name = enemy_side ? '敌方' : '我方'
      battler_id = ResearchMod.battler_dialogue_id(battler)
      add_command(format('[%s] %4d  %s　（开场搭话%d条）', side_name,
                         battler_id, battler.name,
                         entries.size), :select, true,
                  { :battler => battler, :entries => entries,
                    :side_name => side_name })
    end
    add_command('返回战斗对白模拟', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      data = current_ext
      previews = data[:entries].first(2).map do |entry|
        ResearchMod.battle_dialogue_display_text(entry[:preview], 90)
      end
      battler = data[:battler]
      header = format('[%s] %4d  %s　（开场搭话%d条）', data[:side_name],
                      ResearchMod.battler_dialogue_id(battler), battler.name,
                      data[:entries].size)
      help_window.set_text(([header] + previews).join(10.chr))
    else
      help_window.set_text('返回战斗对白模拟。')
    end
  end
end

class Window_ResearchModBattleEditTalkEnemy < Window_Command
  def initialize(help_window)
    @enemies = []
    @initiator = nil
    @talk_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.z = 560
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @talk_help_window.height
  end

  def setup(enemies, initiator = nil)
    @enemies = enemies.compact
    @initiator = initiator
    refresh
    select(0)
    show
    activate
    update_help
  end

  def make_command_list
    @enemies.each do |enemy|
      entries = ResearchMod.enemy_talk_event_entries(enemy)
      add_command(format('%4d  %s　（搭话回应%d条）', enemy.enemy_id, enemy.name,
                         entries.size), :select, !entries.empty?,
                  { :enemy => enemy, :entries => entries })
    end
    add_command('返回发起角色列表', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      data = current_ext
      previews = data[:entries].first(2).map do |entry|
        ResearchMod.battle_dialogue_display_text(entry[:preview], 90)
      end
      header = format('%4d  %s　（搭话回应%d条）', data[:enemy].enemy_id,
                      data[:enemy].name, data[:entries].size)
      help_window.set_text(([header] + previews).join(10.chr))
    else
      help_window.set_text('返回发起角色列表。')
    end
  end
end

class Window_ResearchModBattleEditTalkCategory < Window_Command
  attr_reader :enemy
  attr_reader :actor

  def initialize(help_window)
    @entries = []
    @enemy = nil
    @actor = nil
    @source_label = nil
    @talk_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.z = 565
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @talk_help_window.height
  end

  def setup(enemy, entries, actor = nil, source_label = nil)
    @enemy = enemy
    @actor = actor
    @source_label = source_label
    @entries = entries
    refresh
    select(0)
    show
    activate
    update_help
  end

  def make_command_list
    ResearchMod::TALK_EVENT_CATEGORIES.each do |category|
      entries = @entries.select do |entry|
        entry[:talk_category] == category[:key]
      end
      add_command(format('%s　（%d条）', category[:label], entries.size),
                  :select, !entries.empty?,
                  { :category => category, :entries => entries })
    end
    add_command('返回敌人列表', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      data = current_ext
      # Older patch loaders can invoke this callback before setup assigns data.
      return unless @enemy && data.is_a?(Hash) && data[:category]

      category = data[:category]
      previews = data[:entries].first(2).map do |entry|
        ResearchMod.battle_dialogue_display_text(entry[:preview], 90)
      end
      source_name = @actor ? @actor.name : (@source_label || '发起者')
      header = format('%s → %s　%s（%d条）', source_name, @enemy.name,
                      category[:label], data[:entries].size)
      help_window.set_text(([header] + previews).join(10.chr))
    else
      help_window.set_text('返回敌人列表。')
    end
  end
end

class Window_ResearchModBattleEditTalkList < Window_Command
  attr_reader :enemy
  attr_reader :actor

  def initialize(help_window)
    @entries = []
    @enemy = nil
    @actor = nil
    @talk_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.z = 570
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @talk_help_window.height
  end

  def setup(enemy, entries, actor = nil)
    @enemy = enemy
    @actor = actor
    @entries = entries
    refresh
    select(0)
    show
    activate
    update_help
  end

  def make_command_list
    @entries.each do |entry|
      preview = ResearchMod.battle_dialogue_display_text(entry[:preview], 70)
      add_command(format('%s %02d　%s', entry[:category],
                         entry[:talk_category_index].to_i, preview),
                  :select, true, entry)
    end
    add_command('返回搭话类别', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      entry = current_ext
      # Older patch loaders can invoke this callback before setup assigns data.
      return unless @enemy && entry.is_a?(Hash) && entry[:category]

      header = format('%s → %s　%s %02d', @actor ? @actor.name : '发起者',
                      @enemy.name, entry[:category],
                      entry[:talk_category_index].to_i)
      lines = ResearchMod.battle_dialogue_help_lines(entry[:lines])
      help_window.set_text(([header] + lines.first(2)).join(10.chr))
    else
      help_window.set_text('返回搭话类别。')
    end
  end
end
class Window_ResearchModBattleEditState < Window_ResearchModBattleEditBase
  def make_command_list
    add_command('诱惑', :temptation)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = current_symbol == :temptation ?
      '强制赋予或解除诱惑状态（状态ID 26）。' :
      '返回战斗修改菜单。'
    help_window.set_text(text)
  end
end

class Window_ResearchModBattleEditTemptationAction < Window_ResearchModBattleEditBase
  def make_command_list
    add_command('赋予诱惑', :add, !ResearchMod.temptation_immunity?)
    add_command('解除诱惑', :remove)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :add
             if ResearchMod.temptation_immunity?
               '“敌我全员诱惑免疫”已开启，赋予操作不可用。'
             else
               '选择敌我成员并强制赋予诱惑，无视目标状态抗性。'
             end
           when :remove
             '选择敌我成员并解除当前的诱惑状态。'
           else
             '返回异常状态列表。'
           end
    help_window.set_text(text)
  end
end

class Window_ResearchModBattleEditBuff < Window_ResearchModBattleEditBase
  def make_command_list
    enabled = $data_skills[ResearchMod::MOONLESS_DANCE_SKILL_ID] &&
              $data_states[ResearchMod::MOONLESS_DANCE_STATE_ID]
    add_command('月無の舞', :moonless_dance, enabled)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = current_symbol == :moonless_dance ?
      '赋予月無の舞的Buff（技能ID 9397，对应状态ID 503）。效果为全体MP、SP消耗为0。' :
      '返回战斗修改菜单。'
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModBattleEditTarget < Window_ResearchModBattleEditBase
  attr_reader :action
  attr_reader :state_id
  attr_reader :operation_name

  def initialize(help_window)
    @action = :add
    @state_id = ResearchMod::TEMPTATION_STATE_ID
    @operation_name = '赋予诱惑'
    super(help_window)
  end

  def setup(action, state_id = ResearchMod::TEMPTATION_STATE_ID,
            operation_name = nil)
    @action = action
    @state_id = state_id
    @operation_name = operation_name ||
      (action == :add ? '赋予诱惑' : '解除诱惑')
    refresh
    open_window
  end

  def make_command_list
    party = ResearchMod.battle_party_members
    enemies = ResearchMod.battle_enemy_members
    all_members = (party + enemies).uniq
    add_target_command('敌我全体', all_members)
    add_target_command('我方全体', party)
    add_target_command('敌方全体', enemies)
    party.each { |battler| add_battler_command('我方', battler) }
    enemies.each { |battler| add_battler_command('敌方', battler) }
    add_command('返回', :cancel)
  end

  def add_target_command(label, targets)
    add_command(label, :select, target_enabled?(targets), targets)
  end

  def add_battler_command(side, battler)
    state = $data_states[@state_id]
    marker = battler.state?(@state_id) && state ?
      format('【%s】', state.name) : ''
    add_target_command(format('%s：%s%s', side, battler.name, marker), [battler])
  end

  def target_enabled?(targets)
    return false if targets.empty?
    return false if @action == :add &&
                    @state_id == ResearchMod::TEMPTATION_STATE_ID &&
                    ResearchMod.temptation_immunity?

    return true if @action == :add

    targets.any? { |battler| battler.state?(@state_id) }
  end

  def target_label
    data = current_data
    data ? data[:name].to_s : ''
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      help_window.set_text(format('%s：%s。确认后进入最终确认。', @operation_name,
                                  target_label))
    else
      help_window.set_text('返回上一级菜单。')
    end
  end
end

class Window_ResearchModBattleEditConfirm < Window_ResearchModBattleEditBase
  def initialize(help_window)
    @action = :add
    @state_id = ResearchMod::TEMPTATION_STATE_ID
    @operation_name = '赋予诱惑'
    @target_label = ''
    super(help_window)
  end

  def setup(action, target_label,
            state_id = ResearchMod::TEMPTATION_STATE_ID, operation_name = nil)
    @action = action
    @state_id = state_id
    @operation_name = operation_name ||
      (action == :add ? '赋予诱惑' : '解除诱惑')
    @target_label = target_label
    refresh
    open_window
  end

  def make_command_list
    add_command('确定执行', :execute)
    add_command('取消', :cancel)
  end

  def update_help
    return unless help_window

    help_window.set_text(format('目标：%s　操作：%s。', @target_label,
                                @operation_name))
  end
end

class Window_PartyCommand < Window_Command
  alias research_mod_enemy_info_make_command_list make_command_list

  def make_command_list
    research_mod_enemy_info_make_command_list
    add_command('敌方信息', :research_enemy_info) if ResearchMod.battle_enemy_status?
    add_command('我方信息', :research_party_info) if ResearchMod.battle_party_status?
    add_command('Cut-in查看', :research_battle_cutin) if ResearchMod.battle_cutin_view?
    add_command('战斗对白模拟', :research_battle_dialogue) if ResearchMod.manual_enemy_dialogue?
    add_command('战斗记录', :research_battle_record) if ResearchMod.battle_record_enabled?
    add_command('战斗修改', :research_battle_edit) if ResearchMod.battle_editor_enabled?
    add_command('强制胜利', :research_force_victory) if ResearchMod.force_victory_enabled?
  end
end

class Scene_Battle < Scene_Base
  alias research_mod_enemy_info_create_party_command_window create_party_command_window
  alias research_mod_enemy_status_create_enemy_window create_enemy_window
  alias research_mod_enemy_status_update update
  alias research_mod_enemy_status_terminate terminate
  alias research_mod_battle_record_battle_start battle_start

  def battle_start
    @research_mod_force_victory_pending = false
    ResearchMod.clear_battle_records
    ResearchMod.clear_battle_temptation if ResearchMod.temptation_immunity?
    research_mod_battle_record_battle_start
  end

  def create_party_command_window
    research_mod_enemy_info_create_party_command_window
    @party_command_window.set_handler(:research_enemy_info,
                                      method(:open_research_mod_enemy_status))
    @party_command_window.set_handler(:research_party_info,
                                      method(:open_research_mod_party_status))
    @party_command_window.set_handler(:research_battle_cutin,
                                      method(:open_research_mod_battle_cutin))
    @party_command_window.set_handler(:research_battle_record,
                                      method(:open_research_mod_battle_record))
    @party_command_window.set_handler(:research_battle_dialogue,
                                      method(:open_research_mod_battle_dialogue))
    @party_command_window.set_handler(:research_battle_edit,
                                      method(:open_research_mod_battle_edit))
    @party_command_window.set_handler(:research_force_victory,
                                      method(:process_research_mod_force_victory))
  end

  def process_research_mod_force_victory
    @party_command_window.deactivate
    @party_command_window.close
    @info_viewport.visible = false if @info_viewport
    if $game_troop
      $game_troop.members.each do |enemy|
        next unless enemy && enemy.exist? && !enemy.all_dead?

        # Set the defeated state without scheduling revival or forced actions.
        enemy.hp = 0
        enemy.clear_states if enemy.respond_to?(:clear_states)
        enemy.clear_buffs if enemy.respond_to?(:clear_buffs)
        enemy.refresh if enemy.respond_to?(:refresh)
      end
    end
    @research_mod_force_victory_pending = true
  end

  alias research_mod_audio_overlay_start start

  def start
    research_mod_audio_overlay_start
    create_research_mod_audio_overlay
  end

  def create_enemy_window
    research_mod_enemy_status_create_enemy_window
    @research_mod_enemy_status_window = Window_ResearchModBattleEnemyStatus.new
    @research_mod_enemy_status_window.set_handler(
      :enemy_status, method(:open_research_mod_enemy_detail)
    )
    @research_mod_enemy_status_window.set_handler(
      :cancel, method(:close_research_mod_enemy_status)
    )
    @research_mod_enemy_detail_window = Window_ResearchModBattleEnemyDetail.new
    @research_mod_enemy_detail_window.set_handler(
      :detail, method(:keep_research_mod_enemy_detail)
    )
    @research_mod_enemy_detail_window.set_handler(
      :cancel, method(:close_research_mod_enemy_detail)
    )
    @research_mod_party_status_window = Window_ResearchModBattlePartyStatus.new
    @research_mod_party_status_window.set_handler(
      :actor_status, method(:keep_research_mod_party_status)
    )
    @research_mod_party_status_window.set_handler(
      :cancel, method(:close_research_mod_party_status)
    )
    @research_mod_battle_record_window = Window_ResearchModBattleRecord.new
    @research_mod_battle_record_window.set_handler(
      :cancel, method(:close_research_mod_battle_record)
    )
    @research_mod_battle_cutin_type_window = Window_ResearchModBattleCutinType.new
    @research_mod_battle_cutin_type_window.set_handler(
      :party, method(:open_research_mod_party_cutin_members)
    )
    @research_mod_battle_cutin_type_window.set_handler(
      :enemy, method(:open_research_mod_enemy_cutin_members)
    )
    @research_mod_battle_cutin_type_window.set_handler(
      :cancel, method(:close_research_mod_battle_cutin)
    )
    @research_mod_battle_cutin_battler_window =
      Window_ResearchModBattleCutinBattlerList.new
    @research_mod_battle_cutin_battler_window.set_handler(
      :select, method(:select_research_mod_battle_cutin_battler)
    )
    @research_mod_battle_cutin_battler_window.set_handler(
      :cancel, method(:close_research_mod_battle_cutin_battlers)
    )
    @research_mod_battle_cutin_enemy_mode_window =
      Window_ResearchModBattleCutinEnemyMode.new
    @research_mod_battle_cutin_enemy_mode_window.set_handler(
      :available, method(:open_research_mod_available_enemy_cutins)
    )
    @research_mod_battle_cutin_enemy_mode_window.set_handler(
      :all, method(:open_research_mod_all_enemy_cutins)
    )
    @research_mod_battle_cutin_enemy_mode_window.set_handler(
      :cancel, method(:close_research_mod_enemy_cutin_mode)
    )
    @research_mod_battle_cutin_help_window = Window_Help.new(3)
    @research_mod_battle_cutin_help_window.y =
      Graphics.height - @research_mod_battle_cutin_help_window.height
    @research_mod_battle_cutin_help_window.z = 570
    @research_mod_battle_cutin_help_window.hide
    @research_mod_battle_cutin_list_window =
      Window_ResearchModBattleCutinList.new(@research_mod_battle_cutin_help_window)
    @research_mod_battle_cutin_list_window.set_handler(
      :select, method(:open_research_mod_battle_cutin_preview)
    )
    @research_mod_battle_cutin_list_window.set_handler(
      :previous, method(:load_previous_research_mod_battle_cutin_page)
    )
    @research_mod_battle_cutin_list_window.set_handler(
      :next, method(:load_next_research_mod_battle_cutin_page)
    )
    @research_mod_battle_cutin_list_window.set_handler(
      :cancel, method(:close_research_mod_battle_cutin_list)
    )
    @research_mod_battle_dialogue_main_window =
      Window_ResearchModBattleDialogueMain.new
    @research_mod_battle_dialogue_main_window.set_handler(
      :custom_talk, method(:open_research_mod_battle_edit_custom_talk)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :temptation, method(:open_research_mod_temptation_dialogue)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :follow, method(:open_research_mod_follow_dialogue)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :skill_category, method(:open_research_mod_skill_dialogue_categories)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :party_skill, method(:open_research_mod_party_skill_dialogue)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :enemy_skill, method(:open_research_mod_enemy_skill_dialogue)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :special, method(:open_research_mod_special_dialogue)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :reaction, method(:open_research_mod_reaction_dialogue)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :combo, method(:open_research_mod_combo_dialogue)
    )
    @research_mod_battle_dialogue_main_window.set_handler(
      :cancel, method(:close_research_mod_battle_dialogue)
    )
    @research_mod_battle_dialogue_battler_window =
      Window_ResearchModBattleDialogueBattlerList.new
    @research_mod_battle_dialogue_battler_window.set_handler(
      :select, method(:select_research_mod_battle_dialogue_battler)
    )
    @research_mod_battle_dialogue_battler_window.set_handler(
      :cancel, method(:close_research_mod_battle_dialogue_battlers)
    )
    @research_mod_battle_dialogue_enemy_mode_window =
      Window_ResearchModBattleDialogueEnemyMode.new
    [:available, :all_skills, :down].each do |symbol|
      @research_mod_battle_dialogue_enemy_mode_window.set_handler(
        symbol, method(:select_research_mod_battle_dialogue_enemy_mode)
      )
    end
    @research_mod_battle_dialogue_enemy_mode_window.set_handler(
      :cancel, method(:close_research_mod_battle_dialogue_enemy_mode)
    )
    @research_mod_battle_dialogue_special_mode_window =
      Window_ResearchModBattleDialogueSpecialMode.new
    [:dialogue, :choice_response, :transformation,
      :playful, :temptation, :troop_story].each do |symbol|
      @research_mod_battle_dialogue_special_mode_window.set_handler(
        symbol, method(:select_research_mod_special_dialogue_mode)
      )
    end
    @research_mod_battle_dialogue_special_mode_window.set_handler(
      :cancel, method(:close_research_mod_special_dialogue_mode)
    )
    @research_mod_battle_dialogue_skill_category_window =
      Window_ResearchModBattleDialogueSkillCategory.new
    @research_mod_battle_dialogue_skill_category_window.set_handler(
      :select, method(:select_research_mod_skill_dialogue_category)
    )
    @research_mod_battle_dialogue_skill_category_window.set_handler(
      :cancel, method(:close_research_mod_skill_dialogue_categories)
    )
    @research_mod_battle_dialogue_skill_type_window =
      Window_ResearchModBattleDialogueSkillType.new
    @research_mod_battle_dialogue_skill_type_window.set_handler(
      :select, method(:select_research_mod_skill_dialogue_type)
    )
    @research_mod_battle_dialogue_skill_type_window.set_handler(
      :cancel, method(:close_research_mod_skill_dialogue_types)
    )
    @research_mod_enemy_dialogue_enemy_window =
      Window_ResearchModBattleEnemyDialogueEnemyList.new
    @research_mod_enemy_dialogue_enemy_window.set_handler(
      :select, method(:select_research_mod_enemy_dialogue_enemy)
    )
    @research_mod_enemy_dialogue_enemy_window.set_handler(
      :cancel, method(:close_research_mod_enemy_dialogue)
    )
    @research_mod_enemy_dialogue_help_window = Window_Help.new(4)
    @research_mod_enemy_dialogue_help_window.y =
      Graphics.height - @research_mod_enemy_dialogue_help_window.height
    @research_mod_enemy_dialogue_help_window.hide
    @research_mod_battle_dialogue_talk_category_window =
      Window_ResearchModBattleEditTalkCategory.new(
        @research_mod_enemy_dialogue_help_window
      )
    @research_mod_battle_dialogue_talk_category_window.set_handler(
      :select, method(:select_research_mod_special_talk_category)
    )
    @research_mod_battle_dialogue_talk_category_window.set_handler(
      :cancel, method(:close_research_mod_special_talk_category)
    )
    @research_mod_enemy_dialogue_window =
      Window_ResearchModBattleEnemyDialogueList.new(
        @research_mod_enemy_dialogue_help_window
      )
    @research_mod_enemy_dialogue_window.set_handler(
      :select, method(:execute_research_mod_battle_dialogue)
    )
    @research_mod_enemy_dialogue_window.set_handler(
      :previous, method(:load_previous_research_mod_battle_dialogue_page)
    )
    @research_mod_enemy_dialogue_window.set_handler(
      :next, method(:load_next_research_mod_battle_dialogue_page)
    )
    @research_mod_enemy_dialogue_window.set_handler(
      :skills, method(:open_research_mod_battle_dialogue_skills)
    )
    @research_mod_enemy_dialogue_window.set_handler(
      :cancel, method(:close_research_mod_battle_dialogue_list)
    )
    @research_mod_battle_dialogue_skill_list_window =
      Window_ResearchModBattleDialogueSkillList.new(
        @research_mod_enemy_dialogue_help_window
      )
    @research_mod_battle_dialogue_skill_list_window.set_handler(
      :skill_line, method(:keep_research_mod_battle_dialogue_skills)
    )
    @research_mod_battle_dialogue_skill_list_window.set_handler(
      :previous, method(:load_previous_research_mod_battle_dialogue_skill_page)
    )
    @research_mod_battle_dialogue_skill_list_window.set_handler(
      :next, method(:load_next_research_mod_battle_dialogue_skill_page)
    )
    @research_mod_battle_dialogue_skill_list_window.set_handler(
      :cancel, method(:close_research_mod_battle_dialogue_skills)
    )
    @research_mod_battle_edit_help_window = Window_Help.new(3)
    @research_mod_battle_edit_help_window.y =
      Graphics.height - @research_mod_battle_edit_help_window.height
    @research_mod_battle_edit_help_window.z = 570
    @research_mod_battle_edit_help_window.hide
    @research_mod_battle_edit_main_window =
      Window_ResearchModBattleEditMain.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_main_window.set_handler(
      :state, method(:open_research_mod_battle_edit_states)
    )
    @research_mod_battle_edit_main_window.set_handler(
      :buff, method(:open_research_mod_battle_edit_buffs)
    )
    @research_mod_battle_edit_main_window.set_handler(
      :enemy_items, method(:open_research_mod_battle_edit_enemy_items)
    )
    @research_mod_battle_edit_main_window.set_handler(
      :candidate_manage, method(:open_research_mod_battle_edit_candidate_manage)
    )
    @research_mod_battle_edit_main_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit)
    )
    @research_mod_battle_edit_state_window =
      Window_ResearchModBattleEditState.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_state_window.set_handler(
      :temptation, method(:open_research_mod_battle_edit_temptation)
    )
    @research_mod_battle_edit_state_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_states)
    )
    @research_mod_battle_edit_action_window =
      Window_ResearchModBattleEditTemptationAction.new(
        @research_mod_battle_edit_help_window
      )
    @research_mod_battle_edit_action_window.set_handler(
      :add, method(:open_research_mod_battle_edit_add_targets)
    )
    @research_mod_battle_edit_action_window.set_handler(
      :remove, method(:open_research_mod_battle_edit_remove_targets)
    )
    @research_mod_battle_edit_action_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_temptation)
    )
    @research_mod_battle_edit_buff_window =
      Window_ResearchModBattleEditBuff.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_buff_window.set_handler(
      :moonless_dance, method(:open_research_mod_battle_edit_moonless_dance_targets)
    )
    @research_mod_battle_edit_buff_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_buffs)
    )
    @research_mod_battle_edit_target_window =
      Window_ResearchModBattleEditTarget.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_target_window.set_handler(
      :select, method(:confirm_research_mod_battle_edit_target)
    )
    @research_mod_battle_edit_target_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_targets)
    )
    @research_mod_battle_edit_enemy_item_target_window =
      Window_ResearchModBattleEditEnemyItemTarget.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_enemy_item_target_window.set_handler(
      :select, method(:select_research_mod_battle_edit_enemy_item_target)
    )
    @research_mod_battle_edit_enemy_item_target_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_enemy_item_targets)
    )
    @research_mod_battle_edit_candidate_target_window =
      Window_ResearchModBattleEditCandidateTarget.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_candidate_target_window.set_handler(
      :select, method(:select_research_mod_battle_edit_candidate_target)
    )
    @research_mod_battle_edit_candidate_target_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_candidate_targets)
    )
    @research_mod_battle_edit_candidate_window = nil
    @research_mod_battle_edit_enemy_item_list_window = nil
    @research_mod_battle_edit_enemy_item_quantity_window = nil
    @research_mod_battle_edit_enemy_item_target_entries = nil
    @research_mod_battle_edit_enemy_item_list_index = nil
    @research_mod_battle_edit_confirm_window =
      Window_ResearchModBattleEditConfirm.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_confirm_window.set_handler(
      :execute, method(:execute_research_mod_battle_edit)
    )
    @research_mod_battle_edit_confirm_window.set_handler(
      :cancel, method(:cancel_research_mod_battle_edit_confirm)
    )
    @research_mod_battle_edit_talk_actor_window =
      Window_ResearchModBattleEditTalkActor.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_talk_actor_window.set_handler(
      :select, method(:select_research_mod_battle_edit_talk_actor)
    )
    @research_mod_battle_edit_talk_actor_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_custom_talk)
    )
    @research_mod_battle_edit_talk_enemy_window =
      Window_ResearchModBattleEditTalkEnemy.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_talk_enemy_window.set_handler(
      :select, method(:select_research_mod_battle_edit_talk_enemy)
    )
    @research_mod_battle_edit_talk_enemy_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_talk_enemy)
    )
    @research_mod_battle_edit_talk_category_window =
      Window_ResearchModBattleEditTalkCategory.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_talk_category_window.set_handler(
      :select, method(:select_research_mod_battle_edit_talk_category)
    )
    @research_mod_battle_edit_talk_category_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_talk_category)
    )
    @research_mod_battle_edit_talk_list_window =
      Window_ResearchModBattleEditTalkList.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_talk_list_window.set_handler(
      :select, method(:play_research_mod_battle_edit_talk)
    )
    @research_mod_battle_edit_talk_list_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_talk_list)
    )
  end

  def research_mod_visible_enemies
    return [] unless $game_troop

    $game_troop.members.select { |enemy| enemy && enemy.exist? }
  end

  def research_mod_battle_actors
    return [] unless $game_party

    members = if $game_party.respond_to?(:battle_members)
                $game_party.battle_members
              else
                $game_party.members
              end
    members.compact
  end

  def open_research_mod_battle_cutin
    @party_command_window.deactivate
    @research_mod_battle_cutin_type_window.select(0)
    @research_mod_battle_cutin_type_window.show
    @research_mod_battle_cutin_type_window.activate
  end

  def open_research_mod_party_cutin_members
    battlers = research_mod_battle_actors
    return research_mod_battle_cutin_empty(@research_mod_battle_cutin_type_window) if battlers.empty?

    @research_mod_battle_cutin_side = :party
    @research_mod_battle_cutin_type_window.hide
    @research_mod_battle_cutin_type_window.deactivate
    @research_mod_battle_cutin_battler_window.setup(battlers, :party)
    @research_mod_battle_cutin_battler_window.show
    @research_mod_battle_cutin_battler_window.activate
  end

  def open_research_mod_enemy_cutin_members
    battlers = research_mod_visible_enemies
    return research_mod_battle_cutin_empty(@research_mod_battle_cutin_type_window) if battlers.empty?

    @research_mod_battle_cutin_side = :enemy
    @research_mod_battle_cutin_type_window.hide
    @research_mod_battle_cutin_type_window.deactivate
    @research_mod_battle_cutin_battler_window.setup(battlers, :enemy)
    @research_mod_battle_cutin_battler_window.show
    @research_mod_battle_cutin_battler_window.activate
  end

  def select_research_mod_battle_cutin_battler
    battler = @research_mod_battle_cutin_battler_window.current_ext
    return research_mod_battle_cutin_empty(@research_mod_battle_cutin_battler_window) unless battler

    @research_mod_battle_cutin_battler = battler
    if @research_mod_battle_cutin_side == :party
      names = ResearchMod.actor_cutin_file_names(battler)
      open_research_mod_battle_cutin_list(battler.name, names, :party_members)
    else
      @research_mod_battle_cutin_battler_window.hide
      @research_mod_battle_cutin_battler_window.deactivate
      @research_mod_battle_cutin_enemy_mode_window.select(0)
      @research_mod_battle_cutin_enemy_mode_window.show
      @research_mod_battle_cutin_enemy_mode_window.activate
    end
  end

  def open_research_mod_available_enemy_cutins
    enemy = @research_mod_battle_cutin_battler
    names = ResearchMod.enemy_cutin_file_names(enemy)
    open_research_mod_battle_cutin_list(enemy.name, names, :enemy_mode)
  end

  def open_research_mod_all_enemy_cutins
    enemy = @research_mod_battle_cutin_battler
    names = ResearchMod.enemy_all_cutin_file_names(enemy)
    open_research_mod_battle_cutin_list(enemy.name, names, :enemy_mode)
  end

  def open_research_mod_battle_cutin_list(owner_label, names, return_mode)
    if names.empty?
      active_window = return_mode == :enemy_mode ?
                      @research_mod_battle_cutin_enemy_mode_window :
                      @research_mod_battle_cutin_battler_window
      return research_mod_battle_cutin_empty(active_window)
    end

    @research_mod_battle_cutin_return_mode = return_mode
    @research_mod_battle_cutin_battler_window.hide
    @research_mod_battle_cutin_battler_window.deactivate
    @research_mod_battle_cutin_enemy_mode_window.hide
    @research_mod_battle_cutin_enemy_mode_window.deactivate
    @research_mod_battle_cutin_list_window.setup(owner_label, names)
    @research_mod_battle_cutin_help_window.show
    @research_mod_battle_cutin_list_window.show
    @research_mod_battle_cutin_list_window.activate
  end

  def research_mod_battle_cutin_empty(window)
    Sound.play_buzzer
    window.activate
  end

  def load_previous_research_mod_battle_cutin_page
    @research_mod_battle_cutin_list_window.previous_page
    @research_mod_battle_cutin_list_window.activate
  end

  def load_next_research_mod_battle_cutin_page
    @research_mod_battle_cutin_list_window.next_page
    @research_mod_battle_cutin_list_window.activate
  end

  def open_research_mod_battle_cutin_preview(index = nil)
    if index
      file_name = @research_mod_battle_cutin_list_window.entries[index]
    else
      index, file_name = @research_mod_battle_cutin_list_window.current_ext
    end
    return unless file_name

    preview = ResearchModActorCutinPreview.new(
      file_name, Graphics.height - @research_mod_battle_cutin_help_window.height
    )
    dispose_research_mod_battle_cutin_preview
    @research_mod_battle_cutin_preview = preview
    @research_mod_battle_cutin_preview_index = index
    @research_mod_battle_cutin_list_window.hide
    @research_mod_battle_cutin_list_window.deactivate
    @research_mod_battle_cutin_help_window.z = 700
    @research_mod_battle_cutin_help_window.set_text(
      format('Cut-in %d/%d\n文件名：%s\n←/→：上一张/下一张　取消：返回列表',
             index + 1, @research_mod_battle_cutin_list_window.entries.size,
             file_name).gsub(92.chr + 'n', 10.chr)
    )
    true
  rescue
    Sound.play_buzzer
    @research_mod_battle_cutin_help_window.set_text(
      format('图片无法读取：Graphics/Pictures/%s\n可能是文件缺失或资源配置无效。\n取消：返回列表',
             file_name).gsub(92.chr + 'n', 10.chr)
    )
    @research_mod_battle_cutin_list_window.activate unless @research_mod_battle_cutin_preview
    false
  end

  def update_research_mod_battle_cutin_preview
    return unless @research_mod_battle_cutin_preview

    if Input.trigger?(:B)
      Sound.play_cancel
      close_research_mod_battle_cutin_preview
    elsif Input.repeat?(:RIGHT) || Input.repeat?(:R)
      switch_research_mod_battle_cutin_preview(1)
    elsif Input.repeat?(:LEFT) || Input.repeat?(:L)
      switch_research_mod_battle_cutin_preview(-1)
    end
  end

  def switch_research_mod_battle_cutin_preview(amount)
    entries = @research_mod_battle_cutin_list_window.entries
    return if entries.empty?

    index = (@research_mod_battle_cutin_preview_index + amount) % entries.size
    Sound.play_cursor if open_research_mod_battle_cutin_preview(index)
  end

  def close_research_mod_battle_cutin_preview
    index = @research_mod_battle_cutin_preview_index
    dispose_research_mod_battle_cutin_preview
    @research_mod_battle_cutin_preview_index = nil
    @research_mod_battle_cutin_list_window.select_global_index(index) if index
    @research_mod_battle_cutin_list_window.show
    @research_mod_battle_cutin_list_window.activate
    @research_mod_battle_cutin_help_window.z = 570
    @research_mod_battle_cutin_list_window.update_help
  end

  def dispose_research_mod_battle_cutin_preview
    @research_mod_battle_cutin_preview.dispose if @research_mod_battle_cutin_preview
    @research_mod_battle_cutin_preview = nil
  end

  def close_research_mod_battle_cutin_list
    @research_mod_battle_cutin_list_window.hide
    @research_mod_battle_cutin_list_window.deactivate
    @research_mod_battle_cutin_list_window.unselect
    @research_mod_battle_cutin_help_window.hide
    if @research_mod_battle_cutin_return_mode == :enemy_mode
      @research_mod_battle_cutin_enemy_mode_window.show
      @research_mod_battle_cutin_enemy_mode_window.activate
    else
      @research_mod_battle_cutin_battler_window.show
      @research_mod_battle_cutin_battler_window.activate
    end
  end

  def close_research_mod_enemy_cutin_mode
    @research_mod_battle_cutin_enemy_mode_window.hide
    @research_mod_battle_cutin_enemy_mode_window.deactivate
    @research_mod_battle_cutin_enemy_mode_window.unselect
    @research_mod_battle_cutin_battler_window.show
    @research_mod_battle_cutin_battler_window.activate
  end

  def close_research_mod_battle_cutin_battlers
    @research_mod_battle_cutin_battler_window.hide
    @research_mod_battle_cutin_battler_window.deactivate
    @research_mod_battle_cutin_battler_window.unselect
    @research_mod_battle_cutin_type_window.show
    @research_mod_battle_cutin_type_window.activate
  end

  def close_research_mod_battle_cutin
    @research_mod_battle_cutin_type_window.hide
    @research_mod_battle_cutin_type_window.deactivate
    @research_mod_battle_cutin_type_window.unselect
    @research_mod_battle_cutin_side = nil
    @research_mod_battle_cutin_battler = nil
    @party_command_window.activate
  end

  def open_research_mod_battle_record
    records = ResearchMod.battle_records
    if records.empty?
      Sound.play_buzzer
      @party_command_window.activate
      return
    end

    @party_command_window.deactivate
    @research_mod_battle_record_window.setup(records)
    @research_mod_battle_record_window.show
    @research_mod_battle_record_window.activate
  end

  def close_research_mod_battle_record
    @research_mod_battle_record_window.hide
    @research_mod_battle_record_window.deactivate
    @research_mod_battle_record_window.unselect
    @party_command_window.activate
  end

  def open_research_mod_party_status
    actors = @research_mod_party_status_window.battle_actors
    if actors.empty?
      Sound.play_buzzer
      @party_command_window.activate
      return
    end

    @party_command_window.deactivate
    @research_mod_party_status_window.set_actors(actors)
    @research_mod_party_status_window.select(0)
    @research_mod_party_status_window.show
    @research_mod_party_status_window.activate
  end

  def keep_research_mod_party_status
    @research_mod_party_status_window.activate
  end

  def close_research_mod_party_status
    @research_mod_party_status_window.hide
    @research_mod_party_status_window.deactivate
    @research_mod_party_status_window.unselect
    @party_command_window.activate
  end

  def open_research_mod_battle_dialogue
    @party_command_window.deactivate
    @research_mod_battle_dialogue_main_window.select(0)
    @research_mod_battle_dialogue_main_window.show
    @research_mod_battle_dialogue_main_window.activate
  end

  def research_mod_hide_battle_windows_for_dialogue
    return if @research_mod_battle_window_visibility

    @research_mod_battle_window_visibility = {
      :party => @party_command_window && @party_command_window.visible,
      :status => @status_window && @status_window.visible
    }
    @party_command_window.hide if @party_command_window
    @status_window.hide if @status_window
  end

  def research_mod_restore_battle_windows_after_dialogue
    visibility = @research_mod_battle_window_visibility
    @research_mod_battle_window_visibility = nil
    return unless visibility

    if @party_command_window
      visibility[:party] ? @party_command_window.show : @party_command_window.hide
    end
    if @status_window
      visibility[:status] ? @status_window.show : @status_window.hide
    end
  end

  def research_mod_play_dialogue_with_hidden_battle_windows
    research_mod_hide_battle_windows_for_dialogue
    begin
      yield
    ensure
      research_mod_restore_battle_windows_after_dialogue
    end
  end

  def research_mod_dialogue_battler_entry(battler, side, entries)
    id = ResearchMod.battler_dialogue_id(battler)
    side_label = side == :party ? '我方' : '敌方'
    {
      :label => format('[%s] %4d  %s　（%d条）', side_label, id,
                       battler.name, entries.size),
      :battler => battler, :side => side, :entries => entries,
      :enabled => !entries.empty?
    }
  end

  def research_mod_party_skill_battler_entries
    research_mod_battle_actors.map do |actor|
      entries = ResearchMod.actor_skill_dialogue_entries(actor)
      research_mod_dialogue_battler_entry(actor, :party, entries)
    end
  end

  def research_mod_enemy_skill_battler_entries
    research_mod_visible_enemies.map do |enemy|
      research_mod_dialogue_battler_entry(enemy, :enemy, [true])
    end
  end

  def research_mod_special_dialogue_entries(enemy, mode)
    case mode
    when :dialogue
      ResearchMod.enemy_talk_event_entries(enemy).map do |entry|
        dialogue_entry = entry.dup
        dialogue_entry[:display_candidate_index] = entry[:talk_category_index]
        dialogue_entry
      end
    when :choice_response
      ResearchMod.enemy_choice_response_entries(enemy)
    when :hero
      ResearchMod.hero_skill_dialogue_entries(enemy)
    when :dance
      ResearchMod.dance_skill_dialogue_entries(enemy)
    when :sing
      ResearchMod.sing_skill_dialogue_entries(enemy)
    when :transformation
      ResearchMod.transformation_skill_dialogue_entries(enemy)
    when :playful
      ResearchMod.enemy_dialogue_entries(enemy, :playful)
    when :temptation
      ResearchMod.enemy_dialogue_entries(enemy, :temptation)
    else
      []
    end
  end

  def research_mod_special_dialogue_battler_entries(mode)
    entries = case mode
              when :playful
                research_mod_battle_actors.map do |actor|
                  dialogues = ResearchMod.actor_playful_dialogue_entries(actor)
                  research_mod_dialogue_battler_entry(actor, :party, dialogues)
                end
              when :temptation
                research_mod_battle_actors.map do |actor|
                  dialogues = ResearchMod.actor_temptation_dialogue_entries(actor)
                  research_mod_dialogue_battler_entry(actor, :party, dialogues)
                end
              when :hero
                research_mod_battle_actors.map do |actor|
                  dialogues = ResearchMod.hero_skill_dialogue_entries(actor)
                  research_mod_dialogue_battler_entry(actor, :party, dialogues)
                end
              when :dance
                research_mod_battle_actors.map do |actor|
                  dialogues = ResearchMod.dance_skill_dialogue_entries(actor)
                  research_mod_dialogue_battler_entry(actor, :party, dialogues)
                end
              when :sing
                research_mod_battle_actors.map do |actor|
                  dialogues = ResearchMod.sing_skill_dialogue_entries(actor)
                  research_mod_dialogue_battler_entry(actor, :party, dialogues)
                end
              when :transformation
                research_mod_battle_actors.map do |actor|
                  dialogues = ResearchMod.transformation_skill_dialogue_entries(actor)
                  research_mod_dialogue_battler_entry(actor, :party, dialogues)
                end
              else
                []
              end
    return entries if mode == :playful

    entries.concat(research_mod_visible_enemies.map do |enemy|
      enemy_entries = research_mod_special_dialogue_entries(enemy, mode)
      research_mod_dialogue_battler_entry(enemy, :enemy, enemy_entries)
    end)
    entries
  end

  def research_mod_temptation_perfume_battler_entries
    research_mod_visible_enemies.map do |enemy|
      dialogues = ResearchMod.enemy_perfume_dialogue_entries(enemy)
      research_mod_dialogue_battler_entry(enemy, :enemy, dialogues)
    end
  end

  def research_mod_follow_dialogue_battler_entries
    research_mod_visible_enemies.map do |enemy|
      dialogues = ResearchMod.enemy_follow_dialogue_entries(enemy)
      research_mod_dialogue_battler_entry(enemy, :enemy, dialogues)
    end
  end

  def research_mod_skill_type_battler_entries(skill_type_id, skill_type_name)
    entries = research_mod_battle_actors.map do |actor|
      dialogues = ResearchMod.skill_type_dialogue_entries(
        actor, skill_type_id, skill_type_name
      )
      research_mod_dialogue_battler_entry(actor, :party, dialogues)
    end
    entries.concat(research_mod_visible_enemies.map do |enemy|
      dialogues = ResearchMod.skill_type_dialogue_entries(
        enemy, skill_type_id, skill_type_name
      )
      research_mod_dialogue_battler_entry(enemy, :enemy, dialogues)
    end)
    entries
  end

  def research_mod_reaction_battler_entries
    entries = research_mod_battle_actors.map do |actor|
      reactions = ResearchMod.battler_reaction_entries(actor)
      research_mod_dialogue_battler_entry(actor, :party, reactions)
    end
    entries.concat(research_mod_visible_enemies.map do |enemy|
      reactions = ResearchMod.battler_reaction_entries(enemy)
      research_mod_dialogue_battler_entry(enemy, :enemy, reactions)
    end)
    entries
  end

  def research_mod_combo_source_entries
    entries = research_mod_party_skill_battler_entries
    entries.concat(research_mod_visible_enemies.map do |enemy|
      dialogues = ResearchMod.enemy_dialogue_entries(enemy, :all_skills)
      research_mod_dialogue_battler_entry(enemy, :enemy, dialogues)
    end)
    entries
  end

  def open_research_mod_dialogue_battlers(entries, flow, cancel_label = '返回',
                                           return_mode = :main)
    if entries.empty?
      Sound.play_buzzer
      @research_mod_battle_dialogue_main_window.activate
      return
    end

    @research_mod_battle_dialogue_flow = flow
    @research_mod_battle_dialogue_battler_return = return_mode
    @research_mod_battle_dialogue_main_window.hide
    @research_mod_battle_dialogue_main_window.deactivate
    @research_mod_battle_dialogue_special_mode_window.hide
    @research_mod_battle_dialogue_special_mode_window.deactivate
    @research_mod_battle_dialogue_skill_category_window.hide
    @research_mod_battle_dialogue_skill_category_window.deactivate
    @research_mod_battle_dialogue_skill_type_window.hide
    @research_mod_battle_dialogue_skill_type_window.deactivate
    @research_mod_battle_dialogue_battler_window.setup(entries, cancel_label)
    @research_mod_battle_dialogue_battler_window.show
    @research_mod_battle_dialogue_battler_window.activate
  end

  def open_research_mod_party_skill_dialogue
    open_research_mod_dialogue_battlers(
      research_mod_party_skill_battler_entries, :party_skill, '返回对白模拟'
    )
  end

  def open_research_mod_temptation_dialogue
    open_research_mod_dialogue_battlers(
      research_mod_temptation_perfume_battler_entries,
      :temptation_perfume, '返回诱惑模拟（香水）', :main
    )
  end

  def open_research_mod_follow_dialogue
    open_research_mod_dialogue_battlers(
      research_mod_follow_dialogue_battler_entries,
      :follow, '返回对白模拟', :main
    )
  end

  def open_research_mod_enemy_skill_dialogue
    open_research_mod_dialogue_battlers(
      research_mod_enemy_skill_battler_entries, :enemy_skill, '返回对白模拟'
    )
  end

  def open_research_mod_special_dialogue
    @research_mod_battle_dialogue_main_window.hide
    @research_mod_battle_dialogue_main_window.deactivate
    @research_mod_battle_dialogue_special_mode_window.select(0)
    @research_mod_battle_dialogue_special_mode_window.show
    @research_mod_battle_dialogue_special_mode_window.activate
  end

  def select_research_mod_special_dialogue_mode
    mode = @research_mod_battle_dialogue_special_mode_window.current_symbol
    @research_mod_special_dialogue_mode = mode
    if mode == :troop_story
      open_research_mod_troop_story_dialogue
      return
    end

    open_research_mod_dialogue_battlers(
      research_mod_special_dialogue_battler_entries(mode),
      :special_dialogue, '返回特殊台词分类', :special_mode
    )
  end

  def select_research_mod_skill_dialogue_category
    category = @research_mod_battle_dialogue_skill_category_window.current_ext
    unless category
      Sound.play_buzzer
      @research_mod_battle_dialogue_skill_category_window.activate
      return
    end

    @research_mod_skill_dialogue_category = category
    @research_mod_battle_dialogue_skill_category_window.hide
    @research_mod_battle_dialogue_skill_category_window.deactivate
    @research_mod_battle_dialogue_skill_type_window.setup(category)
    @research_mod_battle_dialogue_skill_type_window.show
    @research_mod_battle_dialogue_skill_type_window.activate
  end

  def select_research_mod_skill_dialogue_type
    skill_type = @research_mod_battle_dialogue_skill_type_window.current_ext
    unless skill_type
      Sound.play_buzzer
      @research_mod_battle_dialogue_skill_type_window.activate
      return
    end

    @research_mod_skill_dialogue_type = skill_type
    entries = research_mod_skill_type_battler_entries(
      skill_type[:type_id], skill_type[:name]
    )
    open_research_mod_dialogue_battlers(
      entries, :special_dialogue, '返回技能类型', :skill_type
    )
  end

  def open_research_mod_reaction_dialogue
    open_research_mod_dialogue_battlers(
      research_mod_reaction_battler_entries, :reaction, '返回对白模拟'
    )
  end

  def open_research_mod_combo_dialogue
    @research_mod_combo_source_entry = nil
    open_research_mod_dialogue_battlers(
      research_mod_combo_source_entries, :combo_source, '返回对白模拟'
    )
  end

  def select_research_mod_battle_dialogue_battler
    data = @research_mod_battle_dialogue_battler_window.current_ext
    unless data && data[:battler]
      Sound.play_buzzer
      @research_mod_battle_dialogue_battler_window.activate
      return
    end

    @research_mod_battle_dialogue_battler = data[:battler]
    case @research_mod_battle_dialogue_flow
    when :follow
      entries = Array(data[:entries])
      if entries.size == 1 && entries.first[:flow]
        # Recruitment data normally has one dialogue set per enemy; play it directly.
        @research_mod_battle_dialogue_list_return = :battlers
        @research_mod_battle_dialogue_selection_mode = :single
        @research_mod_battle_dialogue_battler_window.hide
        @research_mod_battle_dialogue_battler_window.deactivate
        @research_mod_enemy_dialogue_window.setup(
          data[:battler], entries, '敌方', '返回人物列表'
        )
        play_research_mod_follow_event(entries.first)
      else
        open_research_mod_battle_dialogue_entries(
          data[:battler], entries, '敌方', :battlers, :single
        )
      end
    when :enemy_skill
      @research_mod_battle_dialogue_battler_window.hide
      @research_mod_battle_dialogue_battler_window.deactivate
      @research_mod_battle_dialogue_enemy_mode_window.select(0)
      @research_mod_battle_dialogue_enemy_mode_window.show
      @research_mod_battle_dialogue_enemy_mode_window.activate
    when :special_dialogue
      if @research_mod_special_dialogue_mode == :dialogue
        @research_mod_battle_dialogue_battler_window.hide
        @research_mod_battle_dialogue_battler_window.deactivate
        @research_mod_enemy_dialogue_help_window.show
        @research_mod_battle_dialogue_talk_category_window.setup(
          data[:battler], data[:entries], nil, '搭话回应'
        )
      else
        owner_label = data[:side] == :party ? '我方' : '敌方'
        open_research_mod_battle_dialogue_entries(
          data[:battler], data[:entries], owner_label, :battlers, :single
        )
      end
    when :combo_target
      open_research_mod_battle_dialogue_entries(
        data[:battler], data[:entries], data[:side] == :party ? '我方目标' : '敌方目标',
        :combo_target_battlers, :combo_reaction
      )
    else
      selection_mode = @research_mod_battle_dialogue_flow == :combo_source ?
                       :combo_source : :single
      return_mode = @research_mod_battle_dialogue_flow == :combo_source ?
                    :combo_source_battlers : :battlers
      owner_label = data[:side] == :party ? '我方' : '敌方'
      @research_mod_combo_source_battler_data = data if selection_mode == :combo_source
      open_research_mod_battle_dialogue_entries(
        data[:battler], data[:entries], owner_label, return_mode, selection_mode
      )
    end
  end

  def select_research_mod_battle_dialogue_enemy_mode
    enemy = @research_mod_battle_dialogue_battler
    mode = @research_mod_battle_dialogue_enemy_mode_window.current_symbol
    entries = ResearchMod.enemy_dialogue_entries(enemy, mode)
    if entries.empty?
      Sound.play_buzzer
      @research_mod_battle_dialogue_enemy_mode_window.activate
      return
    end

    open_research_mod_battle_dialogue_entries(
      enemy, entries, '敌方', :enemy_mode, :single
    )
  end

  def open_research_mod_battle_dialogue_entries(battler, entries, owner_label,
                                                 return_mode, selection_mode)
    if entries.empty?
      Sound.play_buzzer
      @research_mod_battle_dialogue_battler_window.activate
      return
    end

    @research_mod_battle_dialogue_list_return = return_mode
    @research_mod_battle_dialogue_selection_mode = selection_mode
    @research_mod_battle_dialogue_battler_window.hide
    @research_mod_battle_dialogue_battler_window.deactivate
    @research_mod_battle_dialogue_enemy_mode_window.hide
    @research_mod_battle_dialogue_enemy_mode_window.deactivate
    @research_mod_battle_dialogue_special_mode_window.hide
    @research_mod_battle_dialogue_special_mode_window.deactivate
    @research_mod_enemy_dialogue_window.setup(
      battler, entries, owner_label, '返回上一级'
    )
    @research_mod_enemy_dialogue_help_window.show
    @research_mod_enemy_dialogue_window.show
    @research_mod_enemy_dialogue_window.activate
  end

  def execute_research_mod_battle_dialogue
    entry = @research_mod_enemy_dialogue_window.current_ext
    unless entry && entry[:word]
      Sound.play_buzzer
      @research_mod_enemy_dialogue_window.activate
      return
    end

    case @research_mod_battle_dialogue_selection_mode
    when :combo_source
      @research_mod_combo_source_entry = entry
      @research_mod_enemy_dialogue_window.hide
      @research_mod_enemy_dialogue_window.deactivate
      @research_mod_enemy_dialogue_help_window.hide
      @research_mod_battle_dialogue_flow = :combo_target
      @research_mod_battle_dialogue_battler_return = :combo_source_dialogue
      @research_mod_battle_dialogue_battler_window.setup(
        research_mod_reaction_battler_entries, '返回释放台词列表'
      )
      @research_mod_battle_dialogue_battler_window.show
      @research_mod_battle_dialogue_battler_window.activate
    when :combo_reaction
      play_research_mod_dialogue_words(@research_mod_combo_source_entry, entry)
    when :single
      if @research_mod_battle_dialogue_flow == :temptation_perfume &&
         entry[:flow]
        play_research_mod_temptation_perfume_event(entry)
      elsif @research_mod_battle_dialogue_flow == :follow && entry[:flow]
        play_research_mod_follow_event(entry)
      elsif entry[:flow]
        play_research_mod_temptation_perfume_event(entry)
      else
        play_research_mod_dialogue_words(entry)
      end
    else
      play_research_mod_dialogue_words(entry)
    end
  end

  def open_research_mod_troop_story_dialogue
    troop_id = ResearchMod.current_troop_id
    entries = ResearchMod.troop_story_dialogue_entries(troop_id)
    if entries.empty?
      Sound.play_buzzer
      @research_mod_battle_dialogue_special_mode_window.activate
      return
    end

    open_research_mod_battle_dialogue_entries(
      $game_troop, entries, '七尾兵队剧情', :special_mode, :single
    )
  end

  def open_research_mod_skill_dialogue_categories
    @research_mod_battle_dialogue_main_window.hide
    @research_mod_battle_dialogue_main_window.deactivate
    @research_mod_battle_dialogue_skill_category_window.select(0)
    @research_mod_battle_dialogue_skill_category_window.show
    @research_mod_battle_dialogue_skill_category_window.activate
  end

  def select_research_mod_special_talk_category
    data = @research_mod_battle_dialogue_talk_category_window.current_ext
    unless data && !data[:entries].empty?
      Sound.play_buzzer
      @research_mod_battle_dialogue_talk_category_window.activate
      return
    end

    @research_mod_battle_dialogue_talk_category_window.hide
    @research_mod_battle_dialogue_talk_category_window.deactivate
    open_research_mod_battle_dialogue_entries(
      @research_mod_battle_dialogue_talk_category_window.enemy,
      data[:entries], '敌方搭话回应', :talk_category, :single
    )
  end

  def play_research_mod_follow_event(entry)
    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_enemy_dialogue_help_window.hide
    research_mod_play_dialogue_with_hidden_battle_windows do
      play_research_mod_temptation_nodes(entry[:flow])
    end
    $game_message.instance_variable_set(:@research_mod_choice_right, false)
    $game_message.instance_variable_set(:@research_mod_choice_bottom_y, nil)
    @research_mod_enemy_dialogue_help_window.show
    @research_mod_enemy_dialogue_window.show
    @research_mod_enemy_dialogue_window.activate
    @research_mod_enemy_dialogue_window.update_help
  end

  def play_research_mod_temptation_perfume_event(entry)
    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_enemy_dialogue_help_window.hide
    research_mod_play_dialogue_with_hidden_battle_windows do
      play_research_mod_temptation_nodes(entry[:flow])
    end
    $game_message.instance_variable_set(:@research_mod_choice_right, false)
    $game_message.instance_variable_set(:@research_mod_choice_bottom_y, nil)
    @research_mod_enemy_dialogue_help_window.show
    @research_mod_enemy_dialogue_window.show
    @research_mod_enemy_dialogue_window.activate
    @research_mod_enemy_dialogue_window.update_help
  end

  def play_research_mod_temptation_nodes(nodes)
    nodes = Array(nodes)
    node_index = 0
    while node_index < nodes.size
      node = nodes[node_index]
      if node[:type] == :terminate
        return true
      elsif node[:type] == :conditional
        branch_nodes = research_mod_temptation_condition?(node[:parameters]) ?
                       node[:true_nodes] : node[:false_nodes]
        return true if play_research_mod_temptation_nodes(branch_nodes)
        node_index += 1
        next
      elsif node[:type] == :picture_show
        research_mod_show_temptation_picture(node[:parameters])
        node_index += 1
        next
      elsif node[:type] == :picture_move
        research_mod_move_temptation_picture(node[:parameters])
        node_index += 1
        next
      elsif node[:type] == :picture_erase
        research_mod_erase_temptation_picture(node[:picture_id])
        node_index += 1
        next
      elsif node[:type] == :sound_effect
        node[:sound].play if node[:sound] && node[:sound].respond_to?(:play)
        node_index += 1
        next
      elsif node[:type] == :message
        node[:word].execute if node[:word]
        wait_for_message
        node_index += 1
        next
      end
      unless node[:type] == :choice
        node_index += 1
        next
      end

      prompt = node[:prompt]
      if prompt && prompt[:word]
        prompt[:word].execute
        wait_for_message
      end
      selected_index = nil
      # Clear stale choice data before displaying a new native choice list.
      $game_message.choices.clear if $game_message.respond_to?(:choices) &&
                                     $game_message.choices
      $game_message.position = node[:choice_position].nil? ? 2 : node[:choice_position].to_i
      $game_message.background = node[:choice_background].nil? ? 0 : node[:choice_background].to_i
      $game_message.instance_variable_set(:@research_mod_choice_right, true)
      choice_bottom_y = if @message_window
                          Graphics.height - @message_window.height
                        else
                          @party_command_window.y
                        end
      $game_message.instance_variable_set(:@research_mod_choice_bottom_y,
                                          choice_bottom_y)
      node[:choices].each { |choice| $game_message.choices.push(choice.to_s) }
      $game_message.choice_cancel_type = node[:choices].size
      $game_message.choice_proc = proc { |index| selected_index = index.to_i }
      wait_for_message
      $game_message.instance_variable_set(:@research_mod_choice_right, false)
      $game_message.instance_variable_set(:@research_mod_choice_bottom_y, nil)
      choice_count = node[:choices].size
      branch = if selected_index && selected_index >= 0 && selected_index < choice_count
                 node[:branches].find do |candidate|
                   !candidate[:cancel] && candidate[:choice_index].to_i == selected_index
                 end
               end
      branch ||= node[:branches].find { |candidate| candidate[:cancel] } if
        (selected_index || choice_count).to_i >= choice_count
      if branch
        terminated = play_research_mod_temptation_nodes(branch[:nodes])
        return true if terminated
      end

      # Some original events intentionally leave a branch empty and place the
      # actual continuation after the closing 404 command.  Play that suffix
      # explicitly so an empty branch can never terminate the simulated flow.
      if branch && Array(branch[:nodes]).empty? && node_index + 1 < nodes.size
        return play_research_mod_temptation_nodes(nodes[(node_index + 1)..-1])
      end

      # Continue with nodes after the choice block, including when the selected
      # branch is intentionally empty (as in the original enemy 010 event).
      node_index += 1
    end
    false
  end

  def research_mod_temptation_condition?(parameters)
    values = Array(parameters)
    case values[0].to_i
    when 0
      $game_switches[values[1].to_i] == (values[2].to_i == 0)
    when 1
      left = $game_variables[values[1].to_i]
      right = values[2].to_i == 0 ? values[3] : $game_variables[values[3].to_i]
      case values[4].to_i
      when 0 then left == right
      when 1 then left >= right
      when 2 then left <= right
      when 3 then left > right
      when 4 then left < right
      when 5 then left != right
      else false
      end
    when 4
      actor = $game_actors[values[1].to_i]
      return false unless actor
      case values[2].to_i
      when 0 then $game_party.members.include?(actor)
      when 1 then actor.name == values[3]
      when 2 then actor.class_id == values[3].to_i
      when 3 then actor.skill_learn?($data_skills[values[3].to_i])
      when 4 then actor.weapons.include?($data_weapons[values[3].to_i])
      when 5 then actor.armors.include?($data_armors[values[3].to_i])
      when 6 then actor.state?(values[3].to_i)
      else false
      end
    when 5
      target = $game_troop.members[values[1].to_i]
      target && (values[2].to_i == 0 ? target.alive? : target.state?(values[3].to_i))
    when 7
      gold = $game_party.gold
      values[2].to_i == 0 ? gold >= values[1].to_i : gold <= values[1].to_i
    when 8
      $game_party.has_item?($data_items[values[1].to_i])
    when 9
      $game_party.has_item?($data_weapons[values[1].to_i], values[2])
    when 10
      $game_party.has_item?($data_armors[values[1].to_i], values[2])
    when 12
      eval(values[1].to_s)
    else
      false
    end
  rescue
    false
  end

  def research_mod_temptation_screen
    return $game_troop.screen if $game_troop && $game_troop.respond_to?(:screen)
    return $game_map.screen if $game_map && $game_map.respond_to?(:screen)

    nil
  rescue
    nil
  end

  def research_mod_show_temptation_picture(parameters)
    screen = research_mod_temptation_screen
    return unless screen && screen.respond_to?(:pictures)

    values = Array(parameters)
    picture_id = values[0].to_i
    picture = screen.pictures[picture_id]
    return unless picture

    x, y = research_mod_picture_coordinates(values[3], values[4], values[5])
    picture.show(values[1].to_s, values[2].to_i, x, y, values[6].to_i,
                 values[7].to_i, values[8].to_i, values[9].to_i)
  rescue
  end

  def research_mod_move_temptation_picture(parameters)
    screen = research_mod_temptation_screen
    return unless screen && screen.respond_to?(:pictures)

    values = Array(parameters)
    picture = screen.pictures[values[0].to_i]
    return unless picture

    x, y = research_mod_picture_coordinates(values[3], values[4], values[5])
    picture.move(values[2].to_i, x, y, values[6].to_i, values[7].to_i,
                 values[8].to_i, values[9].to_i, values[10].to_i)
    abs_wait(values[10].to_i) if values[11] && respond_to?(:abs_wait)
  rescue
  end

  def research_mod_picture_coordinates(mode, x_value, y_value)
    return [x_value.to_i, y_value.to_i] if mode.to_i == 0

    variables = defined?($game_variables) && $game_variables ? $game_variables : []
    [variables[x_value.to_i].to_i, variables[y_value.to_i].to_i]
  rescue
    [x_value.to_i, y_value.to_i]
  end

  def research_mod_erase_temptation_picture(picture_id)
    screen = research_mod_temptation_screen
    return unless screen && screen.respond_to?(:pictures)

    picture = screen.pictures[picture_id.to_i]
    picture.erase if picture && picture.respond_to?(:erase)
  rescue
  end

  def play_research_mod_dialogue_words(*entries)
    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_enemy_dialogue_help_window.hide
    research_mod_play_dialogue_with_hidden_battle_windows do
      entries.compact.each do |entry|
        words = entry[:words] || [entry[:word]]
        words.compact.each do |word|
          word.execute
          wait_for_message
        end
      end
    end
    @research_mod_enemy_dialogue_help_window.show
    @research_mod_enemy_dialogue_window.show
    @research_mod_enemy_dialogue_window.activate
    @research_mod_enemy_dialogue_window.update_help
  end

  def load_previous_research_mod_battle_dialogue_page
    @research_mod_enemy_dialogue_window.previous_page
    @research_mod_enemy_dialogue_window.activate
  end

  def load_next_research_mod_battle_dialogue_page
    @research_mod_enemy_dialogue_window.next_page
    @research_mod_enemy_dialogue_window.activate
  end

  def open_research_mod_battle_dialogue_skills
    entry = @research_mod_enemy_dialogue_window.current_ext
    skill_ids = Array(entry && entry[:skill_ids]).map(&:to_i).uniq
    unless entry && entry[:show_skill_relations] && skill_ids.size > 1
      Sound.play_buzzer
      @research_mod_enemy_dialogue_window.activate
      return
    end

    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_battle_dialogue_skill_list_window.setup(entry)
    @research_mod_battle_dialogue_skill_list_window.show
    @research_mod_battle_dialogue_skill_list_window.activate
  end

  def keep_research_mod_battle_dialogue_skills
    @research_mod_battle_dialogue_skill_list_window.activate
  end

  def load_previous_research_mod_battle_dialogue_skill_page
    @research_mod_battle_dialogue_skill_list_window.previous_page
    @research_mod_battle_dialogue_skill_list_window.activate
  end

  def load_next_research_mod_battle_dialogue_skill_page
    @research_mod_battle_dialogue_skill_list_window.next_page
    @research_mod_battle_dialogue_skill_list_window.activate
  end

  def close_research_mod_battle_dialogue_skills
    @research_mod_battle_dialogue_skill_list_window.hide
    @research_mod_battle_dialogue_skill_list_window.deactivate
    @research_mod_battle_dialogue_skill_list_window.unselect
    @research_mod_enemy_dialogue_window.show
    @research_mod_enemy_dialogue_window.activate
    @research_mod_enemy_dialogue_window.update_help
  end

  def close_research_mod_battle_dialogue_list
    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_enemy_dialogue_window.unselect
    @research_mod_enemy_dialogue_help_window.hide
    if @research_mod_battle_dialogue_list_return == :enemy_mode
      @research_mod_battle_dialogue_enemy_mode_window.show
      @research_mod_battle_dialogue_enemy_mode_window.activate
    elsif @research_mod_battle_dialogue_list_return == :talk_category
      @research_mod_enemy_dialogue_help_window.show
      @research_mod_battle_dialogue_talk_category_window.show
      @research_mod_battle_dialogue_talk_category_window.activate
      @research_mod_battle_dialogue_talk_category_window.update_help
    elsif @research_mod_battle_dialogue_list_return == :special_mode
      @research_mod_battle_dialogue_special_mode_window.show
      @research_mod_battle_dialogue_special_mode_window.activate
    else
      @research_mod_battle_dialogue_battler_window.show
      @research_mod_battle_dialogue_battler_window.activate
    end
  end

  def close_research_mod_battle_dialogue_enemy_mode
    @research_mod_battle_dialogue_enemy_mode_window.hide
    @research_mod_battle_dialogue_enemy_mode_window.deactivate
    @research_mod_battle_dialogue_enemy_mode_window.unselect
    @research_mod_battle_dialogue_battler_window.show
    @research_mod_battle_dialogue_battler_window.activate
  end

  def close_research_mod_special_talk_category
    @research_mod_battle_dialogue_talk_category_window.hide
    @research_mod_battle_dialogue_talk_category_window.deactivate
    @research_mod_battle_dialogue_talk_category_window.unselect
    @research_mod_enemy_dialogue_help_window.hide
    @research_mod_battle_dialogue_battler_window.show
    @research_mod_battle_dialogue_battler_window.activate
  end

  def close_research_mod_special_dialogue_mode
    @research_mod_battle_dialogue_special_mode_window.hide
    @research_mod_battle_dialogue_special_mode_window.deactivate
    @research_mod_battle_dialogue_special_mode_window.unselect
    @research_mod_battle_dialogue_main_window.show
    @research_mod_battle_dialogue_main_window.activate
  end

  def close_research_mod_skill_dialogue_categories
    @research_mod_battle_dialogue_skill_category_window.hide
    @research_mod_battle_dialogue_skill_category_window.deactivate
    @research_mod_battle_dialogue_skill_category_window.unselect
    @research_mod_battle_dialogue_main_window.show
    @research_mod_battle_dialogue_main_window.activate
  end

  def close_research_mod_skill_dialogue_types
    @research_mod_battle_dialogue_skill_type_window.hide
    @research_mod_battle_dialogue_skill_type_window.deactivate
    @research_mod_battle_dialogue_skill_type_window.unselect
    @research_mod_battle_dialogue_skill_category_window.show
    @research_mod_battle_dialogue_skill_category_window.activate
  end

  def close_research_mod_battle_dialogue_battlers
    @research_mod_battle_dialogue_battler_window.hide
    @research_mod_battle_dialogue_battler_window.deactivate
    @research_mod_battle_dialogue_battler_window.unselect
    if @research_mod_battle_dialogue_battler_return == :combo_source_dialogue
      @research_mod_battle_dialogue_flow = :combo_source
      @research_mod_battle_dialogue_battler_return = :main
      @research_mod_battle_dialogue_list_return = :combo_source_battlers
      @research_mod_battle_dialogue_selection_mode = :combo_source
      @research_mod_battle_dialogue_battler_window.setup(
        research_mod_combo_source_entries, '返回对白模拟'
      )
      @research_mod_battle_dialogue_battler_window.hide
      @research_mod_battle_dialogue_battler_window.deactivate
      @research_mod_battle_dialogue_battler_window.unselect
      data = @research_mod_combo_source_battler_data
      if data
        owner_label = data[:side] == :party ? '我方' : '敌方'
        @research_mod_enemy_dialogue_window.setup(
          data[:battler], data[:entries], owner_label, '返回上一级'
        )
        @research_mod_enemy_dialogue_window.select_entry(@research_mod_combo_source_entry)
      end
      @research_mod_enemy_dialogue_help_window.show
      @research_mod_enemy_dialogue_window.show
      @research_mod_enemy_dialogue_window.activate
      @research_mod_enemy_dialogue_window.update_help
    elsif @research_mod_battle_dialogue_battler_return == :special_mode
      @research_mod_battle_dialogue_special_mode_window.show
      @research_mod_battle_dialogue_special_mode_window.activate
    elsif @research_mod_battle_dialogue_battler_return == :skill_type
      @research_mod_battle_dialogue_skill_type_window.show
      @research_mod_battle_dialogue_skill_type_window.activate
    else
      @research_mod_battle_dialogue_main_window.show
      @research_mod_battle_dialogue_main_window.activate
    end
  end

  def close_research_mod_battle_dialogue
    @research_mod_battle_dialogue_main_window.hide
    @research_mod_battle_dialogue_main_window.deactivate
    @research_mod_battle_dialogue_main_window.unselect
    @research_mod_battle_dialogue_flow = nil
    @research_mod_battle_dialogue_battler_return = nil
    @research_mod_battle_dialogue_list_return = nil
    @research_mod_battle_dialogue_selection_mode = nil
    @research_mod_battle_dialogue_battler = nil
    @research_mod_special_dialogue_mode = nil
    @research_mod_skill_dialogue_category = nil
    @research_mod_skill_dialogue_type = nil
    @research_mod_combo_source_entry = nil
    @research_mod_combo_source_battler_data = nil
    @party_command_window.activate
  end

  def open_research_mod_enemy_dialogue_available
    open_research_mod_enemy_dialogue(:available)
  end

  def open_research_mod_enemy_dialogue_all
    open_research_mod_enemy_dialogue(:all_skills)
  end

  def open_research_mod_enemy_dialogue_special
    open_research_mod_enemy_dialogue(:special)
  end

  def open_research_mod_enemy_dialogue_down
    open_research_mod_enemy_dialogue(:down)
  end

  def open_research_mod_enemy_dialogue(mode = :all)
    enemies = research_mod_visible_enemies
    if enemies.empty?
      Sound.play_buzzer
      @party_command_window.activate
      return
    end

    @party_command_window.deactivate
    @research_mod_enemy_dialogue_enemy_window.setup(enemies, mode)
    @research_mod_enemy_dialogue_enemy_window.show
    @research_mod_enemy_dialogue_enemy_window.activate
  end

  def select_research_mod_enemy_dialogue_enemy
    data = @research_mod_enemy_dialogue_enemy_window.current_ext
    unless data && !data[:entries].empty?
      Sound.play_buzzer
      @research_mod_enemy_dialogue_enemy_window.activate
      return
    end

    @research_mod_enemy_dialogue_enemy_window.hide
    @research_mod_enemy_dialogue_enemy_window.deactivate
    @research_mod_enemy_dialogue_window.setup(data[:enemy], data[:entries])
    @research_mod_enemy_dialogue_help_window.show
    @research_mod_enemy_dialogue_window.show
    @research_mod_enemy_dialogue_window.activate
  end

  def execute_research_mod_enemy_dialogue
    entry = @research_mod_enemy_dialogue_window.current_ext
    unless entry && entry[:word]
      Sound.play_buzzer
      @research_mod_enemy_dialogue_window.activate
      return
    end

    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_enemy_dialogue_help_window.hide
    entry[:word].execute
    wait_for_message
    @research_mod_enemy_dialogue_help_window.show
    @research_mod_enemy_dialogue_window.show
    @research_mod_enemy_dialogue_window.activate
    @research_mod_enemy_dialogue_window.update_help
  end

  def close_research_mod_enemy_dialogue_list
    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_enemy_dialogue_window.unselect
    @research_mod_enemy_dialogue_help_window.hide
    @research_mod_enemy_dialogue_enemy_window.show
    @research_mod_enemy_dialogue_enemy_window.activate
  end

  def close_research_mod_enemy_dialogue
    @research_mod_enemy_dialogue_enemy_window.hide
    @research_mod_enemy_dialogue_enemy_window.deactivate
    @research_mod_enemy_dialogue_enemy_window.unselect
    @party_command_window.activate
  end

  def hide_research_mod_battle_edit_window(window)
    return unless window

    window.hide
    window.deactivate
    window.unselect
  end

  def open_research_mod_battle_edit_custom_talk
    @research_mod_battle_dialogue_main_window.hide
    @research_mod_battle_dialogue_main_window.deactivate
    @research_mod_battle_edit_help_window.show
    @research_mod_battle_edit_help_window.set_text(
      '从敌我双方选择发起者，再选择敌方目标；仅播放对白，不消耗回合。'
    )
    initiators = research_mod_battle_actors + research_mod_visible_enemies
    @research_mod_battle_edit_talk_actor_window.setup(initiators)
  end

  def select_research_mod_battle_edit_talk_actor
    data = @research_mod_battle_edit_talk_actor_window.current_ext
    unless data && data[:battler]
      Sound.play_buzzer
      @research_mod_battle_edit_talk_actor_window.activate
      return
    end

    @research_mod_battle_edit_talk_actor = data[:battler]
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_actor_window)
    @research_mod_battle_edit_talk_enemy_window.setup(
      research_mod_visible_enemies, @research_mod_battle_edit_talk_actor
    )
  end

  def select_research_mod_battle_edit_talk_enemy
    data = @research_mod_battle_edit_talk_enemy_window.current_ext
    unless data && data[:enemy] && !data[:entries].empty?
      Sound.play_buzzer
      @research_mod_battle_edit_talk_enemy_window.activate
      return
    end

    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_enemy_window)
    @research_mod_battle_edit_talk_category_window.setup(
      data[:enemy], data[:entries], @research_mod_battle_edit_talk_actor
    )
  end

  def select_research_mod_battle_edit_talk_category
    data = @research_mod_battle_edit_talk_category_window.current_ext
    unless data && !data[:entries].empty?
      Sound.play_buzzer
      @research_mod_battle_edit_talk_category_window.activate
      return
    end

    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_category_window)
    @research_mod_battle_edit_talk_list_window.setup(
      @research_mod_battle_edit_talk_category_window.enemy,
      data[:entries], @research_mod_battle_edit_talk_actor
    )
  end

  def play_research_mod_battle_edit_talk
    entry = @research_mod_battle_edit_talk_list_window.current_ext
    unless entry && entry[:word]
      Sound.play_buzzer
      @research_mod_battle_edit_talk_list_window.activate
      return
    end

    research_mod_play_dialogue_with_hidden_battle_windows do
      actor_entries = ResearchMod.talk_initiator_dialogue_entries(
        @research_mod_battle_edit_talk_actor
      )
      actor_entry = actor_entries.first
      @research_mod_battle_edit_talk_entry = entry
      initiator_words = actor_entry ? actor_entry[:words] || [actor_entry[:word]] : []
      play_research_mod_battle_edit_talk_words(initiator_words)
      play_research_mod_temptation_nodes(entry[:flow])
    end
    $game_message.instance_variable_set(:@research_mod_choice_right, false)
    $game_message.instance_variable_set(:@research_mod_choice_bottom_y, nil)
    @research_mod_battle_edit_help_window.show
    @research_mod_battle_edit_talk_list_window.show
    @research_mod_battle_edit_talk_list_window.activate
    @research_mod_battle_edit_talk_list_window.update_help
  end

  def play_research_mod_battle_edit_talk_words(words)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_list_window)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_choice_window)
    @research_mod_battle_edit_help_window.hide
    Array(words).compact.each do |word|
      word.execute
      wait_for_message
    end
    @research_mod_battle_edit_help_window.hide
  end

  def play_research_mod_battle_edit_talk_native_choices(entries)
    prompt_words = entries.first[:prompt_words] || []
    play_research_mod_battle_edit_talk_words(prompt_words)
    selected_index = nil
    choice_entry = entries.first
    $game_message.position = choice_entry[:choice_position].nil? ? 2 : choice_entry[:choice_position].to_i
    $game_message.background = choice_entry[:choice_background].nil? ? 0 : choice_entry[:choice_background].to_i
    $game_message.instance_variable_set(:@research_mod_choice_right, true)
    choice_bottom_y = if @message_window
                        Graphics.height - @message_window.height
                      else
                        @party_command_window.y
                      end
    $game_message.instance_variable_set(:@research_mod_choice_bottom_y, choice_bottom_y)
    choices = entries.map { |entry| entry[:choice_label].to_s }
    choices.each { |choice| $game_message.choices.push(choice) }
    $game_message.choice_cancel_type = choices.size
    $game_message.choice_proc = proc { |index| selected_index = index }
    wait_for_message
    if selected_index && selected_index < entries.size
      words = entries[selected_index][:response_words] || []
      play_research_mod_battle_edit_talk_words(words)
    end
    $game_message.instance_variable_set(:@research_mod_choice_right, false)
    $game_message.instance_variable_set(:@research_mod_choice_bottom_y, nil)
    @research_mod_battle_edit_help_window.show
    @research_mod_battle_edit_talk_list_window.show
    @research_mod_battle_edit_talk_list_window.activate
  end

  def close_research_mod_battle_edit_talk_enemy
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_enemy_window)
    @research_mod_battle_edit_talk_actor_window.show
    @research_mod_battle_edit_talk_actor_window.activate
  end

  def close_research_mod_battle_edit_talk_list
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_list_window)
    @research_mod_battle_edit_talk_category_window.show
    @research_mod_battle_edit_talk_category_window.activate
    @research_mod_battle_edit_talk_category_window.update_help
  end

  def close_research_mod_battle_edit_talk_category
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_category_window)
    @research_mod_battle_edit_talk_enemy_window.show
    @research_mod_battle_edit_talk_enemy_window.activate
  end

  def close_research_mod_battle_edit_custom_talk
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_actor_window)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_enemy_window)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_category_window)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_list_window)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_choice_window)
    @research_mod_battle_edit_help_window.hide
    @research_mod_battle_dialogue_main_window.show
    @research_mod_battle_dialogue_main_window.activate
  end
  def open_research_mod_battle_edit
    @party_command_window.deactivate
    @research_mod_battle_edit_help_window.show
    @research_mod_battle_edit_main_window.refresh
    @research_mod_battle_edit_main_window.open_window
  end

  def open_research_mod_battle_edit_enemy_items
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_main_window)
    @research_mod_battle_edit_enemy_item_target_window.setup(
      research_mod_visible_enemies
    )
  end

  def open_research_mod_battle_edit_candidate_manage
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_main_window)
    @research_mod_battle_edit_candidate_target_window.setup(
      research_mod_visible_enemies
    )
  end

  def select_research_mod_battle_edit_candidate_target
    enemy = @research_mod_battle_edit_candidate_target_window.current_ext
    actor = ResearchMod.enemy_follower_actor(enemy)
    unless actor
      Sound.play_buzzer
      @research_mod_battle_edit_candidate_target_window.activate
      return
    end

    @research_mod_battle_edit_candidate_actor = actor
    hide_research_mod_battle_edit_window(
      @research_mod_battle_edit_candidate_target_window
    )
    @research_mod_battle_edit_candidate_window =
      Window_ResearchModActorCandidateManage.new(actor)
    @research_mod_battle_edit_candidate_window.set_handler(
      :add, method(:add_research_mod_battle_edit_candidate)
    )
    @research_mod_battle_edit_candidate_window.set_handler(
      :remove, method(:remove_research_mod_battle_edit_candidate)
    )
    @research_mod_battle_edit_candidate_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_candidate)
    )
  end

  def research_mod_battle_edit_candidate_actor
    @research_mod_battle_edit_candidate_actor
  end

  def add_research_mod_battle_edit_candidate
    actor = research_mod_battle_edit_candidate_actor
    if actor && $game_party && $game_party.respond_to?(:follow?) &&
       !$game_party.follow?(actor.id)
      $game_party.add_stand_actor(actor.id)
      word = research_mod_battle_edit_candidate_word(actor, :yes)
      return play_research_mod_battle_edit_candidate_word(word) if word
    end
    close_research_mod_battle_edit_candidate
  rescue => error
    close_research_mod_battle_edit_candidate
  end

  def remove_research_mod_battle_edit_candidate
    actor = research_mod_battle_edit_candidate_actor
    if actor && $game_party && $game_party.respond_to?(:stand_actors) &&
       $game_party.stand_actors.include?(actor.id)
      $game_party.remove_stand_actor(actor.id)
      ResearchMod.mark_removed_candidate_actor(actor.id)
      word = research_mod_battle_edit_candidate_word(actor, :no)
      return play_research_mod_battle_edit_candidate_word(word) if word
    end
    close_research_mod_battle_edit_candidate
  rescue => error
    close_research_mod_battle_edit_candidate
  end

  def research_mod_battle_edit_candidate_word(actor, key)
    ResearchMod.follower_dialogue_word(actor, key)
  end

  def play_research_mod_battle_edit_candidate_word(word)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_candidate_window)
    @research_mod_battle_edit_help_window.hide
    word.execute
    wait_for_message
    close_research_mod_battle_edit_candidate
  rescue => error
    close_research_mod_battle_edit_candidate
  end

  def close_research_mod_battle_edit_candidate
    defer_research_mod_window_dispose(@research_mod_battle_edit_candidate_window)
    @research_mod_battle_edit_candidate_window = nil
    @research_mod_battle_edit_candidate_actor = nil
    @research_mod_battle_edit_help_window.show
    @research_mod_battle_edit_candidate_target_window.refresh
    @research_mod_battle_edit_candidate_target_window.show
    @research_mod_battle_edit_candidate_target_window.activate
    @research_mod_battle_edit_candidate_target_window.update_help
  end

  def close_research_mod_battle_edit_candidate_targets
    hide_research_mod_battle_edit_window(
      @research_mod_battle_edit_candidate_target_window
    )
    @research_mod_battle_edit_candidate_actor = nil
    @research_mod_battle_edit_main_window.open_window
  end

  def select_research_mod_battle_edit_enemy_item_target
    enemy = @research_mod_battle_edit_enemy_item_target_window.current_ext
    unless enemy
      Sound.play_buzzer
      @research_mod_battle_edit_enemy_item_target_window.activate
      return
    end

    hide_research_mod_battle_edit_window(
      @research_mod_battle_edit_enemy_item_target_window
    )
    @research_mod_battle_edit_enemy_item_list_window =
      Window_ResearchModEnemyItemList.new(enemy, @research_mod_battle_edit_help_window)
    @research_mod_battle_edit_enemy_item_list_window.set_handler(
      :all, method(:select_all_research_mod_battle_edit_enemy_items)
    )
    @research_mod_battle_edit_enemy_item_list_window.set_handler(
      :select, method(:select_research_mod_battle_edit_enemy_item)
    )
    @research_mod_battle_edit_enemy_item_list_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_enemy_items)
    )
  end

  def close_research_mod_battle_edit_enemy_items
    defer_research_mod_window_dispose(@research_mod_battle_edit_enemy_item_quantity_window)
    defer_research_mod_window_dispose(@research_mod_battle_edit_enemy_item_list_window)
    @research_mod_battle_edit_enemy_item_quantity_window = nil
    @research_mod_battle_edit_enemy_item_list_window = nil
    @research_mod_battle_edit_enemy_item_target_entries = nil
    @research_mod_battle_edit_enemy_item_target_window.show
    @research_mod_battle_edit_enemy_item_target_window.activate
    @research_mod_battle_edit_enemy_item_target_window.update_help
  end

  def select_all_research_mod_battle_edit_enemy_items
    entries = ResearchMod.enemy_item_available_entries(
      @research_mod_battle_edit_enemy_item_list_window.entries
    )
    open_research_mod_battle_edit_enemy_item_quantity(entries, true)
  end

  def select_research_mod_battle_edit_enemy_item
    entry = @research_mod_battle_edit_enemy_item_list_window.current_ext
    open_research_mod_battle_edit_enemy_item_quantity([entry], false)
  end

  def open_research_mod_battle_edit_enemy_item_quantity(entries, gain_all)
    return @research_mod_battle_edit_enemy_item_list_window.activate if entries.empty?

    @research_mod_battle_edit_enemy_item_target_entries = entries
    @research_mod_battle_edit_enemy_item_list_index =
      @research_mod_battle_edit_enemy_item_list_window.index
    unless @research_mod_battle_edit_enemy_item_quantity_window
      @research_mod_battle_edit_enemy_item_quantity_window =
        Window_ResearchModEnemyItemQuantity.new
      @research_mod_battle_edit_enemy_item_quantity_window.set_handler(
        :ok, method(:gain_research_mod_battle_edit_enemy_items)
      )
      @research_mod_battle_edit_enemy_item_quantity_window.set_handler(
        :cancel, method(:close_research_mod_battle_edit_enemy_item_quantity)
      )
    end
    @research_mod_battle_edit_enemy_item_quantity_window.setup(entries)
    @research_mod_battle_edit_enemy_item_list_window.deactivate
    target_text = gain_all ? format('全部%d种物品', entries.size) :
      ResearchMod.short_item_name(entries[0][:item].name)
    @research_mod_battle_edit_help_window.set_text(
      format('获取目标：%s', target_text) + 10.chr +
      format('请输入数量（1～%d）。',
             @research_mod_battle_edit_enemy_item_quantity_window.maximum) + 10.chr +
      (gain_all ? '该数量会分别应用于每种物品。' : '确认后直接加入背包。')
    )
  end

  def close_research_mod_battle_edit_enemy_item_quantity
    @research_mod_battle_edit_enemy_item_quantity_window.close
    @research_mod_battle_edit_enemy_item_quantity_window.deactivate
    @research_mod_battle_edit_enemy_item_target_entries = nil
    @research_mod_battle_edit_enemy_item_list_window.activate
    @research_mod_battle_edit_enemy_item_list_window.update_help
  end

  def gain_research_mod_battle_edit_enemy_items
    amount = @research_mod_battle_edit_enemy_item_quantity_window.number
    gained_kinds = 0
    gained_total = 0
    @research_mod_battle_edit_enemy_item_target_entries.each do |entry|
      gained = ResearchMod.gain_database_item(entry[:item], amount)
      next unless gained > 0

      gained_kinds += 1
      gained_total += gained
    end
    @research_mod_battle_edit_enemy_item_quantity_window.close
    @research_mod_battle_edit_enemy_item_quantity_window.deactivate
    @research_mod_battle_edit_enemy_item_target_entries = nil
    @research_mod_battle_edit_enemy_item_list_window.refresh
    index = [@research_mod_battle_edit_enemy_item_list_index.to_i,
             @research_mod_battle_edit_enemy_item_list_window.item_max - 1].min
    @research_mod_battle_edit_enemy_item_list_window.select([index, 0].max)
    @research_mod_battle_edit_enemy_item_list_window.activate
    @research_mod_battle_edit_help_window.set_text(
      format('获取完成：%d种物品，共%d个。', gained_kinds, gained_total) + 10.chr +
      '已达到持有上限的部分不会重复加入。'
    )
  end

  def close_research_mod_battle_edit_enemy_item_targets
    hide_research_mod_battle_edit_window(
      @research_mod_battle_edit_enemy_item_target_window
    )
    @research_mod_battle_edit_main_window.open_window
  end

  def open_research_mod_battle_edit_states
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_main_window)
    @research_mod_battle_edit_state_window.refresh
    @research_mod_battle_edit_state_window.open_window
  end

  def close_research_mod_battle_edit_states
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_state_window)
    @research_mod_battle_edit_main_window.open_window
  end

  def open_research_mod_battle_edit_buffs
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_main_window)
    @research_mod_battle_edit_buff_window.refresh
    @research_mod_battle_edit_buff_window.open_window
  end

  def close_research_mod_battle_edit_buffs
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_buff_window)
    @research_mod_battle_edit_main_window.open_window
  end

  def open_research_mod_battle_edit_moonless_dance_targets
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_buff_window)
    open_research_mod_battle_edit_targets(
      :add, ResearchMod::MOONLESS_DANCE_STATE_ID, '赋予月無の舞'
    )
  end

  def open_research_mod_battle_edit_temptation
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_state_window)
    @research_mod_battle_edit_action_window.refresh
    @research_mod_battle_edit_action_window.open_window
  end

  def close_research_mod_battle_edit_temptation
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_action_window)
    @research_mod_battle_edit_state_window.open_window
  end

  def open_research_mod_battle_edit_add_targets
    open_research_mod_battle_edit_targets(:add)
  end

  def open_research_mod_battle_edit_remove_targets
    open_research_mod_battle_edit_targets(:remove)
  end

  def open_research_mod_battle_edit_targets(action,
                                             state_id = ResearchMod::TEMPTATION_STATE_ID,
                                             operation_name = nil)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_action_window)
    @research_mod_battle_edit_target_window.setup(action, state_id, operation_name)
  end

  def close_research_mod_battle_edit_targets
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_target_window)
    if @research_mod_battle_edit_target_window.state_id ==
       ResearchMod::MOONLESS_DANCE_STATE_ID
      @research_mod_battle_edit_buff_window.refresh
      @research_mod_battle_edit_buff_window.open_window
    else
      @research_mod_battle_edit_action_window.refresh
      @research_mod_battle_edit_action_window.open_window
    end
  end

  def confirm_research_mod_battle_edit_target
    targets = @research_mod_battle_edit_target_window.current_ext
    if !targets || targets.empty?
      Sound.play_buzzer
      @research_mod_battle_edit_target_window.activate
      return
    end

    @research_mod_battle_edit_action = @research_mod_battle_edit_target_window.action
    @research_mod_battle_edit_state_id = @research_mod_battle_edit_target_window.state_id
    @research_mod_battle_edit_operation_name =
      @research_mod_battle_edit_target_window.operation_name
    @research_mod_battle_edit_targets = targets
    label = @research_mod_battle_edit_target_window.target_label
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_target_window)
    @research_mod_battle_edit_confirm_window.setup(
      @research_mod_battle_edit_action, label,
      @research_mod_battle_edit_state_id,
      @research_mod_battle_edit_operation_name
    )
  end

  def cancel_research_mod_battle_edit_confirm
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_confirm_window)
    @research_mod_battle_edit_target_window.show
    @research_mod_battle_edit_target_window.activate
    @research_mod_battle_edit_target_window.update_help
  end

  def execute_research_mod_battle_edit
    changed = 0
    targets = @research_mod_battle_edit_targets || []
    targets.each do |battler|
      result = if @research_mod_battle_edit_action == :add
                 ResearchMod.force_add_battle_state(
                   battler, @research_mod_battle_edit_state_id
                 )
               else
                 ResearchMod.force_remove_battle_state(
                   battler, @research_mod_battle_edit_state_id
                 )
               end
      changed += 1 if result
    end
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_confirm_window)
    @research_mod_battle_edit_target_window.setup(
      @research_mod_battle_edit_action, @research_mod_battle_edit_state_id,
      @research_mod_battle_edit_operation_name
    )
    if changed > 0
      refresh_status if respond_to?(:refresh_status)
      @research_mod_battle_edit_help_window.set_text(
        format('操作完成：已修改 %d 名战斗成员。', changed)
      )
    else
      Sound.play_buzzer
      @research_mod_battle_edit_help_window.set_text(
        '没有成员被修改。请检查目标状态或全员诱惑免疫开关。'
      )
    end
  end

  def close_research_mod_battle_edit
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_main_window)
    @research_mod_battle_edit_help_window.hide
    @research_mod_battle_edit_action = nil
    @research_mod_battle_edit_targets = nil
    @party_command_window.activate
  end

  def open_research_mod_enemy_status
    enemies = @research_mod_enemy_status_window.battle_enemies
    if enemies.empty?
      Sound.play_buzzer
      @party_command_window.activate
      return
    end

    @party_command_window.deactivate
    @research_mod_enemy_status_window.set_enemies(enemies)
    @research_mod_enemy_status_window.select(0)
    @research_mod_enemy_status_window.show
    @research_mod_enemy_status_window.activate
  end

  def keep_research_mod_enemy_status
    @research_mod_enemy_status_window.activate
  end

  def open_research_mod_enemy_detail
    enemy = @research_mod_enemy_status_window.current_ext
    return keep_research_mod_enemy_status unless enemy

    @research_mod_enemy_status_window.hide
    @research_mod_enemy_status_window.deactivate
    @research_mod_enemy_detail_window.set_enemy(enemy)
    @research_mod_enemy_detail_window.select(0)
    @research_mod_enemy_detail_window.show
    @research_mod_enemy_detail_window.activate
  end

  def keep_research_mod_enemy_detail
    @research_mod_enemy_detail_window.activate
  end

  def close_research_mod_enemy_detail
    @research_mod_enemy_detail_window.hide
    @research_mod_enemy_detail_window.deactivate
    @research_mod_enemy_detail_window.unselect
    @research_mod_enemy_status_window.show
    @research_mod_enemy_status_window.activate
  end

  def close_research_mod_enemy_status
    @research_mod_enemy_detail_window.hide
    @research_mod_enemy_detail_window.deactivate
    @research_mod_enemy_detail_window.unselect
    @research_mod_enemy_status_window.hide
    @research_mod_enemy_status_window.deactivate
    @research_mod_enemy_status_window.unselect
    @party_command_window.activate
  end

  def update
    dispose_research_mod_battle_deferred_windows
    update_research_mod_audio_overlay
    research_mod_enemy_status_update
    if @research_mod_force_victory_pending && !scene_changing?
      @research_mod_force_victory_pending = false
      BattleManager.judge_win_loss
    end
    update_research_mod_enemy_status
    update_research_mod_party_status
    update_research_mod_battle_cutin_preview
  end

  def defer_research_mod_window_dispose(window)
    return unless window && !window.disposed?

    window.hide
    window.deactivate if window.respond_to?(:deactivate)
    @research_mod_battle_deferred_windows ||= []
    @research_mod_battle_deferred_windows << window unless
      @research_mod_battle_deferred_windows.include?(window)
  end

  def dispose_research_mod_battle_deferred_windows
    windows = @research_mod_battle_deferred_windows
    return unless windows && !windows.empty?

    @research_mod_battle_deferred_windows = []
    windows.each do |window|
      window.dispose unless window.disposed?
    end
  end

  def update_research_mod_enemy_status
    list_window = @research_mod_enemy_status_window
    return unless list_window && !list_window.disposed?

    enemies = list_window.battle_enemies
    if enemies.empty?
      close_research_mod_enemy_detail if @research_mod_enemy_detail_window.visible
      close_research_mod_enemy_status if list_window.visible
      return
    end

    list_window.set_enemies(enemies) if list_window.visible
    detail_window = @research_mod_enemy_detail_window
    return unless detail_window && !detail_window.disposed? && detail_window.visible

    enemy = detail_window.instance_variable_get(:@enemy)
    if !enemies.include?(enemy)
      close_research_mod_enemy_detail
      return
    end
    detail_window.set_enemy(enemy)
  end

  def update_research_mod_party_status
    window = @research_mod_party_status_window
    return unless window && !window.disposed? && window.visible

    actors = window.battle_actors
    if actors.empty?
      close_research_mod_party_status
      return
    end

    window.set_actors(actors)
  end

  def terminate
    dispose_research_mod_audio_overlay
    dispose_research_mod_battle_cutin_preview
    dispose_research_mod_battle_deferred_windows
    windows = [@research_mod_enemy_status_window,
               @research_mod_enemy_detail_window,
               @research_mod_party_status_window,
               @research_mod_battle_record_window,
               @research_mod_battle_cutin_type_window,
               @research_mod_battle_cutin_battler_window,
               @research_mod_battle_cutin_enemy_mode_window,
               @research_mod_battle_cutin_list_window,
               @research_mod_battle_cutin_help_window,
               @research_mod_battle_dialogue_main_window,
               @research_mod_battle_dialogue_battler_window,
               @research_mod_battle_dialogue_enemy_mode_window,
               @research_mod_battle_dialogue_special_mode_window,
               @research_mod_battle_dialogue_skill_category_window,
               @research_mod_battle_dialogue_skill_type_window,
               @research_mod_battle_dialogue_talk_category_window,
               @research_mod_enemy_dialogue_enemy_window,
               @research_mod_enemy_dialogue_window,
               @research_mod_battle_dialogue_skill_list_window,
               @research_mod_enemy_dialogue_help_window,
               @research_mod_battle_edit_help_window,
               @research_mod_battle_edit_main_window,
               @research_mod_battle_edit_state_window,
               @research_mod_battle_edit_action_window,
               @research_mod_battle_edit_buff_window,
               @research_mod_battle_edit_target_window,
               @research_mod_battle_edit_enemy_item_target_window,
               @research_mod_battle_edit_candidate_target_window,
               @research_mod_battle_edit_candidate_window,
               @research_mod_battle_edit_enemy_item_list_window,
               @research_mod_battle_edit_enemy_item_quantity_window,
               @research_mod_battle_edit_confirm_window,
               @research_mod_battle_edit_talk_actor_window,
               @research_mod_battle_edit_talk_enemy_window,
               @research_mod_battle_edit_talk_category_window,
               @research_mod_battle_edit_talk_list_window,
               @research_mod_battle_edit_talk_choice_window,
               @synthesis_category_window,
               @synthesis_help_window,
               @synthesis_list_window,
               @synthesis_recipe_window,
               @synthesis_action_window,
               @synthesis_id_window,
               @synthesis_id_help_window]
    windows.each do |window|
      window.dispose if window && !window.disposed?
    end
    @research_mod_enemy_status_window = nil
    @research_mod_enemy_detail_window = nil
    @research_mod_party_status_window = nil
    @research_mod_battle_record_window = nil
    @research_mod_battle_cutin_type_window = nil
    @research_mod_battle_cutin_battler_window = nil
    @research_mod_battle_cutin_enemy_mode_window = nil
    @research_mod_battle_cutin_list_window = nil
    @research_mod_battle_cutin_help_window = nil
    @research_mod_battle_dialogue_main_window = nil
    @research_mod_battle_dialogue_battler_window = nil
    @research_mod_battle_dialogue_enemy_mode_window = nil
    @research_mod_battle_dialogue_special_mode_window = nil
    @research_mod_battle_dialogue_skill_category_window = nil
    @research_mod_battle_dialogue_skill_type_window = nil
    @research_mod_battle_dialogue_talk_category_window = nil
    @research_mod_enemy_dialogue_enemy_window = nil
    @research_mod_enemy_dialogue_window = nil
    @research_mod_battle_dialogue_skill_list_window = nil
    @research_mod_enemy_dialogue_help_window = nil
    @research_mod_battle_edit_help_window = nil
    @research_mod_battle_edit_main_window = nil
    @research_mod_battle_edit_state_window = nil
    @research_mod_battle_edit_action_window = nil
    @research_mod_battle_edit_buff_window = nil
    @research_mod_battle_edit_target_window = nil
    @research_mod_battle_edit_enemy_item_target_window = nil
    @research_mod_battle_edit_candidate_target_window = nil
    @research_mod_battle_edit_candidate_window = nil
    @research_mod_battle_edit_enemy_item_list_window = nil
    @research_mod_battle_edit_enemy_item_quantity_window = nil
    @research_mod_battle_edit_enemy_item_target_entries = nil
    @research_mod_battle_edit_enemy_item_list_index = nil
    @research_mod_battle_edit_confirm_window = nil
    @research_mod_battle_edit_state_id = nil
    @research_mod_battle_edit_operation_name = nil
    @research_mod_battle_edit_talk_actor_window = nil
    @research_mod_battle_edit_talk_enemy_window = nil
    @research_mod_battle_edit_talk_category_window = nil
    @research_mod_battle_edit_talk_list_window = nil
    @research_mod_battle_edit_talk_choice_window = nil
    @synthesis_category_window = nil
    @synthesis_help_window = nil
    @synthesis_list_window = nil
    @synthesis_recipe_window = nil
    @synthesis_action_window = nil
    @synthesis_id_window = nil
    @synthesis_id_help_window = nil
    @research_mod_force_victory_pending = false
    research_mod_enemy_status_terminate
  end
end

class Window_ResearchModAudioInfoCommand < Window_Command
  def initialize(help_window)
    @audio_help_window = help_window
    super(0, help_window.height)
    self.x = (Graphics.width - width) / 2
  end

  def window_width
    240
  end

  def visible_line_number
    2
  end

  def make_command_list
    add_command('刷新信息', :refresh)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModAudioOverlay < Window_Base
  def initialize
    width = [420, Graphics.width - 16].min
    super(Graphics.width - width - 8, 8, width, fitting_height(2))
    self.z = 10_000
    self.opacity = 208
    @audio_signature = nil
    update_audio
  end

  def update_audio
    signature = ResearchMod.current_audio_overlay_signature
    return if signature == @audio_signature

    @audio_signature = signature
    refresh
  end

  def refresh
    contents.clear
    bgm_name = @audio_signature[0][0].to_s
    bgs_name = @audio_signature[1][0].to_s
    bgm_name = '无' if bgm_name.empty?
    bgs_name = '无' if bgs_name.empty?
    bgm_name = ResearchMod.battle_dialogue_display_text(bgm_name, 46)
    bgs_name = ResearchMod.battle_dialogue_display_text(bgs_name, 46)
    draw_text(0, 0, contents.width, line_height, 'BGM：' + bgm_name)
    draw_text(0, line_height, contents.width, line_height, 'BGS：' + bgs_name)
  rescue
    contents.clear if contents && !contents.disposed?
    draw_text(0, 0, contents.width, line_height, '当前音乐：无法读取')
  end
end

module ResearchModAudioOverlayScene
  def create_research_mod_audio_overlay
    dispose_research_mod_audio_overlay
    return unless ResearchMod.audio_overlay_enabled?

    @research_mod_audio_overlay_window = Window_ResearchModAudioOverlay.new
  end

  def update_research_mod_audio_overlay
    if ResearchMod.audio_overlay_enabled?
      if !@research_mod_audio_overlay_window ||
         @research_mod_audio_overlay_window.disposed?
        @research_mod_audio_overlay_window = Window_ResearchModAudioOverlay.new
      else
        @research_mod_audio_overlay_window.update_audio
      end
    else
      dispose_research_mod_audio_overlay
    end
  end

  def dispose_research_mod_audio_overlay
    window = @research_mod_audio_overlay_window
    window.dispose if window && !window.disposed?
    @research_mod_audio_overlay_window = nil
  end
end

class Scene_Battle
  include ResearchModAudioOverlayScene
end

class Scene_Novel < Scene_Base
  include ResearchModAudioOverlayScene
  alias research_mod_audio_overlay_novel_start start
  alias research_mod_audio_overlay_novel_update update
  alias research_mod_audio_overlay_novel_terminate terminate

  def start
    research_mod_audio_overlay_novel_start
    create_research_mod_audio_overlay
  end

  def update
    research_mod_audio_overlay_novel_update
    update_research_mod_audio_overlay
  end

  def terminate
    dispose_research_mod_audio_overlay
    research_mod_audio_overlay_novel_terminate
  end
end

class Scene_Gameover < Scene_Base
  include ResearchModAudioOverlayScene
  alias research_mod_audio_overlay_gameover_start start
  alias research_mod_audio_overlay_gameover_update update
  alias research_mod_audio_overlay_gameover_terminate terminate

  def start
    research_mod_audio_overlay_gameover_start
    create_research_mod_audio_overlay
  end

  def update
    research_mod_audio_overlay_gameover_update
    update_research_mod_audio_overlay
  end

  def terminate
    dispose_research_mod_audio_overlay
    research_mod_audio_overlay_gameover_terminate
  end
end

class Window_ResearchModAuthorInfoCommand < Window_Command
  def initialize(help_window)
    super(0, help_window.height)
    self.x = (Graphics.width - width) / 2
  end

  def window_width
    240
  end

  def visible_line_number
    1
  end

  def make_command_list
    add_command('返回', :cancel)
  end
end

class Window_ResearchModCommand < Window_Command
  def initialize(actor)
    @actor = actor
    super(0, 0)
  end

  def window_width
    272
  end

  def visible_line_number
    12
  end

  def actor=(actor)
    @actor = actor
    refresh
  end

  def cursor_down(wrap = false)
    super
    super if current_symbol == :separator
  end

  def cursor_up(wrap = false)
    super
    super if current_symbol == :separator
  end

  def make_command_list
    add_command('---------- 地图 ----------', :separator, false)
    add_command('哈比羽毛', :harpy_feather_original, ResearchMod.harpy_feather_original_usable?)
    add_command('哈比羽毛改', :harpy_feather_modified, ResearchMod.harpy_feather_modified_usable?)
    add_command('引导之线', :guiding_thread)
    add_command('当前地图宝箱管理', :current_map_containers)
    add_command('宝箱内容提示：' + (ResearchMod.chest_hint_enabled? ? '已开启' : '已关闭'), :chest_hint)
    add_command('任意地图传送', :teleport)
    add_command('自定义传送点', :custom_teleport_points)
    add_command('地图与事件检查', :map_inspector)
    add_command('---------- 战斗 ----------', :separator, false)
    add_command('敌人资料与战斗', :custom_battle)
    add_command('战败事件查看', :lose_event)
    add_command(ResearchMod::REFLECTION_MEETING_MENU_NAME, :reflection_meeting)
    add_command('显示敌方信息：' + (ResearchMod.battle_enemy_status? ? '已开启' : '已关闭'), :battle_enemy_status)
    add_command('显示我方信息：' + (ResearchMod.battle_party_status? ? '已开启' : '已关闭'), :battle_party_status)
    add_command('显示双方Cut-in：' + (ResearchMod.battle_cutin_view? ? '已开启' : '已关闭'), :battle_cutin_view)
    add_command('显示战斗记录：' + (ResearchMod.battle_record_enabled? ? '已开启' : '已关闭'), :battle_record)
    add_command('显示对白模拟：' + (ResearchMod.manual_enemy_dialogue? ? '已开启' : '已关闭'), :manual_enemy_dialogue)
    add_command('显示战斗修改菜单：' + (ResearchMod.battle_editor_enabled? ? '已开启' : '已关闭'), :battle_editor)
    add_command('战斗强制胜利：' + (ResearchMod.force_victory_enabled? ? '已开启' : '已关闭'), :force_victory)
    add_command('---------- 当前角色修改 ----------', :separator, false)
    add_command('切换当前角色：' + @actor.name, :actor)
    add_command(format('严格同步当前人物等级：%d', @actor.base_level), :level)
    add_command(format('修改当前人物好感度：%d', @actor.love), :love)
    add_command('修改当前角色永久属性加成', :actor_params)
    add_command('切换当前角色形态', :persona, !ResearchMod.persona_entries(@actor).empty?)
    add_command('当前角色学习妖术', :learning, !ResearchMod.learning_skills.empty?)
    add_command('当前角色学习技能', :all_skill_learning)
    add_command('当前角色学习能力', :ability_learning)
    add_command('切换当前角色职业', :class)
    add_command('切换当前角色种族', :tribe)
    add_command('当前角色全职全种', :unlock_all)
    add_command('修改当前角色名字', :actor_name)
    add_command('保存当前角色备份', :backup)
    add_command('恢复当前角色备份', :restore, ResearchMod.snapshot?(@actor))
    add_command('---------- 队伍 ----------', :separator, false)
    party_member_max = ResearchMod.value_current(ResearchMod.value_entry(:party_member_max))
    add_command(format('队伍编成人数上限：%d', party_member_max), :party_member_max)
    add_command(format('地图跟随显示人数：%d', ResearchMod.map_follower_count), :map_follower_count)
    add_command(ResearchMod::PARTY_EDIT_ACTOR_ID_MENU_NAME + '：' + (ResearchMod.party_edit_actor_id? ? '已开启' : '已关闭'), :party_edit_actor_id)
    add_command('全可入队角色加入候补', :recruit_all)
    add_command('全员好感度修改', :set_all_love)
    add_command('累计类增伤修改', :accumulated_damage)
    add_command('全对话：' + ResearchMod.all_dialogue_state_text, :all_dialogue)
    add_command('魔王城形态变化（无视事件）：' + (ResearchMod.persona_dialogue_compatibility? ? '已开启' : '已关闭'), :persona_dialogue)
    add_command('魔王城好感度修改：' + (ResearchMod.love_dialogue_compatibility? ? '已开启' : '已关闭'), :love_dialogue)
    add_command('魔王城赠送礼物改：' + (ResearchMod.maoujou_gift_dialogue_compatibility? ? '已开启' : '已关闭'), :maoujou_gift_dialogue)
    add_command('魔王城撒娇改：' + (ResearchMod.maoujou_pleading_dialogue_compatibility? ? '已开启' : '已关闭'), :maoujou_pleading_dialogue)
    add_command('魔王城移除候补：' + (ResearchMod.maoujou_remove_candidate_compatibility? ? '已开启' : '已关闭'), :maoujou_remove_candidate)
    add_command('---------- 查看与修改资源 ----------', :separator, false)
    add_command('角色图鉴', :actor_encyclopedia)
    add_command('开关与变量修改', :debug_database)
    add_command('数值与货币修改', :value_editor)
    add_command('按ID获取物品／武器／防具', :database_item)
    add_command(format('获得全部内裤（%d/%d）', ResearchMod.owned_panty_count, ResearchMod.panty_armors.size), :gain_all_panties)
    add_command(format('获得全部牛奶（%d/%d）', ResearchMod.owned_milk_count, ResearchMod.milk_items.size), :gain_all_milk)
    add_command(format('获得全部结婚物品（%d/%d）', ResearchMod.owned_marriage_armor_count, ResearchMod.marriage_armors.size), :gain_all_marriage_armors)
    add_command(format('获得全部CD（%d/%d）', ResearchMod.owned_cd_count, ResearchMod.cd_items.size), :gain_all_cds)
    add_command('合成改', :synthesize)
    add_command('当前音乐信息', :audio_info)
    add_command('当前音乐悬浮窗：' + (ResearchMod.audio_overlay_enabled? ? '已开启' : '已关闭'), :audio_overlay)
    add_command('图片资源覆盖：' + (ResearchMod.graphics_override_enabled? ? '已开启' : '已关闭'), :graphics_override)
    add_command('---------- 消耗 ----------', :separator, false)
    add_command('消耗类技能开关', :consumption)
    add_command('无消耗料理', :free_cooking)
    add_command('---------- 功能开关（修改） ----------', :separator, false)
    add_command('我方攻击必中必杀：' + (ResearchMod.sure_hit_kill? ? '已开启' : '已关闭'), :sure_hit_kill)
    add_command('移除伤害浮动：' + (ResearchMod.remove_damage_variance? ? '已开启' : '已关闭'), :remove_damage_variance)
    add_command('偷盗必定成功：' + (ResearchMod.steal_always_success? ? '已开启' : '已关闭'), :steal_success)
    add_command('牛奶获取必定成功：' + (ResearchMod.milk_always_success? ? '已开启' : '已关闭'), :milk_success)
    add_command('物品必定掉落：' + (ResearchMod.drop_always_success? ? '已开启' : '已关闭'), :drop_success)
    add_command('必定入队：' + (ResearchMod.follow_always_success? ? '已开启' : '已关闭'), :follow_success)
    add_command('阵亡角色获得经验：' + (ResearchMod.dead_battle_exp_enabled? ? '已开启' : '已关闭'), :dead_battle_exp)
    add_command('敌人诱惑事件禁止：' + (ResearchMod.temptation_disabled? ? '已开启' : '已关闭'), :temptation_disabled)
    add_command('敌人诱惑事件无视HP：' + (ResearchMod.temptation_ignore_hp? ? '已开启' : '已关闭'), :temptation_ignore_hp)
    add_command('敌我全员诱惑免疫：' + (ResearchMod.temptation_immunity? ? '已开启' : '已关闭'), :temptation_immunity)
    add_command('战败后跳过败北事件：' + (ResearchMod.lose_event_skip? ? '已开启' : '已关闭'), :lose_event_skip)
    add_command('穿墙模式：' + (ResearchMod.through_mode? ? '已开启' : '已关闭'), :through_mode)
    add_command('不遇敌：' + (ResearchMod.no_random_encounter? ? '已开启' : '已关闭'), :no_random_encounter)
    add_command('原版禁止遇敌：' + (ResearchMod.original_encounter_disabled? ? '已开启' : '已关闭'), :original_encounter_disabled)
    add_command('原版禁止队伍排序：' + (ResearchMod.original_formation_disabled? ? '已开启' : '已关闭'), :original_formation_disabled)
    add_command('防止鲁卡强制置顶：' + (ResearchMod.prevent_event_luca_front? ? '已开启' : '已关闭'), :prevent_luca_front)
    add_command('---------- 实验功能 ----------', :separator, false)
    add_command('实验功能', :experimental)
    add_command('---------- 问题 ----------', :separator, false)
    add_command('卡关处理', :stuck_help)
    add_command('---------- 关于 ----------', :separator, false)
    add_command('关于', :author_info)
    add_command('返回菜单', :cancel)
  end
  def update_help
    return unless help_window

    text = case current_symbol
           when :recruit_all
             '此操作会影响全局角色数据，可能影响全局成就判定。' + 10.chr + '建议提前备份存档，再执行。'
           when :set_all_love
             '为所有有名称的角色统一设置好感度。' + 10.chr + '按确定后输入0～9999999，默认30000；此操作会影响全局角色数据，建议提前备份存档。'
           when :party_member_max
             '设置最终队伍编成人数上限，允许8～99人。' + 10.chr + '内部变量56保存的是超过基础8人的追加人数。'
           when :map_follower_count
             '设置地图上队首玩家之后的跟随角色数量。' + 10.chr + '0表示不显示跟随者，最多99；' + 10.chr + '数量过高可能明显降低地图性能。'
           when :accumulated_damage
             '修改战斗数据累积及角色个人累计类增伤数据。' + 10.chr +
               '全局仅包含战斗次数；特定角色包含绝顶、战斗不能、承受绝顶、击败敌人、成功偷窃和好感度。'
           when :current_map_containers
             '列出当前地图中生效的宝箱和壶。' + 10.chr + '单个打开会执行原事件；' + 10.chr + '批量操作只处理安全可解析的静态物品容器。'
           when :custom_teleport_points
             '管理自定义传送点。' + 10.chr +
               format('当前地图：%04d「%s」', $game_map.map_id,
                      ResearchMod.map_name($game_map.map_id)) + 10.chr +
               format('当前位置：X=%d Y=%d。', $game_player.x, $game_player.y)
           when :chest_hint
             '在能直接判断内容的未开启宝箱或壶上显示提示图标。' + 10.chr +
               format('怪物图标：变量%d=%d；' + 10.chr + '物品图标：变量%d=%d。',
                      ResearchMod::CHEST_MONSTER_ICON_VARIABLE_ID,
                      ResearchMod::CHEST_MONSTER_ICON_DEFAULT,
                      ResearchMod::CHEST_ITEM_ICON_VARIABLE_ID,
                      ResearchMod::CHEST_ITEM_ICON_DEFAULT) + 10.chr +
               '已处理的容器保留原图标，并在右下角叠加绿色勾；' + 10.chr +
               '可在“开关与变量修改”中改图标ID；动态容器不显示。'
           when :graphics_override
             '开启后优先读取 GouqiGraphicsOverride 中与 Graphics 相同路径的图片。' + 10.chr +
               '覆盖图片不存在时自动读取原版 Graphics 图片。' + 10.chr +
               '切换后会清理图片缓存，后续读取立即生效。'
           when :party_edit_actor_id
             ResearchMod::PARTY_EDIT_ACTOR_ID_HELP_TEXT
           when :actor_encyclopedia
             '输入角色起始ID后，每批加载最多100名有名称角色；' + 10.chr + '支持上一批、下一批和重新输入起始ID。'
           when :guiding_thread
             '执行物品「引导之线」的原版效果，从当前迷宫返回地上；' + 10.chr + '不会要求持有，也不会消耗物品。'
           when :gain_all_cds
             '获得物品ID 1801～1832的全部CD；' + 10.chr + '已经持有的CD不会重复增加。'
           when :harpy_feather_original
             '打开原版哈比之羽的地点列表，遵守原版地点解锁和传送禁止条件。' + 10.chr +
             '研究菜单不会消耗物品。'
           when :harpy_feather_modified
             '显示哈比之羽表中的全部有效地点，包括地上、天界、魔界和混沌。' + 10.chr +
             '忽略地点解锁条件和原版传送禁止条件。' + 10.chr +
             '不会消耗物品。'
           when :reflection_meeting
             ResearchMod::REFLECTION_MEETING_HELP_TEXT
           when :all_dialogue
             '开启后，可浏览角色的默认、戒指及队友相关对话；' + 10.chr + '实际对话判定也会无视角色是否在队伍或候补。' + 10.chr + '对话浏览本身不执行事件效果，' + 10.chr + '但无视入队条件可能改变实际事件的对话分支。'
           when :maoujou_remove_candidate
             '开启后，在魔王城人物对话菜单中加入“魔王城移除候补”。' + 10.chr +
               '选择后会二次确认，并将当前说话角色移出候补名单。' + 10.chr +
               '移除后会播放原版拒绝入队台词；操作可能导致剧情卡关，请谨慎使用。'
           when :steal_success
             '开启后，盗む（偷窃）相关判定必定成功，' + 10.chr + '包括可偷取物品和成功率检查。'
           when :milk_success
             '开启后，ミルク获取判定必定成功，' + 10.chr + '不再出现搾れなかった的失败结果。'
           when :drop_success
             '开启后，敌人的物品掉落率视为必定成功，' + 10.chr + '符合掉落条件的物品会掉落。'
           when :temptation_ignore_hp
             '开启后，敌人诱惑事件不再检查当前HP是否低于原版触发条件。\n测试时必须关闭“敌人诱惑事件禁止”，否则禁止开关优先，诱惑仍不会触发。'
           when :temptation_disabled
             '开启后，完全跳过敌人诱惑公共事件；' + 10.chr + '无论是否装备香水、敌人HP多少都不会触发。' + 10.chr + '普通敌方对话仍保留。'
           when :temptation_immunity
             '开启后，敌我全员无法获得诱惑状态，并立即解除当前已有的诱惑。\n建议同时开启“敌人诱惑事件禁止”，两者属于不同机制。'
           when :lose_event_skip
             '开启后，战败时直接跳过败北事件并进入原版战败后处理。\n作者标记为不可跳过的特殊败北事件仍按原版执行。'
           when :sure_hit_kill
             '开启后，我方攻击必中，并尽量将命中目标直接判定为必杀效果。'
           when :remove_damage_variance
             '开启后，战斗中的 HP 伤害不再应用技能或物品的随机伤害浮动。' + 10.chr +
               '不影响命中、闪避、暴击、防御、属性倍率及其它增伤减伤计算。' + 10.chr +
               'HP 恢复、MP/TP/金币等数值不受影响。'
           when :through_mode
             '开启后，玩家可以穿过地图上的普通阻挡。' + 10.chr + '部分特殊事件或区域仍可能限制移动。'
           when :no_random_encounter
             '开启后，地图步行不会触发随机遇敌。' + 10.chr + '剧情事件战斗、地图接触事件和“敌人资料与战斗”不受影响。' + 10.chr +
               '本功能直接阻止随机遇敌判定，' + 10.chr + '实现方式与原版禁止遇敌不同；不会修改原版 encounter_disabled 状态。'
           when :original_formation_disabled
             '直接读取并修改原版 $game_system.formation_disabled。' + 10.chr +
               '开启后，原版菜单中的“並び替え”（队伍排序）会被禁用；关闭后恢复原版判定。' + 10.chr +
               '不会修改研究修改器的其他队伍编辑功能。'
           when :prevent_luca_front
             '开启后，尽量阻止事件把鲁卡强制移动到队伍第一位。'
           when :follow_success
             '开启后，战斗结束后的敌人入队判定视为成功。'
           when :battle_enemy_status
             '开启后，战斗菜单显示敌人的能力、状态、掉落物、牛奶、可偷物品、' + 10.chr + '可偷食材、可偷素材、可偷内裤和图片信息。'
           when :battle_party_status
             '开启后，战斗菜单显示我方队员的等级、' + 10.chr + 'HP、MP、职业、种族和状态。'
           when :battle_cutin_view
             '开启后，战斗菜单增加Cut-in查看，' + 10.chr + '可预览我方和敌方配置的技能图片。'
           when :battle_record
             '开启后，记录本场战斗的技能、' + 10.chr + '伤害、恢复和状态文字，可从战斗菜单查看。'
           when :manual_enemy_dialogue
             '开启后，可在战斗菜单查看双方技能台词、' + 10.chr + '效果反应，并手动组合释放者与目标对白。'
           when :battle_editor
             '开启后，战斗队伍指令增加“战斗修改”，' + 10.chr + '增加如强制赋予或解除敵我成员的诱惑状态等功能'
            when :force_victory
              '开启后，战斗队伍指令增加“强制胜利”。' + 10.chr +
                '选择后直接执行原版胜利结算，包含战斗结束事件、经验、金钱、掉落和入队处理。'
            when :dead_battle_exp
              '开启后，队伍中的角色即使阵亡，' + 10.chr +
                '胜利结算时仍获得普通、职业和种族经验。' + 10.chr +
                '前排和后排角色均可生效。' + 10.chr +
                '经验倍率仍遵循游戏原本规则。'
           when :synthesize
             '按物品、武器、防具分类浏览全部合成产物。' + 10.chr +
               '每批最多显示200个，可重新输入起始ID并加载上一批或下一批。' + 10.chr +
               '选择产物后可选择具体配方，再执行合成或无需材料合成。'
           when :audio_overlay
             '开启后，地图和战斗右上角持续显示当前BGM与BGS文件名；' + 10.chr + '音乐变化时自动刷新。'
           when :value_editor
             '可修改金钱、奖牌、各类点数、BF奖励进度、BF图鉴统计和累计奖牌兑换数。' + 10.chr +
               '部分统计可能影响图鉴、成就或剧情，修改前建议备份存档。'
           when :consumption
             '设置料理、炼金术、魔本术、商技和EXアイテム的消耗。' + 10.chr +
               '开关只影响技能使用时的素材或金币扣除。'
           when :free_cooking
             '列出数据库中的全部料理技能。' + 10.chr +
               '使用时不消耗食材，也不要求原版战斗外可用条件。'
           when :experimental
             '设置尚处于实验阶段的功能。建议使用独立测试存档。'
            when :stuck_help
              '处理两个已知剧情卡关。' + 10.chr + '圣山：开关2479改为OFF即可下山；' + 10.chr +
                '建议重新关闭原版不遇敌，关闭开关100和2116。' + 10.chr + '新人类宴会：变量1150改为17。执行前建议先保存独立存档。'
           when :persona_dialogue
             '开启后，魔王城对话中的形态变化会无视原事件条件。' + 10.chr + '建议只在需要调试时开启。'
           when :love_dialogue
             '开启后，在魔王城人物对话菜单中加入好感度修改。' + 10.chr +
               '选择角色后输入0～9999999，直接设置该角色好感度。' + 10.chr +
               '只修改数值，不会自动推进或跳过原对话。'
           when :maoujou_gift_dialogue
             '开启后，在魔王城人物对话菜单中加入魔王城赠送礼物改。' + 10.chr +
               '礼物窗口显示物品ID和好感度变化。' + 10.chr +
               '赠送无视持有状态，不扣物品；查看只播放对应对白。'
           when :maoujou_pleading_dialogue
             '开启后，在魔王城人物对话菜单中加入魔王城撒娇改。' + 10.chr +
               '选择撒娇可播放原版场景，另有拒绝选项。' + 10.chr +
               '场景中不传送到地图154（冥府），也不执行並び替え（排序）禁止等事件。'
           when :separator
             '使用上下键移动；分割线不可操作。'
           when :actor
             '切换当前角色后，下面的当前角色修改项目会作用于新角色。'
           when :actor_name
             '输入当前角色的新名字。' + 10.chr +
               '确定后立即写入角色数据并刷新显示。' + 10.chr +
               '名字不能为空。'
            when :all_skill_learning
              '从数据库全部普通技能中选择技能并学习或忘记。' + 10.chr +
                '可选择全部技能，或先选择武技、魔法、职技、魔物技及其他技能，再选择具体技能分类。' + 10.chr +
                '技能列表不受职业或种族学习记录限制；能力类技能暂不包含。'
            when :ability_learning
              '可选择全部能力，或按分类选择能力并学习或忘记。' + 10.chr +
                '能力分类按照战技、职技、魔法、防御、特殊和大师能力划分。'
           when :cancel
             '返回游戏菜单。'
           else
             '上下键：移动　确定键：进入或切换　取消键：返回。'
           end
    help_text = text.gsub(92.chr + 'n', 10.chr)
    help_text = help_text.dup.force_encoding('UTF-8') if help_text.respond_to?(:force_encoding)
    if current_symbol == :set_all_love
      separator = [0xFF1B].pack('U')
      help_text = help_text.sub(separator, separator + 10.chr)
    end
    help_window.set_text(help_text)
  end
end

class Window_ResearchModLevelInput < Window_NumberInputBase
  def initialize(actor)
    super()
    setup(actor)
  end

  def setup(actor)
    @actor = actor
    @maximum = actor.max_level(:base)
    start(@maximum.to_s.size, actor.base_level)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModEnemyStatMultiplierInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup
    start(2, ResearchMod.enemy_stat_multiplier)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, ResearchMod::ENEMY_STAT_MULTIPLIER_MAX].min, 0].max
  end
end

class Window_ResearchModClassLevelInput < Window_NumberInputBase
  attr_reader :maximum

  def initialize
    super()
  end

  def setup(actor, target_id)
    entry = $data_classes[target_id]
    @maximum = [entry.max_lv, 1].max
    current = actor.level_list[target_id] || 1
    start(@maximum.to_s.size, [[current, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModLoveInput < Window_NumberInputBase
  def initialize(actor)
    super()
    setup(actor)
  end

  def setup(actor)
    @actor = actor
    start(ResearchMod::LOVE_MAX.to_s.size, actor.love)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
  end

  def number
    [[@number, ResearchMod::LOVE_MAX].min, 0].max
  end
end

class Window_ResearchModAllLoveInput < Window_NumberInputBase
  def initialize
    super()
    setup
  end

  def setup
    start(ResearchMod::LOVE_MAX.to_s.size, 30_000)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, ResearchMod::LOVE_MAX].min, 0].max
  end
end

class Window_ResearchModActorParamList < Window_Command
  def initialize(actor, help_window)
    @actor = actor
    @help_height = help_window.height
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @help_height
  end

  def make_command_list
    ResearchMod::ACTOR_PARAM_NAMES.each_index do |param_id|
      current = ResearchMod.actor_param_plus(@actor, param_id)
      maximum = ResearchMod.actor_param_plus_maximum(@actor, param_id)
      add_command(format('%s永久加成：%d / %d', ResearchMod.actor_param_name(param_id),
                         current, maximum), :select, true, param_id)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      param_id = current_ext
      base = @actor.param_base(param_id).to_i
      growth = ResearchMod.actor_param_plus(@actor, param_id)
      equip = ResearchMod.actor_equip_param(@actor, param_id)
      final_value = @actor.param(param_id)
      resource = case param_id
                 when 0 then format('　当前HP：%d', @actor.hp)
                 when 1 then format('　当前MP：%d', @actor.mp)
                 else ''
                 end
      text = format('%s　角色：%s\n等级/职业基础值：%d\n装备增加：%d\n永久属性加成：%d / %d\n当前最终能力：%d%s',
                    ResearchMod.actor_param_name(param_id), @actor.name, base, equip,
                    growth, ResearchMod.actor_param_plus_maximum(@actor, param_id),
                    final_value, resource)
      help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
    else
      help_window.set_text('返回研究修改器。修改的是永久属性加成，不直接覆盖最终面板。')
    end
  end
end

class Window_ResearchModActorParamInput < Window_NumberInputBase
  attr_reader :maximum

  def initialize
    super()
  end

  def setup(actor, param_id)
    @maximum = ResearchMod.actor_param_plus_maximum(actor, param_id)
    current = ResearchMod.actor_param_plus(actor, param_id)
    start(@maximum.to_s.size, [[current, @maximum].min, 0].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 0].max
  end
end

class Window_ResearchModDatabaseType < Window_Command
  def window_width
    272
  end

  def visible_line_number
    4
  end

  def make_command_list
    add_command('获取物品', :select, true, :item)
    add_command('获取武器', :select, true, :weapon)
    add_command('获取防具', :select, true, :armor)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModActorEncyclopediaDetail < Window_Selectable
  def initialize(x, y, width, height)
    @actor = nil
    @mode = :note
    @lines = []
    @top_line = 0
    @message = ''
    super
    self.active = false
    update_cursor
  end

  def item_max
    0
  end

  def update_cursor
    if active
      cursor_rect.set(0, line_height, contents_width, line_height)
    else
      cursor_rect.empty
    end
  end

  def update
    super
    update_cursor
    return unless active
  end

  def set_actor(actor, mode)
    return if @actor == actor && @mode == mode && @message.empty?

    @actor = actor
    @mode = mode
    @message = ''
    @top_line = 0
    @lines = case mode
             when :ability then ability_lines(actor)
             when :picture_path then picture_path_lines(actor)
             else note_lines(actor)
             end
    refresh
  end

  def set_message(text)
    return if @actor.nil? && @message == text

    @actor = nil
    @message = text
    @lines = wrap_detail_lines(text.to_s.split(/\r?\n/, -1))
    @top_line = 0
    refresh
  end

  def note_lines(actor)
    text = actor ? actor.note.to_s : ''
    text = text.delete(0.chr)
    lines = text.empty? ? ['（备注为空）'] : text.split(/\r?\n/, -1)
    wrap_detail_lines(lines)
  end

  def ability_lines(actor)
    ability = actor ? ResearchMod.actor_fixed_ability(actor) : nil
    return ['固有アビリティ', '固有アビリティ数据不存在。'] unless ability

    wrap_detail_lines(['固有アビリティ', ability.first.to_s] + ability[1..-1].map(&:to_s))
  end

  def picture_path_lines(actor)
    name = ResearchMod.actor_image_name(actor)
    cutin_entries = ResearchMod.actor_cutin_entries(actor)
    lines = ['Picture路径']
    if name.empty?
      lines << '普通Picture：未配置。'
    else
      lines << '普通Picture：Graphics/Pictures/' + name
      lines << '文件名：' + name
    end

    if cutin_entries.empty?
      lines << '技能Cut-in：未配置。'
    else
      lines << format('技能Cut-in路径（%d项）：', cutin_entries.size)
      cutin_entries.each do |skill_label, cutin_name|
        lines << '对应技能：' + skill_label
        lines << 'Graphics/Pictures/' + cutin_name
      end
    end

    wrap_detail_lines(lines)
  end

  def wrap_detail_lines(lines)
    lines.flat_map { |line| wrap_detail_line(line) }
  end

  def wrap_detail_line(line)
    text = line.to_s.delete(0.chr)
    return [''] if text.empty?

    chunks = []
    offset = 0
    while offset < text.size
      chunks << text[offset, ResearchMod::ACTOR_ENCYCLOPEDIA_WRAP_CHARS]
      offset += ResearchMod::ACTOR_ENCYCLOPEDIA_WRAP_CHARS
    end
    chunks
  end

  def visible_body_lines
    [contents_height / line_height - body_start_line, 1].max
  end

  def body_start_line
    2
  end

  def max_top_line
    [@lines.size - visible_body_lines, 0].max
  end

  def scroll_line(amount)
    old_top_line = @top_line
    @top_line = [[@top_line + amount, max_top_line].min, 0].max
    refresh if @top_line != old_top_line
    @top_line != old_top_line
  end

  def scroll_page(amount)
    scroll_line(amount * visible_body_lines)
  end

  def process_cursor_move
    return unless active

    moved = false
    moved ||= scroll_line(1) if Input.repeat?(:DOWN)
    moved ||= scroll_line(-1) if Input.repeat?(:UP)
    moved ||= scroll_page(1) if Input.trigger?(:RIGHT) || Input.trigger?(:R)
    moved ||= scroll_page(-1) if Input.trigger?(:LEFT) || Input.trigger?(:L)
    Sound.play_cursor if moved
  end

  def refresh
    contents.clear
    draw_header
    draw_focus_status
    draw_visible_lines
  end

  def draw_focus_status
    text = if active
             '详情浏览中　上下滚动　左右翻页　取消返回类型菜单'
           else
             '请选择左侧查看类型'
           end
    draw_text(0, line_height, contents_width, line_height, text)
  end

  def draw_header
    reset_font_settings
    change_color(system_color)
    draw_text(0, 0, contents_width, line_height, header_text)
  end

  def header_text
    return '角色图鉴' unless @actor

    title = case @mode
            when :ability then '固有アビリティ'
            when :picture_path then 'Picture路径'
            else '魔物备注'
            end
    page = @top_line / visible_body_lines + 1
    page_max = [(@lines.size + visible_body_lines - 1) / visible_body_lines, 1].max
    format('ID %d  %s　%s　%d/%d', @actor.id,
           ResearchMod.battle_preview_text(@actor.name.to_s, 16), title,
           page, page_max)
  end

  def draw_visible_lines
    @lines[@top_line, visible_body_lines].to_a.each_with_index do |text, index|
      draw_body_line(text, @top_line + index, line_height * (index + body_start_line))
    end
  end

  def draw_body_line(text, absolute_index, y)
    text = text.to_s.delete(0.chr)
    reset_font_settings
    if @mode == :ability && @actor
      change_color(system_color) if absolute_index == 0
      change_color(special_color) if absolute_index == 1
    end
    contents.font.size = ResearchMod::ACTOR_ENCYCLOPEDIA_FONT_SIZE
    draw_text(0, y, contents_width, line_height, text)
  end
end

class Window_ResearchModActorEncyclopediaIdInput < Window_NumberInputBase
  attr_reader :maximum

  def initialize
    super()
  end

  def setup(initial_id)
    entries = ResearchMod.actor_encyclopedia_entries
    @maximum = [entries.empty? ? 1 : entries.last.id, 1].max
    start(@maximum.to_s.size, [[initial_id, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModBattleEditEnemyItemTarget < Window_ResearchModBattleEditBase
  def initialize(help_window)
    @enemies = []
    super(help_window)
  end

  def setup(enemies)
    @enemies = Array(enemies).compact
    self.height = window_height
    self.y = [(@research_mod_help_window.y - height) / 2, 0].max
    refresh
    open_window
  end

  def window_height
    [fitting_height([@enemies.size + 1, 2].max),
     Graphics.height - @research_mod_help_window.height].min
  end

  def window_width
    Graphics.width - 16
  end

  def make_command_list
    @enemies.each do |enemy|
      entries = ResearchMod.enemy_item_entries(enemy)
      add_command(format('%4d  %s　（%d种物品）', enemy.enemy_id, enemy.name,
                         entries.size), :select, !entries.empty?, enemy)
    end
    add_command('返回战斗修改菜单', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      enemy = current_ext
      entries = ResearchMod.enemy_item_entries(enemy)
      help_window.set_text(
        format('敌人ID %d  %s', enemy.enemy_id, enemy.name) + 10.chr +
        format('可获取物品：%d种；确认后进入物品列表。', entries.size)
      )
    else
      help_window.set_text('返回战斗修改菜单。')
    end
  end
end

class Window_ResearchModBattleEditCandidateTarget < Window_ResearchModBattleEditBase
  def initialize(help_window)
    @enemies = []
    super(help_window)
  end

  def setup(enemies)
    @enemies = Array(enemies).compact
    self.height = window_height
    self.y = [(@research_mod_help_window.y - height) / 2, 0].max
    refresh
    open_window
  end

  def window_height
    [fitting_height([@enemies.size + 1, 2].max),
     Graphics.height - @research_mod_help_window.height].min
  end

  def window_width
    Graphics.width - 16
  end

  def make_command_list
    @enemies.each do |enemy|
      actor = ResearchMod.enemy_follower_actor(enemy)
      actor_name = actor ? actor.name : '无对应角色'
      joined = actor && $game_party && $game_party.respond_to?(:follow?) &&
               $game_party.follow?(actor.id)
      status = actor ? (joined ? '是' : '否') : '不适用'
      label = format('%4d  %s　→　%s　%s', enemy.enemy_id, enemy.name,
                     actor ? format('%d %s', actor.id, actor_name) : actor_name,
                     status)
      add_command(label, :select, !actor.nil?, enemy)
    end
    add_command('返回战斗修改菜单', :cancel)
  end

  def update_help
    return unless help_window

    enemy = current_ext
    actor = enemy && ResearchMod.enemy_follower_actor(enemy)
    if enemy && current_symbol == :select && actor
      joined = $game_party && $game_party.respond_to?(:follow?) &&
               $game_party.follow?(actor.id)
      status = joined ? '是' : '否'
      help_window.set_text(
        format('敌人ID %d  %s', enemy.enemy_id, enemy.name) + 10.chr +
        format('对应角色：%d %s　已加入：%s', actor.id, actor.name, status)
      )
    elsif enemy && current_symbol == :select
      help_window.set_text('该敌人没有对应角色，无法管理候补。')
    else
      help_window.set_text('返回战斗修改菜单。')
    end
  end
end

class Window_ResearchModActorEncyclopediaList < Window_Command
  attr_reader :page

  def initialize(start_id, history, detail_window)
    @history = history
    @page = ResearchMod.actor_encyclopedia_page(start_id)
    @detail_window = detail_window
    super(0, 0)
    self.help_window = @detail_window
    update_help
  end

  def window_width
    ResearchMod::ACTOR_ENCYCLOPEDIA_LIST_WIDTH
  end

  def window_height
    Graphics.height
  end

  def cursor_up(wrap = false)
    return select(item_max - 1) if index == 0

    super
  end

  def make_command_list
    add_command('重新输入起始ID', :reinput)
    add_command(format('加载上一批%d名角色', ResearchMod::ACTOR_ENCYCLOPEDIA_PAGE_SIZE),
                :previous, !@history.empty? || !@page[:previous_start_id].nil?)
    @page[:entries].each do |actor|
      add_command(format('%4d  %s', actor.id, actor.name), :select, true, actor)
    end
    add_command(format('加载下一批%d名角色', ResearchMod::ACTOR_ENCYCLOPEDIA_PAGE_SIZE),
                :next, !@page[:next_start_id].nil?)
    add_command('重新输入起始ID', :reinput)
    add_command('返回', :cancel)
  end

  def update_help
    actor = current_ext
    if actor && current_symbol == :select
      text = format('角色ID %d　%s\n确认后选择查看备注、固有能力、立绘、Picture路径或Cut-in图片。',
                    actor.id, actor.name)
      @detail_window.set_message(text.gsub(92.chr + 'n', 10.chr))
    else
      @detail_window.set_message(command_help_text)
    end
  end

  def command_help_text
    case current_symbol
    when :reinput then '重新输入角色数据库起始ID。'
    when :previous then '返回上一批有效角色。'
    when :next then '从本批末尾继续加载下一批有效角色。'
    when :cancel then '返回研究修改器。'
    else '选择角色并确认后，可查看详情。'
    end
  end

  def cursor_right(wrap = false)
    Sound.play_cursor if @detail_window.scroll_page(1)
  end

  def cursor_left(wrap = false)
    Sound.play_cursor if @detail_window.scroll_page(-1)
  end
end

class Window_ResearchModActorEncyclopediaMode < Window_Command
  def initialize(actor, detail_window)
    @actor = actor
    @detail_window = detail_window
    super(0, 0)
    self.help_window = @detail_window
    self.y = (Graphics.height - height) / 2
    self.z = 300
    update_help
  end

  def window_width
    ResearchMod::ACTOR_ENCYCLOPEDIA_LIST_WIDTH
  end

  def visible_line_number
    6
  end

  def make_command_list
    add_command('备注', :note)
    add_command('固有アビリティ', :ability)
    add_command('Picture路径', :picture_path)
    add_command('Cut-in图片查看', :cutin_preview,
                !ResearchMod.actor_cutin_file_names(@actor).empty?)
    add_command('返回', :cancel)
  end

  def update_help
    @detail_window.set_message('确认查看类型后才会加载并显示详情。')
  end

  def cursor_right(wrap = false)
    Sound.play_cursor if @detail_window.scroll_page(1)
  end

  def cursor_left(wrap = false)
    Sound.play_cursor if @detail_window.scroll_page(-1)
  end
end

class Window_ResearchModActorEncyclopediaMode
  alias research_mod_make_command_list_without_stand_picture make_command_list

  def make_command_list
    research_mod_make_command_list_without_stand_picture
    index = @list.index { |command| command[:symbol] == :cutin_preview }
    return unless index

    @list.insert(index, {
      :name => '立绘查看',
      :symbol => :stand_picture,
      :enabled => !ResearchMod.actor_image_name(@actor).empty?,
      :ext => nil
    })
  end
  alias research_mod_actor_encyclopedia_mode_update_help update_help
  def update_help
    research_mod_actor_encyclopedia_mode_update_help
    return unless current_symbol == :candidate_manage
    joined = $game_party && $game_party.respond_to?(:follow?) &&
             $game_party.follow?(@actor.id)
    @detail_window.set_message(
      format('已加入：%s\n确认后可选择加入候补或移出候补。', joined ? '是' : '否').gsub(92.chr + 'n', 10.chr)
    )
  end
end

class Window_ResearchModActorEncyclopediaMode
  alias research_mod_candidate_manage_make_command_list make_command_list

  def make_command_list
    research_mod_candidate_manage_make_command_list
    joined = $game_party && $game_party.respond_to?(:follow?) &&
             $game_party.follow?(@actor.id)
    cancel_index = @list.index { |command| command[:symbol] == :cancel }
    @list.insert(cancel_index || @list.size, {
      :name => format('候补管理（已加入：%s）', joined ? '是' : '否'),
      :symbol => :candidate_manage,
      :enabled => true,
      :ext => nil
    })
  end
end

class Window_ResearchModActorCandidateManage < Window_Command
  def initialize(actor)
    @actor = actor
    super(0, 0)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def window_width
    360
  end

  def visible_line_number
    3
  end

  def make_command_list
    joined = $game_party && $game_party.respond_to?(:follow?) &&
             $game_party.follow?(@actor.id)
    candidate = $game_party && $game_party.respond_to?(:stand_actors) &&
                $game_party.stand_actors.include?(@actor.id)
    add_command('加入候补', :add, !joined)
    # Only candidate members may be removed; party members must not be deleted.
    add_command('移出候补', :remove, candidate)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModActorCutinList < Window_Command
  attr_reader :entries

  def initialize(actor, help_window, page_index = 0)
    @actor = actor
    @entries = ResearchMod.actor_cutin_file_names(actor)
    @page_max = [(@entries.size + ResearchMod::ACTOR_CUTIN_PAGE_SIZE - 1) /
                 ResearchMod::ACTOR_CUTIN_PAGE_SIZE, 1].max
    @page_index = [[page_index, @page_max - 1].min, 0].max
    @cutin_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.z = 500
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @cutin_help_window.height
  end

  def make_command_list
    start_index = @page_index * ResearchMod::ACTOR_CUTIN_PAGE_SIZE
    page_entries = @entries[start_index, ResearchMod::ACTOR_CUTIN_PAGE_SIZE] || []
    add_command(format('上一批（%d/%d）', @page_index + 1, @page_max),
                :previous, @page_index > 0)
    page_entries.each_with_index do |file_name, index|
      global_index = start_index + index
      add_command(format('%4d  %s', global_index + 1, file_name),
                  :select, true, [global_index, file_name])
    end
    add_command(format('下一批（%d/%d）', @page_index + 1, @page_max),
                :next, @page_index + 1 < @page_max)
    add_command('返回', :cancel)
  end

  def update_help
    if current_symbol == :select
      global_index, file_name = current_ext
      @cutin_help_window.set_text(
        format('Cut-in %d/%d\n文件名：%s\n确认：查看图片　取消：返回',
               global_index + 1, @entries.size, file_name).gsub(92.chr + 'n', 10.chr)
      )
    elsif current_symbol == :previous
      @cutin_help_window.set_text('加载上一批 Cut-in 文件名。')
    elsif current_symbol == :next
      @cutin_help_window.set_text('加载下一批 Cut-in 文件名。')
    else
      @cutin_help_window.set_text('返回角色图鉴的查看类型菜单。')
    end
  end
end

class ResearchModActorCutinPreview
  def initialize(file_name, available_height)
    @background = Sprite.new
    @background.bitmap = Bitmap.new(Graphics.width, available_height)
    @background.bitmap.fill_rect(0, 0, Graphics.width, available_height,
                                 Color.new(0, 0, 0))
    @background.z = 600

    @picture = Sprite.new
    @picture.bitmap = Cache.picture(file_name)
    @picture.z = 610
    fit_picture(available_height)
  rescue
    dispose
    raise
  end

  def fit_picture(available_height)
    bitmap = @picture.bitmap
    scale_x = Graphics.width.to_f / bitmap.width
    scale_y = available_height.to_f / bitmap.height
    scale = [scale_x, scale_y, 1.0].min
    @picture.zoom_x = scale
    @picture.zoom_y = scale
    @picture.x = (Graphics.width - bitmap.width * scale) / 2
    @picture.y = (available_height - bitmap.height * scale) / 2
  end

  def dispose
    if @picture && !@picture.disposed?
      @picture.bitmap = nil
      @picture.dispose
    end
    if @background && !@background.disposed?
      bitmap = @background.bitmap
      @background.bitmap = nil
      @background.dispose
      bitmap.dispose if bitmap && !bitmap.disposed?
    end
    @picture = nil
    @background = nil
  end
end

class Window_ResearchModValueMenu < Window_Command
  def initialize(help_window)
    @value_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @value_help_window.height
  end

  def cursor_down(wrap = false)
    super
    super if current_symbol == :separator
  end

  def cursor_up(wrap = false)
    super
    super if current_symbol == :separator
  end

  def add_value_command(key)
    entry = ResearchMod.value_entry(key)
    value = ResearchMod.value_current(entry)
    add_command(format('%s：%d', entry[:label], value), :edit, true, key)
  end

  def make_command_list
    add_value_command(:gold)
    add_value_command(:casino_coin)
    add_value_command(:small_medal)
    add_value_command(:large_medal)
    add_value_command(:rabbit_point)
    add_value_command(:shura_bonus)
    add_command('---------- BF奖励与统计 ----------', :separator, false)
    add_value_command(:bf_win_reward)
    owned = ResearchMod.lewd_soul_count > 0
    suffix = owned ? '（已持有）' : ''
    add_command('下一次BF胜利获得淫らな魂' + suffix, :next_bf_soul, !owned)
    add_value_command(:bf_lose_reward)
    add_value_command(:bf_library_win)
    add_value_command(:bf_library_lose)
    add_command('直接获得淫らな魂' + suffix, :gain_lewd_soul, !owned)
    add_command('---------- 累计统计 ----------', :separator, false)
    add_value_command(:small_medal_exchange)
    add_value_command(:large_medal_exchange)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    help_window.set_text(help_text.gsub(92.chr + 'n', 10.chr))
  end

  def help_text
    return value_help_text(current_ext) if current_symbol == :edit

    case current_symbol
    when :next_bf_soul
      '把BF胜利奖励进度设为34。下一次BF胜利增加到35时，原版事件会发放淫らな魂。'
    when :gain_lewd_soul
      '直接获得道具ID 628「淫らな魂」一件，不修改BF胜利奖励进度。'
    when :cancel
      '返回研究修改器。'
    else
      '请选择要修改的数值。'
    end
  end

  def value_help_text(key)
    case key
    when :bf_win_reward
      '这是奖励进度变量907，不是图鉴胜利统计。\n奖励只在胜利后刚好达到阈值时触发，淫らな魂为35胜。\n要下一次胜利获得，请将这里设置为34。'
    when :bf_lose_reward
      'BF败北奖励进度使用变量905；原版奖励节点为1、30和50次。'
    when :bf_library_win, :bf_library_lose
      '这是图鉴显示用统计，不会代替BF奖励进度变量。'
    when :small_medal_exchange, :large_medal_exchange
      '这是累计兑换统计，不是当前持有数量；修改可能影响成就或事件判定。'
    when :small_medal, :large_medal
      '这是普通道具库存数量，原版单种道具上限为99。'
    when :party_member_max
      '设置最终队伍编成人数上限，不是直接设置变量56。\n内部保存：变量56（队伍编成人数追加值）= 输入人数 - 8。\n降低上限后，超出的编队成员可能在下次编队刷新时转入候补。'
    else
      '确认后输入目标值；这是设置最终数值，不是在当前值上增加。'
    end
  end
end

class Window_ResearchModConsumptionMenu < Window_Command
  def initialize(help_window)
    @consumption_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @consumption_help_window.height
  end

  def make_command_list
    add_command('料理无消耗：' + (ResearchMod.cooking_no_cost? ? '开' : '关'), :cooking)
    add_command('炼金术无消耗：' + (ResearchMod.alchemy_no_cost? ? '开' : '关'), :alchemy)
    add_command('魔本术无消耗：' + (ResearchMod.magic_book_no_cost? ? '开' : '关'), :magic_book)
    add_command('商技无消耗：' + (ResearchMod.merchant_no_cost? ? '开' : '关'), :merchant)
    add_command('EXアイテム可用无消耗：' + (ResearchMod.ex_item_no_cost? ? '开' : '关'), :ex_item)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :cooking
             '料理技能不消耗料理素材。' + 10.chr + '仅影响技能消耗，不改变技能效果。'
           when :alchemy
             '炼金术技能不消耗炼金素材。' + 10.chr + '仅影响技能消耗，不改变技能效果。'
           when :magic_book
             '魔本术技能不消耗页面。' + 10.chr + '仅影响技能消耗，不改变技能效果。'
           when :merchant
             '商技技能不消耗金币。' + 10.chr + '仅影响技能消耗，不改变获得物品。'
           when :ex_item
             'EXアイテム技能不消耗普通道具。' + 10.chr + '仅影响技能消耗，不改变技能效果。'
           else
             '返回研究修改器主菜单。'
           end
    help_window.set_text(text)
  end
end

class Window_ResearchModCookingSkillList < Window_SkillList
  def make_item_list
    @data = if @actor && defined?($data_skills)
            $data_skills.compact.select do |skill|
                ResearchMod.skill_has_type?(skill, ResearchMod::COOKING_SKILL_TYPE_ID)
              end
            else
              []
            end
    @item_cost_window.set_size(@data) if @item_cost_window
  end

  def enable?(item)
    !item.nil?
  end

  def current_item_enabled?
    !item.nil?
  end
end

class Scene_ResearchModCooking < Scene_ItemBase
  def prepare(actor, skill_id = nil)
    @research_mod_actor = actor
    @research_mod_skill_id = skill_id
  end

  def start
    ResearchMod.cooking_menu_no_item_cost = true
    super
    @actor = @research_mod_actor || $game_party.menu_actor || $game_party.members[0]
    @help_window = Window_Help.new(3)
    @help_window.y = Graphics.height - @help_window.height
    @item_window = Window_ResearchModCookingSkillList.new(
      0, 0, Graphics.width, Graphics.height - @help_window.height
    )
    # Keep the actor target window above the cooking list, with help text on top.
    @item_window.z = 500
    @actor_window.z = 510
    @help_window.z = 520
    @item_window.actor = @actor
    @item_window.help_window = @help_window
    @item_window.set_handler(:ok, method(:on_item_ok))
    @item_window.set_handler(:cancel, method(:return_scene))
    @item_window.refresh
    if @research_mod_skill_id
      skill_index = @item_window.instance_variable_get(:@data).index do |skill|
        skill.id == @research_mod_skill_id
      end
      @item_window.select(skill_index || 0)
    elsif @item_window.item_max > 0
      @item_window.select(0)
    end
    @item_window.activate
  end

  def terminate
    ResearchMod.cooking_menu_no_item_cost = false
    @item_window.dispose if @item_window && !@item_window.disposed?
    @help_window.dispose if @help_window && !@help_window.disposed?
    super
  end

  def user
    @actor
  end

  def play_se_for_item
    Sound.play_use_skill
  end

  def on_item_ok
    @actor.last_skill.object = item if @actor.respond_to?(:last_skill)
    determine_item
  end

  def check_common_event
    return unless $game_temp.common_event_reserved?

    # Common events must run on the map; reopen this list when they finish.
    $game_temp.instance_variable_set(
      :@research_mod_resume_free_cooking,
      { :actor_id => @actor.id, :skill_id => item.id }
    )
    SceneManager.goto(Scene_Map)
  end

  def item_usable?
    !item.nil?
  end
end

class Scene_Map < Scene_Base
  alias research_mod_update_scene_for_free_cooking update_scene
  def update_scene
    research_mod_update_scene_for_free_cooking
    return if scene_changing?

    resume_data = $game_temp.instance_variable_get(:@research_mod_resume_free_cooking)
    return unless resume_data
    return if $game_map.interpreter.running? || $game_message.busy? || $game_player.moving?

    $game_temp.instance_variable_set(:@research_mod_resume_free_cooking, nil)
    SceneManager.call(Scene_ResearchModCooking)
    SceneManager.scene.prepare($game_actors[resume_data[:actor_id]], resume_data[:skill_id])
  end
end

class Window_ResearchModValueInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(entry)
    @maximum = ResearchMod.value_maximum(entry)
    @minimum = ResearchMod.value_minimum(entry)
    current = ResearchMod.value_current(entry)
    digits = [@maximum.to_s.size, 1].max
    start(digits, [[current, @maximum].min, @minimum].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, @minimum].max
  end
end

class Window_ResearchModDatabaseIdInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(kind, initial_id)
    @kind = kind
    @maximum = [ResearchMod.database(kind).size - 1, 1].max
    start(@maximum.to_s.size, [[initial_id, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModDatabaseQuantity < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(item)
    @item = item
    @maximum = ResearchMod.database_item_capacity(item)
    start([@maximum.to_s.size, 1].max, 1)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModDatabaseList < Window_Command
  attr_reader :page

  def initialize(kind, start_id, history, help_window)
    @kind = kind
    @history = history
    @page = ResearchMod.database_page(kind, start_id)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - fitting_height(3)
  end

  def col_max
    2
  end

  def spacing
    8
  end

  def cursor_up(wrap = false)
    if index == 0
      select(item_max - 1)
    else
      super
    end
  end

  def make_command_list
    add_command('重新输入初始ID', :reinput)
    add_command(format('加载上一批%d个', ResearchMod::DATABASE_PAGE_SIZE),
                :previous, !@history.empty?)
    @page[:entries].each do |item|
      suffix = ResearchMod.database_item_special?(item) ? '（特殊模板／不可直接获取）' : ''
      enabled = ResearchMod.database_item_capacity(item) > 0
      add_command(format('%4d  %s%s', item.id, ResearchMod.short_item_name(item.name), suffix),
                  :select, enabled, item)
    end
    add_command(format('加载下一批%d个', ResearchMod::DATABASE_PAGE_SIZE),
                :next, !@page[:next_start_id].nil?)
    add_command('重新输入初始ID', :reinput)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    unless index && index >= 0 && index < item_max
      help_window.clear
      return
    end

    item = current_ext
    unless item && [:select].include?(current_symbol)
      help_window.set_text(command_help_text)
      return
    end

    owned = ResearchMod.database_item_owned(item)
    maximum = ResearchMod.database_item_max(item)
    special = if ResearchMod.database_item_special?(item)
                '  特殊模板：缺少动态生成参数，禁止直接获取'
              else
                ''
              end
    help_window.set_text(format('ID %d  %s\n当前持有：%d/%d%s\n%s', item.id,
                                ResearchMod.short_item_name(item.name),
                                owned, maximum, special, item.description).gsub(92.chr + 'n', 10.chr))
  end

  def command_help_text
    case current_symbol
    when :reinput then '重新输入本类数据库的起始ID。'
    when :previous
      format('返回上一批最多%d个有名称的项目。', ResearchMod::DATABASE_PAGE_SIZE)
    when :next
      format('从本批最后一个项目之后继续加载最多%d个项目。', ResearchMod::DATABASE_PAGE_SIZE)
    else '返回' + ResearchMod.database_kind_name(@kind) + '类型选择。'
    end
  end
end

class Window_ResearchModBattleType < Window_Command
  def initialize(help_window)
    @battle_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  def window_width
    360
  end

  def visible_line_number
    4
  end

  def make_command_list
    add_command('按敌人选择', :select, true, :enemy)
    add_command('按敌群选择', :select, true, :troop)
    add_command('当前地图随机遇敌', :encounter)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :select
             '输入起始ID后，每批加载最多200项。'
           when :encounter
             '按当前位置、区域和地图权重随机选择敌群。'
           else
             '返回研究修改器。'
           end
    help_window.set_text(text)
  end
end

class Window_ResearchModBattleIdInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(kind, initial_id)
    @maximum = [ResearchMod.battle_database(kind).size - 1, 1].max
    start(@maximum.to_s.size, [[initial_id, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModBattleList < Window_Command
  attr_reader :page

  def initialize(kind, start_id, history, help_window)
    @kind = kind
    @history = history
    @page = ResearchMod.battle_page(kind, start_id)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - fitting_height(ResearchMod::CUSTOM_BATTLE_HELP_LINES)
  end

  def col_max
    2
  end

  def spacing
    8
  end

  def cursor_up(wrap = false)
    return select(item_max - 1) if index == 0

    super
  end

  def make_command_list
    add_command('重新输入起始ID', :reinput)
    add_command(format('加载上一批%d项', ResearchMod::BATTLE_PAGE_SIZE),
                :previous,
                !@history.empty? || !@page[:previous_start_id].nil?)
    @page[:entries].each do |entry|
      name = @kind == :enemy ? entry.name : ResearchMod.troop_display_name(entry)
      add_command(format('%4d  %s', entry.id, name), :select, true, entry)
    end
    add_command(format('加载下一批%d项', ResearchMod::BATTLE_PAGE_SIZE),
                :next, !@page[:next_start_id].nil?)
    add_command('重新输入起始ID', :reinput)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    entry = current_ext
    if entry && current_symbol == :select
      help_window.set_text(entry_help_text(entry))
    else
      help_window.set_text(command_help_text)
    end
  end

  def entry_help_text(entry)
    if @kind == :enemy
      lines = [format('敌人ID %d  %s', entry.id, entry.name)]
      lines.concat(ResearchMod.enemy_follower_help_lines(entry))
      lines.concat(ResearchMod.enemy_help_item_lines_for(entry))
      lines.join(10.chr)
    else
      name = entry.name.empty? ? '[无名称敌群]' : entry.name
      format('敌群ID %d  %s\n成员：%s\n确认：进入开战确认',
             entry.id, name, ResearchMod.troop_member_summary(entry)).gsub(92.chr + 'n', 10.chr)
    end
  end

  def command_help_text
    case current_symbol
    when :reinput then '重新输入敌人或敌群数据库起始ID。'
    when :previous then '返回上一批有效项目。'
    when :next then '从本批末尾继续加载下一批有效项目。'
    else '返回敌人资料与战斗类型选择。'
    end
  end
end

class Window_ResearchModLoseEventIdInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(initial_id)
    @maximum = [$data_enemies.size - 1, 1].max
    start(@maximum.to_s.size, [[initial_id, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    return if disposed?

    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModLoseEventList < Window_Command
  attr_reader :page

  def initialize(start_id, history, help_window, mode = :lose_event)
    @history = history
    @mode = mode
    @page = ResearchMod.lose_event_page(start_id)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - fitting_height(3)
  end

  def cursor_up(wrap = false)
    return select(item_max - 1) if index == 0

    super
  end

  def make_command_list
    add_command('重新输入起始ID', :reinput)
    add_command(format('加载上一批%d项', ResearchMod::LOSE_EVENT_PAGE_SIZE),
                :previous, !@history.empty? || !@page[:previous_start_id].nil?)
    @page[:entries].each do |enemy|
      add_command(format('%4d  E%4d  %s', enemy.id, enemy.lose_event_id, enemy.name),
                  :select, true, enemy)
    end
    add_command(format('加载下一批%d项', ResearchMod::LOSE_EVENT_PAGE_SIZE),
                :next, !@page[:next_start_id].nil?)
    add_command('重新输入起始ID', :reinput)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    enemy = current_ext
    if enemy && current_symbol == :select
      base_enemy_id = ResearchMod.lose_event_base_enemy_id(enemy)
      event_label = @mode == :reflection ? '反省会事件ID' : '战败事件ID'
      text = format('敌人ID %d  %s\n基础敌人ID %d　%s %d\n确认：进入播放确认',
                    enemy.id, enemy.name, base_enemy_id, event_label, enemy.lose_event_id)
      help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
    else
      text = case current_symbol
             when :reinput then '重新输入敌人数据库起始ID。'
             when :previous then '返回上一批可播放的战败事件。'
             when :next then '从本批末尾继续加载下一批可播放事件。'
             else '返回研究修改器。'
             end
      help_window.set_text(text)
    end
  end
end

class Window_ResearchModLoseEventConfirm < Window_Command
  def initialize(enemy, help_window, mode = :lose_event)
    @enemy = enemy
    @mode = mode
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  def window_width
    360
  end

  def visible_line_number
    2
  end

  def make_command_list
    add_command(@mode == :reflection ? '播放反省会' : '播放战败事件', :confirm)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    event_label = @mode == :reflection ? '反省会事件ID' : '战败事件ID'
    text = format('敌人ID %d  %s　%s %d\n直接播放原版败北回想，不会开始战斗。',
                  @enemy.id, @enemy.name, event_label, @enemy.lose_event_id)
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModDebugType < Window_Command
  def initialize(help_window)
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  def window_width
    380
  end

  def visible_line_number
    3
  end

  def make_command_list
    add_command('修改开关', :select, true, :switch)
    add_command('修改变量', :select, true, :variable)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_ext
           when :switch
             '按ID查看并设置开关。\n' + ResearchMod.debug_known_issue_hint(:switch)
           when :variable
             '按ID查看并修改变量。\n' + ResearchMod.debug_known_issue_hint(:variable)
           else '返回研究修改器。'
           end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModDebugIdInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(kind, initial_id)
    @maximum = ResearchMod.debug_maximum_id(kind)
    start(@maximum.to_s.size, [[initial_id, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    return if disposed?

    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModDebugList < Window_Command
  attr_reader :page

  def initialize(kind, start_id, history, help_window)
    @kind = kind
    @history = history
    @page = ResearchMod.debug_page(kind, start_id)
    @help_height = help_window.height
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @help_height
  end

  def cursor_up(wrap = false)
    return select(item_max - 1) if index == 0

    super
  end

  def make_command_list
    add_command('重新输入起始ID', :reinput)
    add_command(format('加载上一批%d项', ResearchMod::DEBUG_DATABASE_PAGE_SIZE),
                :previous, !@history.empty?)
    @page[:entries].each do |entry_id|
      name = ResearchMod.debug_entry_name(@kind, entry_id)[0, 42]
      value = ResearchMod.debug_entry_value_text(@kind, entry_id).to_s[0, 30]
      add_command(format('%4d  %s：%s', entry_id, name, value), :select, true, entry_id)
    end
    add_command(format('加载下一批%d项', ResearchMod::DEBUG_DATABASE_PAGE_SIZE),
                :next, !@page[:next_start_id].nil?)
    add_command('重新输入起始ID', :reinput)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      entry_id = current_ext
      entry_hint = @kind == :variable ? ResearchMod.debug_variable_entry_hint(entry_id) : ''
      action_hint = entry_hint.empty? ? '确认后修改；修改会立即刷新地图事件条件。' : entry_hint
      text = format('%s %04d「%s」\n当前值：%s\n%s',
                    ResearchMod.debug_kind_name(@kind), entry_id,
                    ResearchMod.debug_entry_name(@kind, entry_id),
                    ResearchMod.debug_entry_value_text(@kind, entry_id), action_hint)
      help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
    else
      text = case current_symbol
             when :reinput then '重新输入数据库起始ID。'
             when :previous then '返回上一批项目。'
             when :next then '加载下一批项目。'
             else '返回开关与变量类型选择。'
             end
      help_window.set_text(text)
    end
  end
end

class Window_ResearchModDebugSwitchAction < Window_Command
  def initialize(entry_id, help_window)
    @entry_id = entry_id
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    self.z = 500
    update_help
  end

  def window_width
    340
  end

  def visible_line_number
    3
  end

  def make_command_list
    add_command('设为 ON', :set, true, true)
    add_command('设为 OFF', :set, true, false)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = format('开关 %04d「%s」\n当前 %s　选择后立即设置为 %s。',
                  @entry_id, ResearchMod.debug_entry_name(:switch, @entry_id),
                  ResearchMod.on_off($game_switches[@entry_id]),
                  current_symbol == :set ? ResearchMod.on_off(current_ext) : '原状态')
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModSignedVariableInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(value)
    value = value.respond_to?(:to_i) ? value.to_i : 0
    value = [[value, ResearchMod::DEBUG_VARIABLE_MAX].min,
             -ResearchMod::DEBUG_VARIABLE_MAX].max
    @negative = value < 0
    start(ResearchMod::DEBUG_VARIABLE_MAX.to_s.size, value.abs)
    @index = 0
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
    update_cursor
  end

  def number
    @negative && @number > 0 ? -@number : @number
  end

  def update_placement
    self.width = (@digits_max + 1) * 20 + padding * 2
    self.height = fitting_height(1)
  end

  def cursor_right(wrap)
    maximum_index = @digits_max
    @index = (@index + 1) % (maximum_index + 1) if @index < maximum_index || wrap
  end

  def cursor_left(wrap)
    maximum_index = @digits_max
    @index = (@index + maximum_index) % (maximum_index + 1) if @index > 0 || wrap
  end

  def process_digit_change
    return if disposed? || !active
    return unless Input.repeat?(:UP) || Input.repeat?(:DOWN)

    Sound.play_cursor
    if @index == 0
      @negative = !@negative
    else
      place = 10**(@digits_max - @index)
      digit = @number / place % 10
      @number -= digit * place
      digit = (digit + 1) % 10 if Input.repeat?(:UP)
      digit = (digit + 9) % 10 if Input.repeat?(:DOWN)
      @number += digit * place
    end
    refresh
  end

  def item_rect(index)
    Rect.new(index * 20, 0, 20, line_height)
  end

  def refresh
    contents.clear
    change_color(normal_color)
    draw_text(item_rect(0), @negative ? '-' : '+', 1)
    digits = format('%0*d', @digits_max, @number)
    @digits_max.times do |index|
      rect = item_rect(index + 1)
      rect.x += 1
      draw_text(rect, digits[index, 1], 1)
    end
  end

  def update_cursor
    cursor_rect.set(item_rect(@index))
  end
end

class Window_ResearchModMapMode < Window_Command
  def initialize(help_window)
    @map_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  def window_width
    Graphics.width - 80
  end

  def visible_line_number
    3
  end

  def make_command_list
    add_command(format('查看当前地图（ID %d　%s）', $game_map.map_id,
                       ResearchMod.map_name($game_map.map_id)), :current)
    add_command('按ID选择地图', :select)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :current
             format('当前地图 ID %d「%s」\n玩家坐标 X=%d Y=%d。确认后查看地图事件。',
                    $game_map.map_id, ResearchMod.map_name($game_map.map_id),
                    $game_player.x, $game_player.y)
           when :select
             '输入地图起始ID，从地图数据库中分页选择。不会传送玩家或修改地图。'
           else
             '返回研究修改器。'
           end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModMapIdInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(initial_id)
    @maximum = ResearchMod.map_maximum_id
    start(@maximum.to_s.size, [[initial_id, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    return if disposed?

    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

module ResearchModEventThumbnailWindow
  EVENT_THUMBNAIL_SIZE = 32
  EVENT_FALLBACK_ICON = 55

  def item_height
    40
  end

  def draw_item(index)
    rect = item_rect(index)
    command = @list[index]
    return unless command

    change_color(normal_color, command[:enabled])
    event = command[:symbol] == :select ? command_ext(index) : nil
    if event
      draw_event_thumbnail(event, rect, command[:enabled])
      text_x = rect.x + EVENT_THUMBNAIL_SIZE + 8
      text_width = [rect.width - EVENT_THUMBNAIL_SIZE - 8, 0].max
      text_y = rect.y + (rect.height - line_height) / 2
      draw_text(text_x, text_y, text_width, line_height, command[:name].to_s, 0)
    else
      text_y = rect.y + (rect.height - line_height) / 2
      draw_text(rect.x, text_y, rect.width, line_height, command[:name].to_s, 0)
    end
  end

  def draw_event_thumbnail(event, rect, enabled)
    x = rect.x + (rect.width > EVENT_THUMBNAIL_SIZE ? 4 : 0)
    y = rect.y + (rect.height - EVENT_THUMBNAIL_SIZE) / 2
    graphic = ResearchMod.event_graphic_data(@map_id, event)
    if graphic
      character_name = graphic[:character_name].to_s
      if !character_name.empty? && draw_event_character_thumbnail(
        character_name, graphic[:character_index].to_i, x, y, enabled
      )
        return
      end
      if graphic[:tile_id].to_i > 0 && draw_event_tile_thumbnail(
        graphic[:tile_id].to_i, x, y, enabled
      )
        return
      end
    end
    if ResearchMod.container_event?(@map_id, event)
      tile_id = ResearchMod.event_coordinate_tile_id(@map_id, event)
      return if tile_id && draw_event_tile_thumbnail(tile_id, x, y, enabled)
    end
    draw_icon(EVENT_FALLBACK_ICON, x + 4, y + 4, enabled)
  end

  def draw_event_character_thumbnail(character_name, character_index, x, y, enabled)
    bitmap = Cache.character(character_name)
    sign = character_name[/^[\!\$]./]
    cw = sign && sign.include?('$') ? bitmap.width / 3 : bitmap.width / 12
    ch = sign && sign.include?('$') ? bitmap.height / 4 : bitmap.height / 8
    return false if cw <= 0 || ch <= 0

    src_rect = Rect.new((character_index % 4 * 3 + 1) * cw,
                        (character_index / 4 * 4) * ch, cw, ch)
    draw_event_thumbnail_bitmap(bitmap, src_rect, x, y, enabled)
  rescue
    false
  end

  def draw_event_tile_thumbnail(tile_id, x, y, enabled)
    map = ResearchMod.map_data(@map_id)
    return false unless map

    tileset = if ResearchMod.current_map_id?(@map_id) &&
                 defined?($game_map) && $game_map && $game_map.respond_to?(:tileset)
                $game_map.tileset
              elsif defined?($data_tilesets) && $data_tilesets &&
                    map.respond_to?(:tileset_id)
                $data_tilesets[map.tileset_id]
              end
    names = tileset && tileset.respond_to?(:tileset_names) ? tileset.tileset_names : nil
    bitmap = names && Cache.tileset(names[5 + tile_id / 256])
    return false unless bitmap

    sx = (tile_id / 128 % 2 * 8 + tile_id % 8) * 32
    sy = (tile_id % 256 / 8 % 16) * 32
    src_rect = Rect.new(sx, sy, 32, 32)
    draw_event_thumbnail_bitmap(bitmap, src_rect, x, y, enabled)
  rescue
    false
  end

  def draw_event_thumbnail_bitmap(bitmap, src_rect, x, y, enabled)
    scale = [EVENT_THUMBNAIL_SIZE.to_f / src_rect.width,
             EVENT_THUMBNAIL_SIZE.to_f / src_rect.height].min
    width = [(src_rect.width * scale).round, 1].max
    height = [(src_rect.height * scale).round, 1].max
    dest_x = x + (EVENT_THUMBNAIL_SIZE - width) / 2
    dest_y = y + (EVENT_THUMBNAIL_SIZE - height) / 2
    contents.stretch_blt(Rect.new(dest_x, dest_y, width, height), bitmap,
                          src_rect, enabled ? 255 : translucent_alpha)
    true
  rescue
    false
  end
end

class Window_ResearchModTeleportEventList < Window_Command
  include ResearchModEventThumbnailWindow
  def initialize(map_id, help_window)
    @map_id = map_id
    @events = ResearchMod.map_events(map_id)
    @help_height = help_window.height
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @help_height
  end

  def cursor_up(wrap = false)
    return select(item_max - 1) if index == 0

    super
  end

  def make_command_list
    add_command('重新选择地图（输入起始ID）', :reinput)
    @events.each do |event|
      add_command(format('%4d  %s　X=%d Y=%d', event.id,
                         ResearchMod.event_display_name(event), event.x, event.y),
                  :select, true, event)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      event = current_ext
      text = format('地图 %04d「%s」\n事件 %04d「%s」　原始坐标 X=%d Y=%d\n%s\n坐标是事件在地图上的原始位置，默认传送到这里；卡住请选其他事件或开启“穿墙模式”。',
                    @map_id, ResearchMod.map_name(@map_id), event.id,
                    ResearchMod.event_display_name(event), event.x, event.y,
                    ResearchMod.event_graphic_text(@map_id, event))
    elsif current_symbol == :reinput
      text = '重新输入地图起始 ID。'
    else
      text = format('地图 %04d「%s」共有 %d 个事件。返回任意地图传送。',
                    @map_id, ResearchMod.map_name(@map_id), @events.size)
    end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModCustomTeleportPointList < Window_Command
  def initialize(help_window)
    @custom_teleport_point_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @custom_teleport_point_help_window.height
  end

  def make_command_list
    ResearchMod::CUSTOM_TELEPORT_POINT_COUNT.times do |index|
      add_command(ResearchMod.custom_teleport_point_text(index), :select, true, index)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    current_text = format('当前地图：%04d「%s」　当前位置：X=%d Y=%d',
                          $game_map.map_id, ResearchMod.map_name($game_map.map_id),
                          $game_player.x, $game_player.y)
    if current_symbol == :select
      point = ResearchMod.custom_teleport_point(current_ext)
      point_text = if point
                    valid_text = ResearchMod.custom_teleport_point_valid?(point) ? '有效' : '无效'
                    format('所选%s　状态：%s',
                           ResearchMod.custom_teleport_point_text(current_ext, point), valid_text)
                  else
                    format('所选点位 %02d 为空。', current_ext + 1)
                  end
      text = current_text + "\n" + point_text + "\n确认后可记录、传送或清除。"
    else
      text = current_text + "\n返回研究修改器。"
    end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModCustomTeleportPointAction < Window_Command
  def initialize(point_index, help_window)
    @point_index = point_index
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    self.z = 500
    update_help
  end

  def window_width
    360
  end

  def visible_line_number
    4
  end

  def make_command_list
    point = ResearchMod.custom_teleport_point(@point_index)
    add_command('记录当前位置', :record)
    add_command('传送到此处', :transfer, ResearchMod.custom_teleport_point_valid?(point))
    add_command('清除记录', :clear, !point.nil?)
    add_command('返回自定义传送点列表', :cancel)
  end

  def update_help
    return unless help_window

    current_text = format('当前地图：%04d「%s」　当前位置：X=%d Y=%d',
                          $game_map.map_id, ResearchMod.map_name($game_map.map_id),
                          $game_player.x, $game_player.y)
    point = ResearchMod.custom_teleport_point(@point_index)
    saved_text = point ? ResearchMod.custom_teleport_point_text(@point_index, point) :
                        format('点位 %02d：空', @point_index + 1)
    action_text = case current_symbol
                  when :record
                    '确认后直接用当前位置覆盖此点位。'
                  when :transfer
                    '确认后传送到已保存的地图与坐标。'
                  when :clear
                    '确认后清除此点位的记录。'
                  else
                    '取消并返回自定义传送点列表。'
                  end
    help_window.set_text([current_text, saved_text, action_text].join(10.chr))
  end
end

class Window_ResearchModStuckHelpMenu < Window_Command
  def initialize(help_window)
    @stuck_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @stuck_help_window.height
  end

  def make_command_list
    ResearchMod.stuck_help_entries.each do |entry|
      if entry[:key] == :sant_mountain
        label = format('%s：开关状态 %s', entry[:label], entry[:state])
      else
        label = format('%s：变量当前值 %d', entry[:label], entry[:state])
      end
      add_command(label, :select, true, entry[:key])
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    entry = ResearchMod.stuck_help_entry(current_ext)
    if entry
      if entry[:key] == :sant_mountain
        state_text = format('%s 当前：%s', entry[:state_label], entry[:state])
      else
        state_text = format('%s 当前值：%d', entry[:state_label], entry[:state])
      end
      help_window.set_text([state_text, entry[:description],
                            '确认后会写入目标状态；建议先保存独立存档。'].join(10.chr))
    else
      help_window.set_text('返回研究修改器主菜单。')
    end
  end
end

class Window_ResearchModStuckHelpConfirm < Window_Command
  def initialize(help_window)
    @stuck_help_window = help_window
    @entry = nil
    super(0, 0)
    self.help_window = help_window
    hide
    deactivate
  end

  def setup(entry)
    @entry = entry
    refresh
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height - @stuck_help_window.height) / 2
    show
    activate
    update_help
  end

  def make_command_list
    add_command('确定执行', :execute)
    add_command('取消', :cancel)
  end

  def update_help
    return unless help_window && @entry

    if @entry[:key] == :sant_mountain
      target = '开关2479改为 OFF；建议关闭原版不遇敌，并关闭开关100和2116'
    else
      target = '变量1150改为 17'
    end
    help_window.set_text(format('即将处理：%s。%s。确定执行吗？',
                                @entry[:label], target))
  end
end
class Window_ResearchModExperimentalMenu < Window_Command
  def initialize(help_window)
    @experimental_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @experimental_help_window.height
  end

  def make_command_list
    enabled = ResearchMod.experimental_features_enabled? ? '开' : '关'
    add_command('实验功能总开关：' + enabled, :toggle)
    add_command('敌方属性倍率：' + ResearchMod.enemy_stat_multiplier_label,
                :enemy_stat_multiplier)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :toggle
             if ResearchMod.experimental_features_enabled?
               '实验功能已启用，各子项会按照当前设置生效。关闭后保留子项设置，但全部停止生效。'
             else
               '实验功能当前关闭，各子项设置会保留但不会生效。可先设置倍率，再统一开启。'
             end
           when :enemy_stat_multiplier
             '仅在实验功能总开关开启时生效。\n0或1保持原值；2～99倍增敌方最大HP、MP及六项能力。'
           else
             '返回研究修改器主菜单。'
           end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModTeleportCoordinateMenu < Window_Command
  def initialize(map_id, event, x, y, help_window)
    @map_id = map_id
    @event = event
    @target_x = x
    @target_y = y
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  attr_reader :target_x, :target_y

  def window_width
    360
  end

  def visible_line_number
    5
  end

  def set_coordinates(x, y)
    @target_x = x
    @target_y = y
    refresh
    update_help
  end

  def make_command_list
    add_command(format('编辑 X：%d', @target_x), :edit_x)
    add_command(format('编辑 Y：%d', @target_y), :edit_y)
    add_command('恢复为事件原始坐标', :restore)
    add_command('传送到当前坐标', :transfer)
    add_command('取消并返回事件列表', :cancel)
  end

  def update_help
    return unless help_window

    map = ResearchMod.map_data(@map_id)
    dimensions = map ? format('%d×%d', map.width, map.height) : '未知'
    text = format('地图 %04d「%s」　地图大小：%s\n事件 %04d「%s」\n事件原始坐标：X=%d Y=%d\n当前传送坐标：X=%d Y=%d',
                  @map_id, ResearchMod.map_name(@map_id), dimensions,
                  @event.id, ResearchMod.event_display_name(@event), @event.x, @event.y,
                  @target_x, @target_y)
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModTeleportCoordinateInput < Window_NumberInputBase
  attr_reader :maximum

  def initialize
    super()
  end

  def setup(maximum, current)
    @maximum = [maximum.to_i, 0].max
    start([@maximum, 1].max.to_s.size, [[current.to_i, @maximum].min, 0].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 0].max
  end
end

class Window_ResearchModTeleportConfirm < Window_Command
  def initialize(map_id, event, x, y, help_window, cancel_label = nil)
    @map_id = map_id
    @event = event
    @target_x = x
    @target_y = y
    @cancel_label = cancel_label || '取消并返回坐标编辑'
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    self.z = 500
    update_help
  end

  def window_width
    360
  end

  def visible_line_number
    2
  end

  def make_command_list
    add_command('确认传送', :confirm)
    add_command(@cancel_label, :cancel)
  end

  def update_help
    return unless help_window

    text = format('目标地图：%04d「%s」\n参考事件：%04d「%s」\n传送坐标：X=%d Y=%d\n只检查地图边界，不检查通行；不会修改事件本身。',
                  @map_id, ResearchMod.map_name(@map_id), @event.id,
                  ResearchMod.event_display_name(@event), @target_x, @target_y)
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModMapList < Window_Command
  attr_reader :page

  def initialize(start_id, history, help_window, purpose = :inspector)
    @history = history
    @purpose = purpose
    @help_height = help_window.height
    @page = ResearchMod.map_page(start_id)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @help_height
  end

  def cursor_up(wrap = false)
    return select(item_max - 1) if index == 0

    super
  end

  def make_command_list
    add_command('重新输入起始ID', :reinput)
    add_command(format('加载上一批%d张地图', ResearchMod::MAP_PAGE_SIZE),
                :previous, !@history.empty? || !@page[:previous_start_id].nil?)
    @page[:entries].each do |map_id|
      add_command(format('%4d  %s', map_id, ResearchMod.map_name(map_id)), :select, true, map_id)
    end
    add_command(format('加载下一批%d张地图', ResearchMod::MAP_PAGE_SIZE),
                :next, !@page[:next_start_id].nil?)
    add_command('重新输入起始ID', :reinput)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      map_id = current_ext
      info = ResearchMod.map_infos[map_id]
      parent_id = info && info.respond_to?(:parent_id) ? info.parent_id : 0
      help_window.set_text(format('地图ID %d「%s」\n父地图ID %d。确认后才会读取地图事件数据。',
                                  map_id, ResearchMod.map_name(map_id), parent_id).gsub(92.chr + 'n', 10.chr))
    else
      text = case current_symbol
             when :reinput then '重新输入地图数据库起始ID。'
             when :previous then '返回上一批地图。'
             when :next then '从本批末尾继续加载下一批地图。'
             else
               @purpose == :teleport ? '返回任意地图传送入口。' : '返回地图检查入口。'
             end
      help_window.set_text(text)
    end
  end
end

class Window_ResearchModMapEventList < Window_Command
  include ResearchModEventThumbnailWindow
  def initialize(map_id, help_window)
    @map_id = map_id
    @events = ResearchMod.map_events(map_id)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - fitting_height(3)
  end

  def cursor_up(wrap = false)
    return select(item_max - 1) if index == 0

    super
  end

  def make_command_list
    @events.each do |event|
      add_command(format('%4d  %s', event.id, ResearchMod.event_display_name(event)),
                  :select, true, event)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    event = current_ext
    if event && current_symbol == :select
      active_page_index = ResearchMod.active_event_page_index(@map_id, event)
      active_page_text = active_page_index.nil? ? '无' : format('%d / %d', active_page_index + 1,
                                                                 event.pages.size)
      active_label = ResearchMod.current_map_id?(@map_id) ? '当前实际生效页' : '按当前存档推算页'
      help_window.set_text(format('地图 %04d「%s」\n事件 %04d「%s」　X=%d Y=%d　事件页 %d\n%s：%s　%s。',
                                  @map_id, ResearchMod.map_name(@map_id), event.id,
                                  ResearchMod.event_display_name(event), event.x, event.y,
                                  event.pages.size, active_label,
                                  active_page_text,
                                  ResearchMod.event_graphic_text(@map_id, event)).gsub(92.chr + 'n', 10.chr))
    else
      help_window.set_text(format('地图 %04d「%s」共有 %d 个事件。返回上一级。',
                                  @map_id, ResearchMod.map_name(@map_id), @events.size))
    end
  end
end

class Window_ResearchModContainerList < Window_Command
  include ResearchModEventThumbnailWindow

  def initialize(help_window)
    @map_id = $game_map.map_id
    @events = ResearchMod.container_event_entries(@map_id)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - fitting_height(3)
  end

  def make_command_list
    add_command('全部打开', :open_all,
                ResearchMod.container_batch_available? &&
                @events.any? { |event| ResearchMod.container_normal_batch_openable?(@map_id, event) })
    add_command('全部强制打开', :force_all,
                ResearchMod.container_batch_available? &&
                @events.any? { |event| ResearchMod.container_force_openable?(@map_id, event) })
    @events.each_with_index do |event, index|
      add_command(format('%02d  %s%s', index + 1,
                         ResearchMod.battle_dialogue_display_text(
                           ResearchMod.event_display_name(event), 24
                         ),
                         ResearchMod.container_hint_label(@map_id, event)),
                  :select, true, event)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      event = current_ext
      text = format('事件 %04d  X=%d Y=%d\n%s\n打开：执行原事件；强制：仅静态物品。',
                    event.id, event.x, event.y,
                    ResearchMod.battle_dialogue_display_text(
                      ResearchMod.event_graphic_text(@map_id, event), 48
                    ))
    elsif [:open_all, :force_all].include?(current_symbol) &&
          !ResearchMod.container_batch_available?
      text = '需要先开启“宝箱内容提示”。\n批量操作才可使用。'
    elsif current_symbol == :open_all
      text = '领取无开锁条件的静态物品。\n不触发战斗。\n跳过怪物、锁箱和复杂事件。'
    elsif current_symbol == :force_all
      text = '强制领取可解析的静态物品。\n不触发战斗。\n跳过怪物和复杂事件。'
    else
      text = format('当前地图 %04d「%s」：共 %d 个容器。', @map_id,
                    ResearchMod.map_name(@map_id), @events.size)
    end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModContainerAction < Window_Command
  def initialize(event, help_window)
    @event = event
    @map_id = $game_map.map_id
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    self.z = 500
    update_help
  end

  def window_width
    360
  end

  def visible_line_number
    4
  end

  def make_command_list
    add_command('打开', :open)
    add_command('传送到事件', :teleport)
    add_command('强制打开', :force,
                ResearchMod.container_force_openable?(@map_id, @event))
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :open
             '传送到容器旁并执行原事件。\n保留开锁检查、战斗和原版奖励。'
           when :teleport
             '传送到容器相邻位置。\n不执行事件。'
           when :force
             '直接领取静态物品奖励。\n不执行战斗、剧情或脚本。'
           else
             '返回当前地图容器列表。'
           end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModContainerConfirm < Window_Command
  def initialize(label, count, help_window)
    @label = label
    @count = count
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    self.z = 500
    update_help
  end

  def window_width
    360
  end

  def visible_line_number
    2
  end

  def make_command_list
    add_command('确认执行', :confirm)
    add_command('取消', :cancel)
  end

  def update_help
    return unless help_window

    help_window.set_text(
      format('%s：处理 %d 个容器。\n不会触发战斗。', @label, @count).gsub(
        92.chr + 'n', 10.chr
      )
    )
  end
end

class Window_ResearchModContainerResult < Window_Command
  def initialize(rewards, help_window)
    @lines = ResearchMod.container_reward_summary_lines(rewards)
    @help_height = help_window.height
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @help_height
  end

  def make_command_list
    @lines.each { |line| add_command(line, :item, true) }
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    help_window.set_text(
      format('获得物品：%d 项。\n取消：返回容器列表。', @lines.size).gsub(
        92.chr + 'n', 10.chr
      )
    )
  end
end

class Window_ResearchModMapPageList < Window_Command
  def initialize(map_id, event, help_window)
    @map_id = map_id
    @event = event
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - fitting_height(3)
  end

  def make_command_list
    active_page_index = ResearchMod.active_event_page_index(@map_id, @event)
    @event.pages.each_index do |page_index|
      status = ResearchMod.event_page_status(@map_id, @event, page_index, active_page_index)
      add_command(format('事件页 %d / %d【%s】', page_index + 1, @event.pages.size, status),
                  :select, true, page_index)
    end
    add_command('查看与修改独立开关 A～D', :self_switch)
    add_command('传送到该事件坐标', :teleport)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      page_index = current_ext
      active_page_index = ResearchMod.active_event_page_index(@map_id, @event)
      active_page_text = active_page_index.nil? ? '无' : format('%d / %d', active_page_index + 1,
                                                                 @event.pages.size)
      active_label = ResearchMod.current_map_id?(@map_id) ? '当前实际生效页' : '按当前存档推算页'
      status = ResearchMod.event_page_status(@map_id, @event, page_index, active_page_index)
      conditions = ResearchMod.event_page_condition_lines(
        @map_id, @event, @event.pages[page_index]
      )
      help_window.set_text(format('事件 %04d「%s」　事件页 %d/%d【%s】\n%s：%s\n出现条件 %d 项。确认后查看条件和指令引用。',
                                  @event.id, ResearchMod.event_display_name(@event),
                                  page_index + 1, @event.pages.size, status,
                                  active_label, active_page_text,
                                  conditions[0][0] == '（' ? 0 : conditions.size).gsub(92.chr + 'n', 10.chr))
    elsif current_symbol == :self_switch
      help_window.set_text(format('地图 %04d / 事件 %04d「%s」\n查看并修改该事件专属的独立开关 A、B、C、D。',
                                  @map_id, @event.id,
                                  ResearchMod.event_display_name(@event)).gsub(92.chr + 'n', 10.chr))
    elsif current_symbol == :teleport
      help_window.set_text(format('地图 %04d「%s」\n事件 %04d「%s」　坐标 X=%d Y=%d\n确认后传送到该事件的原始坐标；如果卡住，请选择其他事件或开启“穿墙模式”。',
                                  @map_id, ResearchMod.map_name(@map_id),
                                  @event.id, ResearchMod.event_display_name(@event),
                                  @event.x, @event.y).gsub(92.chr + 'n', 10.chr))
    else
      help_window.set_text('返回当前地图的事件列表。')
    end
  end
end

class Window_ResearchModSelfSwitchList < Window_Command
  def initialize(map_id, event, help_window)
    @map_id = map_id
    @event = event
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  def window_width
    430
  end

  def visible_line_number
    5
  end

  def make_command_list
    ResearchMod::SELF_SWITCH_KEYS.each do |key|
      value = ResearchMod.self_switch_value(@map_id, @event.id, key)
      add_command(format('独立开关 %s：%s', key, ResearchMod.on_off(value)),
                  :select, true, key)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      key = current_ext
      value = ResearchMod.self_switch_value(@map_id, @event.id, key)
      text = format('地图 %04d「%s」\n事件 %04d「%s」　独立开关 %s：%s\n确认后选择新的 ON/OFF 状态。',
                    @map_id, ResearchMod.map_name(@map_id), @event.id,
                    ResearchMod.event_display_name(@event), key,
                    ResearchMod.on_off(value))
      help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
    else
      help_window.set_text('返回该事件的事件页列表。')
    end
  end
end

class Window_ResearchModSelfSwitchAction < Window_Command
  def initialize(map_id, event, key, help_window)
    @map_id = map_id
    @event = event
    @key = key
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    self.z = 500
    update_help
  end

  def window_width
    340
  end

  def visible_line_number
    3
  end

  def make_command_list
    add_command('设为 ON', :set, true, true)
    add_command('设为 OFF', :set, true, false)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    current = ResearchMod.self_switch_value(@map_id, @event.id, @key)
    target = current_symbol == :set ? ResearchMod.on_off(current_ext) : '原状态'
    text = format('地图 %04d / 事件 %04d / 独立开关 %s\n当前 %s　选择后立即设置为 %s。',
                  @map_id, @event.id, @key, ResearchMod.on_off(current), target)
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModMapDetail < Window_Selectable
  def initialize(lines)
    @lines = wrap_lines(lines)
    @top_line = 0
    super(0, 0, Graphics.width, Graphics.height)
    self.active = true
    update_cursor
    refresh
  end

  def item_max
    0
  end

  def update_cursor
    cursor_rect.empty
  end

  def wrap_lines(lines)
    lines.flat_map do |line|
      text = line.to_s.delete(0.chr)
      if text.empty?
        ['']
      else
        result = []
        offset = 0
        while offset < text.size
          result << text[offset, ResearchMod::MAP_DETAIL_WRAP_CHARS]
          offset += ResearchMod::MAP_DETAIL_WRAP_CHARS
        end
        result
      end
    end
  end

  def visible_line_count
    [contents_height / line_height - 1, 1].max
  end

  def max_top_line
    [@lines.size - visible_line_count, 0].max
  end

  def scroll_line(amount)
    old = @top_line
    @top_line = [[@top_line + amount, max_top_line].min, 0].max
    refresh if old != @top_line
    old != @top_line
  end

  def process_cursor_move
    return unless active

    moved = false
    moved ||= scroll_line(1) if Input.repeat?(:DOWN)
    moved ||= scroll_line(-1) if Input.repeat?(:UP)
    moved ||= scroll_line(visible_line_count) if Input.trigger?(:RIGHT) || Input.trigger?(:R)
    moved ||= scroll_line(-visible_line_count) if Input.trigger?(:LEFT) || Input.trigger?(:L)
    Sound.play_cursor if moved
  end

  def refresh
    contents.clear
    reset_font_settings
    change_color(system_color)
    page = @top_line / visible_line_count + 1
    page_max = [(@lines.size + visible_line_count - 1) / visible_line_count, 1].max
    draw_text(0, 0, contents_width, line_height,
              format('地图事件检查　↑↓滚动　←→翻页　%d/%d', page, page_max))
    @lines[@top_line, visible_line_count].to_a.each_with_index do |text, index|
      reset_font_settings
      contents.font.size = ResearchMod::MAP_DETAIL_FONT_SIZE
      draw_text(0, line_height * (index + 1), contents_width, line_height, text)
    end
  end
end

class Window_ResearchModEnemyItemQuantity < Window_NumberInputBase
  attr_reader :maximum

  def setup(entries)
    @maximum = ResearchMod.enemy_item_quantity_maximum(entries)
    start([@maximum.to_s.size, 1].max, 1)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 600
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModEnemyItemList < Window_Command
  attr_reader :entries

  def initialize(enemy, help_window)
    @enemy = enemy
    @entries = ResearchMod.enemy_item_entries(enemy)
    super(0, 0)
    self.help_window = help_window
    self.z = 520
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    # Keep the item list above the custom battle help window.
    Graphics.height - fitting_height(ResearchMod::CUSTOM_BATTLE_HELP_LINES)
  end

  def make_command_list
    available = ResearchMod.enemy_item_available_entries(@entries)
    add_command(format('全部获取（%d种）', @entries.size), :all, !available.empty?)
    @entries.each do |entry|
      item = entry[:item]
      capacity = ResearchMod.database_item_capacity(item)
      suffix = if ResearchMod.database_item_special?(item)
                 '（特殊模板／不可获取）'
               elsif capacity <= 0
                 '（已达上限）'
               else
                 ''
               end
      label = format('%s#%d  %s  [%s]%s',
                     ResearchMod.enemy_item_type_name(item), item.id,
                     ResearchMod.short_item_name(item.name),
                     entry[:sources].join('、'), suffix)
      add_command(label, :select, capacity > 0, entry)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :all
      available = ResearchMod.enemy_item_available_entries(@entries)
      help_window.set_text(
        format('敌人ID %d  %s', @enemy.id, @enemy.name) + 10.chr +
        format('全部获取：为%d种可获取物品分别输入相同数量。', available.size) + 10.chr +
        '达到持有上限的物品会自动截断。'
      )
      return
    end

    entry = current_ext
    unless entry && current_symbol == :select
      help_window.set_text('返回挑战方式选择。')
      return
    end

    item = entry[:item]
    help_window.set_text(
      format('%s#%d  %s', ResearchMod.enemy_item_type_name(item), item.id,
             ResearchMod.short_item_name(item.name)) + 10.chr +
      format('来源：%s', entry[:sources].join('、')) + 10.chr +
      format('当前持有：%d/%d', ResearchMod.database_item_owned(item),
             ResearchMod.database_item_max(item))
    )
  end
end

class Window_ResearchModEnemyPreviewCategory < Window_Command
  CATEGORIES = [
    [:stats, '基本能力'], [:resistance, '属性与状态抗性'],
    [:states, '特殊特性'], [:actions, '行动配置'],
    [:rewards, '掉落偷盗'], [:related, '关联资料']
  ]

  def initialize(enemy)
    @enemy = enemy
    super(0, 0)
    self.z = 710
  end

  def window_width
    220
  end

  def window_height
    Graphics.height
  end

  def visible_line_number
    CATEGORIES.size + 1
  end

  def make_command_list
    CATEGORIES.each { |symbol, label| add_command(label, symbol) }
    add_command('返回', :cancel)
  end
end

class Window_ResearchModEnemyPreviewDetail < Window_Selectable
  def initialize(enemy, category_width)
    @enemy = enemy
    @pages = [[]]
    @page = 0
    @category = :stats
    super(category_width, 0, Graphics.width - category_width, Graphics.height)
    self.z = 700
    self.active = false
    @pages = build_pages
    refresh
  end

  def item_max
    1
  end

  def update_cursor
    if active
      cursor_rect.set(0, line_height, contents_width, line_height)
    else
      cursor_rect.empty
    end
  end

  def set_category(category)
    return if @category == category && @pages && !@pages.empty?

    @category = category
    @page = 0
    @pages = build_pages
    refresh
  end

  def update
    super
    update_cursor
    if Input.trigger?(:RIGHT) || Input.trigger?(:R)
      scroll_page(1) || Sound.play_buzzer
    elsif Input.trigger?(:LEFT) || Input.trigger?(:L)
      if @page > 0
        scroll_page(-1)
      elsif handle?(:category)
        call_handler(:category)
      end
    end
  end

  def scroll_page(delta)
    return false if @pages.size <= 1

    target = [[@page + delta.to_i, 0].max, @pages.size - 1].min
    return false if target == @page

    @page = target
    refresh
    Sound.play_cursor
    true
  end

  def refresh
    contents.clear
    title = format('敌人信息：%s',
                   ResearchMod.battle_preview_text(@enemy.name.to_s, 18))
    footer = if active
               format('▶ 详情浏览中　页面 %d/%d　左右翻页　左键返回分类',
                      @page + 1, @pages.size)
             else
               format('详情预览　页面 %d/%d　请选择左侧分类',
                      @page + 1, @pages.size)
             end
    draw_text(0, 0, contents_width, line_height, title, 0)
    draw_text(0, line_height, contents_width, line_height, footer, 0)
    (@pages[@page] || []).each_with_index do |line, line_index|
      draw_text(0, (line_index + 3) * line_height, contents_width,
                line_height, line.to_s, 0)
    end
  end

  private

  def build_pages
    lines = case @category
            when :stats then ResearchMod.enemy_preview_stat_lines(@enemy)
            when :resistance then ResearchMod.enemy_preview_element_lines(@enemy) +
              [''] + ResearchMod.enemy_preview_state_lines(@enemy)
            when :states then ResearchMod.enemy_preview_special_lines(@enemy)
            when :actions then ResearchMod.enemy_preview_action_lines(@enemy)
            when :rewards then ResearchMod.enemy_preview_reward_lines(@enemy)
            when :related then ResearchMod.enemy_preview_related_lines(@enemy)
            else []
            end
    lines_per_page = [contents_height / line_height - 3, 1].max
    wrapped = wrap_lines(lines)
    pages = wrapped.each_slice(lines_per_page).to_a
    if @category == :resistance && pages.size > 1
      pages.each_with_index do |page, index|
        next unless index < pages.size - 1 && page.last.to_s.empty?

        page.pop
        pages[index + 1].unshift('')
      end
    end
    pages.empty? ? [[]] : pages
  end

  def wrap_lines(lines)
    result = []
    Array(lines).each do |line|
      line = ResearchMod.battle_preview_text(line.to_s, 42)
      if line.empty?
        result << ''
        next
      end
      current = ''
      line.split(10.chr, -1).each do |part|
        part.each_char do |character|
          candidate = current + character
          if !current.empty? && text_size(candidate).width > contents_width
            result << current
            current = character
          else
            current = candidate
          end
        end
        result << current
        current = ''
      end
    end
    result.empty? ? [''] : result
  end
end

class Window_ResearchModEnemyBattleMode < Window_Command
  attr_reader :troops
  attr_reader :item_entries
  attr_reader :follower_actor

  def initialize(enemy, help_window)
    @enemy = enemy
    @follower_actor = ResearchMod.enemy_follower_actor(enemy)
    @troops = ResearchMod.troops_for_enemy(enemy.id)
    @item_entries = ResearchMod.enemy_item_entries(enemy)
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  def window_width
    420
  end

  def visible_line_number
    @follower_actor ? 5 : 4
  end

  def make_command_list
    add_command('查看敌人信息', :enemy_info)
    add_command('使用原有敌群挑战（推荐）', :original, !@troops.empty?)
    add_command('单独挑战该敌人（实验性）', :temporary)
    add_command('获取敌人物品', :enemy_items, !@item_entries.empty?)
    if @follower_actor
      joined = $game_party && $game_party.respond_to?(:follow?) &&
               $game_party.follow?(@follower_actor.id)
      status = joined ? '是' : '否'
      add_command(format('候补管理（已加入：%s）', status), :candidate_manage)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :original
             format('找到%d个包含该敌人的敌群；单人敌群优先。', @troops.size)
           when :enemy_info
             '查看当前难度下的预计能力、抗性、行动配置、奖励和关联资料。'
           when :temporary
             '创建无战斗事件的临时单人敌群；剧情敌人可能异常。'
           when :enemy_items
             format('查看该敌人的掉落和可偷物品，共%d种去重物品；可全部或单独获取。', @item_entries.size)
           when :candidate_manage
             '管理该敌人对应角色的候补状态；可加入或移除候补。'
           else
             '返回敌人列表。'
           end
    help_window.set_text(text)
  end
end

class Window_ResearchModEnemyTroopList < Window_Command
  def initialize(troops, help_window)
    @troops = troops
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    # Keep the troop list above the custom battle help window.
    Graphics.height - fitting_height(ResearchMod::CUSTOM_BATTLE_HELP_LINES)
  end

  def col_max
    2
  end

  def make_command_list
    @troops.each do |troop|
      add_command(format('%4d  %s', troop.id, ResearchMod.troop_display_name(troop)),
                  :select, true, troop)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    troop = current_ext
    if troop && current_symbol == :select
      name = troop.name.empty? ? '[无名称敌群]' : troop.name
      text = format('敌群ID %d  %s\n成员：%s\n确认：选择该敌群',
                    troop.id, name, ResearchMod.troop_member_summary(troop))
      help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
    else
      help_window.set_text('返回挑战方式选择。')
    end
  end
end

class Window_ResearchModBattleConfirm < Window_Command
  def initialize(request, help_window)
    @request = request
    super(0, 0)
    self.help_window = help_window
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - help_window.height - height) / 2
    update_help
  end

  def window_width
    320
  end

  def visible_line_number
    2
  end

  def make_command_list
    add_command('确认开战', :confirm)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    if @request[:temporary_enemy_id]
      enemy = $data_enemies[@request[:temporary_enemy_id]]
      text = format('敌人ID %d  %s\n临时单人敌群；不含原敌群战斗事件。\n允许逃跑：是　败北继续：是',
                    enemy.id, enemy.name)
    else
      troop = $data_troops[@request[:troop_id]]
      name = troop.name.empty? ? '[无名称敌群]' : troop.name
      prefix = @request[:encounter] ? '当前地图遇敌　' : ''
      text = format('%s敌群ID %d  %s\n成员：%s\n允许逃跑：是（特殊限制除外）　败北继续：是',
                    prefix, troop.id, name, ResearchMod.troop_member_summary(troop))
    end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModClassLearningHelp < Window_Selectable
  attr_reader :page

  def initialize(x, y, width, height)
    @lines = []
    @pages = [[]]
    @page = 0
    @entry_pages_cache = {}
    @entry_key = nil
    super(x, y, width, height)
    self.active = false
    refresh
  end

  def item_max
    0
  end

  def update_cursor
    if active
      cursor_rect.set(0, line_height, contents_width, line_height)
    else
      cursor_rect.empty
    end
  end

  def set_entry(entry, kind)
    cache_key = if entry
                  [kind, entry.id, contents_width, contents_height]
                else
                  [kind, 0, contents_width, contents_height]
                end
    return if @entry_key == cache_key

    @entry = entry
    @kind = kind
    @entry_key = cache_key
    @pages = @entry_pages_cache[cache_key]
    unless @pages
      @lines = wrap_lines(ResearchMod.class_learning_lines(entry, kind))
      rebuild_pages
      @entry_pages_cache[cache_key] = @pages
    end
    @page = 0
    refresh
  end

  def set_text(text)
    @entry = nil
    @kind = nil
    @entry_key = nil
    @lines = wrap_lines(text.to_s.split(/\r?\n/, -1))
    @page = 0
    rebuild_pages
    refresh
  end

  def scroll_page(delta)
    return false if @pages.empty? || @pages.size <= 1

    target = [[@page + delta.to_i, 0].max, @pages.size - 1].min
    return false if target == @page

    @page = target
    refresh
    true
  end

  def refresh
    contents.clear
    footer = format('页面 %d/%d　左右键翻页', @page + 1, @pages.size)
    draw_text(0, 0, contents_width, line_height, footer, 2)
    page_lines = @pages[@page] || []
    page_lines.each_with_index do |line, index|
      draw_text(0, (index + 2) * line_height, contents_width, line_height,
                line.to_s)
    end
  end

  private

  def wrap_lines(lines)
    result = []
    lines.each do |line|
      current = ''
      line.to_s.each_char do |character|
        candidate = current + character
        if !current.empty? && text_size(candidate).width > contents_width
          result << current
          current = character
        else
          current = candidate
        end
      end
      result << current
    end
    result.empty? ? [''] : result
  end

  def rebuild_pages
    lines_per_page = [contents_height / line_height - 2, 1].max
    @pages = @lines.each_slice(lines_per_page).to_a
    @pages = [[]] if @pages.empty?
    @page = [[@page, 0].max, @pages.size - 1].min
  end
end

class Window_ResearchModClassList < Window_Command
  alias research_mod_class_list_select select

  def initialize(kind, learning_help_window = nil)
    @kind = kind
    @learning_help_window = learning_help_window
    super(0, 0)
  end

  def window_width
    ResearchMod.class_learning_half_width
  end

  def window_height
    Graphics.height
  end

  def visible_line_number
    14
  end

  def make_command_list
    ResearchMod.entries(@kind).each do |entry|
      add_command(format('%4d  %s', entry.id, entry.name), :select, true, entry.id)
    end
  end

  def select(index)
    research_mod_class_list_select(index)
    update_class_learning_help
  end

  def update_class_learning_help
    return unless @learning_help_window && !@learning_help_window.disposed?

    entry = $data_classes[current_ext] if current_ext
    @learning_help_window.set_entry(entry, @kind)
  end

  def update
    super
    update_cursor
    return unless active

    if Input.trigger?(:RIGHT) || Input.trigger?(:R)
      @learning_help_window.scroll_page(1) if @learning_help_window
    elsif Input.trigger?(:LEFT) || Input.trigger?(:L)
      @learning_help_window.scroll_page(-1) if @learning_help_window
    end
  end
end

class Window_ResearchModActorList < Window_Command
  def initialize(current_actor)
    @current_actor = current_actor
    super(0, 0)
    select($game_party.members.index(@current_actor) || 0)
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    14
  end

  def make_command_list
    $game_party.members.each do |actor|
      add_command(format('%4d  %s', actor.id, actor.name), :select, true, actor)
    end
  end
end

class Window_ResearchModPersonaList < Window_Command
  def initialize(actor)
    @actor = actor
    super(0, 0)
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    14
  end

  def make_command_list
    ResearchMod.persona_entries(@actor).each do |entry|
      add_command(format('%4d  %s', entry.id, entry.name), :select, true, entry.id)
    end
  end
end

class Window_ResearchModLearningList < Window_Command
  def initialize(actor)
    @actor = actor
    super(0, 0)
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    14
  end

  def make_command_list
    skills = ResearchMod.learning_skills
    can_learn_all = skills.any? do |skill|
      ResearchMod.learning_skill_available?(@actor, skill)
    end
    add_command('全部学习', :learn_all, can_learn_all)
    skills.each do |skill|
      learnable = @actor.skill_learnable?(skill)
      learned = @actor.skill_learn?(skill)
      suffix = learned ? '（已学会）' : (learnable ? '' : '（不可学习）')
      add_command(format('%4d  %s%s', skill.id, skill.name, suffix), :select,
                  learnable && !learned, skill.id)
    end
  end
end

class Window_ResearchModAllSkillCategory < Window_Command
  def initialize
    super(0, 0)
    self.z = 420
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    8
  end

  def make_command_list
    add_command('全部技能', :select, true,
                { :label => '全部技能', :type_ids => nil, :all => true })
    ResearchMod.all_skill_categories.each do |category|
      add_command(category[:label], :select, true, category)
    end
    add_command('返回', :cancel)
  end
end

class Window_ResearchModLearningIdInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(initial_id)
    @maximum = [($data_skills ? $data_skills.size - 1 : 1), 1].max
    start(@maximum.to_s.size, [[initial_id.to_i, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 1].max
  end

  def process_digit_change
    return if disposed?

    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModAllSkillType < Window_Command
  def initialize
    @category = nil
    super(0, 0)
    self.z = 425
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    20
  end

  def setup(category)
    @category = category
    refresh
    select(0)
  end

  def make_command_list
    ResearchMod.all_skill_type_entries(@category).each do |entry|
      add_command(format('%2d  %s', entry[:type_id], entry[:name]),
                  :select, true, entry)
    end
    add_command('返回', :cancel)
  end
end

class Window_ResearchModAllSkillHelp < Window_Selectable
  attr_reader :page

  def initialize(x, y, width, height)
    @pages = [[]]
    @page = 0
    @skill_key = nil
    super(x, y, width, height)
    self.active = false
    refresh
  end

  def item_max
    0
  end

  def update_cursor
    if active
      cursor_rect.set(0, line_height, contents_width, line_height)
    else
      cursor_rect.empty
    end
  end

  def update
    super
    return unless active

    phase = (Graphics.frame_count / 15) % 2
    return if phase == @focus_blink_phase

    @focus_blink_phase = phase
    refresh
  end

  # The skill list updates this help window explicitly after its contents are
  # initialized; do not use Window_Selectable's default help callback.
  def update_help
  end

  def set_skill(skill, type_id)
    learned = skill && @current_actor &&
              ResearchMod.all_skill_learning_status(@current_actor, skill)
    key = skill ? [skill.id, type_id, learned, contents_width, contents_height] : nil
    return if key == @skill_key

    @skill_key = key
    lines = if skill
              description = skill.respond_to?(:description) ?
                skill.description.to_s.gsub(92.chr + 'n', 10.chr) : ''
              result = [format('技能 ID：%d', skill.id),
                        format('名称：%s', skill.name.to_s),
                        format('所属：%s', all_skill_type_label(skill, type_id)),
                        '说明：']
              result.concat(description.split(/\r?\n/, -1)) unless description.empty?
              result << format('状态：%s', learned ? '已学习' : '未学习')
              result
            else
              ['请选择技能。']
            end
    @pages = build_pages(wrap_lines(lines))
    @page = 0
    refresh
  end

  def actor=(actor)
    @current_actor = actor
  end

  def scroll_page(delta)
    return false if @pages.size <= 1

    target = [[@page + delta.to_i, 0].max, @pages.size - 1].min
    return false if target == @page

    @page = target
    refresh
    true
  end

  def refresh
    contents.clear
    footer = format('页面 %d/%d　左右键翻页', @page + 1, @pages.size)
    draw_text(0, 0, contents_width, line_height, footer, 2)
    (@pages[@page] || []).each_with_index do |line, index|
      draw_text(0, (index + 2) * line_height, contents_width, line_height,
                line.to_s)
    end
  end

  private

  def all_skill_type_label(skill, type_id)
    return ResearchMod.all_skill_type_label(type_id) unless type_id.nil?

    type_ids = if skill.respond_to?(:stypes)
                 Array(skill.stypes)
               elsif skill.respond_to?(:stype_id)
                 [skill.stype_id]
               else
                 []
               end
    labels = type_ids.map { |id| ResearchMod.all_skill_type_label(id) }
    labels.empty? ? '技能分类未知' : labels.uniq.join('、')
  rescue
    '技能分类未知'
  end

  def wrap_lines(lines)
    result = []
    lines.each do |line|
      current = ''
      line.to_s.each_char do |character|
        candidate = current + character
        if !current.empty? && text_size(candidate).width > contents_width
          result << current
          current = character
        else
          current = candidate
        end
      end
      result << current
    end
    result.empty? ? [''] : result
  end

  def build_pages(lines)
    per_page = [contents_height / line_height - 2, 1].max
    pages = lines.each_slice(per_page).to_a
    pages.empty? ? [[]] : pages
  end
end

class Window_ResearchModAllSkillList < Window_Command
  attr_reader :page
  alias research_mod_all_skill_list_select select

  def initialize(actor, help_window)
    @actor = actor
    @type_id = nil
    @entries = []
    @page = nil
    @history = []
    @help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.z = 430
    hide
    deactivate
    unselect
  end

  def window_width
    ResearchMod.class_learning_half_width
  end

  def window_height
    Graphics.height
  end

  def setup(type_id, start_id = 1, history = nil)
    @type_id = type_id.nil? ? nil : type_id.to_i
    @history = history || []
    @page = if @type_id.nil?
              ResearchMod.learning_database_page(:skill, start_id)
            end
    @entries = @page ? @page[:entries] : ResearchMod.all_skill_entries(@type_id)
    refresh
    select(0)
    update_all_skill_help
  end

  def make_command_list
    can_learn_all = @entries.any? do |skill|
      !ResearchMod.all_skill_learning_status(@actor, skill) &&
        (!@actor.respond_to?(:skill_learnable?) || @actor.skill_learnable?(skill))
    end
    can_forget_all = @entries.any? do |skill|
      ResearchMod.all_skill_learning_status(@actor, skill)
    end
    learn_all_label = @page ? '本批全部学习' : '全部学习'
    forget_all_label = @page ? '本批全部忘记' : '全部忘记'
    add_command(learn_all_label, :learn_all, can_learn_all)
    add_command(forget_all_label, :forget_all, can_forget_all)
    if @page
      add_command('重新输入起始ID', :reinput)
      add_command(format('加载上一批%d项', ResearchMod::LEARNING_DATABASE_PAGE_SIZE),
                  :previous,
                  !@history.empty? || !@page[:previous_start_id].nil?)
    end
    @entries.each do |skill|
      learned = ResearchMod.all_skill_learning_status(@actor, skill)
      suffix = learned ? '（已学习）' : ''
      add_command(format('%4d  %s%s', skill.id, skill.name.to_s, suffix),
                  :select, true, skill)
    end
    if @page
      add_command(format('加载下一批%d项', ResearchMod::LEARNING_DATABASE_PAGE_SIZE),
                  :next, !@page[:next_start_id].nil?)
      add_command('重新输入起始ID', :reinput)
    end
    add_command('返回', :cancel)
  end

  def select(index)
    research_mod_all_skill_list_select(index)
    update_all_skill_help
  end

  def update_all_skill_help
    return unless @help_window && !@help_window.disposed?

    @help_window.actor = @actor if @help_window.respond_to?(:actor=)
    @help_window.set_skill(current_ext, @type_id)
  end

  # Replace the default callback, which expects a Window_Help instance and
  # calls clear/set_text directly on it.
  def update_help
    update_all_skill_help
  end

  def update
    super
    return unless active

    if Input.trigger?(:RIGHT) || Input.trigger?(:R)
      @help_window.scroll_page(1) if @help_window
    elsif Input.trigger?(:LEFT) || Input.trigger?(:L)
      @help_window.scroll_page(-1) if @help_window
    end
  end
end

class Window_ResearchModAllSkillAction < Window_Command
  def initialize(actor, skill, type_id, help_window)
    @actor = actor
    @skill = skill
    @type_id = type_id
    @help_window = help_window
    super(0, 0)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def setup(skill)
    @skill = skill
    refresh
    select(0)
  end

  def window_width
    360
  end

  def visible_line_number
    3
  end

  def make_command_list
    learned = ResearchMod.all_skill_learning_status(@actor, @skill)
    learnable = if @actor.respond_to?(:skill_learnable?)
                  @actor.skill_learnable?(@skill)
                else
                  true
                end
    add_command('学习', :learn, !learned && learnable)
    add_command('忘记', :forget, learned)
    add_command('返回', :cancel)
  end

  def update_help
    @help_window.set_skill(@skill, @type_id) if @help_window
  end
end

class Window_ResearchModAbilityCategory < Window_Command
  def initialize
    super(0, 0)
    self.z = 420
    hide
    deactivate
    unselect
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    8
  end

  def make_command_list
    add_command('全部能力', :select, true,
                { :name => '全部能力', :translated_name => '全部', :stype_id => nil,
                  :all => true })
    ResearchMod.ability_type_entries.each do |entry|
      label = format('%s（%s）', entry[:name], entry[:translated_name])
      add_command(label, :select, true, entry)
    end
    add_command('返回', :cancel)
  end
end

class Window_ResearchModAbilityHelp < Window_Selectable
  attr_reader :page

  def initialize(x, y, width, height)
    @pages = [[]]
    @page = 0
    @ability_key = nil
    @current_actor = nil
    super(x, y, width, height)
    self.active = false
    refresh
  end

  def item_max
    0
  end

  def update_cursor
    if active
      cursor_rect.set(0, line_height, contents_width, line_height)
    else
      cursor_rect.empty
    end
  end

  def update
    super
    update_cursor
    return unless active

    phase = (Graphics.frame_count / 15) % 2
    return if phase == @focus_blink_phase

    @focus_blink_phase = phase
    refresh
  end

  # The ability list refreshes this custom help window explicitly.
  def update_help
  end

  def actor=(actor)
    @current_actor = actor
  end

  def set_ability(ability, stype_id)
    learned = ability && @current_actor &&
              ResearchMod.ability_learning_status(@current_actor, ability)
    key = ability ? [ability.id, stype_id, learned, contents_width, contents_height] : nil
    return if key == @ability_key

    @ability_key = key
    lines = if ability
              description = ability.respond_to?(:description) ?
                ability.description.to_s.gsub(92.chr + 'n', 10.chr) : ''
              result = [format('能力 ID：%d', ability.id),
                        format('名称：%s', ability.name.to_s),
                        format('所属：%s', ability_category_label(ability, stype_id)),
                        '说明：']
              result.concat(description.split(/\r?\n/, -1)) unless description.empty?
              result << format('状态：%s', learned ? '已学习' : '未学习')
              result
            else
              ['请选择能力。']
            end
    @pages = build_pages(wrap_lines(lines))
    @page = 0
    refresh
  end

  # Rebuild the current page even when the selected ability did not change.
  def refresh_ability(ability, stype_id)
    @ability_key = nil
    set_ability(ability, stype_id)
  end

  def scroll_page(delta)
    return false if @pages.size <= 1

    target = [[@page + delta.to_i, 0].max, @pages.size - 1].min
    return false if target == @page

    @page = target
    refresh
    true
  end

  def refresh
    contents.clear
    footer = format('页面 %d/%d　左右键翻页', @page + 1, @pages.size)
    draw_text(0, 0, contents_width, line_height, footer, 2)
    (@pages[@page] || []).each_with_index do |line, index|
      draw_text(0, (index + 2) * line_height, contents_width, line_height,
                line.to_s)
    end
  end

  private

  def ability_category_label(ability, stype_id)
    stype_id = ability.stype_id if stype_id.nil? && ability && ability.respond_to?(:stype_id)
    entry = ResearchMod.ability_type_entries.find do |item|
      item[:stype_id].to_i == stype_id.to_i
    end
    entry ? format('%s（%s）', entry[:name], entry[:translated_name]) : '能力分类未知'
  end

  def wrap_lines(lines)
    result = []
    lines.each do |line|
      current = ''
      line.to_s.each_char do |character|
        candidate = current + character
        if !current.empty? && text_size(candidate).width > contents_width
          result << current
          current = character
        else
          current = candidate
        end
      end
      result << current
    end
    result.empty? ? [''] : result
  end

  def build_pages(lines)
    per_page = [contents_height / line_height - 2, 1].max
    pages = lines.each_slice(per_page).to_a
    pages.empty? ? [[]] : pages
  end
end

class Window_ResearchModAbilityList < Window_Command
  attr_reader :page
  alias research_mod_ability_list_select select

  def initialize(actor, help_window)
    @actor = actor
    @stype_id = nil
    @entries = []
    @page = nil
    @history = []
    @help_window = help_window
    super(0, 0)
    self.help_window = help_window
    self.z = 430
    hide
    deactivate
    unselect
  end

  def window_width
    ResearchMod.class_learning_half_width
  end

  def window_height
    Graphics.height
  end

  def setup(stype_id, start_id = 1, history = nil)
    @stype_id = stype_id.nil? ? nil : stype_id.to_i
    @history = history || []
    @page = if @stype_id.nil?
              ResearchMod.learning_database_page(:ability, start_id)
            end
    @entries = @page ? @page[:entries] : ResearchMod.ability_entries(@stype_id)
    refresh
    select(0)
    update_ability_help
  end

  def make_command_list
    can_learn_all = @entries.any? do |ability|
      !ResearchMod.ability_learning_status(@actor, ability) &&
        (!@actor.respond_to?(:skill_learnable?) || @actor.skill_learnable?(ability))
    end
    can_forget_all = @entries.any? do |ability|
      ResearchMod.ability_learning_status(@actor, ability)
    end
    learn_all_label = @page ? '本批全部学习' : '全部学习'
    forget_all_label = @page ? '本批全部忘记' : '全部忘记'
    add_command(learn_all_label, :learn_all, can_learn_all)
    add_command(forget_all_label, :forget_all, can_forget_all)
    if @page
      add_command('重新输入起始ID', :reinput)
      add_command(format('加载上一批%d项', ResearchMod::LEARNING_DATABASE_PAGE_SIZE),
                  :previous,
                  !@history.empty? || !@page[:previous_start_id].nil?)
    end
    @entries.each do |ability|
      learned = ResearchMod.ability_learning_status(@actor, ability)
      suffix = learned ? '（已学习）' : ''
      add_command(format('%4d  %s%s', ability.id, ability.name.to_s, suffix),
                  :select, true, ability)
    end
    if @page
      add_command(format('加载下一批%d项', ResearchMod::LEARNING_DATABASE_PAGE_SIZE),
                  :next, !@page[:next_start_id].nil?)
      add_command('重新输入起始ID', :reinput)
    end
    add_command('返回', :cancel)
  end

  def select(index)
    research_mod_ability_list_select(index)
    update_ability_help
  end

  def update_ability_help
    return unless @help_window && !@help_window.disposed?

    @help_window.actor = @actor
    @help_window.set_ability(current_ext, @stype_id)
  end

  # Avoid Window_Selectable's default Window_Help callback.
  def update_help
    update_ability_help
  end

  def update
    super
    return unless active

    if Input.trigger?(:RIGHT) || Input.trigger?(:R)
      @help_window.scroll_page(1) if @help_window
    elsif Input.trigger?(:LEFT) || Input.trigger?(:L)
      @help_window.scroll_page(-1) if @help_window
    end
  end
end

class Window_ResearchModAbilityAction < Window_Command
  def initialize(actor, ability, stype_id, help_window)
    @actor = actor
    @ability = ability
    @stype_id = stype_id
    @help_window = help_window
    super(0, 0)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def window_width
    360
  end

  def visible_line_number
    3
  end

  def make_command_list
    learned = ResearchMod.ability_learning_status(@actor, @ability)
    learnable = if @actor.respond_to?(:skill_learnable?)
                  @actor.skill_learnable?(@ability)
                else
                  true
                end
    add_command('学习', :learn, !learned && learnable)
    add_command('忘记', :forget, learned)
    add_command('返回', :cancel)
  end

  def update_help
    @help_window.set_ability(@ability, @stype_id) if @help_window
  end
end

class Window_ResearchModAccumulatedDamageScope < Window_Command
  def initialize(help_window)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    360
  end

  def visible_line_number
    3
  end

  def make_command_list
    add_command('全局', :global)
    add_command('特定角色', :actor)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :global
             '修改全局累计值。当前仅支持战斗次数。'
           when :actor
             '修改特定角色的累计值、好感度。'
           else
             '返回队伍菜单。'
           end
    help_window.set_text(text)
  end
end

class Window_ResearchModAccumulatedDamageGlobal < Window_Command
  def initialize(help_window)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    420
  end

  def visible_line_number
    2
  end

  def make_command_list
    add_command(format('战斗次数：%d', $game_system.battle_count.to_i), :select, true,
                :battle_count)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = if current_symbol == :select
             '战斗次数影响戦闘データ累積（战斗数据累积）的伤害倍率。'
           else
             '返回累计类增伤目标选择。'
           end
    help_window.set_text(text)
  end
end

class Window_ResearchModAccumulatedDamageTarget < Window_Command
  def initialize(help_window)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    420
  end

  def visible_line_number
    5
  end

  def make_command_list
    add_command('当前角色', :current)
    add_command('指定角色', :specified)
    add_command('所有角色', :all)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :current
             '直接修改当前选中角色的累计值。'
           when :specified
             '输入起始 ID 后选择要修改的角色。'
           when :all
             '修改时遍历所有有名称的有效角色，并统一写入数值。'
           else
             '返回累计类增伤目标大类选择。'
           end
    help_window.set_text(text)
  end
end

class Window_ResearchModAccumulatedDamageAttribute < Window_Command
  def initialize(help_window, scope, actor)
    @accumulated_damage_help_window = help_window
    @scope = scope
    @actor = actor
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @accumulated_damage_help_window.height
  end

  def make_command_list
    entries = @scope == :global ? [ResearchMod::ACCUMULATED_DAMAGE_GLOBAL_STAT] :
      ResearchMod.accumulated_damage_actor_stats
    entries.each do |entry|
      value = @scope == :all ? '多角色' : ResearchMod.accumulated_damage_value(
        @scope, @actor, entry[:key]
      )
      add_command(format('%s：%s', entry[:label], value), :select, true, entry[:key])
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    entry = ResearchMod.accumulated_damage_stat(current_ext)
    if entry && current_symbol == :select
      scope_text = case @scope
                   when :global then '全局'
                   when :all then '所有角色'
                   else @actor ? format('角色 %04d「%s」', @actor.id, @actor.name) : '当前角色'
                   end
      value = @scope == :all ? '将统一修改' : ResearchMod.accumulated_damage_value(
        @scope, @actor, entry[:key]
      )
      help_window.set_text(
        format('%s：%s%s当前值：%s%s影响能力：%s', entry[:label], scope_text,
               10.chr, value, 10.chr, entry[:ability])
      )
    else
      help_window.set_text('选择要修改的累计属性；确认后输入新的最终数值。')
    end
  end
end

class Window_ResearchModAccumulatedDamageActorList < Window_Command
  attr_reader :page

  def initialize(start_id, history, help_window)
    @history = history
    @page = ResearchMod.actor_encyclopedia_page(start_id)
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    ResearchMod::ACTOR_ENCYCLOPEDIA_LIST_WIDTH
  end

  def window_height
    Graphics.height
  end

  def make_command_list
    add_command('重新输入起始 ID', :reinput)
    add_command('上一批角色', :previous, !@history.empty? || !@page[:previous_start_id].nil?)
    @page[:entries].each do |actor|
      joined = $game_party && $game_party.respond_to?(:follow?) &&
               $game_party.follow?(actor.id)
      add_command(format('%4d  %s  已加入：%s', actor.id, actor.name,
                         joined ? '是' : '否'), :select, true, actor)
    end
    add_command('下一批角色', :next, !@page[:next_start_id].nil?)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    actor = current_ext
    if actor && current_symbol == :select
      help_window.set_text(
        format('角色 ID %d「%s」%s确认后修改该角色的累计值。', actor.id, actor.name, 10.chr)
      )
    else
      help_window.set_text('选择要修改的角色；支持上一批、下一批和重新输入起始 ID。')
    end
  end
end

class Window_ResearchModAccumulatedDamageInput < Window_NumberInputBase
  attr_reader :maximum

  def setup(value, key)
    @maximum = ResearchMod.accumulated_damage_maximum(key)
    start(@maximum.to_s.size, [[value.to_i, @maximum].min, 0].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, @maximum].min, 0].max
  end
end

class Window_ResearchModSynthesisCategory < Window_Command
  def initialize
    super(0, 0)
    self.z = 420
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    4
  end

  def make_command_list
    add_command('物品', :select, true, :I)
    add_command('武器', :select, true, :W)
    add_command('防具', :select, true, :A)
    add_command('返回', :cancel)
  end
end

class Window_ResearchModSynthesisHelp < Window_Selectable
  def initialize(x, y, width, height)
    @lines = ['请选择合成产物。']
    @page = 0
    @pages = [[]]
    @page_key = nil
    super(x, y, width, height)
    self.active = false
    rebuild_pages
    refresh
  end

  def item_max
    0
  end

  def update_cursor
    cursor_rect.empty
  end

  def update_help
  end

  def set_lines(lines)
    lines = Array(lines).map(&:to_s)
    lines = [''] if lines.empty?
    key = [lines, contents_width, contents_height]
    return if key == @page_key

    @page_key = key
    @lines = lines
    @page = 0
    rebuild_pages
    refresh
  end

  def scroll_page(delta)
    return false if @pages.size <= 1

    target = [[@page + delta.to_i, 0].max, @pages.size - 1].min
    return false if target == @page

    @page = target
    refresh
    true
  end

  def update
    super
    if Input.trigger?(:RIGHT) || Input.trigger?(:R)
      scroll_page(1)
    elsif Input.trigger?(:LEFT) || Input.trigger?(:L)
      scroll_page(-1)
    end
  end

  def refresh
    contents.clear
    footer = format('页面 %d/%d　左右键翻页', @page + 1, @pages.size)
    draw_text(0, 0, contents_width, line_height, footer, 2)
    (@pages[@page] || []).each_with_index do |line, index|
      draw_text(0, (index + 2) * line_height, contents_width, line_height, line)
    end
  end

  private

  def rebuild_pages
    wrapped = []
    @lines.each do |line|
      current = ''
      line.to_s.each_char do |character|
        candidate = current + character
        if !current.empty? && text_size(candidate).width > contents_width
          wrapped << current
          current = character
        else
          current = candidate
        end
      end
      wrapped << current
    end
    per_page = [contents_height / line_height - 2, 1].max
    @pages = wrapped.each_slice(per_page).to_a
    @pages = [[]] if @pages.empty?
  end
end

class Window_ResearchModSynthesisIdInput < Window_NumberInputBase
  attr_reader :maximum

  def setup(kind, initial_id)
    products = ResearchMod.research_mod_synthesis_products(kind)
    @maximum = [products.empty? ? 1 : products.last[:item].id.to_i, 1].max
    start(@maximum.to_s.size, [[initial_id.to_i, @maximum].min, 1].max)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number.to_i, @maximum].min, 1].max
  end

  def process_digit_change
    super
    return unless @number < 1

    @number = 1
    refresh
  end
end

class Window_ResearchModSynthesisList < Window_Command
  attr_reader :page

  def initialize(kind, start_id, history, help_window)
    @kind = kind
    @history = history
    @help_window = help_window
    @page = ResearchMod.research_mod_synthesis_page(kind, start_id)
    @entries = @page[:entries]
    super(0, 0)
    self.help_window = help_window
    self.z = 430
    hide
    deactivate
    unselect
  end

  def window_width
    ResearchMod.class_learning_half_width
  end

  def window_height
    Graphics.height
  end

  def setup(start_id = @page[:start_id])
    @page = ResearchMod.research_mod_synthesis_page(@kind, start_id)
    @entries = @page[:entries]
    refresh
    select(0)
    update_synthesis_help
  end

  def make_command_list
    add_command('重新输入起始ID', :reinput)
    add_command(format('加载上一批%d个', ResearchMod::DATABASE_PAGE_SIZE),
                :previous, !@history.empty? || !@page[:previous_start_id].nil?)
    @entries.each do |entry|
      item = entry[:item]
      suffix = entry[:recipes].size > 1 ? format('（%d种配方）', entry[:recipes].size) : ''
      add_command(format('%4d  %s%s', item.id, item.name.to_s, suffix),
                  :select, true, entry)
    end
    add_command(format('加载下一批%d个', ResearchMod::DATABASE_PAGE_SIZE),
                :next, !@page[:next_start_id].nil?)
    add_command('返回', :cancel)
  end

  def select(index)
    super
    update_synthesis_help
  end

  def update_synthesis_help
    return unless @help_window && !@help_window.disposed?

    entry = current_ext
    if entry && current_symbol == :select
      item = entry[:item]
      recipe = entry[:recipes].first[:data]
      lines = [format('ID：%d', item.id),
               format('名称：%s', item.name.to_s),
               format('类型：%s', ResearchMod.research_mod_synthesis_kind_name(entry[:kind])),
               '说明：']
      description = item.respond_to?(:description) ? item.description.to_s.gsub(92.chr + 'n', 10.chr) : ''
      lines.concat(description.split(/\r?\n/, -1)) unless description.empty?
      lines << format('配方：%d种', entry[:recipes].size)
      lines << format('金币：%d', (recipe[:price] || recipe['price']).to_i)
      lines << '材料：'
      lines.concat(ResearchMod.research_mod_synthesis_material_lines(recipe))
      lines << '确认后选择具体配方或合成操作。'
      @help_window.set_lines(lines)
    else
      text = case current_symbol
             when :reinput then '重新输入当前合成分类的起始ID。'
             when :previous then format('返回上一批最多%d个合成产物。', ResearchMod::DATABASE_PAGE_SIZE)
             when :next then format('从本批末尾继续加载最多%d个合成产物。', ResearchMod::DATABASE_PAGE_SIZE)
             when :cancel then '返回合成类型选择。'
             else '当前分类没有可用的合成产物。'
             end
      @help_window.set_lines([text])
    end
  end

  def update_help
    update_synthesis_help
  end
end

class Window_ResearchModSynthesisRecipe < Window_Command
  def initialize(entry, help_window)
    @entry = entry
    @help_window = help_window
    super(0, 0)
    self.x = 0
    self.y = 0
    self.z = 450
    make_recipe_commands
  end

  def window_width
    ResearchMod.class_learning_half_width
  end

  def visible_line_number
    10
  end

  def make_recipe_commands
    refresh
    select(0)
  end

  def make_command_list
    @entry[:recipes].each_with_index do |recipe_entry, index|
      recipe = recipe_entry[:data]
      price = (recipe[:price] || recipe['price']).to_i
      enabled = ResearchMod.research_mod_synthesis_recipe_available?(recipe)
      add_command(format('配方 %d　金币%d%s', recipe_entry[:id], price,
                         enabled ? '' : '（材料不足）'),
                  :select, true, recipe_entry)
    end
    add_command('返回', :cancel)
  end

  def select(index)
    super
    update_synthesis_help
  end

  def update_synthesis_help
    return unless @help_window && !@help_window.disposed?

    recipe_entry = current_ext
    return @help_window.set_lines(['请选择配方。']) unless recipe_entry

    item = @entry[:item]
    recipe = recipe_entry[:data]
    lines = [format('ID：%d', item.id), format('名称：%s', item.name.to_s),
             format('类型：%s', ResearchMod.research_mod_synthesis_kind_name(@entry[:kind])),
             format('配方 ID：%d', recipe_entry[:id]),
             format('金币：%d', (recipe[:price] || recipe['price']).to_i), '材料：']
    lines.concat(ResearchMod.research_mod_synthesis_material_lines(recipe))
    lines << format('状态：%s', ResearchMod.research_mod_synthesis_recipe_available?(recipe) ? '可以合成' : '材料或金币不足')
    @help_window.set_lines(lines)
  end

  def update_help
    update_synthesis_help
  end
end

class Window_ResearchModSynthesisAction < Window_Command
  def initialize(entry, recipe_entry, help_window)
    @entry = entry
    @recipe_entry = recipe_entry
    @help_window = help_window
    super(0, 0)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def window_width
    360
  end

  def visible_line_number
    3
  end

  def make_command_list
    recipe = @recipe_entry[:data]
    add_command('合成', :synthesize,
                ResearchMod.research_mod_synthesis_recipe_available?(recipe))
    add_command('合成（无需材料）', :synthesize_free, true)
    add_command('返回', :cancel)
  end

  def update_help
    return unless @help_window

    case current_symbol
    when :synthesize
      item = @entry[:item]
      recipe = @recipe_entry[:data]
      lines = [format('ID：%d', item.id),
               format('名称：%s', item.name.to_s),
               format('类型：%s', ResearchMod.research_mod_synthesis_kind_name(@entry[:kind])),
               '说明：']
      description = item.respond_to?(:description) ? item.description.to_s.gsub(92.chr + 'n', 10.chr) : ''
      lines.concat(description.split(/\r?\n/, -1)) unless description.empty?
      lines << format('配方 ID：%d', @recipe_entry[:id])
      lines << format('金币：%d', (recipe[:price] || recipe['price']).to_i)
      lines << '材料：'
      lines.concat(ResearchMod.research_mod_synthesis_material_lines(recipe))
      lines << format('状态：%s', ResearchMod.research_mod_synthesis_recipe_available?(recipe) ? '可以合成' : '材料或金币不足')
      @help_window.set_lines(lines)
    when :synthesize_free
      @help_window.set_lines(['跳过金币和材料检查，直接获得一件合成产物。'])
    else
      @help_window.set_lines(['返回上一层。'])
    end
  end
end

class Scene_ResearchMod < Scene_MenuBase
  def start
    super
    # Keep a message window available so research-mod dialogue can play in menus.
    @research_mod_message_window = Window_Message.new
    if $game_temp.respond_to?(:lib_enemy_index=)
      $game_temp.lib_enemy_index = -1
    end
    @actor = $game_party.menu_actor || $game_party.members[0]
    @command_window = Window_ResearchModCommand.new(@actor)
    @command_help_window = Window_Help.new(4)
    @command_help_window.y = Graphics.height - @command_help_window.height
    @command_window.help_window = @command_help_window
    @command_window.update_help
    @command_window.set_handler(:actor, method(:select_actor))
    @command_window.set_handler(:level, method(:select_level))
    @command_window.set_handler(:love, method(:select_love))
    @command_window.set_handler(:actor_params, method(:open_actor_param_editor))
    @command_window.set_handler(:learning, method(:select_learning_skill))
    @command_window.set_handler(:all_skill_learning,
                                method(:open_all_skill_learning))
    @command_window.set_handler(:ability_learning,
                                method(:open_ability_learning))
    @command_window.set_handler(:class, method(:select_class))
    @command_window.set_handler(:tribe, method(:select_tribe))
    @command_window.set_handler(:unlock_all, method(:unlock_all))
    @command_window.set_handler(:actor_name, method(:edit_current_actor_name))
    @command_window.set_handler(:set_all_love, method(:set_all_love))
    @command_window.set_handler(:recruit_all, method(:recruit_all))
    @command_window.set_handler(:actor_encyclopedia, method(:open_actor_encyclopedia))
    @command_window.set_handler(:party_member_max, method(:open_party_member_max_editor))
    @command_window.set_handler(:map_follower_count, method(:open_map_follower_count_editor))
    @command_window.set_handler(:accumulated_damage, method(:open_accumulated_damage_scope))
    @command_window.set_handler(:party_edit_actor_id, method(:toggle_party_edit_actor_id))
    @command_window.set_handler(:value_editor, method(:open_value_editor))
    @command_window.set_handler(:consumption, method(:open_consumption_menu))
    @command_window.set_handler(:free_cooking, method(:open_free_cooking))
    @command_window.set_handler(:audio_info, method(:open_audio_info))
    @command_window.set_handler(:synthesize, method(:open_synthesize))
    @command_window.set_handler(:author_info, method(:open_author_info))
    @command_window.set_handler(:custom_battle, method(:open_custom_battle))
    @command_window.set_handler(:guiding_thread, method(:use_guiding_thread_without_cost))
    @command_window.set_handler(:harpy_feather_original, method(:use_harpy_feather_original_without_cost))
    @command_window.set_handler(:harpy_feather_modified, method(:use_harpy_feather_modified_without_cost))
    @command_window.set_handler(:teleport, method(:open_teleport_browser))
    @command_window.set_handler(:custom_teleport_points, method(:open_custom_teleport_points))
    @command_window.set_handler(:lose_event, method(:open_lose_event_browser))
    @command_window.set_handler(:reflection_meeting, method(:open_reflection_meeting_browser))
    @command_window.set_handler(:map_inspector, method(:open_map_inspector))
    @command_window.set_handler(:current_map_containers, method(:open_current_map_containers))
    @command_window.set_handler(:chest_hint, method(:toggle_chest_hint))
    @command_window.set_handler(:graphics_override, method(:toggle_graphics_override))
    @command_window.set_handler(:debug_database, method(:open_debug_database_editor))
    @command_window.set_handler(:database_item, method(:open_database_item_menu))
    @command_window.set_handler(:gain_all_panties, method(:gain_all_panties))
    @command_window.set_handler(:gain_all_milk, method(:gain_all_milk))
    @command_window.set_handler(:gain_all_marriage_armors, method(:gain_all_marriage_armors))
    @command_window.set_handler(:gain_all_cds, method(:gain_all_cds))
    @command_window.set_handler(:persona_dialogue, method(:toggle_persona_dialogue_compatibility))
    @command_window.set_handler(:love_dialogue, method(:toggle_love_dialogue_compatibility))
    @command_window.set_handler(:maoujou_gift_dialogue,
                                method(:toggle_maoujou_gift_dialogue_compatibility))
    @command_window.set_handler(:maoujou_pleading_dialogue,
                                method(:toggle_maoujou_pleading_dialogue_compatibility))
    @command_window.set_handler(:maoujou_remove_candidate,
                                method(:toggle_maoujou_remove_candidate_compatibility))
    @command_window.set_handler(:all_dialogue, method(:toggle_all_dialogue))
    @command_window.set_handler(:steal_success, method(:toggle_steal_always_success))
    @command_window.set_handler(:milk_success, method(:toggle_milk_always_success))
    @command_window.set_handler(:drop_success, method(:toggle_drop_always_success))
    @command_window.set_handler(:temptation_ignore_hp, method(:toggle_temptation_ignore_hp))
    @command_window.set_handler(:temptation_disabled, method(:toggle_temptation_disabled))
    @command_window.set_handler(:temptation_immunity, method(:toggle_temptation_immunity))
    @command_window.set_handler(:lose_event_skip, method(:toggle_lose_event_skip))
    @command_window.set_handler(:sure_hit_kill, method(:toggle_sure_hit_kill))
    @command_window.set_handler(:remove_damage_variance,
                                method(:toggle_remove_damage_variance))
    @command_window.set_handler(:through_mode, method(:toggle_through_mode))
    @command_window.set_handler(:no_random_encounter, method(:toggle_no_random_encounter))
    @command_window.set_handler(:original_encounter_disabled, method(:toggle_original_encounter_disabled))
    @command_window.set_handler(:original_formation_disabled, method(:toggle_original_formation_disabled))
    @command_window.set_handler(:prevent_luca_front, method(:toggle_prevent_event_luca_front))
    @command_window.set_handler(:follow_success, method(:toggle_follow_always_success))
    @command_window.set_handler(:battle_enemy_status, method(:toggle_battle_enemy_status))
    @command_window.set_handler(:battle_party_status, method(:toggle_battle_party_status))
    @command_window.set_handler(:battle_cutin_view, method(:toggle_battle_cutin_view))
    @command_window.set_handler(:battle_record, method(:toggle_battle_record))
    @command_window.set_handler(:manual_enemy_dialogue, method(:toggle_manual_enemy_dialogue))
    @command_window.set_handler(:battle_editor, method(:toggle_battle_editor))
     @command_window.set_handler(:force_victory, method(:toggle_force_victory))
     @command_window.set_handler(:dead_battle_exp, method(:toggle_dead_battle_exp))
    @command_window.set_handler(:audio_overlay, method(:toggle_audio_overlay))
    @command_window.set_handler(:experimental, method(:open_experimental_menu))
    @command_window.set_handler(:stuck_help, method(:open_stuck_help))
    @command_window.set_handler(:persona, method(:select_persona))
    @command_window.set_handler(:backup, method(:backup_actor))
    @command_window.set_handler(:restore, method(:restore_actor))
    @command_window.set_handler(:cancel, method(:return_scene))
    restore_custom_battle_after_battle if @return_to_custom_battle
    restore_lose_event_preview_after_playback if @return_to_lose_event_preview
  end

  def update
    dispose_research_mod_deferred_windows
    super
    finish_actor_encyclopedia_candidate_dialogue if @actor_encyclopedia_candidate_dialogue_pending &&
                                                    $game_message &&
                                                    !$game_message.busy?
    finish_custom_battle_candidate_dialogue if @custom_battle_candidate_dialogue_pending &&
                                               $game_message &&
                                               !$game_message.busy?
    update_actor_cutin_preview if @actor_cutin_preview
    update_actor_stand_picture_preview if @actor_stand_picture_preview
  end

  def terminate
    dispose_actor_cutin_preview
    dispose_actor_stand_picture_preview
    defer_research_mod_window_dispose(@custom_battle_candidate_window)
    defer_research_mod_window_dispose(@enemy_preview_detail_window)
    defer_research_mod_window_dispose(@enemy_preview_category_window)
    defer_research_mod_window_dispose(@synthesis_action_window)
    defer_research_mod_window_dispose(@synthesis_recipe_window)
    defer_research_mod_window_dispose(@synthesis_list_window)
    defer_research_mod_window_dispose(@synthesis_help_window)
    defer_research_mod_window_dispose(@synthesis_category_window)
    defer_research_mod_window_dispose(@synthesis_id_window)
    defer_research_mod_window_dispose(@synthesis_id_help_window)
    @custom_battle_candidate_window = nil
    @enemy_preview_detail_window = nil
    @enemy_preview_category_window = nil
    @custom_battle_candidate_dialogue_pending = false
    dispose_research_mod_deferred_windows
    if @research_mod_message_window && !@research_mod_message_window.disposed?
      @research_mod_message_window.dispose
    end
    @research_mod_message_window = nil
    @command_help_window.dispose if @command_help_window && !@command_help_window.disposed?
    @command_help_window = nil
    super
  end

  def defer_research_mod_window_dispose(window)
    return unless window && !window.disposed?

    window.hide
    window.deactivate if window.respond_to?(:deactivate)
    @research_mod_deferred_windows ||= []
    @research_mod_deferred_windows << window unless @research_mod_deferred_windows.include?(window)
  end

  def dispose_research_mod_deferred_windows
    windows = @research_mod_deferred_windows
    return unless windows && !windows.empty?

    @research_mod_deferred_windows = []
    windows.each do |window|
      window.dispose unless window.disposed?
    end
  end

  def restore_lose_event_preview_after_playback
    state = @return_to_lose_event_preview
    @return_to_lose_event_preview = nil
    ResearchMod.finish_lose_event_preview
    ResearchMod.enable_party_followers
    @lose_event_mode = state[:mode]
    @lose_event_start_id = state[:start_id] || 1
    @lose_event_history = state[:history] || []
    @lose_event_help_window = Window_Help.new(3)
    @lose_event_help_window.y = Graphics.height - @lose_event_help_window.height
    @lose_event_id_window = nil
    @lose_event_confirm_window = nil
    @lose_event_enemy = nil
    @lose_event_return_to_list = false
    @command_window.deactivate
    open_lose_event_list(@lose_event_start_id)
    maximum_index = [@lose_event_list_window.item_max - 1, 0].max
    restored_index = [[state[:index].to_i, maximum_index].min, 0].max
    @lose_event_list_window.select(restored_index)
    @lose_event_list_window.activate
    @lose_event_list_window.update_help
  end

  def select_actor
    @actor_window = Window_ResearchModActorList.new(@actor)
    @actor_window.set_handler(:select, method(:apply_actor))
    @actor_window.set_handler(:cancel, method(:close_actor_list))
    @command_window.deactivate
  end

  def apply_actor
    @actor = @actor_window.current_ext
    @command_window.actor = @actor
    close_actor_list
  end

  def close_actor_list
    defer_research_mod_window_dispose(@actor_window)
    @actor_window = nil
    @command_window.activate
  end

  def select_level
    unless @level_window
      @level_window = Window_ResearchModLevelInput.new(@actor)
      @level_window.set_handler(:ok, method(:apply_level))
      @level_window.set_handler(:cancel, method(:close_level_input))
    else
      @level_window.setup(@actor)
    end
    @command_window.deactivate
  end

  def apply_level
    ResearchMod.apply_base_level(@actor, @level_window.number)
    @command_window.actor = @actor
    close_level_input
  end

  def close_level_input
    @level_window.close
    @level_window.deactivate
    @command_window.activate
  end

  def select_love
    unless @love_window
      @love_window = Window_ResearchModLoveInput.new(@actor)
      @love_window.set_handler(:ok, method(:apply_love))
      @love_window.set_handler(:cancel, method(:close_love_input))
    else
      @love_window.setup(@actor)
    end
    @command_window.deactivate
  end

  def apply_love
    ResearchMod.apply_love(@actor, @love_window.number)
    @command_window.actor = @actor
    close_love_input
  end

  def close_love_input
    @love_window.close
    @love_window.deactivate
    @command_window.activate
  end

  def open_actor_param_editor
    @actor_param_help_window = Window_Help.new(5)
    @actor_param_help_window.y = Graphics.height - @actor_param_help_window.height
    @actor_param_list_window = Window_ResearchModActorParamList.new(
      @actor, @actor_param_help_window
    )
    @actor_param_list_window.set_handler(:select, method(:select_actor_param))
    @actor_param_list_window.set_handler(:cancel, method(:close_actor_param_editor))
    @command_window.deactivate
  end

  def select_actor_param
    @selected_actor_param_id = @actor_param_list_window.current_ext
    unless @actor_param_input_window
      @actor_param_input_window = Window_ResearchModActorParamInput.new
      @actor_param_input_window.set_handler(:ok, method(:apply_actor_param))
      @actor_param_input_window.set_handler(:cancel, method(:close_actor_param_input))
    end
    @actor_param_input_window.setup(@actor, @selected_actor_param_id)
    name = ResearchMod.actor_param_name(@selected_actor_param_id)
    current = ResearchMod.actor_param_plus(@actor, @selected_actor_param_id)
    text = format('%s　角色：%s\n当前永久属性加成：%d\n请输入新的永久加成值（0～%d），可以调高、调低或设为0。\n降低最大HP/MP会压低当前值；提高后不会自动回满。',
                  name, @actor.name, current, @actor_param_input_window.maximum)
    @actor_param_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
    @actor_param_list_window.deactivate
  end

  def apply_actor_param
    ResearchMod.set_actor_param_plus(
      @actor, @selected_actor_param_id, @actor_param_input_window.number
    )
    @command_window.actor = @actor
    close_actor_param_input
    index = @actor_param_list_window.index
    @actor_param_list_window.refresh
    @actor_param_list_window.select(index)
    @actor_param_list_window.update_help
  end

  def close_actor_param_input
    @actor_param_input_window.close
    @actor_param_input_window.deactivate
    @actor_param_list_window.activate
    @actor_param_list_window.update_help
  end

  def close_actor_param_editor
    defer_research_mod_window_dispose(@actor_param_input_window)
    defer_research_mod_window_dispose(@actor_param_list_window)
    defer_research_mod_window_dispose(@actor_param_help_window)
    @actor_param_input_window = nil
    @actor_param_list_window = nil
    @actor_param_help_window = nil
    @selected_actor_param_id = nil
    @command_window.actor = @actor
    @command_window.activate
  end

  def select_learning_skill
    @learning_window = Window_ResearchModLearningList.new(@actor)
    @learning_window.set_handler(:select, method(:apply_learning_skill))
    @learning_window.set_handler(:learn_all, method(:learn_all_learning_skills))
    @learning_window.set_handler(:cancel, method(:close_learning_skill_list))
    @command_window.deactivate
  end

  def apply_learning_skill
    ResearchMod.learn_learning_skill(@actor, @learning_window.current_ext)
    @learning_window.refresh
    @learning_window.activate
  end

  def learn_all_learning_skills
    ResearchMod.learn_all_learning_skills(@actor)
    @learning_window.refresh
    @learning_window.activate
  end

  def close_learning_skill_list
    defer_research_mod_window_dispose(@learning_window)
    @learning_window = nil
    @command_window.activate
  end

  def open_all_skill_learning
    @all_skill_start_id ||= 1
    @all_skill_history = []
    @all_skill_category_window = Window_ResearchModAllSkillCategory.new
    @all_skill_type_window = Window_ResearchModAllSkillType.new
    @all_skill_category_window.set_handler(:select,
                                           method(:select_all_skill_category))
    @all_skill_category_window.set_handler(:cancel,
                                           method(:close_all_skill_learning))
    @all_skill_type_window.set_handler(:select,
                                      method(:select_all_skill_type))
    @all_skill_type_window.set_handler(:cancel,
                                      method(:close_all_skill_type))
    @all_skill_category_window.show
    @all_skill_category_window.activate
    @command_help_window.hide
    @command_window.deactivate
  end

  def select_all_skill_category
    @selected_all_skill_category = @all_skill_category_window.current_ext
    if @selected_all_skill_category && @selected_all_skill_category[:all]
      @selected_all_skill_type_id = nil
      @all_skill_category_window.hide
      @all_skill_category_window.deactivate
      open_all_skill_list(nil, @all_skill_start_id)
      return
    end

    @all_skill_type_window.setup(@selected_all_skill_category)
    @all_skill_category_window.hide
    @all_skill_category_window.deactivate
    @all_skill_type_window.show
    @all_skill_type_window.activate
  end

  def select_all_skill_type
    entry = @all_skill_type_window.current_ext
    unless entry
      @all_skill_type_window.activate
      return
    end

    @selected_all_skill_type_id = entry[:type_id]
    open_all_skill_list(@selected_all_skill_type_id)
  end

  def open_all_skill_list(type_id, start_id = 1)
    @all_skill_help_window = Window_ResearchModAllSkillHelp.new(
      ResearchMod.class_learning_half_width, 0,
      Graphics.width - ResearchMod.class_learning_half_width, Graphics.height
    )
    @all_skill_help_window.z = 440
    @all_skill_list_window = Window_ResearchModAllSkillList.new(
      @actor, @all_skill_help_window
    )
    @all_skill_list_window.set_handler(:select,
                                       method(:select_all_skill))
    @all_skill_list_window.set_handler(:learn_all,
                                       method(:learn_all_skills_in_type))
    @all_skill_list_window.set_handler(:forget_all,
                                       method(:forget_all_skills_in_type))
    @all_skill_list_window.set_handler(:reinput,
                                       method(:reinput_all_skill_start_id))
    @all_skill_list_window.set_handler(:previous,
                                       method(:load_previous_all_skill_page))
    @all_skill_list_window.set_handler(:next,
                                       method(:load_next_all_skill_page))
    @all_skill_list_window.set_handler(:cancel,
                                       method(:close_all_skill_list))
    @all_skill_list_window.setup(type_id, start_id, @all_skill_history)
    @all_skill_type_window.hide
    @all_skill_type_window.deactivate
    @all_skill_help_window.show
    @all_skill_list_window.show
    @all_skill_list_window.activate
  end

  def select_all_skill
    skill = @all_skill_list_window.current_ext
    unless skill
      @all_skill_list_window.activate
      return
    end

    @selected_all_skill_id = skill.id
    @all_skill_action_window = Window_ResearchModAllSkillAction.new(
      @actor, skill, @selected_all_skill_type_id, @all_skill_help_window
    )
    @all_skill_action_window.set_handler(:learn,
                                         method(:learn_selected_all_skill))
    @all_skill_action_window.set_handler(:forget,
                                         method(:forget_selected_all_skill))
    @all_skill_action_window.set_handler(:cancel,
                                         method(:close_all_skill_action))
    @all_skill_list_window.deactivate
  end

  def learn_selected_all_skill
    ResearchMod.learn_all_skill(@actor, @selected_all_skill_id)
    refresh_all_skill_windows
  end

  def learn_all_skills_in_type
    scoped_entries = if @selected_all_skill_type_id.nil? &&
                        @all_skill_list_window && @all_skill_list_window.page
                       @all_skill_list_window.page[:entries]
                     end
    ResearchMod.learn_all_skills_in_type(
      @actor, @selected_all_skill_type_id, scoped_entries
    )
    refresh_all_skill_windows
  end

  def forget_selected_all_skill
    ResearchMod.forget_all_skill(@actor, @selected_all_skill_id)
    refresh_all_skill_windows
  end

  def forget_all_skills_in_type
    scoped_entries = if @selected_all_skill_type_id.nil? &&
                        @all_skill_list_window && @all_skill_list_window.page
                       @all_skill_list_window.page[:entries]
                     end
    ResearchMod.forget_all_skills_in_type(
      @actor, @selected_all_skill_type_id, scoped_entries
    )
    refresh_all_skill_windows
  end

  def refresh_all_skill_windows
    defer_research_mod_window_dispose(@all_skill_action_window)
    @all_skill_action_window = nil
    @all_skill_list_window.refresh if @all_skill_list_window
    @all_skill_list_window.activate if @all_skill_list_window
    @all_skill_list_window.update_all_skill_help if @all_skill_list_window
  end

  def close_all_skill_action
    defer_research_mod_window_dispose(@all_skill_action_window)
    @all_skill_action_window = nil
    @all_skill_list_window.activate if @all_skill_list_window
  end

  def close_all_skill_list
    defer_research_mod_window_dispose(@all_skill_list_window)
    defer_research_mod_window_dispose(@all_skill_help_window)
    @all_skill_list_window = nil
    @all_skill_help_window = nil
    if @selected_all_skill_type_id.nil?
      @all_skill_category_window.show
      @all_skill_category_window.activate
    else
      @all_skill_type_window.show
      @all_skill_type_window.activate
    end
  end

  def reinput_all_skill_start_id
    @all_skill_list_window.hide
    @all_skill_list_window.deactivate
    @all_skill_help_window.hide
    @all_skill_id_window ||= Window_ResearchModLearningIdInput.new
    @all_skill_id_window.set_handler(:ok, method(:apply_all_skill_start_id))
    @all_skill_id_window.set_handler(:cancel, method(:close_all_skill_id_input))
    @all_skill_id_help_window ||= Window_Help.new(3)
    @all_skill_id_window.setup(@all_skill_start_id)
    @all_skill_id_help_window.set_text(
      format('请输入全部技能起始ID（1～%d）。\n确认：加载最多%d个普通技能；取消：返回列表。',
             $data_skills.size - 1, ResearchMod::LEARNING_DATABASE_PAGE_SIZE)
        .gsub(92.chr + 'n', 10.chr)
    )
    @all_skill_id_help_window.y = @all_skill_id_window.y + @all_skill_id_window.height
    @all_skill_id_help_window.open
  end

  def close_all_skill_id_input
    @all_skill_id_window.close
    @all_skill_id_window.deactivate
    @all_skill_id_help_window.close
    @all_skill_help_window.show
    @all_skill_list_window.show
    @all_skill_list_window.activate
    @all_skill_list_window.update_all_skill_help
  end

  def apply_all_skill_start_id
    @all_skill_start_id = @all_skill_id_window.number
    @all_skill_history = []
    @all_skill_id_window.close
    @all_skill_id_window.deactivate
    @all_skill_id_help_window.close
    reload_all_skill_page(@all_skill_start_id)
  end

  def load_next_all_skill_page
    next_start_id = @all_skill_list_window.page[:next_start_id]
    return @all_skill_list_window.activate unless next_start_id

    @all_skill_history << @all_skill_list_window.page[:start_id]
    @all_skill_start_id = next_start_id
    reload_all_skill_page(next_start_id)
  end

  def load_previous_all_skill_page
    previous_start_id = @all_skill_history.pop
    previous_start_id ||= @all_skill_list_window.page[:previous_start_id]
    return @all_skill_list_window.activate unless previous_start_id

    @all_skill_start_id = previous_start_id
    reload_all_skill_page(previous_start_id)
  end

  def reload_all_skill_page(start_id)
    defer_research_mod_window_dispose(@all_skill_list_window)
    defer_research_mod_window_dispose(@all_skill_help_window)
    @all_skill_list_window = nil
    @all_skill_help_window = nil
    open_all_skill_list(nil, start_id)
  end

  def close_all_skill_type
    @all_skill_type_window.hide
    @all_skill_type_window.deactivate
    @all_skill_category_window.show
    @all_skill_category_window.activate
  end

  def close_all_skill_learning
    defer_research_mod_window_dispose(@all_skill_action_window)
    defer_research_mod_window_dispose(@all_skill_list_window)
    defer_research_mod_window_dispose(@all_skill_help_window)
    defer_research_mod_window_dispose(@all_skill_type_window)
    defer_research_mod_window_dispose(@all_skill_category_window)
    defer_research_mod_window_dispose(@all_skill_id_window)
    defer_research_mod_window_dispose(@all_skill_id_help_window)
    @all_skill_action_window = nil
    @all_skill_list_window = nil
    @all_skill_help_window = nil
    @all_skill_type_window = nil
    @all_skill_category_window = nil
    @all_skill_id_window = nil
    @all_skill_id_help_window = nil
    @command_help_window.show
    @command_window.actor = @actor
    @command_window.activate
    @command_window.update_help
  end

  def open_ability_learning
    @ability_start_id ||= 1
    @ability_history = []
    @ability_category_window = Window_ResearchModAbilityCategory.new
    @ability_category_window.set_handler(:select,
                                         method(:select_ability_category))
    @ability_category_window.set_handler(:cancel,
                                         method(:close_ability_learning))
    @ability_category_window.show
    @ability_category_window.activate
    @command_help_window.hide
    @command_window.deactivate
  end

  def select_ability_category
    entry = @ability_category_window.current_ext
    unless entry
      @ability_category_window.activate
      return
    end

    @selected_ability_stype_id = entry[:stype_id]
    if entry[:all]
      @selected_ability_stype_id = nil
    end
    @ability_help_window = Window_ResearchModAbilityHelp.new(
      ResearchMod.class_learning_half_width, 0,
      Graphics.width - ResearchMod.class_learning_half_width, Graphics.height
    )
    @ability_help_window.z = 440
    @ability_list_window = Window_ResearchModAbilityList.new(
      @actor, @ability_help_window
    )
    @ability_list_window.set_handler(:select,
                                     method(:select_ability))
    @ability_list_window.set_handler(:learn_all,
                                     method(:learn_all_abilities_in_type))
    @ability_list_window.set_handler(:forget_all,
                                     method(:forget_all_abilities_in_type))
    @ability_list_window.set_handler(:reinput,
                                     method(:reinput_ability_start_id))
    @ability_list_window.set_handler(:previous,
                                     method(:load_previous_ability_page))
    @ability_list_window.set_handler(:next,
                                     method(:load_next_ability_page))
    @ability_list_window.set_handler(:cancel,
                                     method(:close_ability_list))
    @ability_list_window.setup(@selected_ability_stype_id, @ability_start_id,
                               @ability_history)
    @ability_category_window.hide
    @ability_category_window.deactivate
    @ability_help_window.show
    @ability_list_window.show
    @ability_list_window.activate
  end

  def select_ability
    ability = @ability_list_window.current_ext
    unless ability
      @ability_list_window.activate
      return
    end

    @selected_ability_id = ability.id
    @ability_action_window = Window_ResearchModAbilityAction.new(
      @actor, ability, @selected_ability_stype_id, @ability_help_window
    )
    @ability_action_window.set_handler(:learn,
                                       method(:learn_selected_ability))
    @ability_action_window.set_handler(:forget,
                                       method(:forget_selected_ability))
    @ability_action_window.set_handler(:cancel,
                                       method(:close_ability_action))
    @ability_list_window.deactivate
  end

  def learn_selected_ability
    ResearchMod.learn_ability(@actor, @selected_ability_id)
    refresh_ability_windows
  end

  def forget_selected_ability
    ResearchMod.forget_ability(@actor, @selected_ability_id)
    refresh_ability_windows
  end

  def learn_all_abilities_in_type
    scoped_entries = if @selected_ability_stype_id.nil? &&
                        @ability_list_window && @ability_list_window.page
                       @ability_list_window.page[:entries]
                     end
    ResearchMod.learn_all_abilities_in_type(
      @actor, @selected_ability_stype_id, scoped_entries
    )
    refresh_ability_windows
  end

  def forget_all_abilities_in_type
    scoped_entries = if @selected_ability_stype_id.nil? &&
                        @ability_list_window && @ability_list_window.page
                       @ability_list_window.page[:entries]
                     end
    ResearchMod.forget_all_abilities_in_type(
      @actor, @selected_ability_stype_id, scoped_entries
    )
    refresh_ability_windows
  end

  def refresh_ability_windows
    defer_research_mod_window_dispose(@ability_action_window)
    @ability_action_window = nil
    return unless @ability_list_window

    selected_index = @ability_list_window.index
    @ability_list_window.refresh
    maximum_index = [@ability_list_window.item_max - 1, 0].max
    @ability_list_window.select([[selected_index, 0].max, maximum_index].min)
    @ability_list_window.activate
    @ability_list_window.update_ability_help
    if @ability_help_window && !@ability_help_window.disposed?
      @ability_help_window.refresh_ability(
        @ability_list_window.current_ext, @selected_ability_stype_id
      )
    end
  end

  def close_ability_action
    defer_research_mod_window_dispose(@ability_action_window)
    @ability_action_window = nil
    @ability_list_window.activate if @ability_list_window
  end

  def close_ability_list
    defer_research_mod_window_dispose(@ability_action_window)
    defer_research_mod_window_dispose(@ability_list_window)
    defer_research_mod_window_dispose(@ability_help_window)
    @ability_action_window = nil
    @ability_list_window = nil
    @ability_help_window = nil
    @ability_category_window.show
    @ability_category_window.activate
  end

  def reinput_ability_start_id
    @ability_list_window.hide
    @ability_list_window.deactivate
    @ability_help_window.hide
    @ability_id_window ||= Window_ResearchModLearningIdInput.new
    @ability_id_window.set_handler(:ok, method(:apply_ability_start_id))
    @ability_id_window.set_handler(:cancel, method(:close_ability_id_input))
    @ability_id_help_window ||= Window_Help.new(3)
    @ability_id_window.setup(@ability_start_id)
    @ability_id_help_window.set_text(
      format('请输入全部能力起始ID（1～%d）。\n确认：加载最多%d个能力；取消：返回列表。',
             $data_skills.size - 1, ResearchMod::LEARNING_DATABASE_PAGE_SIZE)
        .gsub(92.chr + 'n', 10.chr)
    )
    @ability_id_help_window.y = @ability_id_window.y + @ability_id_window.height
    @ability_id_help_window.open
  end

  def close_ability_id_input
    @ability_id_window.close
    @ability_id_window.deactivate
    @ability_id_help_window.close
    @ability_help_window.show
    @ability_list_window.show
    @ability_list_window.activate
    @ability_list_window.update_ability_help
  end

  def apply_ability_start_id
    @ability_start_id = @ability_id_window.number
    @ability_history = []
    @ability_id_window.close
    @ability_id_window.deactivate
    @ability_id_help_window.close
    reload_ability_page(@ability_start_id)
  end

  def load_next_ability_page
    next_start_id = @ability_list_window.page[:next_start_id]
    return @ability_list_window.activate unless next_start_id

    @ability_history << @ability_list_window.page[:start_id]
    @ability_start_id = next_start_id
    reload_ability_page(next_start_id)
  end

  def load_previous_ability_page
    previous_start_id = @ability_history.pop
    previous_start_id ||= @ability_list_window.page[:previous_start_id]
    return @ability_list_window.activate unless previous_start_id

    @ability_start_id = previous_start_id
    reload_ability_page(previous_start_id)
  end

  def reload_ability_page(start_id)
    defer_research_mod_window_dispose(@ability_list_window)
    defer_research_mod_window_dispose(@ability_help_window)
    @ability_list_window = nil
    @ability_help_window = nil
    select_ability_category_from_all(start_id)
  end

  def select_ability_category_from_all(start_id)
    @selected_ability_stype_id = nil
    @ability_help_window = Window_ResearchModAbilityHelp.new(
      ResearchMod.class_learning_half_width, 0,
      Graphics.width - ResearchMod.class_learning_half_width, Graphics.height
    )
    @ability_help_window.z = 440
    @ability_list_window = Window_ResearchModAbilityList.new(
      @actor, @ability_help_window
    )
    @ability_list_window.set_handler(:select, method(:select_ability))
    @ability_list_window.set_handler(:learn_all,
                                     method(:learn_all_abilities_in_type))
    @ability_list_window.set_handler(:forget_all,
                                     method(:forget_all_abilities_in_type))
    @ability_list_window.set_handler(:reinput,
                                     method(:reinput_ability_start_id))
    @ability_list_window.set_handler(:previous,
                                     method(:load_previous_ability_page))
    @ability_list_window.set_handler(:next,
                                     method(:load_next_ability_page))
    @ability_list_window.set_handler(:cancel, method(:close_ability_list))
    @ability_list_window.setup(nil, start_id, @ability_history)
    @ability_help_window.show
    @ability_list_window.show
    @ability_list_window.activate
  end

  def close_ability_learning
    defer_research_mod_window_dispose(@ability_action_window)
    defer_research_mod_window_dispose(@ability_list_window)
    defer_research_mod_window_dispose(@ability_help_window)
    defer_research_mod_window_dispose(@ability_category_window)
    defer_research_mod_window_dispose(@ability_id_window)
    defer_research_mod_window_dispose(@ability_id_help_window)
    @ability_action_window = nil
    @ability_list_window = nil
    @ability_help_window = nil
    @ability_category_window = nil
    @ability_id_window = nil
    @ability_id_help_window = nil
    @command_help_window.show
    @command_window.actor = @actor
    @command_window.activate
    @command_window.update_help
  end

  def select_class
    open_class_list(:class)
  end

  def select_tribe
    open_class_list(:tribe)
  end

  def unlock_all
    ResearchMod.unlock_all(@actor)
    @command_window.actor = @actor
    @command_window.activate
  end

  def edit_current_actor_name
    actor = @actor
    unless actor
      @command_help_window.set_text('当前没有可修改名字的角色。')
      @command_window.activate
      return
    end

    ResearchMod.open_text_input(
      :research_mod_actor_name,
      '修改当前角色名字',
      actor.name,
      16,
      "输入新的角色名字。\n确定后立即保存并刷新显示。\n名字不能为空。"
    ) do |value|
      name = value.to_s
      if name.empty?
        Sound.play_buzzer
        false
      else
        actor.name = name
        true
      end
    end
  end

  def set_all_love
    unless @all_love_window
      @all_love_window = Window_ResearchModAllLoveInput.new
      @all_love_window.set_handler(:ok, method(:apply_all_love))
      @all_love_window.set_handler(:cancel, method(:close_all_love_input))
    else
      @all_love_window.setup
    end
    @command_help_window.set_text('请输入要设置给所有角色的好感度（0～9999999）。默认值为30000；确认后会影响全局角色数据。')
    @command_window.deactivate
  end

  def apply_all_love
    ResearchMod.set_all_actor_love(@all_love_window.number)
    close_all_love_input
  end

  def close_all_love_input
    @all_love_window.close
    @all_love_window.deactivate
    @command_window.activate
    @command_window.update_help
  end

  def recruit_all
    ResearchMod.recruit_all_available_actors
    @command_window.activate
  end

  def open_actor_encyclopedia
    @actor_encyclopedia_start_id ||= 1
    @actor_encyclopedia_history = []
    @actor_encyclopedia_input_return = false
    width = Graphics.width - ResearchMod::ACTOR_ENCYCLOPEDIA_LIST_WIDTH
    @actor_encyclopedia_detail_window = Window_ResearchModActorEncyclopediaDetail.new(
      ResearchMod::ACTOR_ENCYCLOPEDIA_LIST_WIDTH, 0, width, Graphics.height
    )
    @actor_encyclopedia_detail_window.set_handler(:cancel, method(:close_actor_encyclopedia_detail))
    @command_window.deactivate
    open_actor_encyclopedia_id_input
  end

  def open_actor_encyclopedia_id_input
    unless @actor_encyclopedia_input_window
      @actor_encyclopedia_input_window = Window_ResearchModActorEncyclopediaIdInput.new
      @actor_encyclopedia_input_window.set_handler(:ok, method(:apply_actor_encyclopedia_start_id))
      @actor_encyclopedia_input_window.set_handler(:cancel, method(:close_actor_encyclopedia_id_input))
    end
    @actor_encyclopedia_input_window.setup(@actor_encyclopedia_start_id)
    cancel_text = @actor_encyclopedia_input_return ? '返回角色列表。' : '返回研究修改器。'
    text = format('请输入角色图鉴起始ID（1～%d）\n确认：加载最多%d名有名称角色。\n取消：%s',
                  @actor_encyclopedia_input_window.maximum,
                  ResearchMod::ACTOR_ENCYCLOPEDIA_PAGE_SIZE, cancel_text)
    @actor_encyclopedia_detail_window.set_message(text.gsub(92.chr + 'n', 10.chr))
  end

  def close_actor_encyclopedia_id_input
    defer_research_mod_window_dispose(@actor_encyclopedia_input_window)
    @actor_encyclopedia_input_window = nil
    if @actor_encyclopedia_input_return && @actor_encyclopedia_list_window
      @actor_encyclopedia_list_window.show
      @actor_encyclopedia_list_window.activate
      @actor_encyclopedia_list_window.update_help
      @actor_encyclopedia_input_return = false
    else
      close_actor_encyclopedia
    end
  end

  def apply_actor_encyclopedia_start_id
    @actor_encyclopedia_start_id = @actor_encyclopedia_input_window.number
    @actor_encyclopedia_history = []
    @actor_encyclopedia_input_return = false
    defer_research_mod_window_dispose(@actor_encyclopedia_input_window)
    @actor_encyclopedia_input_window = nil
    dispose_actor_encyclopedia_list
    create_actor_encyclopedia_list(@actor_encyclopedia_start_id)
  end

  def create_actor_encyclopedia_list(start_id)
    @actor_encyclopedia_list_window = Window_ResearchModActorEncyclopediaList.new(
      start_id, @actor_encyclopedia_history, @actor_encyclopedia_detail_window
    )
    @actor_encyclopedia_list_window.set_handler(:select, method(:select_actor_encyclopedia_entry))
    @actor_encyclopedia_list_window.set_handler(:reinput, method(:reinput_actor_encyclopedia_start_id))
    @actor_encyclopedia_list_window.set_handler(:previous, method(:load_previous_actor_encyclopedia_page))
    @actor_encyclopedia_list_window.set_handler(:next, method(:load_next_actor_encyclopedia_page))
    @actor_encyclopedia_list_window.set_handler(:cancel, method(:close_actor_encyclopedia))
  end

  def dispose_actor_encyclopedia_list
    defer_research_mod_window_dispose(@actor_encyclopedia_list_window)
    @actor_encyclopedia_list_window = nil
  end

  def recreate_actor_encyclopedia_list
    dispose_actor_encyclopedia_list
    create_actor_encyclopedia_list(@actor_encyclopedia_start_id)
  end

  def reinput_actor_encyclopedia_start_id
    @actor_encyclopedia_list_window.hide
    @actor_encyclopedia_list_window.deactivate
    @actor_encyclopedia_input_return = true
    open_actor_encyclopedia_id_input
  end

  def load_previous_actor_encyclopedia_page
    previous_start_id = @actor_encyclopedia_history.pop
    previous_start_id ||= @actor_encyclopedia_list_window.page[:previous_start_id]
    return @actor_encyclopedia_list_window.activate unless previous_start_id

    @actor_encyclopedia_start_id = previous_start_id
    recreate_actor_encyclopedia_list
  end

  def load_next_actor_encyclopedia_page
    next_start_id = @actor_encyclopedia_list_window.page[:next_start_id]
    return @actor_encyclopedia_list_window.activate unless next_start_id

    @actor_encyclopedia_history.push(@actor_encyclopedia_list_window.page[:start_id])
    @actor_encyclopedia_start_id = next_start_id
    recreate_actor_encyclopedia_list
  end

  def select_actor_encyclopedia_entry
    actor = @actor_encyclopedia_list_window.current_ext
    @actor_encyclopedia_mode_window = Window_ResearchModActorEncyclopediaMode.new(
      actor, @actor_encyclopedia_detail_window
    )
    @actor_encyclopedia_mode_window.set_handler(:note, method(:read_actor_encyclopedia_detail))
    @actor_encyclopedia_mode_window.set_handler(:ability, method(:read_actor_encyclopedia_detail))
    @actor_encyclopedia_mode_window.set_handler(:picture_path, method(:read_actor_encyclopedia_detail))
    @actor_encyclopedia_mode_window.set_handler(:stand_picture, method(:open_actor_stand_picture_preview))
    @actor_encyclopedia_mode_window.set_handler(:cutin_preview, method(:open_actor_cutin_list))
    @actor_encyclopedia_mode_window.set_handler(:candidate_manage, method(:manage_actor_encyclopedia_candidate))
    @actor_encyclopedia_mode_window.set_handler(:cancel, method(:close_actor_encyclopedia_mode))
  end

  def read_actor_encyclopedia_detail
    actor = @actor_encyclopedia_list_window.current_ext
    mode = @actor_encyclopedia_mode_window.current_symbol
    @actor_encyclopedia_detail_window.set_actor(actor, mode)
    @actor_encyclopedia_detail_window.activate
    @actor_encyclopedia_detail_window.refresh
  end

  def close_actor_encyclopedia_detail
    @actor_encyclopedia_detail_window.deactivate
    @actor_encyclopedia_detail_window.refresh
    @actor_encyclopedia_mode_window.activate
  end

  def open_actor_stand_picture_preview
    actor = @actor_encyclopedia_list_window.current_ext
    file_name = ResearchMod.actor_image_name(actor)
    if file_name.empty?
      Sound.play_buzzer
      @actor_encyclopedia_mode_window.activate
      @actor_encyclopedia_detail_window.set_message('该角色未配置立绘。')
      return false
    end

    @actor_stand_picture_help_window = Window_Help.new(3)
    @actor_stand_picture_help_window.y = Graphics.height - @actor_stand_picture_help_window.height
    @actor_stand_picture_help_window.z = 550
    @actor_stand_picture_preview = ResearchModActorCutinPreview.new(
      file_name, Graphics.height - @actor_stand_picture_help_window.height
    )
    @actor_encyclopedia_mode_window.deactivate
    @actor_stand_picture_help_window.set_text(
      format('立绘：%s\n方向键无特殊操作；按取消返回角色查看类型菜单。', file_name).gsub(92.chr + 'n', 10.chr)
    )
    true
  rescue
    Sound.play_buzzer
    dispose_actor_stand_picture_preview
    defer_research_mod_window_dispose(@actor_stand_picture_help_window)
    @actor_stand_picture_help_window = nil
    @actor_encyclopedia_detail_window.set_message(
      format('立绘无法读取：Graphics/Pictures/%s\n可能是文件缺失或资源配置无效。', file_name).gsub(92.chr + 'n', 10.chr)
    )
    @actor_encyclopedia_mode_window.activate
    false
  end

  def update_actor_stand_picture_preview
    close_actor_stand_picture_preview if Input.trigger?(:B)
  end

  def close_actor_stand_picture_preview
    dispose_actor_stand_picture_preview
    defer_research_mod_window_dispose(@actor_stand_picture_help_window)
    @actor_stand_picture_help_window = nil
    @actor_encyclopedia_mode_window.activate if @actor_encyclopedia_mode_window
    @actor_encyclopedia_mode_window.update_help if @actor_encyclopedia_mode_window
  end

  def dispose_actor_stand_picture_preview
    if @actor_stand_picture_preview
      @actor_stand_picture_preview.dispose
      @actor_stand_picture_preview = nil
    end
  end

  def open_actor_cutin_list
    actor = @actor_encyclopedia_list_window.current_ext
    @actor_cutin_page = 0
    @actor_cutin_help_window = Window_Help.new(3)
    @actor_cutin_help_window.y = Graphics.height - @actor_cutin_help_window.height
    @actor_cutin_help_window.z = 550
    create_actor_cutin_list(actor)
    @actor_encyclopedia_mode_window.deactivate
  end

  def create_actor_cutin_list(actor)
    @actor_cutin_list_window = Window_ResearchModActorCutinList.new(
      actor, @actor_cutin_help_window, @actor_cutin_page
    )
    @actor_cutin_list_window.set_handler(:select, method(:open_actor_cutin_preview))
    @actor_cutin_list_window.set_handler(:previous, method(:load_previous_actor_cutin_page))
    @actor_cutin_list_window.set_handler(:next, method(:load_next_actor_cutin_page))
    @actor_cutin_list_window.set_handler(:cancel, method(:close_actor_cutin_list))
  end

  def recreate_actor_cutin_list
    actor = @actor_encyclopedia_list_window.current_ext
    defer_research_mod_window_dispose(@actor_cutin_list_window)
    create_actor_cutin_list(actor)
  end

  def load_previous_actor_cutin_page
    @actor_cutin_page -= 1
    recreate_actor_cutin_list
  end

  def load_next_actor_cutin_page
    @actor_cutin_page += 1
    recreate_actor_cutin_list
  end

  def open_actor_cutin_preview(index = nil)
    if index
      file_name = @actor_cutin_list_window.entries[index]
    else
      index, file_name = @actor_cutin_list_window.current_ext
    end
    return unless file_name

    preview = ResearchModActorCutinPreview.new(
      file_name, Graphics.height - @actor_cutin_help_window.height
    )
    dispose_actor_cutin_preview
    @actor_cutin_preview = preview
    @actor_cutin_preview_index = index
    @actor_cutin_list_window.hide
    @actor_cutin_list_window.deactivate
    @actor_cutin_help_window.z = 700
    @actor_cutin_help_window.set_text(
      format('Cut-in %d/%d\n文件名：%s\n←/→：上一张/下一张　取消：返回列表',
             index + 1, @actor_cutin_list_window.entries.size,
             file_name).gsub(92.chr + 'n', 10.chr)
    )
    true
  rescue
    Sound.play_buzzer
    @actor_cutin_help_window.set_text(
      format('图片无法读取：Graphics/Pictures/%s\n可能是文件缺失或资源配置无效。\n取消：返回列表',
             file_name).gsub(92.chr + 'n', 10.chr)
    )
    @actor_cutin_list_window.activate unless @actor_cutin_preview
    false
  end

  def update_actor_cutin_preview
    if Input.trigger?(:B)
      Sound.play_cancel
      close_actor_cutin_preview
    elsif Input.repeat?(:RIGHT) || Input.repeat?(:R)
      switch_actor_cutin_preview(1)
    elsif Input.repeat?(:LEFT) || Input.repeat?(:L)
      switch_actor_cutin_preview(-1)
    end
  end

  def switch_actor_cutin_preview(amount)
    entries = @actor_cutin_list_window.entries
    return if entries.empty?

    index = (@actor_cutin_preview_index + amount) % entries.size
    Sound.play_cursor if open_actor_cutin_preview(index)
  end

  def close_actor_cutin_preview
    dispose_actor_cutin_preview
    @actor_cutin_preview_index = nil
    return unless @actor_cutin_list_window

    @actor_cutin_list_window.show
    @actor_cutin_list_window.activate
    @actor_cutin_help_window.z = 550
    @actor_cutin_list_window.update_help
  end

  def dispose_actor_cutin_preview
    @actor_cutin_preview.dispose if @actor_cutin_preview
    @actor_cutin_preview = nil
  end

  def close_actor_cutin_list
    dispose_actor_cutin_preview
    defer_research_mod_window_dispose(@actor_cutin_list_window)
    defer_research_mod_window_dispose(@actor_cutin_help_window)
    @actor_cutin_list_window = nil
    @actor_cutin_help_window = nil
    @actor_cutin_preview_index = nil
    @actor_cutin_page = nil
    @actor_encyclopedia_mode_window.activate
    @actor_encyclopedia_mode_window.update_help
  end

  def close_actor_encyclopedia_mode
    defer_research_mod_window_dispose(@actor_encyclopedia_candidate_window)
    @actor_encyclopedia_candidate_window = nil
    defer_research_mod_window_dispose(@actor_encyclopedia_mode_window)
    @actor_encyclopedia_mode_window = nil
    @actor_encyclopedia_detail_window.set_message(
      '选择角色并确认后，可查看备注、固有アビリティ、Picture路径或Cut-in图片。'
    )
    @actor_encyclopedia_list_window.activate
  end

  def close_actor_encyclopedia
    defer_research_mod_window_dispose(@actor_encyclopedia_candidate_window)
    dispose_actor_stand_picture_preview
    dispose_actor_cutin_preview
    defer_research_mod_window_dispose(@actor_cutin_list_window)
    defer_research_mod_window_dispose(@actor_cutin_help_window)
    defer_research_mod_window_dispose(@actor_stand_picture_help_window)
    defer_research_mod_window_dispose(@actor_encyclopedia_mode_window)
    defer_research_mod_window_dispose(@actor_encyclopedia_input_window)
    defer_research_mod_window_dispose(@actor_encyclopedia_list_window)
    defer_research_mod_window_dispose(@actor_encyclopedia_detail_window)
    @actor_encyclopedia_mode_window = nil
    @actor_encyclopedia_candidate_window = nil
    @actor_cutin_list_window = nil
    @actor_cutin_help_window = nil
    @actor_stand_picture_help_window = nil
    @actor_cutin_preview_index = nil
    @actor_cutin_page = nil
    @actor_encyclopedia_input_window = nil
    @actor_encyclopedia_input_return = false
    @actor_encyclopedia_history = nil
    @actor_encyclopedia_list_window = nil
    @actor_encyclopedia_detail_window = nil
    @command_window.activate
  end

  def open_author_info
    @author_info_help_window = Window_Help.new(7)
    @author_info_command_window = Window_ResearchModAuthorInfoCommand.new(
      @author_info_help_window
    )
    @author_info_command_window.set_handler(:cancel, method(:close_author_info))
    @command_window.deactivate
    @author_info_help_window.set_text(ResearchMod.author_info_text)
    @author_info_command_window.activate
  end

  def close_author_info
    defer_research_mod_window_dispose(@author_info_command_window)
    defer_research_mod_window_dispose(@author_info_help_window)
    @author_info_command_window = nil
    @author_info_help_window = nil
    @command_window.activate
  end

  def open_audio_info
    @audio_info_help_window = Window_Help.new(6)
    @audio_info_command_window = Window_ResearchModAudioInfoCommand.new(
      @audio_info_help_window
    )
    @audio_info_command_window.set_handler(:refresh, method(:refresh_audio_info))
    @audio_info_command_window.set_handler(:cancel, method(:close_audio_info))
    @command_window.deactivate
    refresh_audio_info
  end

  def refresh_audio_info
    @audio_info_help_window.set_text(ResearchMod.current_audio_info_text)
    @audio_info_command_window.refresh
    @audio_info_command_window.activate
  end

  def close_audio_info
    defer_research_mod_window_dispose(@audio_info_command_window)
    defer_research_mod_window_dispose(@audio_info_help_window)
    @audio_info_command_window = nil
    @audio_info_help_window = nil
    @command_window.activate
  end

  def open_value_editor
    @value_help_window = Window_Help.new(3)
    @value_help_window.y = Graphics.height - @value_help_window.height
    @value_menu_window = Window_ResearchModValueMenu.new(@value_help_window)
    @value_menu_window.set_handler(:edit, method(:edit_selected_value))
    @value_menu_window.set_handler(:next_bf_soul, method(:prepare_next_bf_lewd_soul))
    @value_menu_window.set_handler(:gain_lewd_soul, method(:gain_lewd_soul))
    @value_menu_window.set_handler(:cancel, method(:close_value_editor))
    @command_window.deactivate
  end

  def open_synthesize
    @synthesis_start_ids = { :I => 1, :W => 1, :A => 1 }
    @synthesis_history = []
    @synthesis_id_window = nil
    @synthesis_id_help_window = nil
    @synthesis_category_window = Window_ResearchModSynthesisCategory.new
    @synthesis_help_window = Window_ResearchModSynthesisHelp.new(
      ResearchMod.class_learning_half_width, 0,
      Graphics.width - ResearchMod.class_learning_half_width, Graphics.height
    )
    @synthesis_help_window.hide
    @synthesis_list_window = nil
    @synthesis_recipe_window = nil
    @synthesis_action_window = nil
    @synthesis_category_window.set_handler(:select, method(:select_synthesis_category))
    @synthesis_category_window.set_handler(:cancel, method(:close_synthesize))
    @synthesis_category_window.activate
    @command_help_window.hide
    @command_window.deactivate
  end

  def select_synthesis_category
    @synthesis_kind = @synthesis_category_window.current_ext.to_sym
    @synthesis_start_ids ||= { :I => 1, :W => 1, :A => 1 }
    @synthesis_start_ids[@synthesis_kind] ||= 1
    @synthesis_history = []
    unless @synthesis_help_window && !@synthesis_help_window.disposed?
      @synthesis_help_window = Window_ResearchModSynthesisHelp.new(
        ResearchMod.class_learning_half_width, 0,
        Graphics.width - ResearchMod.class_learning_half_width, Graphics.height
      )
    end
    @synthesis_list_window = Window_ResearchModSynthesisList.new(
      @synthesis_kind, @synthesis_start_ids[@synthesis_kind],
      @synthesis_history, @synthesis_help_window
    )
    @synthesis_list_window.set_handler(:select, method(:select_synthesis_product))
    @synthesis_list_window.set_handler(:reinput, method(:reinput_synthesis_start_id))
    @synthesis_list_window.set_handler(:previous, method(:load_previous_synthesis_page))
    @synthesis_list_window.set_handler(:next, method(:load_next_synthesis_page))
    @synthesis_list_window.set_handler(:cancel, method(:close_synthesis_list))
    @synthesis_list_window.setup
    @synthesis_category_window.hide
    @synthesis_category_window.deactivate
    @synthesis_list_window.show
    @synthesis_list_window.activate
    @synthesis_help_window.show
  end

  def reload_synthesis_list(start_id)
    defer_research_mod_window_dispose(@synthesis_list_window)
    @synthesis_start_ids ||= { :I => 1, :W => 1, :A => 1 }
    @synthesis_start_ids[@synthesis_kind] = start_id.to_i
    @synthesis_list_window = Window_ResearchModSynthesisList.new(
      @synthesis_kind, @synthesis_start_ids[@synthesis_kind],
      @synthesis_history, @synthesis_help_window
    )
    @synthesis_list_window.set_handler(:select, method(:select_synthesis_product))
    @synthesis_list_window.set_handler(:reinput, method(:reinput_synthesis_start_id))
    @synthesis_list_window.set_handler(:previous, method(:load_previous_synthesis_page))
    @synthesis_list_window.set_handler(:next, method(:load_next_synthesis_page))
    @synthesis_list_window.set_handler(:cancel, method(:close_synthesis_list))
    @synthesis_list_window.show
    @synthesis_list_window.activate
  end

  def reinput_synthesis_start_id
    @synthesis_list_window.deactivate
    @synthesis_list_window.hide
    @synthesis_help_window.hide if @synthesis_help_window
    @synthesis_id_help_window = Window_Help.new(3)
    @synthesis_id_help_window.y = Graphics.height - @synthesis_id_help_window.height
    products = ResearchMod.research_mod_synthesis_products(@synthesis_kind)
    maximum = products.empty? ? 1 : products.last[:item].id
    @synthesis_id_help_window.set_text(
      format('请输入%s合成产物起始ID（1～%d）。确认：加载本批项目；取消：返回合成列表。',
             ResearchMod.research_mod_synthesis_kind_name(@synthesis_kind), maximum)
    )
    @synthesis_id_window = Window_ResearchModSynthesisIdInput.new
    @synthesis_id_window.setup(@synthesis_kind, @synthesis_start_ids[@synthesis_kind])
    @synthesis_id_window.set_handler(:ok, method(:apply_synthesis_start_id))
    @synthesis_id_window.set_handler(:cancel, method(:close_synthesis_id_input))
    @synthesis_id_window.activate
  end

  def apply_synthesis_start_id
    start_id = @synthesis_id_window.number
    @synthesis_start_ids[@synthesis_kind] = start_id
    @synthesis_history.clear
    defer_research_mod_window_dispose(@synthesis_id_window)
    defer_research_mod_window_dispose(@synthesis_id_help_window)
    @synthesis_id_window = nil
    @synthesis_id_help_window = nil
    reload_synthesis_list(start_id)
    @synthesis_help_window.show if @synthesis_help_window
  end

  def close_synthesis_id_input
    defer_research_mod_window_dispose(@synthesis_id_window)
    defer_research_mod_window_dispose(@synthesis_id_help_window)
    @synthesis_id_window = nil
    @synthesis_id_help_window = nil
    @synthesis_help_window.show if @synthesis_help_window
    @synthesis_list_window.show if @synthesis_list_window
    @synthesis_list_window.activate if @synthesis_list_window
  end

  def load_next_synthesis_page
    next_start = @synthesis_list_window.page[:next_start_id]
    return @synthesis_list_window.activate unless next_start

    @synthesis_history << @synthesis_list_window.page[:start_id]
    reload_synthesis_list(next_start)
  end

  def load_previous_synthesis_page
    previous_start = @synthesis_history.pop
    previous_start ||= @synthesis_list_window.page[:previous_start_id]
    return @synthesis_list_window.activate unless previous_start

    reload_synthesis_list(previous_start)
  end

  def select_synthesis_product
    entry = @synthesis_list_window.current_ext
    unless entry
      @synthesis_list_window.activate
      return
    end

    if entry[:recipes].length > 1
      @synthesis_recipe_window = Window_ResearchModSynthesisRecipe.new(
        entry, @synthesis_help_window
      )
      @synthesis_recipe_window.set_handler(:select, method(:select_synthesis_recipe))
      @synthesis_recipe_window.set_handler(:cancel, method(:close_synthesis_recipe))
      @synthesis_list_window.deactivate
      @synthesis_list_window.hide
    else
      open_synthesis_action(entry, entry[:recipes].first)
    end
  end

  def select_synthesis_recipe
    entry = @synthesis_list_window.current_ext
    recipe_entry = @synthesis_recipe_window.current_ext
    return @synthesis_recipe_window.activate unless entry && recipe_entry

    open_synthesis_action(entry, recipe_entry)
  end

  def open_synthesis_action(entry, recipe_entry)
    @synthesis_action_window = Window_ResearchModSynthesisAction.new(
      entry, recipe_entry, @synthesis_help_window
    )
    @synthesis_action_window.set_handler(:synthesize, method(:execute_synthesis))
    @synthesis_action_window.set_handler(:synthesize_free,
                                         method(:execute_synthesis_free))
    @synthesis_action_window.set_handler(:cancel, method(:close_synthesis_action))
    if @synthesis_list_window
      @synthesis_list_window.deactivate
      @synthesis_list_window.hide
    end
    if @synthesis_recipe_window
      @synthesis_recipe_window.deactivate
      @synthesis_recipe_window.hide
    end
  end

  def execute_synthesis
    recipe_entry = @synthesis_action_window.instance_variable_get(:@recipe_entry)
    if ResearchMod.research_mod_execute_synthesis(recipe_entry[:data], false)
      Sound.play_ok
      refresh_synthesis_after_execute
    else
      Sound.play_buzzer
      @synthesis_action_window.activate
    end
  end

  def execute_synthesis_free
    recipe_entry = @synthesis_action_window.instance_variable_get(:@recipe_entry)
    if ResearchMod.research_mod_execute_synthesis(recipe_entry[:data], true)
      Sound.play_ok
      refresh_synthesis_after_execute
    else
      Sound.play_buzzer
      @synthesis_action_window.activate
    end
  end

  def refresh_synthesis_after_execute
    entry = @synthesis_list_window.current_ext
    defer_research_mod_window_dispose(@synthesis_action_window)
    @synthesis_action_window = nil
    @synthesis_list_window.refresh if @synthesis_list_window
    if @synthesis_recipe_window
      @synthesis_recipe_window.refresh
      @synthesis_recipe_window.show
      @synthesis_recipe_window.activate
      @synthesis_recipe_window.update_synthesis_help
    else
      @synthesis_list_window.show if @synthesis_list_window
      @synthesis_list_window.activate if @synthesis_list_window
      @synthesis_list_window.update_synthesis_help if @synthesis_list_window
    end
    @synthesis_help_window.set_lines(['合成完成，已获得一件产物。',
                                      format('ID：%d', entry[:item].id),
                                      format('名称：%s', entry[:item].name.to_s)]) if entry
  end

  def close_synthesis_action
    defer_research_mod_window_dispose(@synthesis_action_window)
    @synthesis_action_window = nil
    if @synthesis_recipe_window
      @synthesis_recipe_window.show
      @synthesis_recipe_window.activate
    else
      @synthesis_list_window.show if @synthesis_list_window
      @synthesis_list_window.activate if @synthesis_list_window
    end
  end

  def close_synthesis_recipe
    defer_research_mod_window_dispose(@synthesis_recipe_window)
    @synthesis_recipe_window = nil
    @synthesis_list_window.show if @synthesis_list_window
    @synthesis_list_window.activate if @synthesis_list_window
  end

  def close_synthesis_list
    defer_research_mod_window_dispose(@synthesis_list_window)
    @synthesis_list_window = nil
    @synthesis_help_window.hide if @synthesis_help_window && !@synthesis_help_window.disposed?
    @synthesis_category_window.show
    @synthesis_category_window.activate
  end

  def close_synthesize
    defer_research_mod_window_dispose(@synthesis_id_window)
    defer_research_mod_window_dispose(@synthesis_id_help_window)
    defer_research_mod_window_dispose(@synthesis_action_window)
    defer_research_mod_window_dispose(@synthesis_recipe_window)
    defer_research_mod_window_dispose(@synthesis_list_window)
    defer_research_mod_window_dispose(@synthesis_help_window)
    defer_research_mod_window_dispose(@synthesis_category_window)
    @synthesis_action_window = nil
    @synthesis_recipe_window = nil
    @synthesis_list_window = nil
    @synthesis_help_window = nil
    @synthesis_category_window = nil
    @synthesis_id_window = nil
    @synthesis_id_help_window = nil
    @command_help_window.show
    @command_window.activate
    @command_window.update_help
  end

  def actor_encyclopedia_follower_word(actor, key)
    ResearchMod.follower_dialogue_word(actor, key)
  end

  def manage_actor_encyclopedia_candidate
    actor = @actor_encyclopedia_list_window.current_ext
    unless actor
      @actor_encyclopedia_mode_window.activate
      return
    end
    @actor_encyclopedia_mode_window.deactivate
    @actor_encyclopedia_candidate_window = Window_ResearchModActorCandidateManage.new(actor)
    @actor_encyclopedia_candidate_window.set_handler(:add, method(:add_actor_encyclopedia_candidate))
    @actor_encyclopedia_candidate_window.set_handler(:remove, method(:remove_actor_encyclopedia_candidate))
    @actor_encyclopedia_candidate_window.set_handler(:cancel, method(:close_actor_encyclopedia_candidate))
  rescue
    @actor_encyclopedia_mode_window.activate if @actor_encyclopedia_mode_window
  end

  def add_actor_encyclopedia_candidate
    actor = @actor_encyclopedia_list_window.current_ext
    if actor && $game_party && $game_party.respond_to?(:follow?) &&
       !$game_party.follow?(actor.id)
      $game_party.add_stand_actor(actor.id)
      word = actor_encyclopedia_follower_word(actor, :yes)
      return play_actor_encyclopedia_candidate_word(word) if word
    end
    close_actor_encyclopedia_candidate
  end

  def remove_actor_encyclopedia_candidate
    actor = @actor_encyclopedia_list_window.current_ext
    if actor && $game_party && $game_party.respond_to?(:stand_actors) &&
       $game_party.stand_actors.include?(actor.id)
      $game_party.remove_stand_actor(actor.id)
      ResearchMod.mark_removed_candidate_actor(actor.id)
      word = actor_encyclopedia_follower_word(actor, :no)
      return play_actor_encyclopedia_candidate_word(word) if word
    end
    close_actor_encyclopedia_candidate
  end

  def play_actor_encyclopedia_candidate_word(word)
    @actor_encyclopedia_candidate_dialogue_pending = true
    if @actor_encyclopedia_candidate_window
      @actor_encyclopedia_candidate_window.hide
      @actor_encyclopedia_candidate_window.deactivate
    end
    @actor_encyclopedia_mode_window.hide if @actor_encyclopedia_mode_window
    word.execute
  rescue
    @actor_encyclopedia_candidate_dialogue_pending = false
    close_actor_encyclopedia_candidate
  end

  def finish_actor_encyclopedia_candidate_dialogue
    @actor_encyclopedia_candidate_dialogue_pending = false
    close_actor_encyclopedia_candidate
  end

  def close_actor_encyclopedia_candidate
    @actor_encyclopedia_candidate_dialogue_pending = false
    defer_research_mod_window_dispose(@actor_encyclopedia_candidate_window)
    @actor_encyclopedia_candidate_window = nil
    @actor_encyclopedia_list_window.refresh
    @actor_encyclopedia_mode_window.refresh
    @actor_encyclopedia_mode_window.show
    @actor_encyclopedia_mode_window.activate
  end

  def open_consumption_menu
    @consumption_help_window = Window_Help.new(2)
    @consumption_help_window.y = Graphics.height - @consumption_help_window.height
    @consumption_menu_window = Window_ResearchModConsumptionMenu.new(
      @consumption_help_window
    )
    @consumption_menu_window.set_handler(:cooking, method(:toggle_cooking_no_cost))
    @consumption_menu_window.set_handler(:alchemy, method(:toggle_alchemy_no_cost))
    @consumption_menu_window.set_handler(:magic_book, method(:toggle_magic_book_no_cost))
    @consumption_menu_window.set_handler(:merchant, method(:toggle_merchant_no_cost))
    @consumption_menu_window.set_handler(:ex_item, method(:toggle_ex_item_no_cost))
    @consumption_menu_window.set_handler(:cancel, method(:close_consumption_menu))
    @command_window.deactivate
  end

  def open_free_cooking
    SceneManager.call(Scene_ResearchModCooking)
    SceneManager.scene.prepare(@actor)
  end

  def close_consumption_menu
    defer_research_mod_window_dispose(@consumption_menu_window)
    defer_research_mod_window_dispose(@consumption_help_window)
    @consumption_menu_window = nil
    @consumption_help_window = nil
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def open_party_member_max_editor
    @value_entry = ResearchMod.value_entry(:party_member_max)
    @standalone_value_input = true
    @value_help_window = Window_Help.new(3)
    @value_help_window.y = Graphics.height - @value_help_window.height
    unless @value_input_window
      @value_input_window = Window_ResearchModValueInput.new
      @value_input_window.set_handler(:ok, method(:apply_selected_value))
      @value_input_window.set_handler(:cancel, method(:close_value_input))
    end
    @value_input_window.setup(@value_entry)
    @command_window.deactivate
    @value_help_window.set_text(value_input_help_text.gsub(92.chr + 'n', 10.chr))
  end

  def open_map_follower_count_editor
    @value_entry = ResearchMod.value_entry(:map_follower_count)
    @standalone_value_input = true
    @value_help_window = Window_Help.new(3)
    @value_help_window.y = Graphics.height - @value_help_window.height
    unless @value_input_window
      @value_input_window = Window_ResearchModValueInput.new
      @value_input_window.set_handler(:ok, method(:apply_selected_value))
      @value_input_window.set_handler(:cancel, method(:close_value_input))
    end
    @value_input_window.setup(@value_entry)
    @command_window.deactivate
    @value_help_window.set_text(value_input_help_text.gsub(92.chr + 'n', 10.chr))
  end

  def open_accumulated_damage_scope
    @accumulated_damage_scope_window = Window_ResearchModAccumulatedDamageScope.new(
      @command_help_window
    )
    @accumulated_damage_scope_window.set_handler(
      :global, method(:open_accumulated_damage_global)
    )
    @accumulated_damage_scope_window.set_handler(
      :actor, method(:open_accumulated_damage_target)
    )
    @accumulated_damage_scope_window.set_handler(
      :cancel, method(:close_accumulated_damage_scope)
    )
    @command_window.deactivate
  end

  def open_accumulated_damage_global
    @accumulated_damage_scope_window.deactivate
    @accumulated_damage_scope_window.hide
    @accumulated_damage_global_window = Window_ResearchModAccumulatedDamageGlobal.new(
      @command_help_window
    )
    @accumulated_damage_global_window.set_handler(
      :select, method(:select_accumulated_damage_global)
    )
    @accumulated_damage_global_window.set_handler(
      :cancel, method(:close_accumulated_damage_global)
    )
  end

  def select_accumulated_damage_global
    @accumulated_damage_global_window.deactivate
    @accumulated_damage_global_window.hide
    open_accumulated_damage_input_for(:global, nil, :battle_count)
  end

  def open_accumulated_damage_target
    @accumulated_damage_scope_window.deactivate
    @accumulated_damage_scope_window.hide
    @accumulated_damage_target_window = Window_ResearchModAccumulatedDamageTarget.new(
      @command_help_window
    )
    @accumulated_damage_target_window.set_handler(
      :current, method(:select_accumulated_damage_current)
    )
    @accumulated_damage_target_window.set_handler(
      :specified, method(:open_accumulated_damage_actor_id_input)
    )
    @accumulated_damage_target_window.set_handler(
      :all, method(:select_accumulated_damage_all)
    )
    @accumulated_damage_target_window.set_handler(
      :cancel, method(:close_accumulated_damage_target)
    )
  end

  def select_accumulated_damage_current
    open_accumulated_damage_attribute(:actor, @actor, :target)
  end

  def select_accumulated_damage_all
    open_accumulated_damage_attribute(:all, nil, :target)
  end

  def open_accumulated_damage_actor_id_input(return_to = :target)
    @accumulated_damage_target_window.deactivate
    @accumulated_damage_target_window.hide
    @accumulated_damage_actor_id_return = return_to
    unless @accumulated_damage_actor_id_window
      @accumulated_damage_actor_id_window = Window_ResearchModActorEncyclopediaIdInput.new
      @accumulated_damage_actor_id_window.set_handler(
        :ok, method(:apply_accumulated_damage_actor_start_id)
      )
      @accumulated_damage_actor_id_window.set_handler(
        :cancel, method(:close_accumulated_damage_actor_id_input)
      )
    end
    @accumulated_damage_actor_id_window.setup(@accumulated_damage_actor_start_id || 1)
    @command_help_window.set_text(
      '请输入角色起始 ID；确认后加载有名称角色列表。' + 10.chr +
      '取消：返回累计类增伤目标选择。'
    )
  end

  def close_accumulated_damage_actor_id_input
    @accumulated_damage_actor_id_window.close
    @accumulated_damage_actor_id_window.deactivate
    if @accumulated_damage_actor_id_return == :actor_list &&
       @accumulated_damage_actor_list_window
      @accumulated_damage_actor_list_window.show
      @accumulated_damage_actor_list_window.activate
      @accumulated_damage_actor_list_window.update_help
    else
      @accumulated_damage_target_window.show
      @accumulated_damage_target_window.activate
      @accumulated_damage_target_window.update_help
    end
  end

  def apply_accumulated_damage_actor_start_id
    @accumulated_damage_actor_start_id = @accumulated_damage_actor_id_window.number
    @accumulated_damage_actor_history = []
    @accumulated_damage_actor_id_window.close
    @accumulated_damage_actor_id_window.deactivate
    dispose_accumulated_damage_actor_list
    open_accumulated_damage_actor_list(@accumulated_damage_actor_start_id)
  end

  def open_accumulated_damage_actor_list(start_id)
    @accumulated_damage_actor_list_window = Window_ResearchModAccumulatedDamageActorList.new(
      start_id, @accumulated_damage_actor_history || [], @command_help_window
    )
    @accumulated_damage_actor_list_window.set_handler(
      :select, method(:select_accumulated_damage_specified_actor)
    )
    @accumulated_damage_actor_list_window.set_handler(
      :reinput, method(:reinput_accumulated_damage_actor_start_id)
    )
    @accumulated_damage_actor_list_window.set_handler(
      :previous, method(:load_previous_accumulated_damage_actor_page)
    )
    @accumulated_damage_actor_list_window.set_handler(
      :next, method(:load_next_accumulated_damage_actor_page)
    )
    @accumulated_damage_actor_list_window.set_handler(
      :cancel, method(:close_accumulated_damage_actor_list)
    )
  end

  def select_accumulated_damage_specified_actor
    actor = @accumulated_damage_actor_list_window.current_ext
    return @accumulated_damage_actor_list_window.activate unless actor

    open_accumulated_damage_attribute(:actor, $game_actors[actor.id], :actor_list)
  end

  def reinput_accumulated_damage_actor_start_id
    @accumulated_damage_actor_list_window.hide
    @accumulated_damage_actor_list_window.deactivate
    @accumulated_damage_actor_id_return = :actor_list
    open_accumulated_damage_actor_id_input(:actor_list)
  end

  def load_next_accumulated_damage_actor_page
    next_start_id = @accumulated_damage_actor_list_window.page[:next_start_id]
    return @accumulated_damage_actor_list_window.activate unless next_start_id

    @accumulated_damage_actor_history <<
      @accumulated_damage_actor_list_window.page[:start_id]
    @accumulated_damage_actor_start_id = next_start_id
    dispose_accumulated_damage_actor_list
    open_accumulated_damage_actor_list(next_start_id)
  end

  def load_previous_accumulated_damage_actor_page
    previous_start_id = @accumulated_damage_actor_history.pop
    previous_start_id ||= @accumulated_damage_actor_list_window.page[:previous_start_id]
    return @accumulated_damage_actor_list_window.activate unless previous_start_id

    @accumulated_damage_actor_start_id = previous_start_id
    dispose_accumulated_damage_actor_list
    open_accumulated_damage_actor_list(previous_start_id)
  end

  def dispose_accumulated_damage_actor_list
    defer_research_mod_window_dispose(@accumulated_damage_actor_list_window)
    @accumulated_damage_actor_list_window = nil
  end

  def close_accumulated_damage_actor_list
    dispose_accumulated_damage_actor_list
    @accumulated_damage_target_window.show
    @accumulated_damage_target_window.activate
    @accumulated_damage_target_window.update_help
  end

  def open_accumulated_damage_attribute(scope, actor, return_to)
    @accumulated_damage_attribute_scope = scope
    @accumulated_damage_attribute_actor = actor
    @accumulated_damage_attribute_return = return_to
    @accumulated_damage_global_window.deactivate if @accumulated_damage_global_window
    @accumulated_damage_global_window.hide if @accumulated_damage_global_window
    @accumulated_damage_target_window.deactivate if @accumulated_damage_target_window
    @accumulated_damage_target_window.hide if @accumulated_damage_target_window
    @accumulated_damage_actor_list_window.deactivate if @accumulated_damage_actor_list_window
    @accumulated_damage_actor_list_window.hide if @accumulated_damage_actor_list_window
    @accumulated_damage_attribute_window = Window_ResearchModAccumulatedDamageAttribute.new(
      @command_help_window, scope, actor
    )
    @accumulated_damage_attribute_window.set_handler(
      :select, method(:select_accumulated_damage_attribute)
    )
    @accumulated_damage_attribute_window.set_handler(
      :cancel, method(:close_accumulated_damage_attribute)
    )
  end

  def select_accumulated_damage_attribute
    open_accumulated_damage_input_for(
      @accumulated_damage_attribute_scope,
      @accumulated_damage_attribute_actor,
      @accumulated_damage_attribute_window.current_ext
    )
  end

  def open_accumulated_damage_input_for(scope, actor, key)
    @accumulated_damage_attribute_scope = scope
    @accumulated_damage_attribute_actor = actor
    @accumulated_damage_attribute_key = key
    current = ResearchMod.accumulated_damage_value(
      @accumulated_damage_attribute_scope,
      @accumulated_damage_attribute_actor,
      @accumulated_damage_attribute_key
    )
    unless @accumulated_damage_input_window
      @accumulated_damage_input_window = Window_ResearchModAccumulatedDamageInput.new
      @accumulated_damage_input_window.set_handler(
        :ok, method(:apply_accumulated_damage_value)
      )
      @accumulated_damage_input_window.set_handler(
        :cancel, method(:close_accumulated_damage_input)
      )
    end
    @accumulated_damage_input_window.setup(current, @accumulated_damage_attribute_key)
    @accumulated_damage_attribute_window.deactivate if @accumulated_damage_attribute_window
    entry = ResearchMod.accumulated_damage_stat(@accumulated_damage_attribute_key)
    @command_help_window.set_text(
      format('%s%s影响能力：%s%s请输入新的最终数值（0～%d）。',
             entry[:label], 10.chr, entry[:ability], 10.chr,
             @accumulated_damage_input_window.maximum)
    ) if entry
  end

  def close_accumulated_damage_input
    @accumulated_damage_input_window.close
    @accumulated_damage_input_window.deactivate
    if @accumulated_damage_attribute_scope == :global
      @accumulated_damage_global_window.show
      @accumulated_damage_global_window.activate
      @accumulated_damage_global_window.refresh
      @accumulated_damage_global_window.update_help
    else
      @accumulated_damage_attribute_window.activate
      @accumulated_damage_attribute_window.update_help
    end
  end

  def apply_accumulated_damage_value
    value = @accumulated_damage_input_window.number
    if @accumulated_damage_attribute_scope == :all
      ResearchMod.accumulated_damage_valid_actors.each do |actor|
        ResearchMod.set_accumulated_damage_value(
          :actor, actor, @accumulated_damage_attribute_key, value
        )
      end
    else
      ResearchMod.set_accumulated_damage_value(
        @accumulated_damage_attribute_scope,
        @accumulated_damage_attribute_actor,
        @accumulated_damage_attribute_key,
        value
      )
    end
    close_accumulated_damage_input
    if @accumulated_damage_attribute_scope == :global
      @accumulated_damage_global_window.refresh
      @accumulated_damage_global_window.activate
      @accumulated_damage_global_window.update_help
    else
      @accumulated_damage_attribute_window.refresh
      @accumulated_damage_attribute_window.activate
      @accumulated_damage_attribute_window.update_help
    end
  end

  def close_accumulated_damage_attribute
    defer_research_mod_window_dispose(@accumulated_damage_attribute_window)
    @accumulated_damage_attribute_window = nil
    @accumulated_damage_input_window = nil if @accumulated_damage_input_window &&
      @accumulated_damage_input_window.disposed?
    case @accumulated_damage_attribute_return
    when :global
      @accumulated_damage_global_window.show
      @accumulated_damage_global_window.activate
      @accumulated_damage_global_window.refresh
      @accumulated_damage_global_window.update_help
    when :actor_list
      @accumulated_damage_actor_list_window.show
      @accumulated_damage_actor_list_window.activate
      @accumulated_damage_actor_list_window.update_help
    else
      @accumulated_damage_target_window.show
      @accumulated_damage_target_window.activate
      @accumulated_damage_target_window.update_help
    end
  end

  def close_accumulated_damage_global
    defer_research_mod_window_dispose(@accumulated_damage_global_window)
    @accumulated_damage_global_window = nil
    @accumulated_damage_scope_window.show
    @accumulated_damage_scope_window.activate
    @accumulated_damage_scope_window.update_help
  end

  def close_accumulated_damage_target
    defer_research_mod_window_dispose(@accumulated_damage_target_window)
    @accumulated_damage_target_window = nil
    @accumulated_damage_scope_window.show
    @accumulated_damage_scope_window.activate
    @accumulated_damage_scope_window.update_help
  end

  def close_accumulated_damage_scope
    defer_research_mod_window_dispose(@accumulated_damage_scope_window)
    @accumulated_damage_scope_window = nil
    @command_window.activate
    @command_window.update_help
  end

  def close_value_editor
    defer_research_mod_window_dispose(@value_menu_window)
    defer_research_mod_window_dispose(@value_help_window)
    @value_menu_window = nil
    @value_help_window = nil
    @command_window.activate
  end

  def edit_selected_value
    @value_entry = ResearchMod.value_entry(@value_menu_window.current_ext)
    unless @value_input_window
      @value_input_window = Window_ResearchModValueInput.new
      @value_input_window.set_handler(:ok, method(:apply_selected_value))
      @value_input_window.set_handler(:cancel, method(:close_value_input))
    end
    @value_input_window.setup(@value_entry)
    @value_menu_window.deactivate
    @value_help_window.set_text(value_input_help_text.gsub(92.chr + 'n', 10.chr))
  end

  def value_input_help_text
    return 'BF胜利奖励进度变量907与图鉴统计分开。\n淫らな魂只在胜利后进度刚好达到35时发放。\n想让下一次胜利触发，请输入34。' if @value_entry[:key] == :bf_win_reward
    if @value_entry[:key] == :party_member_max
      variable_value = ResearchMod.value_current(@value_entry) - ResearchMod::PARTY_MEMBER_BASE_MAX
      return format('输入最终队伍编成人数上限，不是变量56的值。\n允许范围：8～99人；当前变量56为%d。\n确认后内部保存为：输入人数 - 8。', variable_value)
    end
    if @value_entry[:key] == :map_follower_count
      return '输入地图跟随角色数量，不包含队首玩家。\n允许范围：0～99；0表示只显示玩家。\n高数值会创建大量地图精灵，可能造成卡顿。'
    end

    minimum = ResearchMod.value_minimum(@value_entry)
    maximum = ResearchMod.value_maximum(@value_entry)
    format('设置%s的最终数值。\n允许范围：%d～%d\n确认：应用　取消：不修改',
           @value_entry[:label], minimum, maximum)
  end

  def apply_selected_value
    ResearchMod.set_value(@value_entry, @value_input_window.number)
    close_value_input
  end

  def close_value_input
    @value_input_window.close
    @value_input_window.deactivate
    @value_entry = nil
    if @standalone_value_input
      @standalone_value_input = false
      defer_research_mod_window_dispose(@value_help_window)
      @value_help_window = nil
      @command_window.refresh
      @command_window.activate
      @command_window.update_help
      return
    end
    @value_menu_window.refresh
    @value_menu_window.activate
    @value_menu_window.update_help
  end

  def prepare_next_bf_lewd_soul
    if ResearchMod.prepare_next_bf_lewd_soul
      @value_menu_window.refresh
      @value_help_window.set_text(
        'BF胜利奖励进度已设为34。下一次BF胜利增加到35时，将由原版事件发放淫らな魂。'
      )
    else
      Sound.play_buzzer
      @value_help_window.set_text('已经持有淫らな魂，没有修改BF胜利奖励进度。')
    end
    @value_menu_window.activate
  end

  def gain_lewd_soul
    if ResearchMod.gain_lewd_soul
      @value_menu_window.refresh
      @value_help_window.set_text('已直接获得一件淫らな魂；BF胜利奖励进度没有改变。')
    else
      Sound.play_buzzer
      @value_help_window.set_text('已经持有淫らな魂，未重复增加。')
    end
    @value_menu_window.activate
  end

  def open_debug_database_editor
    @debug_help_window = Window_Help.new(4)
    @debug_help_window.y = Graphics.height - @debug_help_window.height
    @debug_type_window = Window_ResearchModDebugType.new(@debug_help_window)
    @debug_type_window.set_handler(:select, method(:select_debug_database_kind))
    @debug_type_window.set_handler(:cancel, method(:close_debug_database_editor))
    @debug_start_ids ||= { :switch => 1, :variable => 1 }
    @debug_history = []
    @command_window.deactivate
  end

  def close_debug_database_editor
    defer_research_mod_window_dispose(@debug_switch_action_window)
    defer_research_mod_window_dispose(@debug_list_window)
    defer_research_mod_window_dispose(@debug_id_window)
    defer_research_mod_window_dispose(@debug_variable_input_window)
    defer_research_mod_window_dispose(@debug_type_window)
    defer_research_mod_window_dispose(@debug_help_window)
    @debug_switch_action_window = nil
    @debug_list_window = nil
    @debug_id_window = nil
    @debug_variable_input_window = nil
    @debug_type_window = nil
    @debug_help_window = nil
    @debug_entry_id = nil
    @debug_return_to_list = false
    @command_window.activate
  end

  def select_debug_database_kind
    @debug_kind = @debug_type_window.current_ext
    @debug_history = []
    @debug_type_window.deactivate
    open_debug_database_id_input(false)
  end

  def open_debug_database_id_input(return_to_list)
    unless @debug_id_window
      @debug_id_window = Window_ResearchModDebugIdInput.new
      @debug_id_window.set_handler(:ok, method(:apply_debug_database_start_id))
      @debug_id_window.set_handler(:cancel, method(:close_debug_database_id_input))
    end
    @debug_return_to_list = return_to_list
    @debug_id_window.setup(@debug_kind, @debug_start_ids[@debug_kind])
    text = format('请输入%s起始ID（1～%d）；确认加载%d项（含无名称），取消返回。\n%s',
                  ResearchMod.debug_kind_name(@debug_kind),
                  ResearchMod.debug_maximum_id(@debug_kind),
                  ResearchMod::DEBUG_DATABASE_PAGE_SIZE,
                  ResearchMod.debug_known_issue_hint(@debug_kind))
    @debug_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end

  def close_debug_database_id_input
    @debug_id_window.close
    @debug_id_window.deactivate
    if @debug_return_to_list && @debug_list_window
      @debug_list_window.show
      @debug_list_window.activate
      @debug_list_window.update_help
    else
      @debug_type_window.show
      @debug_type_window.activate
      @debug_type_window.update_help
    end
    @debug_return_to_list = false
  end

  def apply_debug_database_start_id
    @debug_start_ids[@debug_kind] = @debug_id_window.number
    @debug_history = []
    @debug_id_window.close
    @debug_id_window.deactivate
    @debug_type_window.hide
    dispose_debug_database_list
    open_debug_database_list(@debug_start_ids[@debug_kind])
  end

  def open_debug_database_list(start_id)
    @debug_list_window = Window_ResearchModDebugList.new(
      @debug_kind, start_id, @debug_history, @debug_help_window
    )
    @debug_list_window.set_handler(:select, method(:select_debug_database_entry))
    @debug_list_window.set_handler(:reinput, method(:reinput_debug_database_start_id))
    @debug_list_window.set_handler(:previous, method(:load_previous_debug_database_page))
    @debug_list_window.set_handler(:next, method(:load_next_debug_database_page))
    @debug_list_window.set_handler(:cancel, method(:close_debug_database_list))
  end

  def dispose_debug_database_list
    defer_research_mod_window_dispose(@debug_list_window)
    @debug_list_window = nil
  end

  def close_debug_database_list
    dispose_debug_database_list
    @debug_type_window.show
    @debug_type_window.activate
    @debug_type_window.update_help
  end

  def reinput_debug_database_start_id
    @debug_list_window.hide
    @debug_list_window.deactivate
    open_debug_database_id_input(true)
  end

  def load_next_debug_database_page
    next_start_id = @debug_list_window.page[:next_start_id]
    return @debug_list_window.activate unless next_start_id

    @debug_history.push(@debug_list_window.page[:start_id])
    @debug_start_ids[@debug_kind] = next_start_id
    dispose_debug_database_list
    open_debug_database_list(next_start_id)
  end

  def load_previous_debug_database_page
    previous_start_id = @debug_history.pop
    return @debug_list_window.activate unless previous_start_id

    @debug_start_ids[@debug_kind] = previous_start_id
    dispose_debug_database_list
    open_debug_database_list(previous_start_id)
  end

  def select_debug_database_entry
    @debug_entry_id = @debug_list_window.current_ext
    @debug_list_window.deactivate
    if @debug_kind == :switch
      open_debug_switch_action
    else
      open_debug_variable_input
    end
  end

  def open_debug_switch_action
    @debug_switch_action_window = Window_ResearchModDebugSwitchAction.new(
      @debug_entry_id, @debug_help_window
    )
    @debug_switch_action_window.set_handler(:set, method(:apply_debug_switch))
    @debug_switch_action_window.set_handler(:cancel, method(:close_debug_switch_action))
  end

  def apply_debug_switch
    ResearchMod.set_debug_switch(@debug_entry_id, @debug_switch_action_window.current_ext)
    close_debug_switch_action
  end

  def close_debug_switch_action
    defer_research_mod_window_dispose(@debug_switch_action_window)
    @debug_switch_action_window = nil
    refresh_debug_database_list
  end

  def open_debug_variable_input
    unless @debug_variable_input_window
      @debug_variable_input_window = Window_ResearchModSignedVariableInput.new
      @debug_variable_input_window.set_handler(:ok, method(:apply_debug_variable))
      @debug_variable_input_window.set_handler(:cancel, method(:close_debug_variable_input))
    end
    current = $game_variables[@debug_entry_id]
    @debug_variable_input_window.setup(current)
    entry_hint = ResearchMod.debug_variable_entry_hint(@debug_entry_id)
    entry_hint = '\n' + entry_hint unless entry_hint.empty?
    text = format('变量 %04d「%s」\n当前值：%s\n首位选择正负号；确认写入整数，取消不修改。%s',
                  @debug_entry_id,
                  ResearchMod.debug_entry_name(:variable, @debug_entry_id),
                  ResearchMod.debug_entry_value_text(:variable, @debug_entry_id),
                  entry_hint)
    @debug_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end

  def apply_debug_variable
    ResearchMod.set_debug_variable(@debug_entry_id, @debug_variable_input_window.number)
    close_debug_variable_input
  end

  def close_debug_variable_input
    @debug_variable_input_window.close
    @debug_variable_input_window.deactivate
    refresh_debug_database_list
  end

  def refresh_debug_database_list
    index = @debug_list_window.index
    @debug_list_window.refresh
    @debug_list_window.select([index, @debug_list_window.item_max - 1].min)
    @debug_list_window.activate
    @debug_list_window.update_help
    @debug_entry_id = nil
  end

  def open_current_map_containers
    @container_help_window = Window_Help.new(3)
    @container_help_window.y = Graphics.height - @container_help_window.height
    @container_list_window = Window_ResearchModContainerList.new(@container_help_window)
    @container_list_window.set_handler(:select, method(:select_current_map_container))
    @container_list_window.set_handler(:open_all, method(:confirm_open_all_containers))
    @container_list_window.set_handler(:force_all, method(:confirm_force_open_all_containers))
    @container_list_window.set_handler(:cancel, method(:close_current_map_containers))
    @command_window.deactivate
  end

  def close_current_map_containers
    defer_research_mod_window_dispose(@container_result_window)
    defer_research_mod_window_dispose(@container_confirm_window)
    defer_research_mod_window_dispose(@container_action_window)
    defer_research_mod_window_dispose(@container_list_window)
    defer_research_mod_window_dispose(@container_help_window)
    @container_result_window = nil
    @container_confirm_window = nil
    @container_action_window = nil
    @container_list_window = nil
    @container_help_window = nil
    @selected_container_event = nil
    @command_window.activate
  end

  def select_current_map_container
    @selected_container_event = @container_list_window.current_ext
    @container_list_window.deactivate
    @container_action_window = Window_ResearchModContainerAction.new(
      @selected_container_event, @container_help_window
    )
    @container_action_window.set_handler(:open, method(:open_selected_container))
    @container_action_window.set_handler(:teleport, method(:teleport_to_selected_container))
    @container_action_window.set_handler(:force, method(:force_open_selected_container))
    @container_action_window.set_handler(:cancel, method(:close_container_action))
  end

  def close_container_action
    defer_research_mod_window_dispose(@container_action_window)
    @container_action_window = nil
    @selected_container_event = nil
    refresh_current_map_container_list
  end

  def refresh_current_map_container_list
    return unless @container_list_window

    defer_research_mod_window_dispose(@container_list_window)
    @container_list_window = Window_ResearchModContainerList.new(@container_help_window)
    @container_list_window.set_handler(:select, method(:select_current_map_container))
    @container_list_window.set_handler(:open_all, method(:confirm_open_all_containers))
    @container_list_window.set_handler(:force_all, method(:confirm_force_open_all_containers))
    @container_list_window.set_handler(:cancel, method(:close_current_map_containers))
  end

  def open_selected_container
    unless ResearchMod.reserve_container_teleport(@selected_container_event, true)
      Sound.play_buzzer
      @container_action_window.activate
      @container_help_window.set_text(
        '找不到安全的相邻位置。\n请使用“传送到事件”。'.gsub(92.chr + 'n', 10.chr)
      )
      return
    end

    close_current_map_containers
    SceneManager.goto(Scene_Map)
  end

  def teleport_to_selected_container
    unless ResearchMod.reserve_container_teleport(@selected_container_event, false)
      Sound.play_buzzer
      @container_action_window.activate
      @container_help_window.set_text('找不到安全的相邻位置。')
      return
    end

    close_current_map_containers
    SceneManager.goto(Scene_Map)
  end

  def force_open_selected_container
    unless ResearchMod.container_force_openable?(
      $game_map.map_id, @selected_container_event
    )
      Sound.play_buzzer
      @container_action_window.activate
      @container_help_window.set_text(
        '该容器不是静态物品容器。\n不能安全强制打开。'.gsub(92.chr + 'n', 10.chr)
      )
      return
    end

    unless ResearchMod.reserve_container_teleport(@selected_container_event, false)
      Sound.play_buzzer
      @container_action_window.activate
      @container_help_window.set_text(
        '找不到安全的相邻位置。\n无法强制打开。'.gsub(92.chr + 'n', 10.chr)
      )
      return
    end

    rewards = []
    unless ResearchMod.force_open_container(
      $game_map.map_id, @selected_container_event, rewards
    )
      Sound.play_buzzer
      @container_action_window.activate
      @container_help_window.set_text(
        '强制领取失败，未修改容器。'.gsub(92.chr + 'n', 10.chr)
      )
      return
    end
    ResearchMod.show_container_force_rewards(rewards)

    close_current_map_containers
    SceneManager.goto(Scene_Map)
  end

  def confirm_open_all_containers
    return refuse_container_batch unless ResearchMod.container_batch_available?

    @container_batch_events = ResearchMod.container_event_entries($game_map.map_id).select do |event|
      ResearchMod.container_normal_batch_openable?($game_map.map_id, event)
    end
    open_container_batch_confirm('全部打开', @container_batch_events.size)
  end

  def confirm_force_open_all_containers
    return refuse_container_batch unless ResearchMod.container_batch_available?

    @container_batch_events = ResearchMod.container_event_entries($game_map.map_id).select do |event|
      ResearchMod.container_force_openable?($game_map.map_id, event)
    end
    open_container_batch_confirm('全部强制打开', @container_batch_events.size)
  end

  def open_container_batch_confirm(label, count)
    @container_list_window.hide
    @container_list_window.deactivate
    @container_confirm_window = Window_ResearchModContainerConfirm.new(
      label, count, @container_help_window
    )
    @container_confirm_window.set_handler(:confirm, method(:execute_container_batch_open))
    @container_confirm_window.set_handler(:cancel, method(:close_container_batch_confirm))
  end

  def refuse_container_batch
    Sound.play_buzzer
    @container_help_window.set_text(
      '需要先开启“宝箱内容提示”。\n批量操作才可使用。'.gsub(92.chr + 'n', 10.chr)
    )
    @container_list_window.activate
  end

  def close_container_batch_confirm
    defer_research_mod_window_dispose(@container_confirm_window)
    @container_confirm_window = nil
    @container_batch_events = nil
    @container_list_window.show
    @container_list_window.activate
    @container_list_window.update_help
  end

  def execute_container_batch_open
    events = @container_batch_events || []
    rewards = []
    opened = events.count do |event|
      ResearchMod.force_open_container($game_map.map_id, event, rewards)
    end
    defer_research_mod_window_dispose(@container_confirm_window)
    @container_confirm_window = nil
    @container_batch_events = nil
    @container_result_window = Window_ResearchModContainerResult.new(
      rewards, @container_help_window
    )
    @container_result_window.set_handler(:item, method(:keep_container_result))
    @container_result_window.set_handler(:cancel, method(:close_container_result))
  end

  def keep_container_result
    @container_result_window.activate if @container_result_window
  end

  def close_container_result
    defer_research_mod_window_dispose(@container_result_window)
    @container_result_window = nil
    refresh_current_map_container_list
    @container_help_window.set_text(
      '批量操作完成。\n怪物与复杂事件已跳过。'.gsub(92.chr + 'n', 10.chr)
    )
  end

  def open_map_inspector
    @map_help_window = Window_Help.new(3)
    @map_help_window.y = Graphics.height - @map_help_window.height
    @map_mode_window = Window_ResearchModMapMode.new(@map_help_window)
    @map_mode_window.set_handler(:current, method(:open_current_map_events))
    @map_mode_window.set_handler(:select, method(:open_map_id_input))
    @map_mode_window.set_handler(:cancel, method(:close_map_inspector))
    @map_start_id ||= 1
    @map_history = []
    @command_window.deactivate
  end

  def close_map_inspector
    defer_research_mod_window_dispose(@map_teleport_confirm_window)
    defer_research_mod_window_dispose(@self_switch_action_window)
    defer_research_mod_window_dispose(@self_switch_list_window)
    defer_research_mod_window_dispose(@map_detail_window)
    defer_research_mod_window_dispose(@map_page_window)
    defer_research_mod_window_dispose(@map_event_window)
    defer_research_mod_window_dispose(@map_list_window)
    defer_research_mod_window_dispose(@map_id_window)
    defer_research_mod_window_dispose(@map_mode_window)
    defer_research_mod_window_dispose(@map_help_window)
    @self_switch_action_window = nil
    @map_teleport_confirm_window = nil
    @self_switch_list_window = nil
    @map_detail_window = nil
    @map_page_window = nil
    @map_event_window = nil
    @map_list_window = nil
    @map_id_window = nil
    @map_mode_window = nil
    @map_help_window = nil
    @map_return_to_list = false
    @command_window.activate
  end

  def open_current_map_events
    @selected_map_id = $game_map.map_id
    @map_event_return_target = :mode
    @map_mode_window.hide
    @map_mode_window.deactivate
    open_map_event_list
  end

  def open_map_id_input
    unless @map_id_window
      @map_id_window = Window_ResearchModMapIdInput.new
      @map_id_window.set_handler(:ok, method(:apply_map_start_id))
      @map_id_window.set_handler(:cancel, method(:close_map_id_input))
    end
    @map_return_to_list = false
    @map_mode_window.deactivate
    setup_map_id_input
  end

  def setup_map_id_input
    @map_id_window.setup(@map_start_id)
    text = format('请输入地图起始ID（1～%d）\n确认：加载最多%d张地图。取消：返回。\n只读取地图数据，不会传送玩家或执行事件。',
                  ResearchMod.map_maximum_id, ResearchMod::MAP_PAGE_SIZE)
    @map_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end

  def close_map_id_input
    @map_id_window.close
    @map_id_window.deactivate
    if @map_return_to_list && @map_list_window
      @map_list_window.show
      @map_list_window.activate
      @map_list_window.update_help
    else
      @map_mode_window.show
      @map_mode_window.activate
      @map_mode_window.update_help
    end
    @map_return_to_list = false
  end

  def apply_map_start_id
    @map_start_id = @map_id_window.number
    @map_history = []
    @map_id_window.close
    @map_id_window.deactivate
    @map_mode_window.hide
    dispose_map_list
    open_map_list(@map_start_id)
  end

  def open_map_list(start_id)
    @map_list_window = Window_ResearchModMapList.new(
      start_id, @map_history, @map_help_window
    )
    @map_list_window.set_handler(:select, method(:select_map_for_events))
    @map_list_window.set_handler(:reinput, method(:reinput_map_start_id))
    @map_list_window.set_handler(:previous, method(:load_previous_map_page))
    @map_list_window.set_handler(:next, method(:load_next_map_page))
    @map_list_window.set_handler(:cancel, method(:close_map_list))
  end

  def dispose_map_list
    defer_research_mod_window_dispose(@map_list_window)
    @map_list_window = nil
  end

  def close_map_list
    dispose_map_list
    @map_mode_window.show
    @map_mode_window.activate
    @map_mode_window.update_help
  end

  def reinput_map_start_id
    @map_list_window.hide
    @map_list_window.deactivate
    @map_return_to_list = true
    setup_map_id_input
  end

  def load_next_map_page
    next_start_id = @map_list_window.page[:next_start_id]
    return @map_list_window.activate unless next_start_id

    @map_history.push(@map_list_window.page[:start_id])
    @map_start_id = next_start_id
    dispose_map_list
    open_map_list(next_start_id)
  end

  def load_previous_map_page
    previous_start_id = @map_history.pop
    previous_start_id ||= @map_list_window.page[:previous_start_id]
    return @map_list_window.activate unless previous_start_id

    @map_start_id = previous_start_id
    dispose_map_list
    open_map_list(previous_start_id)
  end

  def select_map_for_events
    @selected_map_id = @map_list_window.current_ext
    @map_event_return_target = :map_list
    @map_list_window.hide
    @map_list_window.deactivate
    open_map_event_list
  end

  def open_map_event_list
    @map_event_window = Window_ResearchModMapEventList.new(
      @selected_map_id, @map_help_window
    )
    @map_event_window.set_handler(:select, method(:select_map_event))
    @map_event_window.set_handler(:cancel, method(:close_map_event_list))
  end

  def close_map_event_list
    defer_research_mod_window_dispose(@map_event_window)
    @map_event_window = nil
    if @map_event_return_target == :map_list && @map_list_window
      @map_list_window.show
      @map_list_window.activate
      @map_list_window.update_help
    else
      @map_mode_window.show
      @map_mode_window.activate
      @map_mode_window.update_help
    end
  end

  def select_map_event
    @selected_map_event = @map_event_window.current_ext
    @map_event_window.hide
    @map_event_window.deactivate
    @map_page_window = Window_ResearchModMapPageList.new(
      @selected_map_id, @selected_map_event, @map_help_window
    )
    @map_page_window.set_handler(:select, method(:open_map_event_detail))
    @map_page_window.set_handler(:self_switch, method(:open_self_switch_list))
    @map_page_window.set_handler(:teleport, method(:open_map_event_teleport_confirm))
    @map_page_window.set_handler(:cancel, method(:close_map_page_list))
  end

  def open_map_event_teleport_confirm
    @map_page_window.hide
    @map_page_window.deactivate
    @map_teleport_confirm_window = Window_ResearchModTeleportConfirm.new(
      @selected_map_id, @selected_map_event,
      @selected_map_event.x, @selected_map_event.y, @map_help_window,
      '取消并返回事件菜单'
    )
    @map_teleport_confirm_window.set_handler(
      :confirm, method(:execute_map_event_teleport)
    )
    @map_teleport_confirm_window.set_handler(
      :cancel, method(:close_map_event_teleport_confirm)
    )
  end

  def close_map_event_teleport_confirm
    defer_research_mod_window_dispose(@map_teleport_confirm_window)
    @map_teleport_confirm_window = nil
    @map_page_window.show
    @map_page_window.activate
    @map_page_window.update_help
  end

  def execute_map_event_teleport
    success = ResearchMod.reserve_teleport(
      @selected_map_id, @selected_map_event.x, @selected_map_event.y
    )
    unless success
      Sound.play_buzzer
      @map_teleport_confirm_window.activate
      @map_help_window.set_text(
        '目标地图或事件坐标无效，无法执行传送。取消后请选择其他事件。'
      )
      return
    end

    close_map_inspector
    SceneManager.goto(Scene_Map)
  end

  def open_self_switch_list
    @map_page_window.hide
    @map_page_window.deactivate
    @self_switch_list_window = Window_ResearchModSelfSwitchList.new(
      @selected_map_id, @selected_map_event, @map_help_window
    )
    @self_switch_list_window.set_handler(:select, method(:select_self_switch))
    @self_switch_list_window.set_handler(:cancel, method(:close_self_switch_list))
  end

  def close_self_switch_list
    defer_research_mod_window_dispose(@self_switch_list_window)
    @self_switch_list_window = nil
    $game_map.refresh if ResearchMod.current_map_id?(@selected_map_id)
    index = @map_page_window.index
    @map_page_window.refresh
    @map_page_window.select([index, @map_page_window.item_max - 1].min)
    @map_page_window.show
    @map_page_window.activate
    @map_page_window.update_help
  end

  def select_self_switch
    @selected_self_switch_key = @self_switch_list_window.current_ext
    @self_switch_list_window.deactivate
    @self_switch_action_window = Window_ResearchModSelfSwitchAction.new(
      @selected_map_id, @selected_map_event, @selected_self_switch_key,
      @map_help_window
    )
    @self_switch_action_window.set_handler(:set, method(:apply_self_switch))
    @self_switch_action_window.set_handler(:cancel, method(:close_self_switch_action))
  end

  def apply_self_switch
    ResearchMod.set_self_switch(
      @selected_map_id, @selected_map_event.id, @selected_self_switch_key,
      @self_switch_action_window.current_ext
    )
    close_self_switch_action
  end

  def close_self_switch_action
    defer_research_mod_window_dispose(@self_switch_action_window)
    @self_switch_action_window = nil
    index = @self_switch_list_window.index
    @self_switch_list_window.refresh
    @self_switch_list_window.select(index)
    @self_switch_list_window.activate
    @self_switch_list_window.update_help
    @selected_self_switch_key = nil
  end

  def close_map_page_list
    defer_research_mod_window_dispose(@map_page_window)
    @map_page_window = nil
    @selected_map_event = nil
    @map_event_window.show
    @map_event_window.activate
    @map_event_window.update_help
  end

  def open_map_event_detail
    page_index = @map_page_window.current_ext
    lines = ResearchMod.event_page_detail_lines(
      @selected_map_id, @selected_map_event, page_index
    )
    @map_page_window.hide
    @map_page_window.deactivate
    @map_help_window.hide
    @map_detail_window = Window_ResearchModMapDetail.new(lines)
    @map_detail_window.set_handler(:cancel, method(:close_map_event_detail))
  end

  def close_map_event_detail
    defer_research_mod_window_dispose(@map_detail_window)
    @map_detail_window = nil
    @map_help_window.show
    @map_page_window.show
    @map_page_window.activate
    @map_page_window.update_help
  end

  def use_guiding_thread_without_cost
    common_event_id = ResearchMod::GUIDING_THREAD_COMMON_EVENT_ID
    unless $data_common_events[common_event_id]
      Sound.play_buzzer
      @command_window.activate
      @command_help_window.set_text('无法读取「導きの糸」使用的原版公共事件。')
      return
    end

    $game_temp.reserve_common_event(common_event_id)
    SceneManager.goto(Scene_Map)
  end

  def use_harpy_feather_original_without_cost
    unless $data_items[ResearchMod::HARPY_FEATHER_ITEM_ID] &&
           defined?(Scene_Warp) && ResearchMod.harpy_feather_original_usable?
      Sound.play_buzzer
      @command_window.activate
      @command_help_window.set_text('当前无法使用「哈比羽毛」：原版传送条件不满足。')
      return
    end

    open_harpy_feather_scene_without_cost(false)
  end

  def use_harpy_feather_modified_without_cost
    item = $data_items[ResearchMod::HARPY_FEATHER_ITEM_ID]
    unless item && defined?(Scene_Warp) && ResearchMod.harpy_feather_modified_usable?
      Sound.play_buzzer
      @command_window.activate
      @command_help_window.set_text('当前无法使用「哈比羽毛改」：缺少传送场景或有效地点数据。')
      return
    end

    open_harpy_feather_scene_without_cost(true)
  end

  def open_harpy_feather_scene_without_cost(all_places)
    item = $data_items[ResearchMod::HARPY_FEATHER_ITEM_ID]
    free_item = item.clone
    free_item.consumable = false
    free_item.instance_variable_set(
      ResearchMod::HARPY_FEATHER_ALL_PLACES_KEY, all_places
    )
    SceneManager.goto(Scene_Warp)
    SceneManager.scene.prepare(free_item)
  end

  def open_custom_teleport_points
    @custom_teleport_point_help_window = Window_Help.new(3)
    @custom_teleport_point_help_window.y = Graphics.height - @custom_teleport_point_help_window.height
    @custom_teleport_point_window = Window_ResearchModCustomTeleportPointList.new(
      @custom_teleport_point_help_window
    )
    @custom_teleport_point_window.set_handler(:select, method(:select_custom_teleport_point))
    @custom_teleport_point_window.set_handler(:cancel, method(:close_custom_teleport_points))
    @command_window.deactivate
  end

  def select_custom_teleport_point
    @selected_custom_teleport_point_index = @custom_teleport_point_window.current_ext
    @custom_teleport_point_window.hide
    @custom_teleport_point_window.deactivate
    @custom_teleport_point_action_window = Window_ResearchModCustomTeleportPointAction.new(
      @selected_custom_teleport_point_index, @custom_teleport_point_help_window
    )
    @custom_teleport_point_action_window.set_handler(:record, method(:save_current_custom_teleport_point))
    @custom_teleport_point_action_window.set_handler(:transfer, method(:execute_custom_teleport_point))
    @custom_teleport_point_action_window.set_handler(:clear, method(:clear_custom_teleport_point))
    @custom_teleport_point_action_window.set_handler(:cancel, method(:close_custom_teleport_point_action))
  end

  def save_current_custom_teleport_point
    ResearchMod.save_current_custom_teleport_point(@selected_custom_teleport_point_index)
    close_custom_teleport_point_action
  end

  def clear_custom_teleport_point
    ResearchMod.clear_custom_teleport_point(@selected_custom_teleport_point_index)
    close_custom_teleport_point_action
  end

  def execute_custom_teleport_point
    unless ResearchMod.reserve_custom_teleport_point(@selected_custom_teleport_point_index)
      Sound.play_buzzer
      @custom_teleport_point_action_window.activate
      @custom_teleport_point_help_window.set_text('保存的地图或坐标无效。请清除后重新记录。')
      return
    end

    close_custom_teleport_points
    SceneManager.goto(Scene_Map)
  end

  def close_custom_teleport_point_action
    index = @selected_custom_teleport_point_index
    defer_research_mod_window_dispose(@custom_teleport_point_action_window)
    @custom_teleport_point_action_window = nil
    @selected_custom_teleport_point_index = nil
    @custom_teleport_point_window.refresh
    @custom_teleport_point_window.select(index)
    @custom_teleport_point_window.show
    @custom_teleport_point_window.activate
    @custom_teleport_point_window.update_help
  end

  def close_custom_teleport_points
    defer_research_mod_window_dispose(@custom_teleport_point_action_window)
    defer_research_mod_window_dispose(@custom_teleport_point_window)
    defer_research_mod_window_dispose(@custom_teleport_point_help_window)
    @custom_teleport_point_action_window = nil
    @custom_teleport_point_window = nil
    @custom_teleport_point_help_window = nil
    @selected_custom_teleport_point_index = nil
    @command_window.activate
  end

  def open_teleport_browser
    @teleport_help_window = Window_Help.new(4)
    @teleport_help_window.y = Graphics.height - @teleport_help_window.height
    @teleport_map_id ||= $game_map.map_id
    @teleport_map_history = []
    @teleport_map_input_return = nil
    @command_window.deactivate
    open_teleport_map_id_input
  end

  def open_teleport_map_id_input
    unless @teleport_map_id_window
      @teleport_map_id_window = Window_ResearchModMapIdInput.new
      @teleport_map_id_window.set_handler(:ok, method(:apply_teleport_map_id))
      @teleport_map_id_window.set_handler(:cancel, method(:close_teleport_map_id_input))
    end
    @teleport_map_id_window.setup(@teleport_map_id)
    cancel_text = case @teleport_map_input_return
                  when :event then '返回事件列表。'
                  when :map then '返回地图列表。'
                  else '返回研究修改器。'
                  end
    text = format('请输入地图起始ID（1～%d）\n确认：加载最多%d张地图并选择目标地图。\n选择地图后再选择事件和传送坐标。\n取消：%s',
                  ResearchMod.map_maximum_id, ResearchMod::MAP_PAGE_SIZE, cancel_text)
    @teleport_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end

  def close_teleport_map_id_input
    defer_research_mod_window_dispose(@teleport_map_id_window)
    @teleport_map_id_window = nil
    if @teleport_map_input_return == :event && @teleport_event_window
      @teleport_event_window.show
      @teleport_event_window.activate
      @teleport_event_window.update_help
    elsif @teleport_map_input_return == :map && @teleport_map_list_window
      @teleport_map_list_window.show
      @teleport_map_list_window.activate
      @teleport_map_list_window.update_help
    else
      close_teleport_browser
    end
    @teleport_map_input_return = nil
  end

  def apply_teleport_map_id
    map_id = @teleport_map_id_window.number
    unless ResearchMod.map_data(map_id)
      Sound.play_buzzer
      @teleport_map_id_window.activate
      @teleport_help_window.set_text(format('地图 ID %d 的数据无法读取。\n请重新输入地图 ID，或取消返回。',
                                             map_id).gsub(92.chr + 'n', 10.chr))
      return
    end

    @teleport_map_id = map_id
    @teleport_map_history = []
    @teleport_map_input_return = nil
    defer_research_mod_window_dispose(@teleport_map_id_window)
    @teleport_map_id_window = nil
    dispose_teleport_map_list
    dispose_teleport_event_list
    open_teleport_map_list(@teleport_map_id)
  end

  def open_teleport_map_list(start_id)
    @teleport_map_list_window = Window_ResearchModMapList.new(
      start_id, @teleport_map_history, @teleport_help_window, :teleport
    )
    @teleport_map_list_window.set_handler(:select, method(:select_teleport_map))
    @teleport_map_list_window.set_handler(:reinput, method(:reinput_teleport_map_start_id))
    @teleport_map_list_window.set_handler(:previous, method(:load_previous_teleport_map_page))
    @teleport_map_list_window.set_handler(:next, method(:load_next_teleport_map_page))
    @teleport_map_list_window.set_handler(:cancel, method(:close_teleport_map_list))
  end

  def dispose_teleport_map_list
    defer_research_mod_window_dispose(@teleport_map_list_window)
    @teleport_map_list_window = nil
  end

  def close_teleport_map_list
    dispose_teleport_map_list
    close_teleport_browser
  end

  def reinput_teleport_map_start_id
    @teleport_map_list_window.hide
    @teleport_map_list_window.deactivate
    @teleport_map_input_return = :map
    open_teleport_map_id_input
  end

  def load_next_teleport_map_page
    next_start_id = @teleport_map_list_window.page[:next_start_id]
    return @teleport_map_list_window.activate unless next_start_id

    @teleport_map_history.push(@teleport_map_list_window.page[:start_id])
    @teleport_map_id = next_start_id
    dispose_teleport_map_list
    open_teleport_map_list(next_start_id)
  end

  def load_previous_teleport_map_page
    previous_start_id = @teleport_map_history.pop
    previous_start_id ||= @teleport_map_list_window.page[:previous_start_id]
    return @teleport_map_list_window.activate unless previous_start_id

    @teleport_map_id = previous_start_id
    dispose_teleport_map_list
    open_teleport_map_list(previous_start_id)
  end

  def select_teleport_map
    map_id = @teleport_map_list_window.current_ext
    unless ResearchMod.map_data(map_id)
      Sound.play_buzzer
      @teleport_map_list_window.activate
      @teleport_help_window.set_text(format('地图 ID %d 的数据无法读取。请选择其他地图。', map_id))
      return
    end

    @teleport_map_id = map_id
    @teleport_map_list_window.hide
    @teleport_map_list_window.deactivate
    open_teleport_event_list
  end

  def open_teleport_event_list
    @teleport_event_window = Window_ResearchModTeleportEventList.new(
      @teleport_map_id, @teleport_help_window
    )
    @teleport_event_window.set_handler(:select, method(:select_teleport_event))
    @teleport_event_window.set_handler(:reinput, method(:reinput_teleport_map_id))
    @teleport_event_window.set_handler(:cancel, method(:close_teleport_event_list))
  end

  def dispose_teleport_event_list
    defer_research_mod_window_dispose(@teleport_event_window)
    @teleport_event_window = nil
  end

  def close_teleport_event_list
    dispose_teleport_event_list
    if @teleport_map_list_window
      @teleport_map_list_window.show
      @teleport_map_list_window.activate
      @teleport_map_list_window.update_help
    else
      close_teleport_browser
    end
  end

  def reinput_teleport_map_id
    @teleport_event_window.hide
    @teleport_event_window.deactivate
    @teleport_map_input_return = :event
    open_teleport_map_id_input
  end

  def select_teleport_event
    @teleport_event = @teleport_event_window.current_ext
    @teleport_x = @teleport_event.x
    @teleport_y = @teleport_event.y
    @teleport_event_window.hide
    @teleport_event_window.deactivate
    open_teleport_coordinate_menu
  end

  def open_teleport_coordinate_menu
    @teleport_coordinate_window = Window_ResearchModTeleportCoordinateMenu.new(
      @teleport_map_id, @teleport_event, @teleport_x, @teleport_y,
      @teleport_help_window
    )
    @teleport_coordinate_window.set_handler(:edit_x, method(:edit_teleport_x))
    @teleport_coordinate_window.set_handler(:edit_y, method(:edit_teleport_y))
    @teleport_coordinate_window.set_handler(:restore, method(:restore_teleport_coordinates))
    @teleport_coordinate_window.set_handler(:transfer, method(:open_teleport_confirm))
    @teleport_coordinate_window.set_handler(:cancel, method(:close_teleport_coordinate_menu))
  end

  def edit_teleport_x
    open_teleport_coordinate_input(:x)
  end

  def edit_teleport_y
    open_teleport_coordinate_input(:y)
  end

  def open_teleport_coordinate_input(axis)
    map = ResearchMod.map_data(@teleport_map_id)
    maximum = axis == :x ? map.width - 1 : map.height - 1
    current = axis == :x ? @teleport_x : @teleport_y
    unless @teleport_coordinate_input_window
      @teleport_coordinate_input_window = Window_ResearchModTeleportCoordinateInput.new
      @teleport_coordinate_input_window.set_handler(:ok, method(:apply_teleport_coordinate))
      @teleport_coordinate_input_window.set_handler(:cancel, method(:close_teleport_coordinate_input))
    end
    @teleport_coordinate_axis = axis
    @teleport_coordinate_window.hide
    @teleport_coordinate_window.deactivate
    @teleport_coordinate_input_window.setup(maximum, current)
    axis_name = axis == :x ? 'X' : 'Y'
    text = format('地图 %04d「%s」\n参考事件 %04d「%s」\n请输入传送坐标 %s（0～%d）。\n取消：返回坐标编辑菜单，不修改该坐标。',
                  @teleport_map_id, ResearchMod.map_name(@teleport_map_id),
                  @teleport_event.id, ResearchMod.event_display_name(@teleport_event),
                  axis_name, maximum)
    @teleport_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end

  def apply_teleport_coordinate
    value = @teleport_coordinate_input_window.number
    @teleport_coordinate_axis == :x ? @teleport_x = value : @teleport_y = value
    close_teleport_coordinate_input
    @teleport_coordinate_window.set_coordinates(@teleport_x, @teleport_y)
  end

  def close_teleport_coordinate_input
    @teleport_coordinate_input_window.close
    @teleport_coordinate_input_window.deactivate
    @teleport_coordinate_window.show
    @teleport_coordinate_window.activate
    @teleport_coordinate_window.update_help
    @teleport_coordinate_axis = nil
  end

  def restore_teleport_coordinates
    @teleport_x = @teleport_event.x
    @teleport_y = @teleport_event.y
    index = @teleport_coordinate_window.index
    @teleport_coordinate_window.set_coordinates(@teleport_x, @teleport_y)
    @teleport_coordinate_window.select(index)
    @teleport_coordinate_window.activate
  end

  def close_teleport_coordinate_menu
    defer_research_mod_window_dispose(@teleport_coordinate_input_window)
    defer_research_mod_window_dispose(@teleport_coordinate_window)
    @teleport_coordinate_input_window = nil
    @teleport_coordinate_window = nil
    @teleport_coordinate_axis = nil
    @teleport_event = nil
    @teleport_event_window.show
    @teleport_event_window.activate
    @teleport_event_window.update_help
  end

  def open_teleport_confirm
    @teleport_coordinate_window.hide
    @teleport_coordinate_window.deactivate
    @teleport_confirm_window = Window_ResearchModTeleportConfirm.new(
      @teleport_map_id, @teleport_event, @teleport_x, @teleport_y,
      @teleport_help_window
    )
    @teleport_confirm_window.set_handler(:confirm, method(:execute_teleport))
    @teleport_confirm_window.set_handler(:cancel, method(:close_teleport_confirm))
  end

  def close_teleport_confirm
    defer_research_mod_window_dispose(@teleport_confirm_window)
    @teleport_confirm_window = nil
    @teleport_coordinate_window.show
    @teleport_coordinate_window.activate
    @teleport_coordinate_window.update_help
  end

  def execute_teleport
    unless ResearchMod.reserve_teleport(@teleport_map_id, @teleport_x, @teleport_y)
      Sound.play_buzzer
      @teleport_confirm_window.activate
      @teleport_help_window.set_text('目标地图或坐标无效。取消后请重新编辑坐标。')
      return
    end

    close_teleport_browser
    SceneManager.goto(Scene_Map)
  end

  def close_teleport_browser
    defer_research_mod_window_dispose(@teleport_confirm_window)
    defer_research_mod_window_dispose(@teleport_coordinate_input_window)
    defer_research_mod_window_dispose(@teleport_coordinate_window)
    defer_research_mod_window_dispose(@teleport_event_window)
    defer_research_mod_window_dispose(@teleport_map_list_window)
    defer_research_mod_window_dispose(@teleport_map_id_window)
    defer_research_mod_window_dispose(@teleport_help_window)
    @teleport_confirm_window = nil
    @teleport_coordinate_input_window = nil
    @teleport_coordinate_window = nil
    @teleport_event_window = nil
    @teleport_map_list_window = nil
    @teleport_map_id_window = nil
    @teleport_help_window = nil
    @teleport_event = nil
    @teleport_coordinate_axis = nil
    @teleport_map_input_return = nil
    @teleport_map_history = nil
    @command_window.activate
  end

  def open_lose_event_browser
    @lose_event_mode = :lose_event
    open_lose_event_browser_with_mode
  end

  def open_reflection_meeting_browser
    @lose_event_mode = :reflection
    open_lose_event_browser_with_mode
  end

  def open_lose_event_browser_with_mode
    @lose_event_help_window = Window_Help.new(3)
    @lose_event_help_window.y = Graphics.height - @lose_event_help_window.height
    @lose_event_start_id ||= 1
    @lose_event_history = []
    @command_window.deactivate
    open_lose_event_id_input(false)
  end

  def open_lose_event_id_input(return_to_list)
    if !@lose_event_id_window || @lose_event_id_window.disposed?
      @lose_event_id_window = Window_ResearchModLoseEventIdInput.new
      @lose_event_id_window.set_handler(:ok, method(:apply_lose_event_start_id))
      @lose_event_id_window.set_handler(:cancel, method(:close_lose_event_id_input))
    end
    @lose_event_return_to_list = return_to_list
    @lose_event_id_window.setup(@lose_event_start_id)
    maximum_id = [$data_enemies.size - 1, 1].max
    title = @lose_event_mode == :reflection ? '反省会' : '战败事件'
    text = format('请输入敌人起始ID（1～%d）\n确认：加载最多%d个%s　取消：返回\n跳过空名称、无事件和原版禁止回想的敌人。',
                  maximum_id, ResearchMod::LOSE_EVENT_PAGE_SIZE, title)
    @lose_event_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end

  def close_lose_event_id_input
    @lose_event_id_window.close
    @lose_event_id_window.deactivate
    if @lose_event_return_to_list && @lose_event_list_window
      @lose_event_list_window.show
      @lose_event_list_window.activate
      @lose_event_list_window.update_help
    else
      close_lose_event_browser
    end
  end

  def apply_lose_event_start_id
    @lose_event_start_id = @lose_event_id_window.number
    @lose_event_history = []
    @lose_event_id_window.close
    @lose_event_id_window.deactivate
    dispose_lose_event_list
    open_lose_event_list(@lose_event_start_id)
  end

  def open_lose_event_list(start_id)
    @lose_event_list_window = Window_ResearchModLoseEventList.new(
      start_id, @lose_event_history, @lose_event_help_window, @lose_event_mode
    )
    @lose_event_list_window.set_handler(:select, method(:select_lose_event_enemy))
    @lose_event_list_window.set_handler(:reinput, method(:reinput_lose_event_start_id))
    @lose_event_list_window.set_handler(:previous, method(:load_previous_lose_event_page))
    @lose_event_list_window.set_handler(:next, method(:load_next_lose_event_page))
    @lose_event_list_window.set_handler(:cancel, method(:close_lose_event_browser))
  end

  def dispose_lose_event_list
    defer_research_mod_window_dispose(@lose_event_list_window)
    @lose_event_list_window = nil
  end

  def close_lose_event_browser
    defer_research_mod_window_dispose(@lose_event_confirm_window)
    @lose_event_confirm_window = nil
    dispose_lose_event_list
    defer_research_mod_window_dispose(@lose_event_id_window)
    defer_research_mod_window_dispose(@lose_event_help_window)
    @lose_event_id_window = nil
    @lose_event_help_window = nil
    @lose_event_enemy = nil
    @lose_event_return_to_list = false
    @lose_event_mode = nil
    @return_to_lose_event_preview = nil
    ResearchMod.finish_lose_event_preview
    @command_window.activate
  end

  def reinput_lose_event_start_id
    @lose_event_list_window.hide
    @lose_event_list_window.deactivate
    open_lose_event_id_input(true)
  end

  def load_next_lose_event_page
    next_start_id = @lose_event_list_window.page[:next_start_id]
    return @lose_event_list_window.activate unless next_start_id

    @lose_event_history.push(@lose_event_list_window.page[:start_id])
    @lose_event_start_id = next_start_id
    dispose_lose_event_list
    open_lose_event_list(next_start_id)
  end

  def load_previous_lose_event_page
    previous_start_id = @lose_event_history.pop
    previous_start_id ||= @lose_event_list_window.page[:previous_start_id]
    return @lose_event_list_window.activate unless previous_start_id

    @lose_event_start_id = previous_start_id
    dispose_lose_event_list
    open_lose_event_list(previous_start_id)
  end

  def select_lose_event_enemy
    @lose_event_enemy = @lose_event_list_window.current_ext
    @lose_event_list_window.deactivate
    @lose_event_confirm_window = Window_ResearchModLoseEventConfirm.new(
      @lose_event_enemy, @lose_event_help_window, @lose_event_mode
    )
    @lose_event_confirm_window.z = 500
    @lose_event_confirm_window.set_handler(:confirm, method(:play_lose_event))
    @lose_event_confirm_window.set_handler(:cancel, method(:close_lose_event_confirm))
  end

  def close_lose_event_confirm
    defer_research_mod_window_dispose(@lose_event_confirm_window)
    @lose_event_confirm_window = nil
    @lose_event_enemy = nil
    @lose_event_list_window.activate
    @lose_event_list_window.update_help
  end

  def play_lose_event
    setup_result = if @lose_event_mode == :reflection
                     ResearchMod.setup_reflection_meeting(@lose_event_enemy)
                   else
                     ResearchMod.setup_lose_event(@lose_event_enemy)
                   end
    if setup_result
      @return_to_lose_event_preview = {
        :mode => @lose_event_mode,
        :start_id => @lose_event_list_window.page[:start_id],
        :history => @lose_event_history.dup,
        :index => @lose_event_list_window.index
      }
      ResearchMod.start_lose_event_preview
      @lose_event_confirm_window.hide
      @lose_event_confirm_window.deactivate
      SceneManager.call(Scene_Novel)
    else
      Sound.play_buzzer
      @lose_event_confirm_window.activate
      title = @lose_event_mode == :reflection ? '反省会' : '战败事件'
      @lose_event_help_window.set_text('该敌人的' + title + '当前无法播放。')
    end
  end

  def open_custom_battle
    @battle_help_window = Window_Help.new(ResearchMod::CUSTOM_BATTLE_HELP_LINES)
    @battle_help_window.y = Graphics.height - @battle_help_window.height
    @battle_type_window = Window_ResearchModBattleType.new(@battle_help_window)
    @battle_type_window.set_handler(:select, method(:select_battle_database))
    @battle_type_window.set_handler(:encounter, method(:select_map_encounter))
    @battle_type_window.set_handler(:cancel, method(:close_custom_battle))
    @battle_start_ids ||= { :enemy => 1, :troop => 1 }
    @command_window.deactivate
  end

  def close_custom_battle
    defer_research_mod_window_dispose(@custom_battle_candidate_window)
    defer_research_mod_window_dispose(@enemy_preview_detail_window)
    defer_research_mod_window_dispose(@enemy_preview_category_window)
    @custom_battle_candidate_window = nil
    @enemy_preview_detail_window = nil
    @enemy_preview_category_window = nil
    @custom_battle_candidate_dialogue_pending = false
    defer_research_mod_window_dispose(@battle_type_window)
    defer_research_mod_window_dispose(@battle_help_window)
    @battle_type_window = nil
    @battle_help_window = nil
    @command_window.activate
  end

  def select_battle_database
    @battle_kind = @battle_type_window.current_ext
    @battle_type_window.deactivate
    open_battle_id_input
  end

  def open_battle_id_input
    unless @battle_id_window
      @battle_id_window = Window_ResearchModBattleIdInput.new
      @battle_id_window.set_handler(:ok, method(:apply_battle_start_id))
      @battle_id_window.set_handler(:cancel, method(:close_battle_id_input))
    end
    @battle_id_window.setup(@battle_kind, @battle_start_ids[@battle_kind])
    maximum_id = ResearchMod.battle_database(@battle_kind).size - 1
    note = @battle_kind == :enemy ? '跳过名称为空的敌人。' : '保留有成员的无名称敌群。'
    text = format('请输入%s起始ID（1～%d）\n确认：加载最多%d项　取消：返回类型选择\n%s',
                  ResearchMod.battle_kind_name(@battle_kind), maximum_id,
                  ResearchMod::BATTLE_PAGE_SIZE, note)
    @battle_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end

  def close_battle_id_input
    defer_research_mod_window_dispose(@battle_id_window)
    @battle_id_window = nil
    @battle_type_window.activate
    @battle_type_window.update_help
  end

  def apply_battle_start_id
    @battle_start_ids[@battle_kind] = @battle_id_window.number
    @battle_history = []
    defer_research_mod_window_dispose(@battle_id_window)
    @battle_id_window = nil
    open_battle_list(@battle_start_ids[@battle_kind])
  end

  def open_battle_list(start_id)
    @battle_type_window.hide
    @battle_list_window = Window_ResearchModBattleList.new(
      @battle_kind, start_id, @battle_history, @battle_help_window
    )
    @battle_list_window.set_handler(:select, method(:select_battle_entry))
    @battle_list_window.set_handler(:reinput, method(:reinput_battle_start_id))
    @battle_list_window.set_handler(:previous, method(:load_previous_battle_page))
    @battle_list_window.set_handler(:next, method(:load_next_battle_page))
    @battle_list_window.set_handler(:cancel, method(:close_battle_list))
  end

  def dispose_battle_list
    defer_research_mod_window_dispose(@battle_list_window)
    @battle_list_window = nil
  end

  def close_battle_list
    dispose_battle_list
    @battle_type_window.show
    @battle_type_window.activate
    @battle_type_window.update_help
  end

  def reinput_battle_start_id
    dispose_battle_list
    @battle_type_window.show
    open_battle_id_input
  end

  def load_next_battle_page
    next_start_id = @battle_list_window.page[:next_start_id]
    return @battle_list_window.activate unless next_start_id

    @battle_history.push(@battle_list_window.page[:start_id])
    @battle_start_ids[@battle_kind] = next_start_id
    dispose_battle_list
    open_battle_list(next_start_id)
  end

  def load_previous_battle_page
    previous_start_id = @battle_history.pop
    previous_start_id ||= @battle_list_window.page[:previous_start_id]
    return @battle_list_window.activate unless previous_start_id

    @battle_start_ids[@battle_kind] = previous_start_id
    dispose_battle_list
    open_battle_list(previous_start_id)
  end

  def select_battle_entry
    entry = @battle_list_window.current_ext
    if @battle_kind == :enemy
      open_enemy_battle_mode(entry)
    else
      open_battle_confirm({ :troop_id => entry.id }, @battle_list_window)
    end
  end

  def open_enemy_battle_mode(enemy)
    @battle_enemy = enemy
    @battle_list_window.deactivate
    @enemy_battle_mode_window = Window_ResearchModEnemyBattleMode.new(
      enemy, @battle_help_window
    )
    @enemy_battle_mode_window.set_handler(:original, method(:select_original_enemy_troop))
    @enemy_battle_mode_window.set_handler(:enemy_info, method(:open_enemy_preview))
    @enemy_battle_mode_window.set_handler(:temporary, method(:select_temporary_enemy))
    @enemy_battle_mode_window.set_handler(:enemy_items, method(:open_enemy_item_menu))
    @enemy_battle_mode_window.set_handler(:candidate_manage,
                                          method(:open_custom_battle_candidate_manage))
    @enemy_battle_mode_window.set_handler(:cancel, method(:close_enemy_battle_mode))
  end

  def open_enemy_preview
    enemy = @battle_enemy
    unless enemy
      @enemy_battle_mode_window.activate if @enemy_battle_mode_window
      return
    end

    @enemy_battle_mode_window.hide
    @enemy_battle_mode_window.deactivate
    @battle_help_window.hide
    @enemy_preview_category_window = Window_ResearchModEnemyPreviewCategory.new(enemy)
    @enemy_preview_detail_window = Window_ResearchModEnemyPreviewDetail.new(
      enemy, @enemy_preview_category_window.width
    )
    Window_ResearchModEnemyPreviewCategory::CATEGORIES.each do |category, _label|
      @enemy_preview_category_window.set_handler(category,
                                                 method(:select_enemy_preview_category))
    end
    @enemy_preview_category_window.set_handler(:cancel, method(:close_enemy_preview))
    @enemy_preview_detail_window.set_handler(:category,
                                             method(:focus_enemy_preview_category))
    @enemy_preview_detail_window.set_handler(:cancel, method(:close_enemy_preview))
    @enemy_preview_category_window.activate
    @enemy_preview_category_window.select(0)
    @enemy_preview_detail_window.set_category(:stats)
    @enemy_preview_detail_window.refresh
  rescue
    close_enemy_preview
  end

  def select_enemy_preview_category
    category = @enemy_preview_category_window.current_symbol
    return close_enemy_preview if category == :cancel

    @enemy_preview_detail_window.set_category(category)
    @enemy_preview_category_window.deactivate
    @enemy_preview_detail_window.activate
    @enemy_preview_detail_window.refresh
  end

  def focus_enemy_preview_category
    @enemy_preview_detail_window.deactivate
    @enemy_preview_detail_window.refresh
    @enemy_preview_category_window.activate
  end

  def close_enemy_preview
    defer_research_mod_window_dispose(@enemy_preview_detail_window)
    defer_research_mod_window_dispose(@enemy_preview_category_window)
    @enemy_preview_detail_window = nil
    @enemy_preview_category_window = nil
    @battle_help_window.show if @battle_help_window
    if @enemy_battle_mode_window
      @enemy_battle_mode_window.show
      @enemy_battle_mode_window.activate
      @enemy_battle_mode_window.update_help
    end
  end

  def open_custom_battle_candidate_manage
    actor = @enemy_battle_mode_window && @enemy_battle_mode_window.follower_actor
    unless actor
      @enemy_battle_mode_window.activate if @enemy_battle_mode_window
      return
    end

    @enemy_battle_mode_window.deactivate
    @custom_battle_candidate_window = Window_ResearchModActorCandidateManage.new(actor)
    @custom_battle_candidate_window.set_handler(:add,
                                                method(:add_custom_battle_candidate))
    @custom_battle_candidate_window.set_handler(:remove,
                                                method(:remove_custom_battle_candidate))
    @custom_battle_candidate_window.set_handler(:cancel,
                                                method(:close_custom_battle_candidate))
  rescue
    @enemy_battle_mode_window.activate if @enemy_battle_mode_window
  end

  def custom_battle_candidate_actor
    @enemy_battle_mode_window && @enemy_battle_mode_window.follower_actor
  end

  def add_custom_battle_candidate
    actor = custom_battle_candidate_actor
    if actor && $game_party && $game_party.respond_to?(:follow?) &&
       !$game_party.follow?(actor.id)
      $game_party.add_stand_actor(actor.id)
      word = actor_encyclopedia_follower_word(actor, :yes)
      return play_custom_battle_candidate_word(word) if word
    end
    close_custom_battle_candidate
  end

  def remove_custom_battle_candidate
    actor = custom_battle_candidate_actor
    if actor && $game_party && $game_party.respond_to?(:stand_actors) &&
       $game_party.stand_actors.include?(actor.id)
      $game_party.remove_stand_actor(actor.id)
      ResearchMod.mark_removed_candidate_actor(actor.id)
      word = actor_encyclopedia_follower_word(actor, :no)
      return play_custom_battle_candidate_word(word) if word
    end
    close_custom_battle_candidate
  end

  def play_custom_battle_candidate_word(word)
    @custom_battle_candidate_dialogue_pending = true
    if @custom_battle_candidate_window
      @custom_battle_candidate_window.hide
      @custom_battle_candidate_window.deactivate
    end
    @enemy_battle_mode_window.hide if @enemy_battle_mode_window
    word.execute
  rescue
    @custom_battle_candidate_dialogue_pending = false
    close_custom_battle_candidate
  end

  def finish_custom_battle_candidate_dialogue
    @custom_battle_candidate_dialogue_pending = false
    close_custom_battle_candidate
  end

  def close_custom_battle_candidate
    @custom_battle_candidate_dialogue_pending = false
    defer_research_mod_window_dispose(@custom_battle_candidate_window)
    @custom_battle_candidate_window = nil
    if @enemy_battle_mode_window
      @enemy_battle_mode_window.refresh
      @enemy_battle_mode_window.show
      @enemy_battle_mode_window.activate
      @enemy_battle_mode_window.update_help
    end
  end

  def close_enemy_battle_mode
    defer_research_mod_window_dispose(@custom_battle_candidate_window)
    defer_research_mod_window_dispose(@enemy_preview_detail_window)
    defer_research_mod_window_dispose(@enemy_preview_category_window)
    @custom_battle_candidate_window = nil
    @enemy_preview_detail_window = nil
    @enemy_preview_category_window = nil
    @custom_battle_candidate_dialogue_pending = false
    defer_research_mod_window_dispose(@enemy_battle_mode_window)
    @enemy_battle_mode_window = nil
    @battle_enemy = nil
    @battle_list_window.activate
    @battle_list_window.update_help
  end

  def select_original_enemy_troop
    troops = @enemy_battle_mode_window.troops
    return @enemy_battle_mode_window.activate if troops.empty?

    if troops.size == 1
      open_battle_confirm({ :troop_id => troops[0].id }, @enemy_battle_mode_window)
    else
      open_enemy_troop_list(troops)
    end
  end

  def select_temporary_enemy
    request = { :temporary_enemy_id => @battle_enemy.id }
    open_battle_confirm(request, @enemy_battle_mode_window)
  end

  def open_enemy_item_menu
    @enemy_battle_mode_window.hide
    @enemy_battle_mode_window.deactivate
    @enemy_item_list_window = Window_ResearchModEnemyItemList.new(
      @battle_enemy, @battle_help_window
    )
    @enemy_item_list_window.set_handler(:all, method(:select_all_enemy_items))
    @enemy_item_list_window.set_handler(:select, method(:select_enemy_item))
    @enemy_item_list_window.set_handler(:cancel, method(:close_enemy_item_menu))
  end

  def close_enemy_item_menu
    defer_research_mod_window_dispose(@enemy_item_quantity_window)
    defer_research_mod_window_dispose(@enemy_item_list_window)
    @enemy_item_quantity_window = nil
    @enemy_item_list_window = nil
    @enemy_item_target_entries = nil
    @enemy_battle_mode_window.show
    @enemy_battle_mode_window.activate
    @enemy_battle_mode_window.update_help
  end

  def select_all_enemy_items
    entries = ResearchMod.enemy_item_available_entries(
      @enemy_item_list_window.entries
    )
    open_enemy_item_quantity(entries, true)
  end

  def select_enemy_item
    entry = @enemy_item_list_window.current_ext
    open_enemy_item_quantity([entry], false)
  end

  def open_enemy_item_quantity(entries, gain_all)
    return @enemy_item_list_window.activate if entries.empty?

    @enemy_item_target_entries = entries
    @enemy_item_list_index = @enemy_item_list_window.index
    unless @enemy_item_quantity_window
      @enemy_item_quantity_window = Window_ResearchModEnemyItemQuantity.new
      @enemy_item_quantity_window.set_handler(:ok, method(:gain_selected_enemy_items))
      @enemy_item_quantity_window.set_handler(:cancel, method(:close_enemy_item_quantity))
    end
    @enemy_item_quantity_window.setup(entries)
    @enemy_item_list_window.deactivate
    target_text = gain_all ? format('全部%d种物品', entries.size) :
      ResearchMod.short_item_name(entries[0][:item].name)
    @battle_help_window.set_text(
      format('获取目标：%s', target_text) + 10.chr +
      format('请输入数量（1～%d）。', @enemy_item_quantity_window.maximum) + 10.chr +
      (gain_all ? '该数量会分别应用于每种物品。' : '确认后直接加入背包。')
    )
  end

  def close_enemy_item_quantity
    @enemy_item_quantity_window.close
    @enemy_item_quantity_window.deactivate
    @enemy_item_target_entries = nil
    @enemy_item_list_window.activate
    @enemy_item_list_window.update_help
  end

  def gain_selected_enemy_items
    amount = @enemy_item_quantity_window.number
    gained_kinds = 0
    gained_total = 0
    @enemy_item_target_entries.each do |entry|
      gained = ResearchMod.gain_database_item(entry[:item], amount)
      next unless gained > 0

      gained_kinds += 1
      gained_total += gained
    end
    @enemy_item_quantity_window.close
    @enemy_item_quantity_window.deactivate
    @enemy_item_target_entries = nil
    @enemy_item_list_window.refresh
    index = [@enemy_item_list_index.to_i, @enemy_item_list_window.item_max - 1].min
    @enemy_item_list_window.select([index, 0].max)
    @enemy_item_list_window.activate
    @battle_help_window.set_text(
      format('获取完成：%d种物品，共%d个。', gained_kinds, gained_total) + 10.chr +
      '已达到持有上限的部分不会重复加入。'
    )
  end

  def open_enemy_troop_list(troops)
    @enemy_battle_mode_window.hide
    @enemy_battle_mode_window.deactivate
    @enemy_troop_list_window = Window_ResearchModEnemyTroopList.new(
      troops, @battle_help_window
    )
    @enemy_troop_list_window.set_handler(:select, method(:select_enemy_troop))
    @enemy_troop_list_window.set_handler(:cancel, method(:close_enemy_troop_list))
  end

  def select_enemy_troop
    troop = @enemy_troop_list_window.current_ext
    open_battle_confirm({ :troop_id => troop.id }, @enemy_troop_list_window)
  end

  def close_enemy_troop_list
    defer_research_mod_window_dispose(@enemy_troop_list_window)
    @enemy_troop_list_window = nil
    @enemy_battle_mode_window.show
    @enemy_battle_mode_window.activate
    @enemy_battle_mode_window.update_help
  end

  def select_map_encounter
    troop_id = $game_player.make_encounter_troop_id
    troop = $data_troops[troop_id]
    unless ResearchMod.valid_battle_entry?(:troop, troop)
      Sound.play_buzzer
      @battle_help_window.set_text('当前位置没有有效的地图遇敌敌群。')
      return @battle_type_window.activate
    end

    request = { :troop_id => troop_id, :encounter => true }
    open_battle_confirm(request, @battle_type_window)
  end

  def open_battle_confirm(request, source_window)
    @battle_request = request
    @battle_confirm_source = source_window
    source_window.deactivate
    @battle_confirm_window = Window_ResearchModBattleConfirm.new(
      request, @battle_help_window
    )
    @battle_confirm_window.z = 500
    @battle_confirm_window.set_handler(:confirm, method(:start_custom_battle))
    @battle_confirm_window.set_handler(:cancel, method(:close_battle_confirm))
  end

  def close_battle_confirm
    defer_research_mod_window_dispose(@battle_confirm_window)
    @battle_confirm_window = nil
    @battle_request = nil
    source = @battle_confirm_source
    @battle_confirm_source = nil
    source.activate
    source.update_help if source.respond_to?(:update_help)
  end

  def custom_battle_return_state
    list_open = @battle_list_window && !@battle_list_window.disposed?
    {
      :kind => @battle_kind,
      :start_id => list_open ? @battle_list_window.page[:start_id] : nil,
      :list_index => list_open ? @battle_list_window.index : nil,
      :type_index => @battle_type_window ? @battle_type_window.index : 0
    }
  end

  def clear_custom_battle_window_references
    @battle_help_window = nil
    @battle_type_window = nil
    @battle_id_window = nil
    @battle_list_window = nil
    @enemy_battle_mode_window = nil
    @enemy_troop_list_window = nil
    @enemy_item_list_window = nil
    @enemy_item_quantity_window = nil
    @enemy_item_target_entries = nil
    @battle_confirm_window = nil
    @battle_confirm_source = nil
    @battle_request = nil
    @battle_enemy = nil
    @custom_battle_candidate_window = nil
    @custom_battle_candidate_dialogue_pending = false
  end

  def restore_custom_battle_after_battle
    state = @return_to_custom_battle
    @return_to_custom_battle = nil
    ResearchMod.cleanup_temporary_troop
    clear_custom_battle_window_references
    open_custom_battle
    unless state[:kind] && state[:start_id]
      @battle_type_window.select(state[:type_index] || 0)
      @battle_type_window.activate
      @battle_type_window.update_help
      return
    end

    @battle_kind = state[:kind]
    @battle_start_ids[@battle_kind] = state[:start_id]
    @battle_type_window.select(@battle_kind == :enemy ? 0 : 1)
    @battle_type_window.hide
    @battle_type_window.deactivate
    open_battle_list(state[:start_id])
    index = state[:list_index] || 0
    index = [[index, @battle_list_window.item_max - 1].min, 0].max
    @battle_list_window.select(index)
    @battle_list_window.activate
    @battle_list_window.update_help
  end

  def start_custom_battle
    unless ResearchMod.setup_battle_request(@battle_request)
      Sound.play_buzzer
      @battle_confirm_window.activate
      @battle_help_window.set_text(
        "无法开始该战斗，" +
        "请重新选择敌人或敌群。"
      )
      return
    end

    @return_to_custom_battle = custom_battle_return_state
    RPG::ME.stop
    BattleManager.save_bgm_and_bgs
    BattleManager.play_battle_bgm
    Sound.play_battle_start
    SceneManager.call(Scene_Battle)
  end

  def open_database_item_menu
    @database_type_window = Window_ResearchModDatabaseType.new(0, 0)
    @database_type_window.set_handler(:select, method(:select_database_type))
    @database_type_window.set_handler(:cancel, method(:close_database_item_menu))
    @command_window.deactivate
  end

  def close_database_item_menu
    defer_research_mod_window_dispose(@database_type_window)
    @database_type_window = nil
    @command_window.activate
  end

  def select_database_type
    @database_kind = @database_type_window.current_ext
    @database_start_ids ||= {}
    @database_start_ids[@database_kind] ||= 1
    @database_type_window.deactivate
    open_database_id_input
  end

  def open_database_id_input
    unless @database_id_window
      @database_id_window = Window_ResearchModDatabaseIdInput.new
      @database_id_window.set_handler(:ok, method(:apply_database_start_id))
      @database_id_window.set_handler(:cancel, method(:close_database_id_input))
      @database_id_help_window = Window_Help.new(3)
    end
    @database_id_window.setup(@database_kind, @database_start_ids[@database_kind])
    maximum_id = ResearchMod.database(@database_kind).size - 1
    id_hint = case @database_kind
              when :item
                '\n参考起始ID：CD 1801　可装备秘石 2101　空秘石素材 91　蛭蟲細胞 282'
              when :weapon
                '\n参考武器ID：月下美人 256　月下美人・花吹雪 4280'
              else
                ''
              end
    @database_id_help_window.set_text(
      format('请输入%s起始ID（1～%d）\n确认：加载最多%d个有名称项目　取消：返回类型选择%s',
             ResearchMod.database_kind_name(@database_kind), maximum_id,
             ResearchMod::DATABASE_PAGE_SIZE, id_hint).gsub(92.chr + 'n', 10.chr)
    )
    @database_id_help_window.y = @database_id_window.y + @database_id_window.height
    @database_id_help_window.open
  end

  def close_database_id_input
    @database_id_window.close
    @database_id_window.deactivate
    @database_id_help_window.close
    @database_type_window.activate
  end

  def apply_database_start_id
    @database_start_ids[@database_kind] = @database_id_window.number
    @database_history = []
    @database_id_window.close
    @database_id_window.deactivate
    @database_id_help_window.close
    open_database_list(@database_start_ids[@database_kind])
  end

  def open_database_list(start_id)
    @database_help_window = Window_Help.new(3)
    @database_help_window.y = Graphics.height - @database_help_window.height
    @database_list_window = Window_ResearchModDatabaseList.new(
      @database_kind, start_id, @database_history, @database_help_window
    )
    @database_list_window.set_handler(:select, method(:select_database_item))
    @database_list_window.set_handler(:reinput, method(:reinput_database_start_id))
    @database_list_window.set_handler(:previous, method(:load_previous_database_page))
    @database_list_window.set_handler(:next, method(:load_next_database_page))
    @database_list_window.set_handler(:cancel, method(:close_database_list))
  end

  def dispose_database_list
    defer_research_mod_window_dispose(@database_list_window)
    defer_research_mod_window_dispose(@database_help_window)
    @database_list_window = nil
    @database_help_window = nil
  end

  def close_database_list
    dispose_database_list
    @database_type_window.activate
  end

  def reinput_database_start_id
    dispose_database_list
    open_database_id_input
  end

  def load_next_database_page
    next_start_id = @database_list_window.page[:next_start_id]
    return @database_list_window.activate unless next_start_id

    @database_history.push(@database_list_window.page[:start_id])
    @database_start_ids[@database_kind] = next_start_id
    dispose_database_list
    open_database_list(next_start_id)
  end

  def load_previous_database_page
    previous_start_id = @database_history.pop
    return @database_list_window.activate unless previous_start_id

    @database_start_ids[@database_kind] = previous_start_id
    dispose_database_list
    open_database_list(previous_start_id)
  end

  def select_database_item
    @database_selected_item = @database_list_window.current_ext
    @database_list_index = @database_list_window.index
    unless @database_quantity_window
      @database_quantity_window = Window_ResearchModDatabaseQuantity.new
      @database_quantity_window.set_handler(:ok, method(:gain_selected_database_item))
      @database_quantity_window.set_handler(:cancel, method(:close_database_quantity_input))
    end
    @database_quantity_window.setup(@database_selected_item)
    @database_help_window.hide
    @database_list_window.deactivate
  end

  def close_database_quantity_input
    @database_quantity_window.close
    @database_quantity_window.deactivate
    @database_help_window.show
    @database_list_window.activate
  end

  def gain_selected_database_item
    ResearchMod.gain_database_item(@database_selected_item, @database_quantity_window.number)
    @database_quantity_window.close
    @database_quantity_window.deactivate
    current_start_id = @database_list_window.page[:start_id]
    dispose_database_list
    open_database_list(current_start_id)
    @database_list_window.select([@database_list_index, @database_list_window.item_max - 1].min)
    @database_list_window.activate
  end

  def gain_all_panties
    ResearchMod.gain_all_panties
    @command_window.refresh
    @command_window.activate
  end

  def gain_all_milk
    ResearchMod.gain_all_milk
    @command_window.refresh
    @command_window.activate
  end

  def gain_all_marriage_armors
    ResearchMod.gain_all_marriage_armors
    @command_window.refresh
    @command_window.activate
  end

  def gain_all_cds
    ResearchMod.gain_all_cds
    @command_window.refresh
    @command_window.activate
  end

  def toggle_persona_dialogue_compatibility
    ResearchMod.toggle_persona_dialogue_compatibility
    @command_window.refresh
    @command_window.activate
  end

  def toggle_all_dialogue
    ResearchMod.toggle_all_dialogue
    @command_window.refresh
    @command_window.activate
  end

  def toggle_steal_always_success
    ResearchMod.toggle_steal_always_success
    @command_window.refresh
    @command_window.activate
  end

  def toggle_milk_always_success
    ResearchMod.toggle_milk_always_success
    @command_window.refresh
    @command_window.activate
  end

  def toggle_drop_always_success
    ResearchMod.toggle_drop_always_success
    @command_window.refresh
    @command_window.activate
  end

  def toggle_love_dialogue_compatibility
    ResearchMod.toggle_love_dialogue_compatibility
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def toggle_maoujou_gift_dialogue_compatibility
    ResearchMod.toggle_maoujou_gift_dialogue_compatibility
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def toggle_maoujou_pleading_dialogue_compatibility
    ResearchMod.toggle_maoujou_pleading_dialogue_compatibility
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def toggle_maoujou_remove_candidate_compatibility
    ResearchMod.toggle_maoujou_remove_candidate_compatibility
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def toggle_cooking_no_cost
    ResearchMod.toggle_cooking_no_cost
    @consumption_menu_window.refresh
    @consumption_menu_window.activate
    @consumption_menu_window.update_help
  end

  def toggle_alchemy_no_cost
    ResearchMod.toggle_alchemy_no_cost
    @consumption_menu_window.refresh
    @consumption_menu_window.activate
    @consumption_menu_window.update_help
  end

  def toggle_magic_book_no_cost
    ResearchMod.toggle_magic_book_no_cost
    @consumption_menu_window.refresh
    @consumption_menu_window.activate
    @consumption_menu_window.update_help
  end

  def toggle_merchant_no_cost
    ResearchMod.toggle_merchant_no_cost
    @consumption_menu_window.refresh
    @consumption_menu_window.activate
    @consumption_menu_window.update_help
  end

  def toggle_ex_item_no_cost
    ResearchMod.toggle_ex_item_no_cost
    @consumption_menu_window.refresh
    @consumption_menu_window.activate
    @consumption_menu_window.update_help
  end

  def toggle_temptation_ignore_hp
    ResearchMod.toggle_temptation_ignore_hp
    @command_window.refresh
    @command_window.activate
  end

  def toggle_temptation_disabled
    ResearchMod.toggle_temptation_disabled
    @command_window.refresh
    @command_window.activate
  end

  def toggle_temptation_immunity
    ResearchMod.toggle_temptation_immunity
    @command_window.refresh
    @command_window.activate
  end

  def toggle_lose_event_skip
    ResearchMod.toggle_lose_event_skip
    @command_window.refresh
    @command_window.activate
  end

  def toggle_sure_hit_kill
    ResearchMod.toggle_sure_hit_kill
    @command_window.refresh
    @command_window.activate
  end

  def toggle_remove_damage_variance
    ResearchMod.toggle_remove_damage_variance
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def toggle_through_mode
    ResearchMod.toggle_through_mode
    @command_window.refresh
    @command_window.activate
  end

  def toggle_no_random_encounter
    ResearchMod.toggle_no_random_encounter
    @command_window.refresh
    @command_window.activate
  end

  def toggle_original_encounter_disabled
    ResearchMod.toggle_original_encounter_disabled
    @command_window.refresh
    @command_window.activate
  end

  def toggle_original_formation_disabled
    ResearchMod.toggle_original_formation_disabled
    @command_window.refresh
    @command_window.activate
  end
  def open_stuck_help
    @stuck_help_window = Window_Help.new(5)
    @stuck_help_window.y = Graphics.height - @stuck_help_window.height
    @stuck_help_menu_window = Window_ResearchModStuckHelpMenu.new(@stuck_help_window)
    @stuck_help_confirm_window = Window_ResearchModStuckHelpConfirm.new(@stuck_help_window)
    @stuck_help_menu_window.set_handler(:select, method(:confirm_stuck_help))
    @stuck_help_menu_window.set_handler(:cancel, method(:close_stuck_help))
    @stuck_help_confirm_window.set_handler(:execute, method(:execute_stuck_help))
    @stuck_help_confirm_window.set_handler(:cancel, method(:cancel_stuck_help_confirm))
    @command_window.deactivate
  end

  def confirm_stuck_help
    entry = ResearchMod.stuck_help_entry(@stuck_help_menu_window.current_ext)
    unless entry
      @stuck_help_menu_window.activate
      return
    end
    @stuck_help_confirm_window.setup(entry)
    @stuck_help_menu_window.deactivate
  end

  def execute_stuck_help
    entry = ResearchMod.stuck_help_entry(@stuck_help_menu_window.current_ext)
    ResearchMod.apply_stuck_help(entry[:key]) if entry
    @stuck_help_confirm_window.hide
    @stuck_help_confirm_window.deactivate
    @stuck_help_menu_window.refresh
    @stuck_help_menu_window.activate
    @stuck_help_menu_window.update_help
  end

  def cancel_stuck_help_confirm
    @stuck_help_confirm_window.hide
    @stuck_help_confirm_window.deactivate
    @stuck_help_menu_window.activate
    @stuck_help_menu_window.update_help
  end

  def close_stuck_help
    defer_research_mod_window_dispose(@stuck_help_confirm_window)
    defer_research_mod_window_dispose(@stuck_help_menu_window)
    defer_research_mod_window_dispose(@stuck_help_window)
    @stuck_help_confirm_window = nil
    @stuck_help_menu_window = nil
    @stuck_help_window = nil
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end
  def open_experimental_menu
    @experimental_help_window = Window_Help.new(3)
    @experimental_help_window.y = Graphics.height - @experimental_help_window.height
    @experimental_menu_window = Window_ResearchModExperimentalMenu.new(
      @experimental_help_window
    )
    @experimental_menu_window.set_handler(
      :toggle, method(:toggle_experimental_features)
    )
    @experimental_menu_window.set_handler(
      :enemy_stat_multiplier, method(:open_enemy_stat_multiplier_input)
    )
    @experimental_menu_window.set_handler(
      :cancel, method(:close_experimental_menu)
    )
    @command_window.deactivate
  end

  def toggle_experimental_features
    ResearchMod.toggle_experimental_features
    @experimental_menu_window.refresh
    @experimental_menu_window.activate
    @experimental_menu_window.update_help
  end

  def close_experimental_menu
    defer_research_mod_window_dispose(@experimental_menu_window)
    defer_research_mod_window_dispose(@experimental_help_window)
    @experimental_menu_window = nil
    @experimental_help_window = nil
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def open_enemy_stat_multiplier_input
    unless @enemy_stat_multiplier_window
      @enemy_stat_multiplier_window = Window_ResearchModEnemyStatMultiplierInput.new
      @enemy_stat_multiplier_window.set_handler(
        :ok, method(:apply_enemy_stat_multiplier)
      )
      @enemy_stat_multiplier_window.set_handler(
        :cancel, method(:close_enemy_stat_multiplier_input)
      )
    end
    @enemy_stat_multiplier_window.setup
    @experimental_menu_window.deactivate if @experimental_menu_window
    help_window = @experimental_help_window || @command_help_window
    help_window.set_text(
      '输入敌方属性倍率。范围0～99。\n0：不调整　1：原值　2～99：对应倍数'.gsub(92.chr + 'n', 10.chr)
    )
  end

  def apply_enemy_stat_multiplier
    ResearchMod.set_enemy_stat_multiplier(@enemy_stat_multiplier_window.number)
    @command_window.refresh
    close_enemy_stat_multiplier_input
  end

  def close_enemy_stat_multiplier_input
    @enemy_stat_multiplier_window.close
    @enemy_stat_multiplier_window.deactivate
    if @experimental_menu_window
      @experimental_menu_window.refresh
      @experimental_menu_window.activate
      @experimental_menu_window.update_help
    else
      @command_window.activate
      @command_window.update_help
    end
  end

  def toggle_prevent_event_luca_front
    ResearchMod.toggle_prevent_event_luca_front
    @command_window.refresh
    @command_window.activate
  end

  def toggle_follow_always_success
    ResearchMod.toggle_follow_always_success
    @command_window.refresh
    @command_window.activate
  end

  def toggle_battle_enemy_status
    ResearchMod.toggle_battle_enemy_status
    @command_window.refresh
    @command_window.activate
  end

  def toggle_battle_party_status
    ResearchMod.toggle_battle_party_status
    @command_window.refresh
    @command_window.activate
  end

  def toggle_battle_cutin_view
    ResearchMod.toggle_battle_cutin_view
    @command_window.refresh
    @command_window.activate
  end

  def toggle_battle_record
    ResearchMod.toggle_battle_record
    @command_window.refresh
    @command_window.activate
  end

  def toggle_party_edit_actor_id
    ResearchMod.toggle_party_edit_actor_id
    @command_window.refresh
    @command_window.activate
  end

  def toggle_battle_editor
    ResearchMod.toggle_battle_editor
    @command_window.refresh
    @command_window.activate
  end

  def toggle_force_victory
    ResearchMod.toggle_force_victory
    @command_window.refresh
    @command_window.activate
  end

  def toggle_dead_battle_exp
    ResearchMod.toggle_dead_battle_exp
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def toggle_graphics_override
    ResearchMod.toggle_graphics_override
    @command_window.refresh
    @command_window.activate
  end

  def toggle_manual_enemy_dialogue
    ResearchMod.toggle_manual_enemy_dialogue
    @command_window.refresh
    @command_window.activate
  end

  def toggle_audio_overlay
    ResearchMod.toggle_audio_overlay
    @command_window.refresh
    @command_window.activate
  end

  def toggle_chest_hint
    ResearchMod.toggle_chest_hint
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def select_persona
    @persona_window = Window_ResearchModPersonaList.new(@actor)
    @persona_window.set_handler(:select, method(:apply_persona))
    @persona_window.set_handler(:cancel, method(:close_persona_list))
    @command_window.deactivate
  end

  def apply_persona
    ResearchMod.apply_persona(@actor, @persona_window.current_ext)
    @command_window.actor = @actor
    @persona_window.activate
  end

  def close_persona_list
    defer_research_mod_window_dispose(@persona_window)
    @persona_window = nil
    @command_window.activate
  end

  def open_class_list(kind)
    @selected_kind = kind
    @command_help_window.hide
    @class_learning_help_window = Window_ResearchModClassLearningHelp.new(
      ResearchMod.class_learning_half_width, 0,
      Graphics.width - ResearchMod.class_learning_half_width, Graphics.height
    )
    @class_learning_help_window.z = 400
    @list_window = Window_ResearchModClassList.new(
      kind, @class_learning_help_window
    )
    @list_window.set_handler(:select, method(:apply_selection))
    @list_window.set_handler(:cancel, method(:close_class_list))
    @command_window.deactivate
  end

  def apply_selection
    @selected_target_id = @list_window.current_ext
    entry = $data_classes[@selected_target_id]
    unless @class_level_window
      @class_level_window = Window_ResearchModClassLevelInput.new
      @class_level_window.set_handler(:ok, method(:apply_class_level))
      @class_level_window.set_handler(:cancel, method(:close_class_level_input))
    end
    @class_level_window.setup(@actor, @selected_target_id)
    @class_level_help_window = @class_learning_help_window
    kind_name = @selected_kind == :class ? '职业' : '种族'
    @class_level_help_window.set_text(format(
      "目标%s：ID %d  %s\n请输入切换后的%s等级（1～%d）。\n降低等级不会忘记已经学会的技能。",
      kind_name, entry.id, entry.name, kind_name, @class_level_window.maximum
    ))
    @class_level_help_window.show
    @class_learning_help_window.set_entry(entry, @selected_kind)
    @list_window.deactivate
  end

  def apply_class_level
    ResearchMod.apply_change(@actor, @selected_kind, @selected_target_id,
                             @class_level_window.number)
    @command_window.actor = @actor
    close_class_level_input
  end

  def close_class_level_input
    @class_level_window.close
    @class_level_window.deactivate
    @class_learning_help_window.show if @class_learning_help_window
    @list_window.activate
  end

  def close_class_list
    defer_research_mod_window_dispose(@list_window)
    defer_research_mod_window_dispose(@class_learning_help_window)
    @list_window = nil
    @class_learning_help_window = nil
    @class_level_help_window = nil
    @command_help_window.show
    @command_window.activate
    @command_window.update_help
  end

  def backup_actor
    ResearchMod.snapshot(@actor)
    @command_window.refresh
    @command_window.activate
  end

  def restore_actor
    ResearchMod.restore(@actor)
    @command_window.actor = @actor
    @command_window.activate
  end

  # Keep the class level input focused while the learning details remain on
  # the right side; the original bottom help window is intentionally unused.
  def apply_selection
    @selected_target_id = @list_window.current_ext
    entry = $data_classes[@selected_target_id]
    unless @class_level_window
      @class_level_window = Window_ResearchModClassLevelInput.new
      @class_level_window.set_handler(:ok, method(:apply_class_level))
      @class_level_window.set_handler(:cancel, method(:close_class_level_input))
    end
    @class_level_window.setup(@actor, @selected_target_id)
    @class_learning_help_window.set_entry(entry, @selected_kind) if
      @class_learning_help_window
    @class_learning_help_window.show if @class_learning_help_window
    @list_window.deactivate
  end

  def close_class_level_input
    @class_level_window.close
    @class_level_window.deactivate
    @class_learning_help_window.show if @class_learning_help_window
    @list_window.activate
  end
end

class Scene_Map < Scene_Base
  include ResearchModAudioOverlayScene
  alias research_mod_custom_battle_start start
  alias research_mod_custom_battle_update_scene update_scene
  alias research_mod_audio_overlay_update update
  alias research_mod_audio_overlay_terminate terminate
  alias research_mod_container_perform_transfer perform_transfer

  def start
    ResearchMod.cleanup_temporary_troop
    ResearchMod.apply_map_follower_count
    research_mod_custom_battle_start
    create_research_mod_audio_overlay
  end

  def update
    update_research_mod_audio_overlay
    research_mod_audio_overlay_update
  end

  def terminate
    research_mod_hide_candidate_remove_help(true)
    dispose_research_mod_audio_overlay
    research_mod_audio_overlay_terminate
  end

  def research_mod_show_candidate_remove_help(actor)
    unless @research_mod_candidate_remove_help_window &&
           !@research_mod_candidate_remove_help_window.disposed?
      @research_mod_candidate_remove_help_window = Window_Help.new(2)
    end
    window = @research_mod_candidate_remove_help_window
    window.x = 0
    window.y = Graphics.height - window.height
    window.width = Graphics.width
    window.z = 700
    window.set_text(
      format('角色ID %d：确认后将移出当前候补名单。\\n可在角色图鉴中重新加入。', actor.id)
        .gsub(92.chr + 'n', 10.chr)
    )
    window.show
    window.open
  rescue
  end

  def research_mod_hide_candidate_remove_help(dispose = false)
    window = @research_mod_candidate_remove_help_window
    return unless window

    window.hide
    window.close
    if dispose && !window.disposed?
      window.dispose
      @research_mod_candidate_remove_help_window = nil
    end
  rescue
    @research_mod_candidate_remove_help_window = nil if dispose
  end

  def perform_transfer
    research_mod_container_perform_transfer
    ResearchMod.start_pending_container_event
  end

  def update_scene
    if ResearchMod.pending_battle?
      if ResearchMod.start_pending_battle
        SceneManager.call(Scene_Battle)
      else
        Sound.play_buzzer
      end
      return
    end
    research_mod_custom_battle_update_scene
  end
end

class Window_MenuCommand < Window_Command
  alias research_mod_add_original_commands add_original_commands

  def add_original_commands
    research_mod_add_original_commands
    add_command('研究用修改器', :research_mod)
  end
end

if defined?(Foo::PTEdit::Window_PartyMember)
  class Foo::PTEdit::Window_PartyMember
    alias research_mod_party_id_make_command_list make_command_list

    def make_command_list
      research_mod_party_id_make_command_list
      return unless ResearchMod.party_edit_actor_id?

      @actors.each_with_index do |id, index|
        actor = $game_actors[id]
        next unless actor && @list[index]

        @list[index][:name] = format('[%d] %s', actor.id, actor.name)
      end
    end
  end
end

if defined?(Foo::PTEdit::Window_WaitMember)
  class Foo::PTEdit::Window_WaitMember
    alias research_mod_party_id_make_command_list make_command_list

    def make_command_list
      research_mod_party_id_make_command_list
      return unless ResearchMod.party_edit_actor_id?

      @actors.each_with_index do |id, index|
        actor = $game_actors[id]
        next unless actor && @list[index]

        @list[index][:name] = format('[%d] %s', actor.id, actor.name)
      end
    end
  end
end

class Scene_Menu < Scene_MenuBase
  alias research_mod_create_command_window create_command_window

  def create_command_window
    research_mod_create_command_window
    @command_window.set_handler(:research_mod, method(:command_research_mod))
  end

  def command_research_mod
    SceneManager.call(Scene_ResearchMod)
  end
end

class Sprite_Character < Sprite_Base
  alias research_mod_chest_hint_initialize initialize

  def initialize(viewport, character = nil)
    @research_mod_chest_hint_sprite = nil
    @research_mod_chest_hint_icon_id = nil
    research_mod_chest_hint_initialize(viewport, character)
    update_research_mod_chest_hint
  end

  alias research_mod_chest_hint_update update

  def update
    research_mod_chest_hint_update
    update_research_mod_chest_hint
  end

  alias research_mod_chest_hint_dispose dispose

  def dispose
    dispose_research_mod_chest_hint
    research_mod_chest_hint_dispose
  end

  def create_research_mod_chest_hint
    @research_mod_chest_hint_sprite = Sprite.new(viewport)
    @research_mod_chest_hint_sprite.bitmap = Bitmap.new(24, 24)
    @research_mod_chest_hint_sprite.ox = 12
    @research_mod_chest_hint_sprite.oy = 24
    @research_mod_chest_hint_icon_id = nil
  end

  def update_research_mod_chest_hint
    type = ResearchMod.chest_hint_type(@character)
    sprite = @research_mod_chest_hint_sprite
    unless type
      sprite.visible = false if sprite
      return
    end

    create_research_mod_chest_hint unless sprite
    sprite = @research_mod_chest_hint_sprite
    icon_id = ResearchMod.chest_hint_icon_id(type)
    completed = ResearchMod.chest_hint_completed?(@character)
    valid_icon = refresh_research_mod_chest_hint_icon(icon_id, completed)
    sprite.visible = visible && valid_icon
    return unless sprite.visible

    sprite.x = x
    sprite.y = y - height - 4
    sprite.z = z + 200
    sprite.opacity = opacity
  end

  def refresh_research_mod_chest_hint_icon(icon_id, completed = false)
    return false if icon_id.nil? || icon_id.to_i < 0

    icon_id = icon_id.to_i
    signature = [icon_id, completed == true]
    iconset = Cache.system('Iconset')
    columns = iconset.width / 24
    rows = iconset.height / 24
    return false if columns <= 0 || rows <= 0 || icon_id >= columns * rows
    return true if @research_mod_chest_hint_icon_id == signature

    bitmap = @research_mod_chest_hint_sprite.bitmap
    bitmap.clear
    source = Rect.new(icon_id % columns * 24, icon_id / columns * 24, 24, 24)
    bitmap.blt(0, 0, iconset, source)
    draw_research_mod_chest_hint_completion(bitmap) if completed
    @research_mod_chest_hint_icon_id = signature
    true
  rescue
    false
  end

  def draw_research_mod_chest_hint_completion(bitmap)
    border = Color.new(0, 0, 0, 230)
    green = Color.new(64, 192, 80, 255)
    white = Color.new(255, 255, 255, 255)
    bitmap.fill_rect(14, 14, 10, 10, border)
    bitmap.fill_rect(15, 15, 8, 8, green)
    bitmap.fill_rect(16, 18, 2, 2, white)
    bitmap.fill_rect(18, 20, 2, 2, white)
    bitmap.fill_rect(20, 16, 2, 5, white)
  end

  def dispose_research_mod_chest_hint
    sprite = @research_mod_chest_hint_sprite
    return unless sprite

    sprite.bitmap.dispose if sprite.bitmap && !sprite.bitmap.disposed?
    sprite.dispose unless sprite.disposed?
    @research_mod_chest_hint_sprite = nil
  end
end


class Window_ChoiceList
  alias research_mod_update_placement_for_custom_talk update_placement
  alias research_mod_update_help_for_pleading update_help
  alias research_mod_choice_list_dispose dispose
  alias research_mod_choice_list_select select
  alias research_mod_choice_list_close close

  def select(index)
    research_mod_choice_list_select(index)
    # Window_ChoiceList selects an item during initialization, before the
    # custom pleading help state is active.  Avoid invoking the custom help
    # updater for ordinary message choices at that point.
    update_help if research_mod_pleading_choice_help_active?
  end

  def update_placement
    research_mod_update_placement_for_custom_talk
    return unless $game_message
    return unless $game_message.instance_variable_get(:@research_mod_choice_right)

    self.x = Graphics.width - width
    bottom_y = $game_message.instance_variable_get(:@research_mod_choice_bottom_y)
    self.y = [bottom_y.to_i - height, 0].max if bottom_y
  end

  def update_help
    # The inherited Window_Selectable#update_help assumes @help_window is
    # present.  Choice lists normally have no help window, so only run the
    # custom updater while the pleading help mode is active.
    unless research_mod_pleading_choice_help_active?
      research_mod_hide_pleading_choice_help
      return
    end
    window = research_mod_pleading_choice_help
    choice = $game_message.choices[index]
    return unless choice

    if ResearchMod.persona_dialogue_cancel_text?(choice)
      text = '返回上一级菜单。'
    elsif choice.to_s == '拒绝'
      text = '播放原版好感度不足对话；实际不要求好感度。'
    else
      text = '播放对应原版场景；实际不要求好感度。' + 10.chr +
             '不会转移到冥府。'
    end
    window.set_text(text)
  end

  def research_mod_pleading_choice_help_active?
    return false unless $game_message

    $game_message.instance_variable_get(
      :@research_mod_pleading_choice_help_active
    ) == true
  end

  def research_mod_pleading_choice_help
    window = @research_mod_pleading_choice_help_window
    if window.nil? || window.disposed?
      window = Window_Help.new(2)
      window.width = Graphics.width
      window.height = window.fitting_height(2)
      window.x = 0
      # Keep the supplemental explanation at the top so it does not overlap
      # the original pleading prompt/help window at the bottom.
      window.y = 0
      window.z = self.z + 10
      window.show
      window.open
      @research_mod_pleading_choice_help_window = window
    else
      # The choice list can be reused after returning to the dialogue menu.
      # Show the existing window again when the custom pleading help mode is
      # activated for a subsequent request.
      window.show
      window.open unless window.openness == 255
    end
    window
  end

  def research_mod_hide_pleading_choice_help
    window = @research_mod_pleading_choice_help_window
    return unless window

    window.hide
    window.close
  end

  def close
    research_mod_hide_pleading_choice_help
    research_mod_choice_list_close
  end

  def dispose
    window = @research_mod_pleading_choice_help_window
    if window && !window.disposed?
      window.dispose
    end
    @research_mod_pleading_choice_help_window = nil
    research_mod_choice_list_dispose
  end
end

module Enchant_Item
  alias research_mod_set_enchants_fast_without_empty_data set_enchants_fast

  def set_enchants_fast
    begin
      research_mod_set_enchants_fast_without_empty_data
    rescue NoMethodError => error
      unless error.message.include?("undefined method `[]' for nil:NilClass")
        raise
      end

      # Skip enchantment generation when no rarity entry matches.
      @enchants = []
      begin
        File.open('research_mod_enchant_debug.log', 'a') do |file|
          file.puts(format(
            'empty enchant selection: class=%s base_id=%s rarity=%s',
            self.class, @base_id, @rarity_num
          ))
        end
      rescue
      end
    end
  end

  alias research_mod_set_data_without_empty_data set_data

  def set_data
    begin
      research_mod_set_data_without_empty_data
    rescue NoMethodError => error
      unless error.message.include?("undefined method `[]' for nil:NilClass") ||
             error.message.include?("undefined method `inject' for nil:NilClass")
        raise
      end

      @research_mod_incomplete_enchant_data = true
      @enchants ||= []
      @features ||= []
      @params ||= []
      @plus_num ||= 0
      begin
        File.open('research_mod_enchant_debug.log', 'a') do |file|
          file.puts(format(
            'skip incomplete enchant data: class=%s base_id=%s rarity=%s error=%s',
            self.class, @base_id, @rarity_num, error.message
          ))
        end
      rescue
      end
    end
  end
end
class RPG::EquipItem
  alias research_mod_create_enchant_item_without_empty_data create_enchant_item

  def create_enchant_item
    data = research_mod_create_enchant_item_without_empty_data
    if data && data.instance_variable_get(:@research_mod_incomplete_enchant_data)
      return nil
    end
    data
  end
end

class Game_Party
  alias research_mod_add_item_data_without_nil add_item_data

  def add_item_data(item, number)
    return if item.nil?
    research_mod_add_item_data_without_nil(item, number)
  end
end

# Add a direct entry point to the original maid common event.
class Window_ResearchModCommand
  alias research_mod_maid_make_command_list make_command_list
  def make_command_list
    research_mod_maid_make_command_list
    add_command('女仆对话', :maid_dialogue)
    maid_command = @list.pop
    map_index = @list.index { |entry| entry[:symbol] == :map_follower_count }
    insert_index = map_index ? map_index + 1 : @list.length
    @list.insert(insert_index, maid_command)
  end

  alias research_mod_maid_update_help update_help
  def update_help
    research_mod_maid_update_help
    return unless help_window && current_symbol == :maid_dialogue

    help_window.set_text(
      '播放原版女仆对话，并显示队伍编辑、队伍登记/呼出、物品仓库和移动等选项。'
    )
  end
end

class Scene_ResearchMod
  alias research_mod_maid_start start
  def start
    research_mod_maid_start
    @command_window.set_handler(:maid_dialogue, method(:open_maid_dialogue))
    return unless ResearchMod.consume_maid_menu_restore

    @command_window.select_symbol(:maid_dialogue)
    @command_window.update_help
  end

  def open_maid_dialogue
    common_event = $data_common_events[ResearchMod::MAID_DIALOGUE_COMMON_EVENT_ID]
    unless common_event
      Sound.play_buzzer
      @command_window.activate
      @command_help_window.set_text('无法读取原版女仆对话事件。')
      return
    end

    ResearchMod.prepare_maid_dialogue_return
    $game_temp.reserve_common_event(ResearchMod::MAID_DIALOGUE_COMMON_EVENT_ID)
    SceneManager.goto(Scene_Map)
  end
end

# Return to the research menu only when the maid common event ends on the same map.
class Scene_Map < Scene_Base
  alias research_mod_maid_return_update update

  def update
    research_mod_maid_return_update
    research_mod_check_maid_dialogue_return
  end

  def research_mod_check_maid_dialogue_return
    return if scene_changing?
    return unless $game_temp

    data = $game_temp.instance_variable_get(ResearchMod::MAID_DIALOGUE_RETURN_KEY)
    return unless data.is_a?(Hash)
    return if data[:returning]

    if $game_map.map_id != data[:map_id]
      ResearchMod.clear_maid_dialogue_return
      return
    end

    if $game_temp.common_event_reserved? || $game_map.interpreter.running?
      data[:started] = true if $game_map.interpreter.running?
      return
    end

    unless data[:started]
      data[:wait] = data[:wait].to_i - 1
      return if data[:wait] > 0
      data[:started] = true
    end

    return if $game_message.busy? || $game_player.moving?

    # Consume the request before changing scenes so repeated updates cannot
    # schedule another return transition.
    data[:returning] = true
    ResearchMod.clear_maid_dialogue_return
    ResearchMod.request_maid_menu_restore
    SceneManager.call(Scene_ResearchMod)
  rescue
    ResearchMod.clear_maid_dialogue_return
  end
end

# Add the original divine-priest greeting and job-change service below the maid.
class Window_ResearchModCommand
  alias research_mod_divine_priest_make_command_list make_command_list
  def make_command_list
    research_mod_divine_priest_make_command_list
    add_command('大神官对话', :divine_priest_dialogue)
    divine_priest_command = @list.pop
    maid_index = @list.index { |entry| entry[:symbol] == :maid_dialogue }
    insert_index = maid_index ? maid_index + 1 : @list.length
    @list.insert(insert_index, divine_priest_command)
  end

  alias research_mod_divine_priest_update_help update_help
  def update_help
    research_mod_divine_priest_update_help
    return unless help_window && current_symbol == :divine_priest_dialogue

    help_window.set_text(
      "调用原版大神官对话，随后打开原版转职界面。\n" +
      '取消或结束转职后返回研究修改器。'
    )
  end
end

class Scene_ResearchMod
  alias research_mod_divine_priest_start start
  def start
    research_mod_divine_priest_start
    @command_window.set_handler(
      :divine_priest_dialogue, method(:open_divine_priest_dialogue)
    )
    return unless ResearchMod.consume_divine_priest_menu_restore

    @command_window.select_symbol(:divine_priest_dialogue)
    @command_window.update_help
  end

  def open_divine_priest_dialogue
    commands = ResearchMod.divine_priest_dialogue_commands
    unless commands && !commands.empty?
      Sound.play_buzzer
      @command_window.activate
      @command_help_window.set_text('无法读取原版大神官对话事件。')
      return
    end

    ResearchMod.prepare_divine_priest_dialogue(commands)
    SceneManager.goto(Scene_Map)
  end
end

# Run the copied event commands on the current map, then restore the mod menu.
class Scene_Map < Scene_Base
  alias research_mod_divine_priest_return_update update

  def update
    research_mod_divine_priest_return_update
    research_mod_update_divine_priest_dialogue
  end

  def research_mod_update_divine_priest_dialogue
    return if scene_changing?
    return unless $game_temp

    data = $game_temp.instance_variable_get(
      ResearchMod::DIVINE_PRIEST_DIALOGUE_RETURN_KEY
    )
    return unless data.is_a?(Hash)
    return if data[:returning]

    if $game_map.map_id != data[:map_id]
      ResearchMod.clear_divine_priest_dialogue_return
      return
    end

    unless data[:started]
      return if $game_temp.common_event_reserved? || $game_map.interpreter.running?

      commands = data.delete(:commands)
      unless commands && !commands.empty?
        ResearchMod.clear_divine_priest_dialogue_return
        return
      end
      $game_map.interpreter.setup(commands)
      data[:started] = true
      return
    end

    return if $game_map.interpreter.running? || $game_message.busy?
    return if $game_player.moving?

    data[:wait] = data[:wait].to_i - 1
    return if data[:wait] > 0

    # Keep the current map as the immediate return target after closing the
    # restored research menu.
    data[:returning] = true
    ResearchMod.clear_divine_priest_dialogue_return
    ResearchMod.request_divine_priest_menu_restore
    SceneManager.call(Scene_ResearchMod)
  rescue
    ResearchMod.clear_divine_priest_dialogue_return
  end
end

# Keep the text-input test handler available without exposing its menu entry.
class Window_ResearchModCommand
  alias research_mod_custom_text_make_command_list make_command_list
  def make_command_list
    research_mod_custom_text_make_command_list
  end

  alias research_mod_custom_text_update_help update_help
  def update_help
    research_mod_custom_text_update_help
    return unless help_window && current_symbol == :custom_text_input

    current = ResearchMod.custom_text(:research_mod_test_text)
    current = '（空）' if current.empty?
    help_window.set_text(
      "从平假名、片假名或英数分类中选择字符。\n当前测试文字：#{current}\n确定后会保存到存档；留空可清除文字。"
    )
  end
end

class Scene_ResearchMod
  alias research_mod_custom_text_start start
  def start
    research_mod_custom_text_start
    @command_window.set_handler(:custom_text_input,
                                method(:open_custom_text_input))
  end

  def open_custom_text_input
    ResearchMod.open_text_input(
      :research_mod_test_text,
      '请输入自定义文字',
      ResearchMod.custom_text(:research_mod_test_text),
      16,
      "从左侧选择平假名、片假名或英数；字符区取消可返回分类。\n" +
      '确定保存，留空可清除文字。'
    )
  end
end

class Window_ResearchModTextCategory < Window_Command
  def initialize(x, y, width)
    @window_width = width
    super(x, y)
    select(0)
  end

  def window_width
    @window_width
  end

  def visible_line_number
    3
  end

  def make_command_list
    add_command('平假名', :hiragana)
    add_command('片假名', :katakana)
    add_command('英数', :latin)
  end
end

class Window_ResearchModCharacterInput < Window_Selectable
  CHARACTER_COLUMNS = 9
  HIRAGANA = (
    'あ い う え お か き く け こ さ し す せ そ ' +
    'た ち つ て と な に ぬ ね の は ひ ふ へ ほ ' +
    'ま み む め も や ゆ よ ら り る れ ろ わ を ん ' +
    'が ぎ ぐ げ ご ざ じ ず ぜ ぞ だ ぢ づ で ど ' +
    'ば び ぶ べ ぼ ぱ ぴ ぷ ぺ ぽ ' +
    'ぁ ぃ ぅ ぇ ぉ っ ゃ ゅ ょ ゎ ゔ ー'
  ).split
  KATAKANA = (
    'ア イ ウ エ オ カ キ ク ケ コ サ シ ス セ ソ ' +
    'タ チ ツ テ ト ナ ニ ヌ ネ ノ ハ ヒ フ ヘ ホ ' +
    'マ ミ ム メ モ ヤ ユ ヨ ラ リ ル レ ロ ワ ヲ ン ' +
    'ガ ギ グ ゲ ゴ ザ ジ ズ ゼ ゾ ダ ヂ ヅ デ ド ' +
    'バ ビ ブ ベ ボ パ ピ プ ペ ポ ' +
    'ァ ィ ゥ ェ ォ ッ ャ ュ ョ ヮ ヴ ヵ ヶ ー'
  ).split
  LATIN = ('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a +
          ['!', '?', '.', ',', '-', '_', '+', '*', '/', '=', '@', '#',
           '$', '%', '&', ':', ';', "'", '"', '(', ')', '[', ']']
  ACTIONS = [:space, :back, :finish]

  def initialize(edit_window, x, y, width, height)
    @edit_window = edit_window
    @category = :hiragana
    @data = []
    super(x, y, width, height)
    set_category(@category)
  end

  def item_max
    @data ? @data.size : 0
  end

  def col_max
    CHARACTER_COLUMNS
  end

  def self.required_height
    max_items = [HIRAGANA.size, KATAKANA.size, LATIN.size].max + ACTIONS.size
    rows = (max_items + CHARACTER_COLUMNS - 1) / CHARACTER_COLUMNS
    rows * 24 + 24
  end

  def spacing
    4
  end

  # Move vertically with row-based wrap-around navigation.
  def cursor_up(_wrap = false)
    return if item_max <= 0

    column = index % col_max
    if index < col_max
      last_row_start = ((item_max - 1) / col_max) * col_max
      select([last_row_start + column, item_max - 1].min)
    else
      select(index - col_max)
    end
  end

  # Move vertically with row-based wrap-around navigation.
  def cursor_down(_wrap = false)
    return if item_max <= 0

    next_index = index + col_max
    if next_index >= item_max
      select([index % col_max, item_max - 1].min)
    else
      select(next_index)
    end
  end

  def set_category(category)
    @category = category
    characters = case category
                 when :katakana then KATAKANA
                 when :latin then LATIN
                 else HIRAGANA
                 end
    @data = characters + ACTIONS
    self.top_row = 0
    select(0)
    refresh
  end

  def current_entry
    @data[index]
  end

  def draw_item(index)
    entry = @data[index]
    rect = item_rect(index)
    rect.width -= 4
    text = case entry
           when :space then '空格'
           when :back then '删除'
           when :finish then '确定'
           else entry
           end
    draw_text(rect, text, 1)
  end
end

class Window_ResearchModNameEdit < Window_NameEdit
  def initialize(actor, max_char)
    super
    self.width = [Graphics.width - 112, 432].min
    self.x = (Graphics.width - self.width) / 2
    self.height = fitting_height(1)
    create_contents
    refresh
    update_cursor
  end

  # Draw the editable text without the actor face shown by the original window.
  def refresh
    contents.clear
    display_name = @name + (@index < @max_char ? '_' : '')
    width = text_size(display_name).width
    x = [(contents.width - width) / 2, 0].max
    draw_text(x, 0, width, line_height, display_name)
  end

  def update_cursor
    name_width = text_size(@name).width
    display_width = text_size(@name + (@index < @max_char ? '_' : '')).width
    x = [(contents.width - display_width) / 2 + name_width, 0].max
    cursor_rect.set(x, 0, 24, line_height)
  end
end

class Scene_ResearchModTextInput < Scene_MenuBase
  def prepare(key, title, default_text = '', max_chars = 16, help_text = nil,
              result_handler = nil)
    @text_key = key.to_sym
    @text_title = title.to_s
    @default_text = default_text.to_s
    @max_chars = [[max_chars.to_i, 1].max, 24].min
    @help_text = help_text.nil? ? nil : help_text.to_s
    @result_handler = result_handler
  end

  def start
    super
    @text_title ||= '请输入文字'
    @default_text ||= ''
    @max_chars ||= 16
    @text_key ||= :research_mod_test_text
    @help_text ||= (
      "从左侧选择平假名、片假名或英数；字符区取消可返回分类。\n" +
      "确定保存，留空可清除文字。最多 #{@max_chars} 个字符。"
    )

    @title_window = Window_Help.new(2)
    @title_window.y = 0
    @title_window.set_text([@text_title, @help_text].reject(&:empty?).join("\n"))

    actor = $game_party.menu_actor || $game_party.members[0]
    unless actor
      return_scene
      return
    end

    @edit_actor = actor.clone
    @edit_actor.name = @default_text
    @edit_window = Window_ResearchModNameEdit.new(@edit_actor, @max_chars)
    @edit_window.y = @title_window.height

    input_y = @edit_window.y + @edit_window.height
    category_width = 112
    input_height = [
      Window_ResearchModCharacterInput.required_height,
      Graphics.height - input_y
    ].min
    @category_window = Window_ResearchModTextCategory.new(
      0, input_y, category_width
    )
    [:hiragana, :katakana, :latin].each do |symbol|
      @category_window.set_handler(symbol, method(:on_category_ok))
    end
    @category_window.set_handler(:cancel, method(:on_input_cancel))

    @input_window = Window_ResearchModCharacterInput.new(
      @edit_window, category_width, input_y,
      Graphics.width - category_width, input_height
    )
    @input_window.set_handler(:ok, method(:on_character_ok))
    @input_window.set_handler(:cancel, method(:on_character_cancel))
    @input_window.deactivate
  end

  def on_category_ok
    @category_window.deactivate
    @input_window.set_category(@category_window.current_symbol)
    @input_window.activate
  end

  def on_character_ok
    entry = @input_window.current_entry
    case entry
    when :space
      add_character(' ')
    when :back
      Sound.play_cancel unless @edit_window.back
    when :finish
      on_input_ok
      return
    else
      add_character(entry)
    end
    @input_window.activate
  end

  def add_character(character)
    Sound.play_buzzer unless @edit_window.add(character)
  end

  def on_character_cancel
    @input_window.deactivate
    @category_window.activate
  end

  def on_input_ok
    if @result_handler.respond_to?(:call)
      accepted = @result_handler.call(@edit_window.name)
      return if accepted == false
    else
      ResearchMod.set_custom_text(@text_key, @edit_window.name)
    end
    return_scene
  end

  def on_input_cancel
    return_scene
  end

  def terminate
    @title_window.dispose if @title_window && !@title_window.disposed?
    @edit_window.dispose if @edit_window && !@edit_window.disposed?
    if @category_window && !@category_window.disposed?
      @category_window.dispose
    end
    @input_window.dispose if @input_window && !@input_window.disposed?
    super
  end
end

# Install achievement extensions with RGSS3-compatible method aliases.
class Window_ResearchModCommand
  include ResearchModAchievementCommandExtension

  alias research_mod_achievement_make_command_list make_command_list
  def make_command_list
    research_mod_achievement_make_command_list
    research_mod_add_achievement_command
  end

  alias research_mod_achievement_update_help update_help
  def update_help
    research_mod_achievement_update_help
    research_mod_update_achievement_help
  end
end

class Scene_ResearchMod
  include ResearchModAchievementSceneExtension

  alias research_mod_achievement_start start
  def start
    research_mod_achievement_start
    research_mod_setup_achievement_handler
  end
end

# Expose selected original common events through a two-level research menu.
class Window_ResearchModEventCategory < Window_Command
  def initialize(help_window)
    @help_window = help_window
    super(0, 0)
    self.z = 420
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    3
  end

  def make_command_list
    add_command('野营', :select, true, :camp)
    add_command('返回', :cancel)
  end

  def update_help
    return unless @help_window && !@help_window.disposed?

    text = current_symbol == :select ?
      '选择野营后，可以调用原版野营公共事件。' : '返回研究修改器。'
    @help_window.set_text(text)
  end
end

class Window_ResearchModCampEventList < Window_Command
  def initialize(help_window)
    @help_window = help_window
    super(0, 0)
    self.z = 425
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    6
  end

  def make_command_list
    ResearchMod::CAMP_COMMON_EVENT_ENTRIES.each do |entry|
      if entry[:kind] == :teleport
        enabled = ResearchMod.teleport_target_valid?(entry[:map_id], entry[:x], entry[:y])
        label = format('%s（地图 %d）', entry[:name], entry[:map_id])
      else
        common_event = $data_common_events && $data_common_events[entry[:id]]
        enabled = !common_event.nil?
        label = format('%s（公共事件 %d）', entry[:name], entry[:id])
      end
      add_command(label, :select, enabled, entry)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless @help_window && !@help_window.disposed?

    entry = current_ext
    if entry && current_symbol == :select
      if entry[:kind] == :teleport
        valid = ResearchMod.teleport_target_valid?(entry[:map_id], entry[:x], entry[:y])
        text = format('%s（地图 %d，坐标 %d,%d）\n%s',
                      entry[:name], entry[:map_id], entry[:x], entry[:y],
                      valid ? '进入原版野营地图。' : '目标地图或坐标无法读取。')
        @help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
      else
        common_event = $data_common_events && $data_common_events[entry[:id]]
        if common_event
          name = common_event.respond_to?(:name) ? common_event.name.to_s : ''
          name = entry[:name] if name.empty?
          @help_window.set_text(
            format('%s（公共事件 %d）\n执行原版野营流程，可能改变地图、开关和变量。',
                   name, entry[:id]).gsub(92.chr + 'n', 10.chr)
          )
        else
          @help_window.set_text(format('无法读取公共事件 %d。', entry[:id]))
        end
      end
    else
      @help_window.set_text('返回野营分类。')
    end
  end
end

class Window_ResearchModCommand
  alias research_mod_event_call_make_command_list make_command_list
  def make_command_list
    research_mod_event_call_make_command_list
    add_command('调用事件', :event_call)
    event_call_command = @list.pop
    insert_index = @list.index { |entry| entry[:symbol] == :teleport }
    insert_index ||= @list.length
    @list.insert(insert_index, event_call_command)
  end

  alias research_mod_event_call_update_help update_help
  def update_help
    research_mod_event_call_update_help
    return unless help_window && current_symbol == :event_call

    help_window.set_text(
      '调用选定的原版公共事件。当前分类为野营，确认后选择具体野营事件。'
    )
  end
end

class Scene_ResearchMod
  alias research_mod_event_call_start start
  def start
    research_mod_event_call_start
    @command_window.set_handler(:event_call, method(:open_event_call_menu))
  end

  alias research_mod_event_call_terminate terminate
  def terminate
    dispose_event_call_windows
    research_mod_event_call_terminate
  end

  def open_event_call_menu
    @event_call_help_window = Window_Help.new(3)
    @event_call_help_window.y = Graphics.height - @event_call_help_window.height
    @event_call_category_window = Window_ResearchModEventCategory.new(
      @event_call_help_window
    )
    @event_call_category_window.set_handler(
      :select, method(:select_event_call_category)
    )
    @event_call_category_window.set_handler(
      :cancel, method(:close_event_call_menu)
    )
    @event_call_category_window.show
    @event_call_category_window.activate
    @command_window.deactivate
  end

  def select_event_call_category
    return close_event_call_menu unless
      @event_call_category_window.current_ext == :camp

    @event_call_category_window.hide
    @event_call_category_window.deactivate
    @event_call_event_window = Window_ResearchModCampEventList.new(
      @event_call_help_window
    )
    @event_call_event_window.set_handler(
      :select, method(:execute_event_call)
    )
    @event_call_event_window.set_handler(
      :cancel, method(:close_event_call_event_list)
    )
    @event_call_event_window.show
    @event_call_event_window.activate
  end

  def close_event_call_event_list
    defer_research_mod_window_dispose(@event_call_event_window)
    @event_call_event_window = nil
    @event_call_category_window.show
    @event_call_category_window.activate
    @event_call_category_window.update_help
  end

  def execute_event_call
    entry = @event_call_event_window.current_ext
    unless entry.is_a?(Hash)
      Sound.play_buzzer
      @event_call_event_window.activate
      @event_call_help_window.set_text('无法读取所选野营事件。')
      return
    end

    if entry[:kind] == :teleport
      success = ResearchMod.reserve_teleport(
        entry[:map_id], entry[:x], entry[:y]
      )
      unless success
        Sound.play_buzzer
        @event_call_event_window.activate
        @event_call_help_window.set_text('目标地图或坐标无效，无法进入野营。')
        return
      end
    else
      event_id = entry[:id].to_i
      common_event = $data_common_events && $data_common_events[event_id]
      unless common_event && $game_temp &&
             $game_temp.respond_to?(:reserve_common_event)
        Sound.play_buzzer
        @event_call_event_window.activate
        @event_call_help_window.set_text(
          format('无法读取或调用公共事件 %d。', event_id)
        )
        return
      end
      $game_temp.reserve_common_event(event_id)
    end

    close_event_call_menu
    SceneManager.goto(Scene_Map)
  end

  def close_event_call_menu
    dispose_event_call_windows
    @command_window.activate if @command_window && !@command_window.disposed?
  end

  def dispose_event_call_windows
    defer_research_mod_window_dispose(@event_call_event_window)
    defer_research_mod_window_dispose(@event_call_category_window)
    defer_research_mod_window_dispose(@event_call_help_window)
    @event_call_event_window = nil
    @event_call_category_window = nil
    @event_call_help_window = nil
  end
end

# Apply priority selection only while the map processes a natural encounter.
class Game_Player
  alias research_mod_priority_encounter_encounter encounter
  alias research_mod_priority_encounter_troop_id make_encounter_troop_id

  def encounter
    @research_mod_natural_encounter = true
    research_mod_priority_encounter_encounter
  ensure
    @research_mod_natural_encounter = false
  end

  def make_encounter_troop_id
    unless @research_mod_natural_encounter &&
           ResearchMod.priority_encounter_enabled?
      return research_mod_priority_encounter_troop_id
    end

    troop_id, source = ResearchMod.priority_encounter_pick
    unless troop_id
      troop_id = research_mod_priority_encounter_troop_id
      ResearchMod.set_priority_encounter_last_result(
        format('原版随机 -> T%d', troop_id.to_i)
      )
      return troop_id
    end

    ResearchMod.set_priority_encounter_last_result(
      format('%s -> T%d', source, troop_id)
    )
    troop_id
  end
end

# Track battle origin and limit reward changes to an automatic victory battle.
module BattleManager
  class << self
    alias research_mod_auto_victory_setup setup
    def setup(*args)
      result = research_mod_auto_victory_setup(*args)
      @research_mod_random_encounter = false
      @research_mod_custom_battle = false
      ResearchMod.end_auto_victory_reward
      result
    end

    alias research_mod_auto_victory_on_encounter on_encounter
    def on_encounter
      result = research_mod_auto_victory_on_encounter
      @research_mod_random_encounter = true
      result
    end

    alias research_mod_auto_victory_battle_end battle_end
    def battle_end(result)
      research_mod_auto_victory_battle_end(result)
    ensure
      @research_mod_random_encounter = false
      @research_mod_custom_battle = false
      ResearchMod.end_auto_victory_reward
    end

    def research_mod_random_encounter?
      @research_mod_random_encounter == true
    end

    def research_mod_custom_battle?
      @research_mod_custom_battle == true
    end

    def research_mod_custom_battle=(value)
      @research_mod_custom_battle = !!value
    end
  end
end

module ResearchMod
  class << self
    alias research_mod_auto_victory_setup_battle_request setup_battle_request
    def setup_battle_request(request)
      result = research_mod_auto_victory_setup_battle_request(request)
      BattleManager.research_mod_custom_battle = true if result
      result
    end
  end
end

class Game_Troop < Game_Unit
  alias research_mod_auto_victory_exp_total exp_total
  def exp_total
    value = research_mod_auto_victory_exp_total
    ResearchMod.apply_auto_victory_reward_rate(
      value, ResearchMod.auto_victory_exp_rate
    )
  end

  alias research_mod_auto_victory_class_exp_total class_exp_total
  def class_exp_total
    value = research_mod_auto_victory_class_exp_total
    ResearchMod.apply_auto_victory_reward_rate(
      value, ResearchMod.auto_victory_class_exp_rate
    )
  end
end

class Scene_Battle < Scene_Base
  alias research_mod_auto_victory_start_party_command_selection \
    start_party_command_selection
  def start_party_command_selection
    unless @research_mod_auto_victory_checked
      @research_mod_auto_victory_checked = true
      execute, result = ResearchMod.auto_victory_decision
      if ResearchMod.auto_victory_enabled?
        ResearchMod.set_auto_victory_last_result(result)
      end
      if execute
        ResearchMod.begin_auto_victory_reward
        process_research_mod_force_victory
        return
      end
    end

    research_mod_auto_victory_start_party_command_selection
  end
end

class Window_ResearchModAutoVictoryRateInput < Window_NumberInputBase
  def initialize
    super()
  end

  def setup(value)
    start(ResearchMod::AUTO_VICTORY_RATE_MAX.to_s.size, value.to_i)
    self.x = (Graphics.width - width) / 2
    self.y = (Graphics.height - height) / 2
    self.z = 500
  end

  def number
    [[@number, ResearchMod::AUTO_VICTORY_RATE_MAX].min, 0].max
  end
end

class Window_ResearchModAutoVictorySettings < Window_Command
  def initialize(help_window)
    @auto_victory_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @auto_victory_help_window.height
  end

  def make_command_list
    add_command('总开关：' + on_off(ResearchMod.auto_victory_enabled?),
                :toggle_enabled)
    add_command('Boss战跳过：' +
                on_off(ResearchMod.auto_victory_skip_boss?), :toggle_boss)
    add_command('未入队怪物跳过：' +
                on_off(ResearchMod.auto_victory_skip_unrecruited?),
                :toggle_unrecruited)
    range = ResearchMod.auto_victory_random_only? ?
              '仅随机遇敌' : '全部符合条件战斗'
    add_command('适用范围：' + range, :toggle_range)
    add_command(format('经验倍率：%d%%',
                       ResearchMod.auto_victory_exp_rate), :exp_rate)
    add_command(format('职业经验倍率：%d%%',
                       ResearchMod.auto_victory_class_exp_rate),
                :class_exp_rate)
    add_command('查看上次判定', :last_result)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    lines = case current_symbol
            when :toggle_enabled
              ['自动胜利的总开关。',
               '关闭后保留其他设置。']
            when :toggle_boss
              ['开启后，敌群中存在 Boss 时跳过。',
               'Boss 使用特殊类别 10 判断。']
            when :toggle_unrecruited
              ['开启后，存在未入队角色时跳过。',
               '普通不可入队怪物不受影响。']
            when :toggle_range
              ['仅随机遇敌：不处理剧情战。',
               '全部：处理所有符合条件的战斗。',
               '回想和研究模拟战始终跳过。']
            when :exp_rate
              ['设置自动胜利的经验倍率。',
               '范围 0%～9999%，原值为 100%。',
               '只影响自动胜利的本场结算。']
            when :class_exp_rate
              ['设置自动胜利的职业经验倍率。',
               '范围 0%～9999%，原值为 100%。',
               '只影响自动胜利的本场结算。']
            when :last_result
              ['最近一次启用后的判定：',
               ResearchMod.auto_victory_last_result]
            else
              ['返回研究修改器。']
            end
    help_window.set_text(lines.join(10.chr))
  end

  def on_off(value)
    value ? '开' : '关'
  end
end

class Window_ResearchModCommand
  alias research_mod_auto_victory_make_command_list make_command_list
  def make_command_list
    research_mod_auto_victory_make_command_list
    state = ResearchMod.auto_victory_enabled? ? '开' : '关'
    add_command('战斗自动胜利：' + state, :auto_victory)
    command = @list.pop
    force_index = @list.index do |entry|
      entry[:symbol] == :force_victory
    end
    insert_index = force_index ? force_index + 1 : @list.length
    @list.insert(insert_index, command)
  end

  alias research_mod_auto_victory_update_help update_help
  def update_help
    research_mod_auto_victory_update_help
    return unless help_window && current_symbol == :auto_victory

    lines = ['设置进入战斗后的自动胜利。',
             '可跳过 Boss 和未入队怪物。',
             '也可分别设置两种经验倍率。']
    help_window.set_text(lines.join(10.chr))
  end
end


class Scene_ResearchMod
  alias research_mod_auto_victory_start start
  def start
    research_mod_auto_victory_start
    @command_window.set_handler(
      :auto_victory, method(:open_auto_victory_settings)
    )
  end

  alias research_mod_auto_victory_terminate terminate
  def terminate
    dispose_auto_victory_windows
    research_mod_auto_victory_terminate
  end

  def open_auto_victory_settings
    @auto_victory_help_window = Window_Help.new(4)
    @auto_victory_help_window.y =
      Graphics.height - @auto_victory_help_window.height
    @auto_victory_settings_window =
      Window_ResearchModAutoVictorySettings.new(
        @auto_victory_help_window
      )
    @auto_victory_settings_window.set_handler(
      :toggle_enabled, method(:toggle_auto_victory_enabled)
    )
    @auto_victory_settings_window.set_handler(
      :toggle_boss, method(:toggle_auto_victory_boss)
    )
    @auto_victory_settings_window.set_handler(
      :toggle_unrecruited, method(:toggle_auto_victory_unrecruited)
    )
    @auto_victory_settings_window.set_handler(
      :toggle_range, method(:toggle_auto_victory_range)
    )
    @auto_victory_settings_window.set_handler(
      :exp_rate, method(:input_auto_victory_exp_rate)
    )
    @auto_victory_settings_window.set_handler(
      :class_exp_rate, method(:input_auto_victory_class_exp_rate)
    )
    @auto_victory_settings_window.set_handler(
      :last_result, method(:keep_auto_victory_settings)
    )
    @auto_victory_settings_window.set_handler(
      :cancel, method(:close_auto_victory_settings)
    )
    @auto_victory_settings_window.show
    @auto_victory_settings_window.activate
    @command_window.deactivate
  end

  def toggle_auto_victory_enabled
    ResearchMod.toggle_auto_victory
    refresh_auto_victory_settings
  end

  def toggle_auto_victory_boss
    ResearchMod.toggle_auto_victory_skip_boss
    refresh_auto_victory_settings
  end

  def toggle_auto_victory_unrecruited
    ResearchMod.toggle_auto_victory_skip_unrecruited
    refresh_auto_victory_settings
  end

  def toggle_auto_victory_range
    ResearchMod.toggle_auto_victory_random_only
    refresh_auto_victory_settings
  end

  def keep_auto_victory_settings
    @auto_victory_settings_window.activate
    @auto_victory_settings_window.update_help
  end

  def refresh_auto_victory_settings
    index = @auto_victory_settings_window.index
    @auto_victory_settings_window.refresh
    @auto_victory_settings_window.select(index)
    @auto_victory_settings_window.activate
    @auto_victory_settings_window.update_help
    @command_window.refresh
  end

  def input_auto_victory_exp_rate
    open_auto_victory_rate_input(:exp)
  end

  def input_auto_victory_class_exp_rate
    open_auto_victory_rate_input(:class_exp)
  end

  def open_auto_victory_rate_input(kind)
    @auto_victory_rate_kind = kind
    value = kind == :exp ? ResearchMod.auto_victory_exp_rate :
                           ResearchMod.auto_victory_class_exp_rate
    unless @auto_victory_rate_window
      @auto_victory_rate_window =
        Window_ResearchModAutoVictoryRateInput.new
      @auto_victory_rate_window.set_handler(
        :ok, method(:apply_auto_victory_rate)
      )
      @auto_victory_rate_window.set_handler(
        :cancel, method(:close_auto_victory_rate_input)
      )
    end
    @auto_victory_rate_window.setup(value)
    @auto_victory_settings_window.deactivate
    label = kind == :exp ? '经验' : '职业经验'
    lines = [format('输入%s倍率。', label),
             '范围 0%～9999%。',
             '100% 表示保持原版奖励。']
    @auto_victory_help_window.set_text(lines.join(10.chr))
  end

  def apply_auto_victory_rate
    value = @auto_victory_rate_window.number
    if @auto_victory_rate_kind == :exp
      ResearchMod.set_auto_victory_exp_rate(value)
    else
      ResearchMod.set_auto_victory_class_exp_rate(value)
    end
    close_auto_victory_rate_input
    refresh_auto_victory_settings
  end

  def close_auto_victory_rate_input
    if @auto_victory_rate_window
      @auto_victory_rate_window.close
      @auto_victory_rate_window.deactivate
    end
    @auto_victory_rate_kind = nil
    @auto_victory_settings_window.activate
    @auto_victory_settings_window.update_help
  end

  def close_auto_victory_settings
    dispose_auto_victory_windows
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def dispose_auto_victory_windows
    defer_research_mod_window_dispose(@auto_victory_rate_window)
    defer_research_mod_window_dispose(@auto_victory_settings_window)
    defer_research_mod_window_dispose(@auto_victory_help_window)
    @auto_victory_rate_window = nil
    @auto_victory_settings_window = nil
    @auto_victory_help_window = nil
    @auto_victory_rate_kind = nil
  end
end

class Window_ResearchModPriorityEncounterSettings < Window_Command
  def initialize(help_window)
    @priority_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @priority_help_window.height
  end

  def make_command_list
    state = ResearchMod.priority_encounter_enabled? ? '开' : '关'
    add_command('总开关：' + state, :toggle_enabled)
    mode = ResearchMod.priority_encounter_mode_name
    add_command('自动规则：' + mode, :mode)
    boss_state = ResearchMod.priority_encounter_boss_new_only? ? '开' : '关'
    add_command('Boss仅未遭遇：' + boss_state, :toggle_boss_new)
    target = ResearchMod.priority_encounter_target_text
    add_command('手动目标：' + target, :target)
    count = ResearchMod.priority_encounter_candidates.size
    add_command(format('查看当前候选（%d）', count), :candidates)
    add_command('查看上次选择', :last_result)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    lines = case current_symbol
            when :toggle_enabled
              ['自然随机遇敌的优先选择总开关。',
               '关闭后保留其他设置。']
            when :mode
              ['选择没有手动目标时的自动规则。',
               '自动规则的优先级低于手动目标。',
               '没有匹配敌群时使用原版随机。']
            when :toggle_boss_new
              ['开启：只优先尚未遭遇的 Boss。',
               '关闭：Boss 可能被连续优先选择。',
               '只影响自动规则中的 Boss 模式。']
            when :target
              priority_target_help_lines
            when :candidates
              [ResearchMod.priority_encounter_region_text,
               '查看当前位置原本允许出现的敌群。',
               '查看不会触发战斗或改变遇敌计数。']
            when :last_result
              ['最近一次自然遇敌的选择：',
               ResearchMod.priority_encounter_last_result]
            else
              ['返回研究修改器。']
            end
    help_window.set_text(lines.join(10.chr))
  end

  def priority_target_help_lines
    target_id = ResearchMod.priority_encounter_target_id
    return ['从当前区块可遇到的敌人中选择目标。',
            '手动目标的优先级高于自动规则。'] if target_id <= 0

    candidates = ResearchMod.priority_encounter_enemy_candidates
    available = candidates.any? { |enemy| enemy.id == target_id }
    [format('当前手动目标：%s',
            ResearchMod.priority_encounter_target_text),
     available ? '目标可在当前区块遇到。' : '目标不在当前区块，暂不生效。',
     '无匹配时继续自动规则或原版随机。']
  end
end

class Window_ResearchModPriorityModeList < Window_Command
  def initialize(help_window)
    @priority_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    current = ResearchMod.priority_encounter_mode
    index = @list.index { |entry| entry[:ext] == current }
    select(index || 0)
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @priority_help_window.height
  end

  def make_command_list
    current = ResearchMod.priority_encounter_mode
    ResearchMod::PRIORITY_ENCOUNTER_MODES.each do |mode|
      name = ResearchMod.priority_encounter_mode_name(mode)
      label = mode == current ? name + '（当前）' : name
      add_command(label, :select, true, mode)
    end
    add_command('返回设置', :cancel)
  end

  def update_help
    return unless help_window

    lines = case current_ext
            when :undiscovered
              ['优先包含未遭遇敌人的敌群。',
               '进入战斗后会登记为已经遭遇。']
            when :unrecruited
              ['优先可入队但尚未入队的敌人。',
               '普通不可入队怪物不受影响。']
            when :boss
              ['优先包含 Boss 的敌群。',
               '是否限制未遭遇由上一页设置。']
            when :original
              ['不使用自动筛选，保持原版随机。',
               '已经设置的手动目标仍然优先。']
            else
              ['返回优先遇敌设置。']
            end
    lines << '自动规则的优先级低于手动目标。' if current_ext
    help_window.set_text(lines.join(10.chr))
  end
end

class Window_ResearchModPriorityTroopList < Window_Command
  def initialize(help_window)
    @entries = ResearchMod.priority_encounter_candidates
    @priority_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @priority_help_window.height
  end

  def make_command_list
    if @entries.empty?
      add_command('当前区块没有有效敌群', :none, false)
    else
      @entries.each do |data|
        troop = data[:troop]
        display_name = ResearchMod.priority_encounter_troop_name(troop)
        name = ResearchMod.battle_dialogue_display_text(
          display_name, 22, 50
        )
        add_command(format('T%04d  %s', troop.id, name),
                    :inspect, true, data)
      end
    end
    add_command('返回设置', :cancel)
  end

  def update_help
    return unless help_window

    data = current_ext
    unless data.is_a?(Hash) && data[:troop]
      help_window.set_text(
        [ResearchMod.priority_encounter_region_text,
         '没有可查看的敌群。'].join(10.chr)
      )
      return
    end

    troop = data[:troop]
    status = ResearchMod.priority_encounter_rule_status(data)
    yes_no = proc { |value| value ? '是' : '否' }
    first_member = ResearchMod.priority_encounter_first_member_text(troop)
    lines = [format('敌群 T%d　权重 %d', troop.id, data[:weight]),
             format('未遭遇：%s　未入队：%s　Boss：%s',
                    yes_no.call(status[:undiscovered]),
                    yes_no.call(status[:unrecruited]),
                    yes_no.call(status[:boss])),
             '首位入队：' + first_member,
             '当前自动规则：' +
               ResearchMod.priority_encounter_current_rule_text(data)]
    help_window.set_text(lines.join(10.chr))
  end

  def priority_member_text(enemy_ids)
    values = enemy_ids.map do |enemy_id|
      enemy = $data_enemies[enemy_id]
      name = enemy ? enemy.name.to_s : '未知'
      name = ResearchMod.battle_dialogue_display_text(name, 8, 20)
      format('E%d %s', enemy_id, name)
    end
    text = values.join('／')
    ResearchMod.battle_dialogue_display_text(text, 38, 80)
  end
end

class Window_ResearchModPriorityEnemyList < Window_Command
  def initialize(help_window)
    @enemies = ResearchMod.priority_encounter_enemy_candidates
    @priority_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    target_id = ResearchMod.priority_encounter_target_id
    index = @list.index do |entry|
      enemy = entry[:ext]
      enemy && enemy.id == target_id
    end
    select(index || 0)
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @priority_help_window.height
  end

  def make_command_list
    add_command('清除手动目标', :clear)
    @enemies.each do |enemy|
      name = ResearchMod.battle_dialogue_display_text(
        enemy.name.to_s, 24, 55
      )
      add_command(format('E%04d  %s', enemy.id, name),
                  :select, true, enemy)
    end
    add_command('返回设置', :cancel)
  end

  def update_help
    return unless help_window

    enemy = current_ext
    unless enemy
      lines = if current_symbol == :cancel
                ['返回优先遇敌设置。']
              else
                ['清除当前手动目标。',
                 '之后使用自动规则或原版随机。']
              end
      help_window.set_text(lines.join(10.chr))
      return
    end

    flags = []
    unless ResearchMod.priority_encounter_enemy_discovered?(enemy.id)
      flags << '未遭遇'
    end
    if ResearchMod.priority_encounter_enemy_unrecruited?(enemy.id)
      flags << '未入队'
    end
    if ResearchMod.priority_encounter_enemy_boss?(enemy.id)
      flags << 'Boss'
    end
    flags << '普通' if flags.empty?
    troop_ids = ResearchMod.priority_encounter_candidates.select do |data|
      data[:enemy_ids].include?(enemy.id)
    end.map { |data| data[:troop].id }
    troop_text = troop_ids.first(8).join('、')
    troop_text += '等' if troop_ids.size > 8
    name = ResearchMod.battle_dialogue_display_text(
      enemy.name.to_s, 22, 50
    )
    join_text = ResearchMod.priority_encounter_enemy_join_text(enemy.id)
    lines = [format('敌人 E%d　%s', enemy.id, name),
             '入队：' + join_text + '　标记：' + flags.join('／'),
             '所在敌群：' + troop_text,
             '确定后设为手动目标。']
    help_window.set_text(lines.join(10.chr))
  end
end

class Window_ResearchModCommand
  alias research_mod_priority_encounter_make_command_list make_command_list
  def make_command_list
    research_mod_priority_encounter_make_command_list
    state = ResearchMod.priority_encounter_enabled? ? '开' : '关'
    add_command('区块优先遇敌：' + state, :priority_encounter)
    command = @list.pop
    auto_index = @list.index do |entry|
      entry[:symbol] == :auto_victory
    end
    insert_index = auto_index || @list.length
    @list.insert(insert_index, command)
  end

  alias research_mod_priority_encounter_update_help update_help
  def update_help
    research_mod_priority_encounter_update_help
    return unless help_window && current_symbol == :priority_encounter

    lines = ['设置当前区块的自然随机遇敌优先级。',
             '手动目标 > 自动规则 > 原版随机。',
             '不影响剧情战、接触战或模拟战。']
    help_window.set_text(lines.join(10.chr))
  end
end

class Scene_ResearchMod
  alias research_mod_priority_encounter_start start
  def start
    research_mod_priority_encounter_start
    @command_window.set_handler(
      :priority_encounter, method(:open_priority_encounter_settings)
    )
  end

  alias research_mod_priority_encounter_terminate terminate
  def terminate
    dispose_priority_encounter_windows
    research_mod_priority_encounter_terminate
  end

  def open_priority_encounter_settings
    @priority_encounter_help_window = Window_Help.new(4)
    @priority_encounter_help_window.y =
      Graphics.height - @priority_encounter_help_window.height
    @priority_encounter_settings_window =
      Window_ResearchModPriorityEncounterSettings.new(
        @priority_encounter_help_window
      )
    window = @priority_encounter_settings_window
    window.set_handler(:toggle_enabled,
                       method(:toggle_priority_encounter_enabled))
    window.set_handler(:mode, method(:open_priority_encounter_modes))
    window.set_handler(:toggle_boss_new,
                       method(:toggle_priority_encounter_boss_new))
    window.set_handler(:target, method(:open_priority_encounter_targets))
    window.set_handler(:candidates,
                       method(:open_priority_encounter_candidates))
    window.set_handler(:last_result,
                       method(:keep_priority_encounter_settings))
    window.set_handler(:cancel, method(:close_priority_encounter_settings))
    window.activate
    @command_window.deactivate
  end

  def toggle_priority_encounter_enabled
    ResearchMod.toggle_priority_encounter
    refresh_priority_encounter_settings
  end

  def toggle_priority_encounter_boss_new
    ResearchMod.toggle_priority_encounter_boss_new_only
    refresh_priority_encounter_settings
  end

  def keep_priority_encounter_settings
    @priority_encounter_settings_window.activate
    @priority_encounter_settings_window.update_help
  end

  def refresh_priority_encounter_settings
    window = @priority_encounter_settings_window
    index = window.index
    window.refresh
    window.select(index)
    window.activate
    window.update_help
    @command_window.refresh
  end

  def open_priority_encounter_modes
    @priority_encounter_settings_window.hide
    @priority_encounter_settings_window.deactivate
    @priority_encounter_mode_window =
      Window_ResearchModPriorityModeList.new(
        @priority_encounter_help_window
      )
    @priority_encounter_mode_window.set_handler(
      :select, method(:select_priority_encounter_mode)
    )
    @priority_encounter_mode_window.set_handler(
      :cancel, method(:close_priority_encounter_modes)
    )
    @priority_encounter_mode_window.activate
  end

  def select_priority_encounter_mode
    mode = @priority_encounter_mode_window.current_ext
    ResearchMod.set_priority_encounter_mode(mode)
    close_priority_encounter_modes
    refresh_priority_encounter_settings
  end

  def close_priority_encounter_modes
    defer_research_mod_window_dispose(@priority_encounter_mode_window)
    @priority_encounter_mode_window = nil
    restore_priority_encounter_settings
  end

  def open_priority_encounter_candidates
    @priority_encounter_settings_window.hide
    @priority_encounter_settings_window.deactivate
    @priority_encounter_troop_window =
      Window_ResearchModPriorityTroopList.new(
        @priority_encounter_help_window
      )
    @priority_encounter_troop_window.set_handler(
      :inspect, method(:keep_priority_encounter_candidates)
    )
    @priority_encounter_troop_window.set_handler(
      :cancel, method(:close_priority_encounter_candidates)
    )
    @priority_encounter_troop_window.activate
  end

  def keep_priority_encounter_candidates
    @priority_encounter_troop_window.activate
    @priority_encounter_troop_window.update_help
  end

  def close_priority_encounter_candidates
    defer_research_mod_window_dispose(@priority_encounter_troop_window)
    @priority_encounter_troop_window = nil
    restore_priority_encounter_settings
  end

  def open_priority_encounter_targets
    @priority_encounter_settings_window.hide
    @priority_encounter_settings_window.deactivate
    @priority_encounter_enemy_window =
      Window_ResearchModPriorityEnemyList.new(
        @priority_encounter_help_window
      )
    @priority_encounter_enemy_window.set_handler(
      :select, method(:select_priority_encounter_target)
    )
    @priority_encounter_enemy_window.set_handler(
      :clear, method(:clear_priority_encounter_target)
    )
    @priority_encounter_enemy_window.set_handler(
      :cancel, method(:close_priority_encounter_targets)
    )
    @priority_encounter_enemy_window.activate
  end

  def select_priority_encounter_target
    enemy = @priority_encounter_enemy_window.current_ext
    ResearchMod.set_priority_encounter_target(enemy ? enemy.id : 0)
    close_priority_encounter_targets
    refresh_priority_encounter_settings
  end

  def clear_priority_encounter_target
    ResearchMod.set_priority_encounter_target(0)
    close_priority_encounter_targets
    refresh_priority_encounter_settings
  end

  def close_priority_encounter_targets
    defer_research_mod_window_dispose(@priority_encounter_enemy_window)
    @priority_encounter_enemy_window = nil
    restore_priority_encounter_settings
  end

  def restore_priority_encounter_settings
    window = @priority_encounter_settings_window
    return unless window && !window.disposed?

    window.show
    window.activate
    window.update_help
  end

  def close_priority_encounter_settings
    dispose_priority_encounter_windows
    @command_window.refresh
    @command_window.activate
    @command_window.update_help
  end

  def dispose_priority_encounter_windows
    defer_research_mod_window_dispose(@priority_encounter_enemy_window)
    defer_research_mod_window_dispose(@priority_encounter_troop_window)
    defer_research_mod_window_dispose(@priority_encounter_mode_window)
    defer_research_mod_window_dispose(@priority_encounter_settings_window)
    defer_research_mod_window_dispose(@priority_encounter_help_window)
    @priority_encounter_enemy_window = nil
    @priority_encounter_troop_window = nil
    @priority_encounter_mode_window = nil
    @priority_encounter_settings_window = nil
    @priority_encounter_help_window = nil
  end
end
