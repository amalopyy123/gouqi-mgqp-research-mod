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
  LOSE_EVENT_PAGE_SIZE = 200
  MAP_PAGE_SIZE = 100
  TELEPORT_SLOT_COUNT = 10
  TELEPORT_SLOTS_KEY = :@research_mod_teleport_slots
  DEBUG_DATABASE_PAGE_SIZE = 200
  DEBUG_VARIABLE_MAX = 999_999_999
  SELF_SWITCH_KEYS = ['A', 'B', 'C', 'D']
  MAP_DETAIL_WRAP_CHARS = 42
  MAP_DETAIL_FONT_SIZE = 18
  ACTOR_ENCYCLOPEDIA_PAGE_SIZE = 100
  ACTOR_CUTIN_PAGE_SIZE = 100
  ACTOR_ENCYCLOPEDIA_LIST_WIDTH = 304
  ACTOR_ENCYCLOPEDIA_WRAP_CHARS = 26
  ACTOR_ENCYCLOPEDIA_FONT_SIZE = 18
  PANTY_ARMOR_ID_RANGE = (1801..2097)
  MILK_ITEM_ID_RANGE = (1001..1741)
  MARRIAGE_ARMOR_ID_RANGE = (8001..8020)
  SMALL_MEDAL_ITEM_ID = 32
  LARGE_MEDAL_ITEM_ID = 900
  LEWD_SOUL_ITEM_ID = 628
  LEECH_CELL_ITEM_ID = 282
  HARPY_FEATHER_ITEM_ID = 23
  GUIDING_THREAD_COMMON_EVENT_ID = 31

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
  PARTY_EDIT_ACTOR_ID_KEY = :@research_mod_party_edit_actor_id
  PARTY_EDIT_ACTOR_ID_MENU_NAME = '编队显示角色ID'
  PARTY_EDIT_ACTOR_ID_HELP_TEXT =
    '开启后，打开系统的パーティを編集する时，在队伍和候补角色名称前显示对应Actor ID。'
  REFLECTION_MEETING_MENU_NAME = '反省会查看'
  REFLECTION_MEETING_HELP_TEXT =
    '按敌人ID查看对应反省会（败北回想）。直接播放“反省会に出る”内容，不改变当前地图和坐标。'
  VALUE_VARIABLE_MAX = 99_999_999
  VALUE_STAT_MAX = 9_999_999
  STEAL_ALWAYS_SUCCESS_KEY = :@research_mod_steal_always_success
  MILK_ALWAYS_SUCCESS_KEY = :@research_mod_milk_always_success
  DROP_ALWAYS_SUCCESS_KEY = :@research_mod_drop_always_success
  TEMPTATION_IGNORE_HP_KEY = :@research_mod_temptation_ignore_hp
  TEMPTATION_DISABLED_KEY = :@research_mod_temptation_disabled
  LOSE_EVENT_SKIP_KEY = :@research_mod_lose_event_skip
  SURE_HIT_KILL_KEY = :@research_mod_sure_hit_kill
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
  TEMPTATION_IMMUNITY_KEY = :@research_mod_temptation_immunity
  TEMPTATION_STATE_ID = 26
  AUDIO_OVERLAY_KEY = :@research_mod_audio_overlay
  BATTLE_RECORD_MAX_LINES = 5000
  BATTLE_DIALOGUE_PAGE_SIZE = 100
  HERO_SKILL_TYPE_ID = 33
  DANCE_SKILL_TYPE_ID = 37
  SING_SKILL_TYPE_ID = 38
  TRANSFORMATION_SKILL_IDS = [3126, 3127, 9783, 3128, 3129]
  MANUAL_ENEMY_DIALOGUE_KEY = :@research_mod_manual_enemy_dialogue
  SPECIAL_ENEMY_DIALOGUE_SKILL_IDS = [*2109..2122, 9433, 9434]
  PLAYFUL_DIALOGUE_SKILL_ID = 28
  PLAYFUL_COMMON_EVENT_RANGE = (40..86)
  PLAYFUL_ACTOR_VARIABLE_ID = 100
  MILKING_COMMON_EVENT_ID = 12
  MILKING_RESULT_VARIABLE_ID = 11
  MILKING_SKILL_IDS = [1439, 2380, 2382, 9512]
  TEMPTATION_CHECK_COMMON_EVENT_ID = 6
  TEMPTATION_ROLL_VARIABLE_ID = 13
  TEMPTATION_COMMON_EVENT_ID = 203
  TEMPTATION_CURRENT_HP_VARIABLE_ID = 37
  TEMPTATION_THRESHOLD_VARIABLE_ID = 38
  PERSONA_DIALOGUE_COMPATIBILITY_KEY = :@research_mod_persona_dialogue_compatibility
  CANDIDATE_DIALOGUE_VIEW_KEY = :@research_mod_candidate_dialogue_view
  ALL_DIALOGUE_FORCE_PARTY_KEY = :@research_mod_all_dialogue_force_party
  PERSONA_DIALOGUE_MENU_TEXT = '形態変化させる'
  RESEARCH_PERSONA_DIALOGUE_MENU_TEXT = '魔王城对话形态变化（无视事件）'
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

  def self.teleport_target_valid?(map_id, x, y)
    map = map_data(map_id)
    return false unless map && map.respond_to?(:width) && map.respond_to?(:height)

    x.to_i >= 0 && x.to_i < map.width && y.to_i >= 0 && y.to_i < map.height
  end

  def self.reserve_teleport(map_id, x, y)
    return false unless teleport_target_valid?(map_id, x, y)

    $game_player.reserve_transfer(map_id.to_i, x.to_i, y.to_i, 2)
    $game_temp.fade_type = 0 if $game_temp.respond_to?(:fade_type=)
    true
  end

  def self.teleport_slots
    slots = $game_system.instance_variable_get(TELEPORT_SLOTS_KEY)
    unless slots.is_a?(Array)
      slots = []
      $game_system.instance_variable_set(TELEPORT_SLOTS_KEY, slots)
    end
    slots.fill(nil, slots.length...TELEPORT_SLOT_COUNT)
    slots.slice!(TELEPORT_SLOT_COUNT, slots.length) if slots.length > TELEPORT_SLOT_COUNT
    slots
  end

  def self.teleport_slot(index)
    teleport_slots[index.to_i]
  end

  def self.teleport_slot_valid?(slot)
    return false unless slot.is_a?(Hash)

    teleport_target_valid?(slot[:map_id], slot[:x], slot[:y])
  end

  def self.save_current_teleport_slot(index)
    teleport_slots[index.to_i] = {
      :map_id => $game_map.map_id,
      :x => $game_player.x,
      :y => $game_player.y
    }
  end

  def self.clear_teleport_slot(index)
    teleport_slots[index.to_i] = nil
  end

  def self.reserve_teleport_slot(index)
    slot = teleport_slot(index)
    return false unless teleport_slot_valid?(slot)

    reserve_teleport(slot[:map_id], slot[:x], slot[:y])
  end

  def self.teleport_slot_text(index, slot = teleport_slot(index))
    return format('挡位 %02d：空', index.to_i + 1) unless slot.is_a?(Hash)

    format('挡位 %02d：地图 %04d「%s」 X=%d Y=%d', index.to_i + 1,
           slot[:map_id].to_i, map_name(slot[:map_id].to_i),
           slot[:x].to_i, slot[:y].to_i)
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

  def self.enemy_drop_texts(enemy, include_chance = true, multiline = false)
    return ['无', ''] unless enemy

    database_enemy = enemy.respond_to?(:enemy) ? enemy.enemy : enemy
    return ['无', ''] unless database_enemy && database_enemy.respond_to?(:drop_items)

    drops = database_enemy.drop_items.select { |drop| drop && drop.kind.to_i > 0 }
    entries = drops.each_with_object([]) do |drop, result|
      object = database_object(drop)
      next unless object

      result << enemy_drop_entry_text(enemy, drop, object, include_chance)
    end
    return multiline ? '无' : ['无', ''] if entries.empty?

    return entries.join(10.chr) if multiline

    lines = entries.first(2)
    lines[1] = lines[1].to_s + format(' 等%d项', entries.size - 2) if entries.size > 2
    lines.fill('', lines.size...2)
  rescue
    ['读取失败', '']
  end

  def self.enemy_drop_entry_text(enemy, drop, object, include_chance = true)
    type_name = case drop.kind.to_i
                when 1 then '道具'
                when 2 then '武器'
                when 3 then '护甲'
                else '物品'
                end
    return format('%s#%d %s', type_name, object.id, object.name.to_s) unless include_chance

    chance = if drop_always_success?
               '必掉'
             else
               enemy_drop_chance_text(enemy, drop)
             end
    format('%s#%d %s（%s）', type_name, object.id, object.name.to_s, chance)
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

    entries = enemy.steal_list[list_id.to_i] || []
    texts = entries.each_with_object([]) do |steal, result|
      object = steal_object(steal)
      next unless object

      type_name = case steal[:kind].to_i
                  when 1 then '道具'
                  when 2 then '武器'
                  when 3 then '护甲'
                  else '物品'
                  end
      name = object.name.to_s.empty? ? '（空名）' : object.name.to_s
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
    return '无' if texts.empty?

    text = texts.first(2).join('、')
    text += format(' 等%d项', texts.size - 2) if texts.size > 2
    text
  rescue
    '读取失败'
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

  def self.battle_dialogue_display_text(text, maximum = nil)
    display_text = text.to_s.gsub(/[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]/, ' ')
    display_text = display_text.gsub('\\', '＼').gsub(/[\r\n\t]+/, ' ')
    display_text = display_text.gsub(/\s+/, ' ').strip
    if maximum && display_text.size > maximum
      display_text = display_text[0, maximum - 1] + '…'
    end
    display_text
  rescue
    '(无法显示的台词)'
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

  def self.actor_skill_dialogue_entries(actor, learned_only = true)
    return [] unless actor

    word_hash = if actor.respond_to?(:skill_word_hash)
                  actor.skill_word_hash
                elsif defined?(NWConst::Actor::SKILL_WORDS)
                  actor_id = actor.respond_to?(:word_id) && actor.word_id ? actor.word_id : actor.id
                  NWConst::Actor::SKILL_WORDS[actor_id]
                end
    return [] unless word_hash.is_a?(Hash)

    entries = []
    learned_skill_ids = if learned_only && actor.respond_to?(:skills)
                          actor.skills.map(&:id)
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
      rescue
        next
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
      end
      next if matched_skills.empty?

      type_entry = entry.dup
      names = matched_skills.map { |skill| skill.name.to_s }.reject(&:empty?).uniq
      names = [entry[:skill_name].to_s] if names.empty?
      type_entry[:category] = category
      type_entry[:skill_name] = names.first.to_s + (names.size > 1 ? '等' : '')
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
      end.map { |skill_id| $data_skills[skill_id] }.compact
      next if matched_skills.empty?

      type_entry = entry.dup
      names = matched_skills.map { |skill| skill.name.to_s }.reject(&:empty?).uniq
      names = [entry[:skill_name].to_s] if names.empty?
      type_entry[:category] = category
      type_entry[:skill_name] = names.first.to_s + (names.size > 1 ? '等' : '')
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

    commands = playful_actor_event_commands(actor)
    return [] if commands.empty?

    skill = $data_skills[PLAYFUL_DIALOGUE_SKILL_ID]
    skill_name = skill && !skill.name.to_s.empty? ? skill.name : '遊ぶ'
    playful_actor_outcomes(commands).each_with_object([]) do |outcome, entries|
      groups = event_message_groups(outcome[:commands])
      next if groups.empty?

      words = groups.map do |group|
        lines = group[:lines].map(&:to_s)
        Word.new(lines.join(10.chr), group[:face_name].to_s,
                 group[:face_index].to_i)
      end
      lines = groups.each_with_object([]) do |group, result|
        result.concat(group[:lines].map(&:to_s))
      end
      entries << {
        :category => '爱玩',
        :skill_id => PLAYFUL_DIALOGUE_SKILL_ID,
        :skill_name => skill_name,
        :word_index => outcome[:index],
        :preview => lines.join(' ').strip,
        :lines => lines,
        :word => words.first,
        :words => words
      }
    end
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
    PLAYFUL_COMMON_EVENT_RANGE.each do |common_event_id|
      common_event = $data_common_events[common_event_id]
      next unless common_event

      list = Array(common_event.instance_variable_get(:@list))
      start_index = list.index do |command|
        command.instance_variable_get(:@code) == 111 &&
          command.instance_variable_get(:@indent).to_i == 0 &&
          command.instance_variable_get(:@parameters) ==
            [1, PLAYFUL_ACTOR_VARIABLE_ID, 0, actor_id, 0]
      end
      next unless start_index

      finish_index = (start_index + 1...list.size).find do |index|
        command = list[index]
        params = Array(command.instance_variable_get(:@parameters))
        command.instance_variable_get(:@code) == 111 &&
          command.instance_variable_get(:@indent).to_i == 0 &&
          params[0, 2] == [1, PLAYFUL_ACTOR_VARIABLE_ID]
      end || list.size
      return list[(start_index + 1)...finish_index]
    end
    []
  rescue
    []
  end

  def self.actor_temptation_dialogue_entries(actor)
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
            :category => '誘惑反应',
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
    data = enemy.respond_to?(:enemy) ? enemy.enemy : nil
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
    enemy_id = base_enemy && base_enemy.respond_to?(:id) ? base_enemy.id : enemy.enemy_id
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

  def self.milking_reaction_entries(enemy)
    block = milking_common_event_block(enemy)
    return [] if block.empty?

    base_enemy = enemy_base_data(enemy)
    base_name = base_enemy && base_enemy.respond_to?(:name) ? base_enemy.name.to_s : ''
    current_name = enemy.name.to_s
    groups = event_message_groups(block)
    reaction = groups.find { |group| !group[:face_name].empty? }
    failure = groups.reverse.find do |group|
      group[:lines].any? { |line| line.include?('搾れなかった') }
    end
    failure ||= groups.last if groups.size > 1 && groups.last[:face_name].empty?
    result = []
    if reaction
      lines = reaction[:lines].map do |line|
        base_name.empty? ? line : line.gsub(base_name, current_name)
      end
      word = Word.new(lines.join(92.chr + 'n'), reaction[:face_name],
                      reaction[:face_index], enemy.battler_hue)
      result << {
        :category => '乳搾り成功反应', :skill_id => nil,
        :skill_name => '乳搾り成功', :word_index => 1,
        :preview => lines.join(' '), :lines => lines, :word => word
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

  def self.enemy_special_common_event_entries(enemy)
    return [] unless enemy
    return [] unless $data_common_events

    enemy_data = enemy.respond_to?(:enemy) ? enemy.enemy : nil
    base_enemy = if enemy_data && enemy_data.respond_to?(:base_enemy)
                   enemy_data.base_enemy
                 else
                   enemy_data
                 end
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

    common_event = $data_common_events[1000 + dialogue_enemy_id]
    return [] unless common_event

    base_enemy_name = if base_enemy && base_enemy.respond_to?(:name)
                        base_enemy.name.to_s
                      else
                        ''
                      end
    current_enemy_name = enemy.respond_to?(:name) ? enemy.name.to_s : ''

    messages = []
    current = nil
    list = common_event.instance_variable_get(:@list)
    Array(list).each do |command|
      code = command.instance_variable_get(:@code)
      params = command.instance_variable_get(:@parameters)
      if code == 101
        if current && !current[:lines].empty?
          messages << current
        end
        current = {
          :face_name => params[0].to_s,
          :face_index => params[1].to_i,
          :lines => []
        }
      elsif code == 401
        if current
          line = params[0].to_s
          unless base_enemy_name.empty? || current_enemy_name.empty?
            line = line.gsub(base_enemy_name, current_enemy_name)
          end
          current[:lines] << line
        end
      elsif current && !current[:lines].empty?
        messages << current
        current = nil
      end
    end
    messages << current if current && !current[:lines].empty?

    category = '对话回应'
    messages.each_with_index.map do |message, index|
      word = Word.new(message[:lines].join("\\n"), message[:face_name],
                      message[:face_index], enemy.battler_hue)
      {
        :category => category,
        :skill_id => nil,
        :skill_name => common_event.instance_variable_get(:@name).to_s,
        :word_index => index + 1,
        :preview => message[:lines].join(' ').strip,
        :lines => message[:lines],
        :word => word
      }
    end
  rescue
    []
  end

  def self.enemy_choice_response_entries(enemy)
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

    common_event = $data_common_events[1000 + dialogue_enemy_id]
    return [] unless common_event

    base_name = base_enemy && base_enemy.respond_to?(:name) ? base_enemy.name.to_s : ''
    current_name = enemy.respond_to?(:name) ? enemy.name.to_s : ''
    commands = Array(common_event.instance_variable_get(:@list))
    branches = []
    active_branches = {}
    choice_prompts = {}
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
        owner[:responses] << group if owner
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
        last_group[:choice_position] = params[2].to_i if last_group
        last_group[:choice_background] = params[3].to_i if last_group
        choice_prompts[indent] = last_group
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

      groups = branch[:prompts] + branch[:responses]
      words = groups.map do |group|
        Word.new(group[:lines].join(10.chr), group[:face_name],
                 group[:face_index], enemy.battler_hue)
      end
      lines = groups.each_with_object([]) do |group, result|
        result.concat(group[:lines])
      end
      choice_label = branch[:path].join(' → ')
      entries << {
        :category => '选项回应',
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
        :prompt_words => words[0, branch[:prompts].size] || [],
        :response_words => words[branch[:prompts].size..-1] || []
      }
    end
    return entries unless entries.empty?

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
                             '誘惑反应'
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
    return false unless var_id == PERSONA_DIALOGUE_VARIABLE_ID

    PERSONA_DIALOGUE_BASE_MENU_TEXTS.all? { |text| names.include?(text) }
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

  def item_effect_steal(user, item, effect)
    unless user.actor? && ResearchMod.steal_always_success?
      return research_mod_item_effect_steal(user, item, effect)
    end

    @result.stealed = true
    @result.success = true
    list = steal_list[effect.data_id]
    @result.stealed_item_empty = list.empty? ? true : false
    return if $game_switches[NWConst::Sw::STEAL_FAIL]

    steal = list.sort { |a, b| b[:denominator] <=> a[:denominator] }.first
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
  alias research_mod_enemy_stat_multiplier_mhp mhp
  alias research_mod_enemy_stat_multiplier_mmp mmp
  alias research_mod_enemy_stat_multiplier_atk atk
  alias research_mod_enemy_stat_multiplier_def def
  alias research_mod_enemy_stat_multiplier_mat mat
  alias research_mod_enemy_stat_multiplier_mdf mdf
  alias research_mod_enemy_stat_multiplier_agi agi
  alias research_mod_enemy_stat_multiplier_luk luk

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

class Game_Interpreter
  alias research_mod_move_actor_ex move_actor_ex
  alias research_mod_unlimited_choices unlimited_choices
  alias research_mod_command_111 command_111
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

  def command_111
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
    if actor_id.nil?
      # クレオ・アドラ
      return research_mod_move_actor_ex(695) if map_id == 103 && event_id == 36

      raise ArgumentError, 'missing actor_id'
    end

    research_mod_move_actor_ex(actor_id)
  end

  def unlimited_choices(var_id, names)
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
    dialogue_enabled = !candidate_entries.empty? || !ring_entries.empty?
    unless persona_enabled || dialogue_enabled
      return research_mod_unlimited_choices(var_id, names)
    end

    choices = names.dup
    inserted_actions = []
    quit_index = choices.index("やめる") || choices.size
    if persona_enabled
      choices.insert(quit_index, ResearchMod::RESEARCH_PERSONA_DIALOGUE_MENU_TEXT)
      inserted_actions << [quit_index, :persona]
      quit_index += 1
    end
    if dialogue_enabled
      choices.insert(quit_index, ResearchMod::CANDIDATE_DIALOGUE_MENU_TEXT)
      inserted_actions << [quit_index, :dialogue]
    end
    research_mod_unlimited_choices(var_id, choices)

    selected_index = $game_variables[var_id]
    selected_action = inserted_actions.find { |index, _action| selected_index == index }
    if selected_action
      action = selected_action[1]
      if action == :persona
        research_mod_choose_persona(persona_ids)
      else
        research_mod_choose_candidate_dialogue(candidate_entries, ring_entries)
      end
      $game_variables[var_id] = names.index("やめる") || names.size
    elsif selected_index
      removed_count = inserted_actions.count { |index, _action| index < selected_index }
      $game_variables[var_id] = selected_index - removed_count
    end
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

  def reserve_transfer(map_id, x, y, d = 2)
    return if ResearchMod.lose_event_preview_playing?

    research_mod_reflection_reserve_transfer(map_id, x, y, d)
  end
end

class Window_ResearchModBattleEnemyDetail < Window_ResearchModBattleStatusBase
  def initialize
    @enemy = nil
    @enemy_signature = nil
    super(8, 8)
    self.z = 510
    deactivate
    unselect
    hide
  end

  def window_height
    [fitting_height(12), Graphics.height - 16].min
  end

  def item_height
    line_height * 12
  end

  def make_command_list
    add_command('', :detail)
  end

  def set_enemy(enemy)
    signature = enemy_detail_signature(enemy)
    return if @enemy_signature == signature

    @enemy = enemy
    @enemy_signature = signature
    refresh
  end

  def enemy_detail_signature(enemy)
    return nil unless enemy

    [enemy.object_id, enemy.hp, enemy.mhp, enemy.mp, enemy.mmp,
     enemy.atk, enemy.def, enemy.mat, enemy.mdf, enemy.luk, enemy.agi,
     ResearchMod.enemy_battler_file_name(enemy),
     ResearchMod.enemy_cutin_file_names(enemy),
     ResearchMod.enemy_drop_texts(enemy),
     ResearchMod.enemy_steal_text(enemy, 3),
     ResearchMod.enemy_steal_text(enemy, 4),
     ResearchMod.steal_always_success?,
     ResearchMod.drop_always_success?,
     enemy.states.map(&:id), buff_levels(enemy)]
  end

  def draw_item(index)
    return unless index == 0 && @enemy

    rect = item_rect(index)
    enemy = @enemy
    contents.font.size = 18
    change_color(normal_color)
    draw_text(rect.x, rect.y, rect.width, line_height,
              format('%d：%s', enemy.enemy_id, enemy.name), 0)
    draw_text(rect.x, rect.y + line_height, rect.width, line_height,
              format('HP %s / %s　　MP %s / %s',
                     formatted_number(enemy.hp), formatted_number(enemy.mhp),
                     formatted_number(enemy.mp), formatted_number(enemy.mmp)), 0)
    draw_text(rect.x, rect.y + line_height * 2, rect.width, line_height,
              format('攻击 %s　防御 %s　魔力 %s',
                     formatted_number(enemy.atk), formatted_number(enemy.def),
                     formatted_number(enemy.mat)), 0)
    draw_text(rect.x, rect.y + line_height * 3, rect.width, line_height,
              format('精神 %s　灵巧 %s　速度 %s',
                     formatted_number(enemy.mdf), formatted_number(enemy.luk),
                     formatted_number(enemy.agi)), 0)
    battler_name = ResearchMod.enemy_battler_file_name(enemy)
    battler_name = '无' if battler_name.empty?
    draw_text(rect.x, rect.y + line_height * 4, rect.width, line_height,
              format('战斗图：%s', battler_name), 0)
    draw_text(rect.x, rect.y + line_height * 5, rect.width, line_height,
              format('状态：%s', state_text(enemy)), 0)
    draw_text(rect.x, rect.y + line_height * 6, rect.width, line_height,
              format('强化/弱化：%s', buff_text(enemy)), 0)
    cutin_names = ResearchMod.enemy_cutin_file_names(enemy)
    cutin_text = cutin_names.empty? ? '无' : cutin_names.join(', ')
    draw_text(rect.x, rect.y + line_height * 7, rect.width, line_height,
              format('技能Cut-in：%s', cutin_text), 0)
    drop_lines = ResearchMod.enemy_drop_texts(enemy)
    draw_text(rect.x, rect.y + line_height * 8, rect.width, line_height,
              format('掉落1：%s', drop_lines[0]), 0)
    draw_text(rect.x, rect.y + line_height * 9, rect.width, line_height,
              format('掉落2：%s', drop_lines[1]), 0)
    draw_text(rect.x, rect.y + line_height * 10, rect.width, line_height,
              format('可偷素材：%s', ResearchMod.enemy_steal_text(enemy, 3)), 0)
    draw_text(rect.x, rect.y + line_height * 11, rect.width, line_height,
              format('可偷内裤：%s', ResearchMod.enemy_steal_text(enemy, 4)), 0)
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
    add_command('特殊战斗台词', :special)
    add_command('我方技能台词', :party_skill)
    add_command('敌方技能台词', :enemy_skill)
    add_command('效果反应台词', :reaction)
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
    add_command('对话', :dialogue)
    add_command('选项回应', :choice_response)
    add_command('ヒーロー技', :hero)
    add_command('踊る', :dance)
    add_command('歌う', :sing)
    add_command('变身类', :transformation)
    add_command('爱玩', :playful)
    add_command('誘惑反应', :temptation)
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
      add_command(format('%4d  %s　（对话%d条）', enemy.enemy_id, enemy.name,
                         entries.size), :select, !entries.empty?,
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
          skill_name = ResearchMod.battle_dialogue_display_text(
            entry[:skill_name], 32
          )
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
                         entry[:skill_id], entry[:skill_name],
                         candidate_index, preview)
        elsif special_dialogue_entry?(entry)
          label = format('[%s] 候选%d  %s', entry[:category],
                         candidate_index, preview)
        else
          label = format('[%s] %s', entry[:category], preview)
        end
      end
      add_command(label, :select, true, entry)
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
    ['对话台词', '对话回应', '选项回应', '爱玩', '誘惑反应'].include?(entry[:category])
  end

  def dialogue_candidate_index(entry)
    entry[:display_candidate_index] || entry[:word_index] || 1
  end

  def dialogue_choice_label(entry, maximum = nil)
    ResearchMod.battle_dialogue_display_text(entry[:choice_label], maximum)
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
      skill_name = ResearchMod.battle_dialogue_display_text(
        entry[:skill_name], 32
      )
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
        skill_name = ResearchMod.battle_dialogue_display_text(
          entry[:skill_name], 40
        )
        help_window.set_text(
          [format('%s编号：%04d　技能：%04d「%s」　候选：%d',
                  @owner_label, battler_id, entry[:skill_id], skill_name,
                  dialogue_candidate_index(entry)),
           'MTool兼容显示：确认后播放完整台词。'].join(10.chr)
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
        header = format('%s：%04d「%s」  类型：%s  技能：%04d「%s」  候选%d',
                        @owner_label, battler_id, @enemy.name, entry[:category],
                        entry[:skill_id], entry[:skill_name],
                        dialogue_candidate_index(entry))
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
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = current_symbol == :state ?
      '修改当前战斗中敌我成员的异常状态，不消耗回合。' :
      '返回战斗队伍指令菜单。'
    help_window.set_text(text)
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
      add_command(format('[%s] %4d  %s　（搭话%d条）', side_name,
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
      header = format('[%s] %4d  %s　（搭话%d条）', data[:side_name],
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
      entries = ResearchMod.enemy_dialogue_entries(enemy, :special).select do |entry|
        entry[:skill_id]
      end
      entries.each_with_index do |entry, entry_index|
        entry[:custom_talk_index] = entry_index + 1
      end
      add_command(format('%4d  %s　（搭话%d条）', enemy.enemy_id, enemy.name,
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
      header = format('%4d  %s　（搭话%d条）', data[:enemy].enemy_id,
                      data[:enemy].name, data[:entries].size)
      help_window.set_text(([header] + previews).join(10.chr))
    else
      help_window.set_text('返回发起角色列表。')
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
    @entries.each_with_index do |entry, index|
      preview = ResearchMod.battle_dialogue_display_text(entry[:preview], 70)
      add_command(format('搭话%d　%s', index + 1, preview),
                  :select, true, entry)
    end
    add_command('返回敌人列表', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      entry = current_ext
      header = format('%s → %s　搭话%d', @actor ? @actor.name : '我方',
                      @enemy.name, index + 1)
      lines = ResearchMod.battle_dialogue_help_lines(entry[:lines])
      help_window.set_text(([header] + lines.first(2)).join(10.chr))
    else
      help_window.set_text('返回敌人列表。')
    end
  end
end
class Window_ResearchModBattleEditState < Window_ResearchModBattleEditBase
  def make_command_list
    add_command('誘惑', :temptation)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = current_symbol == :temptation ?
      '强制赋予或解除誘惑状态（状态ID 26）。' :
      '返回战斗修改菜单。'
    help_window.set_text(text)
  end
end

class Window_ResearchModBattleEditTemptationAction < Window_ResearchModBattleEditBase
  def make_command_list
    add_command('赋予誘惑', :add, !ResearchMod.temptation_immunity?)
    add_command('解除誘惑', :remove)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :add
             if ResearchMod.temptation_immunity?
               '“敌我全员誘惑免疫”已开启，赋予操作不可用。'
             else
               '选择敌我成员并强制赋予誘惑，无视目标状态抗性。'
             end
           when :remove
             '选择敌我成员并解除当前的誘惑状态。'
           else
             '返回异常状态列表。'
           end
    help_window.set_text(text)
  end
end

class Window_ResearchModBattleEditTarget < Window_ResearchModBattleEditBase
  attr_reader :action

  def initialize(help_window)
    @action = :add
    super(help_window)
  end

  def setup(action)
    @action = action
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
    marker = battler.state?(ResearchMod::TEMPTATION_STATE_ID) ? '【誘惑】' : ''
    add_target_command(format('%s：%s%s', side, battler.name, marker), [battler])
  end

  def target_enabled?(targets)
    return false if targets.empty?
    return false if @action == :add && ResearchMod.temptation_immunity?

    return true if @action == :add

    targets.any? { |battler| battler.state?(ResearchMod::TEMPTATION_STATE_ID) }
  end

  def target_label
    data = current_data
    data ? data[:name].to_s : ''
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      action_text = @action == :add ? '赋予誘惑' : '解除誘惑'
      help_window.set_text(format('%s：%s。确认后进入最终确认。', action_text,
                                  target_label))
    else
      help_window.set_text('返回誘惑操作菜单。')
    end
  end
end

class Window_ResearchModBattleEditConfirm < Window_ResearchModBattleEditBase
  def initialize(help_window)
    @action = :add
    @target_label = ''
    super(help_window)
  end

  def setup(action, target_label)
    @action = action
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

    action_text = @action == :add ? '赋予誘惑' : '解除誘惑'
    help_window.set_text(format('目标：%s　操作：%s。', @target_label, action_text))
  end
end

class Window_PartyCommand < Window_Command
  alias research_mod_enemy_info_make_command_list make_command_list

  def make_command_list
    research_mod_enemy_info_make_command_list
    add_command('敌方信息', :research_enemy_info) if ResearchMod.battle_enemy_status?
    add_command('我方信息', :research_party_info) if ResearchMod.battle_party_status?
    add_command('双方Cut-in查看', :research_battle_cutin) if ResearchMod.battle_cutin_view?
    add_command('战斗对白模拟', :research_battle_dialogue) if ResearchMod.manual_enemy_dialogue?
    add_command('战斗记录', :research_battle_record) if ResearchMod.battle_record_enabled?
    add_command('战斗修改', :research_battle_edit) if ResearchMod.battle_editor_enabled?
  end
end

class Scene_Battle < Scene_Base
  alias research_mod_enemy_info_create_party_command_window create_party_command_window
  alias research_mod_enemy_status_create_enemy_window create_enemy_window
  alias research_mod_enemy_status_update update
  alias research_mod_enemy_status_terminate terminate
  alias research_mod_battle_record_battle_start battle_start

  def battle_start
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
    [:dialogue, :choice_response, :hero, :dance, :sing, :transformation,
     :playful, :temptation].each do |symbol|
      @research_mod_battle_dialogue_special_mode_window.set_handler(
        symbol, method(:select_research_mod_special_dialogue_mode)
      )
    end
    @research_mod_battle_dialogue_special_mode_window.set_handler(
      :cancel, method(:close_research_mod_special_dialogue_mode)
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
      :cancel, method(:close_research_mod_battle_dialogue_list)
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
    @research_mod_battle_edit_target_window =
      Window_ResearchModBattleEditTarget.new(@research_mod_battle_edit_help_window)
    @research_mod_battle_edit_target_window.set_handler(
      :select, method(:confirm_research_mod_battle_edit_target)
    )
    @research_mod_battle_edit_target_window.set_handler(
      :cancel, method(:close_research_mod_battle_edit_targets)
    )
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
      entries = ResearchMod.enemy_dialogue_entries(enemy, :special).select do |entry|
        entry[:skill_id]
      end.map do |entry|
        dialogue_entry = entry.dup
        dialogue_entry[:category] = '对话台词'
        dialogue_entry
      end
      entries
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
    @research_mod_battle_dialogue_battler_window.setup(entries, cancel_label)
    @research_mod_battle_dialogue_battler_window.show
    @research_mod_battle_dialogue_battler_window.activate
  end

  def open_research_mod_party_skill_dialogue
    open_research_mod_dialogue_battlers(
      research_mod_party_skill_battler_entries, :party_skill, '返回对白模拟'
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
    open_research_mod_dialogue_battlers(
      research_mod_special_dialogue_battler_entries(mode),
      :special_dialogue, '返回特殊台词分类', :special_mode
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
    when :enemy_skill
      @research_mod_battle_dialogue_battler_window.hide
      @research_mod_battle_dialogue_battler_window.deactivate
      @research_mod_battle_dialogue_enemy_mode_window.select(0)
      @research_mod_battle_dialogue_enemy_mode_window.show
      @research_mod_battle_dialogue_enemy_mode_window.activate
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
    else
      play_research_mod_dialogue_words(entry)
    end
  end

  def play_research_mod_dialogue_words(*entries)
    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_enemy_dialogue_help_window.hide
    entries.compact.each do |entry|
      words = entry[:words] || [entry[:word]]
      words.compact.each do |word|
        word.execute
        wait_for_message
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

  def close_research_mod_battle_dialogue_list
    @research_mod_enemy_dialogue_window.hide
    @research_mod_enemy_dialogue_window.deactivate
    @research_mod_enemy_dialogue_window.unselect
    @research_mod_enemy_dialogue_help_window.hide
    if @research_mod_battle_dialogue_list_return == :enemy_mode
      @research_mod_battle_dialogue_enemy_mode_window.show
      @research_mod_battle_dialogue_enemy_mode_window.activate
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

  def close_research_mod_special_dialogue_mode
    @research_mod_battle_dialogue_special_mode_window.hide
    @research_mod_battle_dialogue_special_mode_window.deactivate
    @research_mod_battle_dialogue_special_mode_window.unselect
    @research_mod_battle_dialogue_main_window.show
    @research_mod_battle_dialogue_main_window.activate
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
    @research_mod_battle_edit_talk_list_window.setup(
      data[:enemy], data[:entries], @research_mod_battle_edit_talk_actor
    )
  end

  def play_research_mod_battle_edit_talk
    entry = @research_mod_battle_edit_talk_list_window.current_ext
    unless entry && entry[:word]
      Sound.play_buzzer
      @research_mod_battle_edit_talk_list_window.activate
      return
    end

    actor_entries = ResearchMod.talk_initiator_dialogue_entries(
      @research_mod_battle_edit_talk_actor
    )
    actor_entry = actor_entries.first
    @research_mod_battle_edit_talk_entry = entry
    words = []
    words.concat(actor_entry[:words] || [actor_entry[:word]]) if actor_entry
    words.concat(entry[:words] || [entry[:word]])
    play_research_mod_battle_edit_talk_words(words)

    all_choices = ResearchMod.enemy_choice_response_entries(
      @research_mod_battle_edit_talk_list_window.enemy
    )
    talk_index = (entry[:custom_talk_index] || entry[:word_index]).to_i
    choices = all_choices.select do |choice|
      choice[:choice_group_index].to_i == talk_index
    end
    if choices.empty?
      group_ids = all_choices.map { |choice| choice[:choice_group_index].to_i }.uniq
      choices = all_choices if group_ids.size == 1
    end
    if choices.empty?
      close_research_mod_battle_edit_custom_talk
    else
      play_research_mod_battle_edit_talk_native_choices(choices)
    end
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
    @research_mod_battle_edit_talk_enemy_window.show
    @research_mod_battle_edit_talk_enemy_window.activate
  end

  def close_research_mod_battle_edit_custom_talk
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_actor_window)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_talk_enemy_window)
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

  def open_research_mod_battle_edit_states
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_main_window)
    @research_mod_battle_edit_state_window.refresh
    @research_mod_battle_edit_state_window.open_window
  end

  def close_research_mod_battle_edit_states
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_state_window)
    @research_mod_battle_edit_main_window.open_window
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

  def open_research_mod_battle_edit_targets(action)
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_action_window)
    @research_mod_battle_edit_target_window.setup(action)
  end

  def close_research_mod_battle_edit_targets
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_target_window)
    @research_mod_battle_edit_action_window.refresh
    @research_mod_battle_edit_action_window.open_window
  end

  def confirm_research_mod_battle_edit_target
    targets = @research_mod_battle_edit_target_window.current_ext
    if !targets || targets.empty?
      Sound.play_buzzer
      @research_mod_battle_edit_target_window.activate
      return
    end

    @research_mod_battle_edit_action = @research_mod_battle_edit_target_window.action
    @research_mod_battle_edit_targets = targets
    label = @research_mod_battle_edit_target_window.target_label
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_target_window)
    @research_mod_battle_edit_confirm_window.setup(
      @research_mod_battle_edit_action, label
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
                   battler, ResearchMod::TEMPTATION_STATE_ID
                 )
               else
                 ResearchMod.force_remove_battle_state(
                   battler, ResearchMod::TEMPTATION_STATE_ID
                 )
               end
      changed += 1 if result
    end
    hide_research_mod_battle_edit_window(@research_mod_battle_edit_confirm_window)
    @research_mod_battle_edit_target_window.setup(@research_mod_battle_edit_action)
    if changed > 0
      @research_mod_battle_edit_help_window.set_text(
        format('操作完成：已修改 %d 名战斗成员。', changed)
      )
    else
      Sound.play_buzzer
      @research_mod_battle_edit_help_window.set_text(
        '没有成员被修改。请检查目标状态或全员誘惑免疫开关。'
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
    update_research_mod_audio_overlay
    research_mod_enemy_status_update
    update_research_mod_enemy_status
    update_research_mod_party_status
    update_research_mod_battle_cutin_preview
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
               @research_mod_enemy_dialogue_enemy_window,
               @research_mod_enemy_dialogue_window,
               @research_mod_enemy_dialogue_help_window,
               @research_mod_battle_edit_help_window,
               @research_mod_battle_edit_main_window,
               @research_mod_battle_edit_state_window,
               @research_mod_battle_edit_action_window,
               @research_mod_battle_edit_target_window,
               @research_mod_battle_edit_confirm_window,
               @research_mod_battle_edit_talk_actor_window,
               @research_mod_battle_edit_talk_enemy_window,
               @research_mod_battle_edit_talk_list_window,
               @research_mod_battle_edit_talk_choice_window]
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
    @research_mod_enemy_dialogue_enemy_window = nil
    @research_mod_enemy_dialogue_window = nil
    @research_mod_enemy_dialogue_help_window = nil
    @research_mod_battle_edit_help_window = nil
    @research_mod_battle_edit_main_window = nil
    @research_mod_battle_edit_state_window = nil
    @research_mod_battle_edit_action_window = nil
    @research_mod_battle_edit_target_window = nil
    @research_mod_battle_edit_confirm_window = nil
    @research_mod_battle_edit_talk_actor_window = nil
    @research_mod_battle_edit_talk_enemy_window = nil
    @research_mod_battle_edit_talk_list_window = nil
    @research_mod_battle_edit_talk_choice_window = nil
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
    self.z = 900
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
    add_command('---------- 当前角色修改 ----------', :separator, false)
    add_command('切换当前角色：' + @actor.name, :actor)
    add_command(format('严格同步当前人物等级：%d', @actor.base_level), :level)
    add_command(format('修改当前人物好感度：%d', @actor.love), :love)
    add_command('修改当前角色永久属性加成', :actor_params)
    add_command('切换当前角色形态', :persona, !ResearchMod.persona_entries(@actor).empty?)
    add_command('学习当前角色妖术', :learning, !ResearchMod.learning_skills.empty?)
    add_command('切换当前角色职业', :class)
    add_command('切换当前角色种族', :tribe)
    add_command('当前角色全职全种', :unlock_all)
    add_command('保存当前角色备份', :backup)
    add_command('恢复当前角色备份', :restore, ResearchMod.snapshot?(@actor))
    add_command('---------- 角色与队伍 ----------', :separator, false)
    party_member_max = ResearchMod.value_current(ResearchMod.value_entry(:party_member_max))
    add_command(format('队伍编成人数上限：%d', party_member_max), :party_member_max)
    add_command(format('地图跟随显示人数：%d', ResearchMod.map_follower_count), :map_follower_count)
    add_command(ResearchMod::PARTY_EDIT_ACTOR_ID_MENU_NAME + '：' + (ResearchMod.party_edit_actor_id? ? '已开启' : '已关闭'), :party_edit_actor_id)
    add_command('全可入队角色加入候补', :recruit_all)
    add_command('全员好感度修改', :set_all_love)
    add_command('魔王城全对话：' + (ResearchMod.candidate_dialogue_view? ? '已开启' : '已关闭'), :candidate_dialogue)
    add_command('魔王城形态变化（无视事件）：' + (ResearchMod.persona_dialogue_compatibility? ? '已开启' : '已关闭'), :persona_dialogue)
    add_command('---------- 查看与资源 ----------', :separator, false)
    add_command('角色图鉴', :actor_encyclopedia)
    add_command('数值与货币修改', :value_editor)
    add_command('按ID获取物品／武器／防具', :database_item)
    add_command(format('获得全部内裤（%d/%d）', ResearchMod.owned_panty_count, ResearchMod.panty_armors.size), :gain_all_panties)
    add_command(format('获得全部牛奶（%d/%d）', ResearchMod.owned_milk_count, ResearchMod.milk_items.size), :gain_all_milk)
    add_command(format('获得全部结婚物品（%d/%d）', ResearchMod.owned_marriage_armor_count, ResearchMod.marriage_armors.size), :gain_all_marriage_armors)
    add_command('当前音乐信息', :audio_info)
    add_command('当前音乐悬浮窗：' + (ResearchMod.audio_overlay_enabled? ? '已开启' : '已关闭'), :audio_overlay)
    add_command('---------- 地图 ----------', :separator, false)
    add_command('ハーピーの羽', :harpy_feather, WarpManager.usable?)
    add_command('導きの糸', :guiding_thread)
    add_command('任意地图传送', :teleport)
    add_command('传送坐标记录', :teleport_slots)
    add_command('地图与事件检查', :map_inspector)
    add_command('---------- 战斗 ----------', :separator, false)
    add_command('自定义战斗', :custom_battle)
    add_command('战败事件查看', :lose_event)
    add_command(ResearchMod::REFLECTION_MEETING_MENU_NAME, :reflection_meeting)
    add_command('显示敌方信息：' + (ResearchMod.battle_enemy_status? ? '已开启' : '已关闭'), :battle_enemy_status)
    add_command('显示我方信息：' + (ResearchMod.battle_party_status? ? '已开启' : '已关闭'), :battle_party_status)
    add_command('显示双方Cut-in：' + (ResearchMod.battle_cutin_view? ? '已开启' : '已关闭'), :battle_cutin_view)
    add_command('显示战斗记录：' + (ResearchMod.battle_record_enabled? ? '已开启' : '已关闭'), :battle_record)
    add_command('显示对白模拟：' + (ResearchMod.manual_enemy_dialogue? ? '已开启' : '已关闭'), :manual_enemy_dialogue)
    add_command('显示战斗修改菜单：' + (ResearchMod.battle_editor_enabled? ? '已开启' : '已关闭'), :battle_editor)
    add_command('---------- 功能开关（修改） ----------', :separator, false)
    add_command('我方攻击必中必杀：' + (ResearchMod.sure_hit_kill? ? '已开启' : '已关闭'), :sure_hit_kill)
    add_command('偷盗必定成功：' + (ResearchMod.steal_always_success? ? '已开启' : '已关闭'), :steal_success)
    add_command('牛奶获取必定成功：' + (ResearchMod.milk_always_success? ? '已开启' : '已关闭'), :milk_success)
    add_command('物品必定掉落：' + (ResearchMod.drop_always_success? ? '已开启' : '已关闭'), :drop_success)
    add_command('必定入队：' + (ResearchMod.follow_always_success? ? '已开启' : '已关闭'), :follow_success)
    add_command('敌人诱惑事件禁止：' + (ResearchMod.temptation_disabled? ? '已开启' : '已关闭'), :temptation_disabled)
    add_command('敌人诱惑事件无视HP：' + (ResearchMod.temptation_ignore_hp? ? '已开启' : '已关闭'), :temptation_ignore_hp)
    add_command('敌我全员誘惑免疫：' + (ResearchMod.temptation_immunity? ? '已开启' : '已关闭'), :temptation_immunity)
    add_command('战败后跳过败北事件：' + (ResearchMod.lose_event_skip? ? '已开启' : '已关闭'), :lose_event_skip)
    add_command('穿墙模式：' + (ResearchMod.through_mode? ? '已开启' : '已关闭'), :through_mode)
    add_command('不遇敌：' + (ResearchMod.no_random_encounter? ? '已开启' : '已关闭'), :no_random_encounter)
    add_command('原版禁止遇敌：' + (ResearchMod.original_encounter_disabled? ? '已开启' : '已关闭'), :original_encounter_disabled)
    add_command('防止鲁卡强制置顶：' + (ResearchMod.prevent_event_luca_front? ? '已开启' : '已关闭'), :prevent_luca_front)
    add_command('开关与变量修改', :debug_database)
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
             '此操作会影响全局角色数据，可能影响全局成就判定。建议提前备份存档，再执行。'
           when :set_all_love
             '为所有有名称的角色统一设置好感度。按确定后输入0～9999999，默认30000；此操作会影响全局角色数据，建议提前备份存档。'
           when :party_member_max
             '设置最终队伍编成人数上限，允许8～99人。内部变量56保存的是超过基础8人的追加人数。'
           when :map_follower_count
             '设置地图上队首玩家之后的跟随角色数量。0表示不显示跟随者，最多99；数量过高可能明显降低地图性能。'
           when :party_edit_actor_id
             ResearchMod::PARTY_EDIT_ACTOR_ID_HELP_TEXT
           when :actor_encyclopedia
             '输入角色起始ID后，每批加载最多100名有名称角色；支持上一批、下一批和重新输入起始ID。'
           when :guiding_thread
             '执行物品「導きの糸」的原版效果，从当前迷宫返回地上；不会要求持有，也不会消耗物品。'
           when :harpy_feather
             '打开物品「ハーピーの羽」的原版传送地点选择；遵守原版地点解锁和传送禁止条件，但不会消耗物品。'
           when :reflection_meeting
             ResearchMod::REFLECTION_MEETING_HELP_TEXT
           when :candidate_dialogue
             '开启后，候补角色相关的魔王城对话可以在不满足原条件时查看。'
           when :all_dialogue_force_party
             '开启后，对话会把相关角色视为已在队伍，显示更多队友相关对话。'
           when :steal_success
             '开启后，盗む（偷窃）相关判定必定成功，包括可偷取物品和成功率检查。'
           when :milk_success
             '开启后，ミルク获取判定必定成功，不再出现搾れなかった的失败结果。'
           when :drop_success
             '开启后，敌人的物品掉落率视为必定成功，符合掉落条件的物品会掉落。'
           when :temptation_ignore_hp
             '开启后，敌人诱惑事件不再检查当前HP是否低于原版触发条件。\n测试时必须关闭“敌人诱惑事件禁止”，否则禁止开关优先，诱惑仍不会触发。'
           when :temptation_disabled
             '开启后，完全跳过敌人诱惑公共事件；无论是否装备香水、敌人HP多少都不会触发。普通敌方对话仍保留。'
           when :temptation_immunity
             '开启后，敌我全员无法获得誘惑状态，并立即解除当前已有的誘惑。\n建议同时开启“敌人诱惑事件禁止”，两者属于不同机制。'
           when :lose_event_skip
             '开启后，战败时直接跳过败北事件并进入原版战败后处理。\n作者标记为不可跳过的特殊败北事件仍按原版执行。'
           when :sure_hit_kill
             '开启后，我方攻击必中，并尽量将命中目标直接判定为必杀效果。'
           when :through_mode
             '开启后，玩家可以穿过地图上的普通阻挡。部分特殊事件或区域仍可能限制移动。'
           when :no_random_encounter
             '开启后，地图步行不会触发随机遇敌。剧情事件战斗、地图接触事件和“自定义战斗”不受影响。' + 10.chr +
               '本功能直接阻止随机遇敌判定，实现方式与原版禁止遇敌不同；不会修改原版 encounter_disabled 状态。'
           when :prevent_luca_front
             '开启后，尽量阻止事件把鲁卡强制移动到队伍第一位。'
           when :follow_success
             '开启后，战斗结束后的敌人入队判定视为成功。'
           when :battle_enemy_status
             '开启后，战斗菜单显示敌人的能力、状态、掉落物、可偷素材、可偷内裤和图片信息。'
           when :battle_party_status
             '开启后，战斗菜单显示我方队员的等级、HP、MP、职业、种族和状态。'
           when :battle_cutin_view
             '开启后，战斗菜单增加双方Cut-in查看，可预览我方和敌方配置的技能图片。'
           when :battle_record
             '开启后，记录本场战斗的技能、伤害、恢复和状态文字，可从战斗菜单查看。'
           when :manual_enemy_dialogue
             '开启后，可在战斗菜单查看双方技能台词、效果反应，并手动组合释放者与目标对白。'
           when :battle_editor
             '开启后，战斗队伍指令增加“战斗修改”，增加如强制赋予或解除敵我成员的誘惑状态等功能'
           when :audio_overlay
             '开启后，地图和战斗右上角持续显示当前BGM与BGS文件名；音乐变化时自动刷新。'
           when :value_editor
             '可修改金钱、奖牌、各类点数、BF奖励进度、BF图鉴统计和累计奖牌兑换数。' + 10.chr +
               '部分统计可能影响图鉴、成就或剧情，修改前建议备份存档。'
           when :experimental
             '设置尚处于实验阶段的功能。建议使用独立测试存档。'
            when :stuck_help
              '处理两个已知剧情卡关。圣山：开关2479改为OFF即可下山；建议重新关闭原版不遇敌，关闭开关100和2116。' + 10.chr +
                '新人类宴会：变量1150改为17。执行前建议先保存独立存档。'
            when :persona_dialogue
             '开启后，魔王城对话中的形态变化会无视原事件条件。建议只在需要调试时开启。'
           when :separator
             '使用上下键移动；分割线不可操作。'
           when :actor
             '切换当前角色后，下面的当前角色修改项目会作用于新角色。'
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
    cursor_rect.empty
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
    1
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
    draw_visible_lines
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
    format('ID %d  %s　%s　←/→翻页 %d/%d', @actor.id, @actor.name,
           title, page, page_max)
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
      text = format('角色ID %d　%s\n确认后选择查看备注、固有アビリティ、Picture路径或Cut-in图片。',
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
    5
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
      add_command(format('%4d  %s%s', item.id, item.name, suffix), :select, enabled, item)
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
    help_window.set_text(format('ID %d  %s\n当前持有：%d/%d%s\n%s', item.id, item.name,
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
    Graphics.height - fitting_height(6)
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
      lines = [
        format('敌人ID %d  %s', entry.id, entry.name),
        format('掉落：%s', battle_preview_text(ResearchMod.enemy_drop_texts(entry, false, true))),
        format('素材：%s', battle_preview_text(ResearchMod.enemy_steal_text(entry, 3, false))),
        format('内裤：%s', battle_preview_text(ResearchMod.enemy_steal_text(entry, 4, false)))
      ]
      lines.join(10.chr)
    else
      name = entry.name.empty? ? '[无名称敌群]' : entry.name
      format('敌群ID %d  %s\n成员：%s\n确认：进入开战确认',
             entry.id, name, ResearchMod.troop_member_summary(entry)).gsub(92.chr + 'n', 10.chr)
    end
  end

  def battle_preview_text(text)
    value = text.to_s
    maximum = 46
    lines = value.split(10.chr).map do |line|
      next line if line.size <= maximum

      line[0, maximum - 3] + '...'
    end
    lines.join(10.chr)
  end

  def command_help_text
    case current_symbol
    when :reinput then '重新输入敌人或敌群数据库起始ID。'
    when :previous then '返回上一批有效项目。'
    when :next then '从本批末尾继续加载下一批有效项目。'
    else '返回自定义战斗类型选择。'
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

class Window_ResearchModTeleportEventList < Window_Command
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

class Window_ResearchModTeleportSlotList < Window_Command
  def initialize(help_window)
    @slot_help_window = help_window
    super(0, 0)
    self.help_window = help_window
    update_help
  end

  def window_width
    Graphics.width
  end

  def window_height
    Graphics.height - @slot_help_window.height
  end

  def make_command_list
    ResearchMod::TELEPORT_SLOT_COUNT.times do |index|
      add_command(ResearchMod.teleport_slot_text(index), :select, true, index)
    end
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    current_text = format('当前地图：%04d「%s」　当前位置：X=%d Y=%d',
                          $game_map.map_id, ResearchMod.map_name($game_map.map_id),
                          $game_player.x, $game_player.y)
    if current_symbol == :select
      slot = ResearchMod.teleport_slot(current_ext)
      slot_text = if slot
                    valid_text = ResearchMod.teleport_slot_valid?(slot) ? '有效' : '无效'
                    format('所选%s　状态：%s',
                           ResearchMod.teleport_slot_text(current_ext, slot), valid_text)
                  else
                    format('所选挡位 %02d 为空。', current_ext + 1)
                  end
      text = current_text + "\n" + slot_text + "\n确认后可记录、传送或清除。"
    else
      text = current_text + "\n返回研究修改器。"
    end
    help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end
end

class Window_ResearchModTeleportSlotAction < Window_Command
  def initialize(slot_index, help_window)
    @slot_index = slot_index
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
    slot = ResearchMod.teleport_slot(@slot_index)
    add_command('记录当前位置', :record)
    add_command('传送到此处', :transfer, ResearchMod.teleport_slot_valid?(slot))
    add_command('清除记录', :clear, !slot.nil?)
    add_command('返回挡位列表', :cancel)
  end

  def update_help
    return unless help_window

    current_text = format('当前地图：%04d「%s」　当前位置：X=%d Y=%d',
                          $game_map.map_id, ResearchMod.map_name($game_map.map_id),
                          $game_player.x, $game_player.y)
    slot = ResearchMod.teleport_slot(@slot_index)
    saved_text = slot ? ResearchMod.teleport_slot_text(@slot_index, slot) :
                        format('挡位 %02d：空', @slot_index + 1)
    action_text = case current_symbol
                  when :record
                    '确认后直接用当前位置覆盖此挡位。'
                  when :transfer
                    '确认后传送到已保存的地图与坐标。'
                  when :clear
                    '确认后清除此挡位的记录。'
                  else
                    '取消并返回挡位列表。'
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
  def initialize(map_id, event, x, y, help_window)
    @map_id = map_id
    @event = event
    @target_x = x
    @target_y = y
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
    add_command('取消并返回坐标编辑', :cancel)
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

class Window_ResearchModEnemyBattleMode < Window_Command
  attr_reader :troops

  def initialize(enemy, help_window)
    @enemy = enemy
    @troops = ResearchMod.troops_for_enemy(enemy.id)
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
    3
  end

  def make_command_list
    add_command('使用原有敌群挑战（推荐）', :original, !@troops.empty?)
    add_command('单独挑战该敌人（实验性）', :temporary)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :original
             format('找到%d个包含该敌人的敌群；单人敌群优先。', @troops.size)
           when :temporary
             '创建无战斗事件的临时单人敌群；剧情敌人可能异常。'
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
    Graphics.height - fitting_height(3)
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

class Window_ResearchModClassList < Window_Command
  def initialize(kind)
    @kind = kind
    super(0, 0)
  end

  def window_width
    Graphics.width
  end

  def visible_line_number
    14
  end

  def make_command_list
    ResearchMod.entries(@kind).each do |entry|
      add_command(format('%4d  %s', entry.id, entry.name), :select, true, entry.id)
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

class Scene_ResearchMod < Scene_MenuBase
  def start
    super
    if $game_temp.respond_to?(:lib_enemy_index=)
      $game_temp.lib_enemy_index = -1
    end
    @actor = $game_party.menu_actor || $game_party.members[0]
    @command_window = Window_ResearchModCommand.new(@actor)
    @command_help_window = Window_Help.new(3)
    @command_help_window.y = Graphics.height - @command_help_window.height
    @command_window.help_window = @command_help_window
    @command_window.update_help
    @command_window.set_handler(:actor, method(:select_actor))
    @command_window.set_handler(:level, method(:select_level))
    @command_window.set_handler(:love, method(:select_love))
    @command_window.set_handler(:actor_params, method(:open_actor_param_editor))
    @command_window.set_handler(:learning, method(:select_learning_skill))
    @command_window.set_handler(:class, method(:select_class))
    @command_window.set_handler(:tribe, method(:select_tribe))
    @command_window.set_handler(:unlock_all, method(:unlock_all))
    @command_window.set_handler(:set_all_love, method(:set_all_love))
    @command_window.set_handler(:recruit_all, method(:recruit_all))
    @command_window.set_handler(:actor_encyclopedia, method(:open_actor_encyclopedia))
    @command_window.set_handler(:party_member_max, method(:open_party_member_max_editor))
    @command_window.set_handler(:map_follower_count, method(:open_map_follower_count_editor))
    @command_window.set_handler(:party_edit_actor_id, method(:toggle_party_edit_actor_id))
    @command_window.set_handler(:value_editor, method(:open_value_editor))
    @command_window.set_handler(:audio_info, method(:open_audio_info))
    @command_window.set_handler(:author_info, method(:open_author_info))
    @command_window.set_handler(:custom_battle, method(:open_custom_battle))
    @command_window.set_handler(:guiding_thread, method(:use_guiding_thread_without_cost))
    @command_window.set_handler(:harpy_feather, method(:use_harpy_feather_without_cost))
    @command_window.set_handler(:teleport, method(:open_teleport_browser))
    @command_window.set_handler(:teleport_slots, method(:open_teleport_slots))
    @command_window.set_handler(:lose_event, method(:open_lose_event_browser))
    @command_window.set_handler(:reflection_meeting, method(:open_reflection_meeting_browser))
    @command_window.set_handler(:map_inspector, method(:open_map_inspector))
    @command_window.set_handler(:debug_database, method(:open_debug_database_editor))
    @command_window.set_handler(:database_item, method(:open_database_item_menu))
    @command_window.set_handler(:gain_all_panties, method(:gain_all_panties))
    @command_window.set_handler(:gain_all_milk, method(:gain_all_milk))
    @command_window.set_handler(:gain_all_marriage_armors, method(:gain_all_marriage_armors))
    @command_window.set_handler(:persona_dialogue, method(:toggle_persona_dialogue_compatibility))
    @command_window.set_handler(:candidate_dialogue, method(:toggle_candidate_dialogue_view))
    @command_window.set_handler(:all_dialogue_force_party, method(:toggle_all_dialogue_force_party))
    @command_window.set_handler(:steal_success, method(:toggle_steal_always_success))
    @command_window.set_handler(:milk_success, method(:toggle_milk_always_success))
    @command_window.set_handler(:drop_success, method(:toggle_drop_always_success))
    @command_window.set_handler(:temptation_ignore_hp, method(:toggle_temptation_ignore_hp))
    @command_window.set_handler(:temptation_disabled, method(:toggle_temptation_disabled))
    @command_window.set_handler(:temptation_immunity, method(:toggle_temptation_immunity))
    @command_window.set_handler(:lose_event_skip, method(:toggle_lose_event_skip))
    @command_window.set_handler(:sure_hit_kill, method(:toggle_sure_hit_kill))
    @command_window.set_handler(:through_mode, method(:toggle_through_mode))
    @command_window.set_handler(:no_random_encounter, method(:toggle_no_random_encounter))
    @command_window.set_handler(:original_encounter_disabled, method(:toggle_original_encounter_disabled))
    @command_window.set_handler(:prevent_luca_front, method(:toggle_prevent_event_luca_front))
    @command_window.set_handler(:follow_success, method(:toggle_follow_always_success))
    @command_window.set_handler(:battle_enemy_status, method(:toggle_battle_enemy_status))
    @command_window.set_handler(:battle_party_status, method(:toggle_battle_party_status))
    @command_window.set_handler(:battle_cutin_view, method(:toggle_battle_cutin_view))
    @command_window.set_handler(:battle_record, method(:toggle_battle_record))
    @command_window.set_handler(:manual_enemy_dialogue, method(:toggle_manual_enemy_dialogue))
    @command_window.set_handler(:battle_editor, method(:toggle_battle_editor))
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
    update_actor_cutin_preview if @actor_cutin_preview
  end

  def terminate
    dispose_actor_cutin_preview
    dispose_research_mod_deferred_windows
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
    @actor_window.dispose
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
    @learning_window.dispose
    @learning_window = nil
    @command_window.activate
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
    @actor_encyclopedia_mode_window.set_handler(:cutin_preview, method(:open_actor_cutin_list))
    @actor_encyclopedia_mode_window.set_handler(:cancel, method(:close_actor_encyclopedia_mode))
  end

  def read_actor_encyclopedia_detail
    actor = @actor_encyclopedia_list_window.current_ext
    mode = @actor_encyclopedia_mode_window.current_symbol
    @actor_encyclopedia_detail_window.set_actor(actor, mode)
    @actor_encyclopedia_detail_window.activate
  end

  def close_actor_encyclopedia_detail
    @actor_encyclopedia_detail_window.deactivate
    @actor_encyclopedia_mode_window.activate
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
    @actor_encyclopedia_mode_window.dispose
    @actor_encyclopedia_mode_window = nil
    @actor_encyclopedia_detail_window.set_message(
      '选择角色并确认后，可查看备注、固有アビリティ、Picture路径或Cut-in图片。'
    )
    @actor_encyclopedia_list_window.activate
  end

  def close_actor_encyclopedia
    dispose_actor_cutin_preview
    defer_research_mod_window_dispose(@actor_cutin_list_window)
    defer_research_mod_window_dispose(@actor_cutin_help_window)
    defer_research_mod_window_dispose(@actor_encyclopedia_mode_window)
    defer_research_mod_window_dispose(@actor_encyclopedia_input_window)
    defer_research_mod_window_dispose(@actor_encyclopedia_list_window)
    defer_research_mod_window_dispose(@actor_encyclopedia_detail_window)
    @actor_encyclopedia_mode_window = nil
    @actor_cutin_list_window = nil
    @actor_cutin_help_window = nil
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

  def close_value_editor
    @value_menu_window.dispose
    @value_help_window.dispose
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
      @value_help_window.dispose if @value_help_window && !@value_help_window.disposed?
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
    @map_page_window.set_handler(:cancel, method(:close_map_page_list))
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

  def use_harpy_feather_without_cost
    item = $data_items[ResearchMod::HARPY_FEATHER_ITEM_ID]
    unless item && defined?(Scene_Warp) && WarpManager.usable?
      Sound.play_buzzer
      @command_window.activate
      @command_help_window.set_text('当前无法使用「ハーピーの羽」：可能尚未解锁传送地点，或原版传送被禁止。')
      return
    end

    free_item = item.clone
    free_item.consumable = false
    SceneManager.goto(Scene_Warp)
    SceneManager.scene.prepare(free_item)
  end

  def open_teleport_slots
    @teleport_slot_help_window = Window_Help.new(3)
    @teleport_slot_help_window.y = Graphics.height - @teleport_slot_help_window.height
    @teleport_slot_window = Window_ResearchModTeleportSlotList.new(
      @teleport_slot_help_window
    )
    @teleport_slot_window.set_handler(:select, method(:select_teleport_slot))
    @teleport_slot_window.set_handler(:cancel, method(:close_teleport_slots))
    @command_window.deactivate
  end

  def select_teleport_slot
    @selected_teleport_slot_index = @teleport_slot_window.current_ext
    @teleport_slot_window.hide
    @teleport_slot_window.deactivate
    @teleport_slot_action_window = Window_ResearchModTeleportSlotAction.new(
      @selected_teleport_slot_index, @teleport_slot_help_window
    )
    @teleport_slot_action_window.set_handler(:record, method(:record_current_teleport_slot))
    @teleport_slot_action_window.set_handler(:transfer, method(:execute_teleport_slot))
    @teleport_slot_action_window.set_handler(:clear, method(:clear_teleport_slot))
    @teleport_slot_action_window.set_handler(:cancel, method(:close_teleport_slot_action))
  end

  def record_current_teleport_slot
    ResearchMod.save_current_teleport_slot(@selected_teleport_slot_index)
    close_teleport_slot_action
  end

  def clear_teleport_slot
    ResearchMod.clear_teleport_slot(@selected_teleport_slot_index)
    close_teleport_slot_action
  end

  def execute_teleport_slot
    unless ResearchMod.reserve_teleport_slot(@selected_teleport_slot_index)
      Sound.play_buzzer
      @teleport_slot_action_window.activate
      @teleport_slot_help_window.set_text('保存的地图或坐标无效。请清除后重新记录。')
      return
    end

    close_teleport_slots
    SceneManager.goto(Scene_Map)
  end

  def close_teleport_slot_action
    index = @selected_teleport_slot_index
    defer_research_mod_window_dispose(@teleport_slot_action_window)
    @teleport_slot_action_window = nil
    @selected_teleport_slot_index = nil
    @teleport_slot_window.refresh
    @teleport_slot_window.select(index)
    @teleport_slot_window.show
    @teleport_slot_window.activate
    @teleport_slot_window.update_help
  end

  def close_teleport_slots
    defer_research_mod_window_dispose(@teleport_slot_action_window)
    defer_research_mod_window_dispose(@teleport_slot_window)
    defer_research_mod_window_dispose(@teleport_slot_help_window)
    @teleport_slot_action_window = nil
    @teleport_slot_window = nil
    @teleport_slot_help_window = nil
    @selected_teleport_slot_index = nil
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
    @battle_help_window = Window_Help.new(6)
    @battle_help_window.y = Graphics.height - @battle_help_window.height
    @battle_type_window = Window_ResearchModBattleType.new(@battle_help_window)
    @battle_type_window.set_handler(:select, method(:select_battle_database))
    @battle_type_window.set_handler(:encounter, method(:select_map_encounter))
    @battle_type_window.set_handler(:cancel, method(:close_custom_battle))
    @battle_start_ids ||= { :enemy => 1, :troop => 1 }
    @command_window.deactivate
  end

  def close_custom_battle
    @battle_type_window.dispose
    @battle_help_window.dispose
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
    @battle_list_window.dispose if @battle_list_window
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
    @enemy_battle_mode_window.set_handler(:temporary, method(:select_temporary_enemy))
    @enemy_battle_mode_window.set_handler(:cancel, method(:close_enemy_battle_mode))
  end

  def close_enemy_battle_mode
    @enemy_battle_mode_window.dispose
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
    @enemy_troop_list_window.dispose
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
    @battle_confirm_window.dispose
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
    @battle_confirm_window = nil
    @battle_confirm_source = nil
    @battle_request = nil
    @battle_enemy = nil
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
    @database_type_window.dispose
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
    @database_list_window.dispose if @database_list_window
    @database_help_window.dispose if @database_help_window
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

  def toggle_persona_dialogue_compatibility
    ResearchMod.toggle_persona_dialogue_compatibility
    @command_window.refresh
    @command_window.activate
  end

  def toggle_candidate_dialogue_view
    ResearchMod.toggle_candidate_dialogue_view
    @command_window.refresh
    @command_window.activate
  end

  def toggle_all_dialogue_force_party
    ResearchMod.toggle_all_dialogue_force_party
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
    @persona_window.dispose
    @persona_window = nil
    @command_window.activate
  end

  def open_class_list(kind)
    @selected_kind = kind
    @list_window = Window_ResearchModClassList.new(kind)
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
    unless @class_level_help_window
      @class_level_help_window = Window_Help.new(3)
      @class_level_help_window.z = 500
    end
    @class_level_window.setup(@actor, @selected_target_id)
    kind_name = @selected_kind == :class ? '职业' : '种族'
    @class_level_help_window.set_text(format(
      "目标%s：ID %d  %s\n请输入切换后的%s等级（1～%d）。\n降低等级不会忘记已经学会的技能。",
      kind_name, entry.id, entry.name, kind_name, @class_level_window.maximum
    ))
    @class_level_help_window.show
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
    @class_level_help_window.hide
    @list_window.activate
  end

  def close_class_list
    @list_window.dispose
    @list_window = nil
    @command_window.activate
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
end

class Scene_Map < Scene_Base
  include ResearchModAudioOverlayScene
  alias research_mod_custom_battle_start start
  alias research_mod_custom_battle_update_scene update_scene
  alias research_mod_audio_overlay_update update
  alias research_mod_audio_overlay_terminate terminate

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
    dispose_research_mod_audio_overlay
    research_mod_audio_overlay_terminate
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


class Window_ChoiceList
  alias research_mod_update_placement_for_custom_talk update_placement

  def update_placement
    research_mod_update_placement_for_custom_talk
    return unless $game_message
    return unless $game_message.instance_variable_get(:@research_mod_choice_right)

    self.x = Graphics.width - width
    bottom_y = $game_message.instance_variable_get(:@research_mod_choice_bottom_y)
    self.y = [bottom_y.to_i - height, 0].max if bottom_y
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
