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
  VALUE_VARIABLE_MAX = 99_999_999
  VALUE_STAT_MAX = 9_999_999
  STEAL_ALWAYS_SUCCESS_KEY = :@research_mod_steal_always_success
  MILK_ALWAYS_SUCCESS_KEY = :@research_mod_milk_always_success
  DROP_ALWAYS_SUCCESS_KEY = :@research_mod_drop_always_success
  TEMPTATION_IGNORE_HP_KEY = :@research_mod_temptation_ignore_hp
  SURE_HIT_KILL_KEY = :@research_mod_sure_hit_kill
  THROUGH_MODE_KEY = :@research_mod_through_mode
  PREVENT_EVENT_LUCA_FRONT_KEY = :@research_mod_prevent_event_luca_front
  FOLLOW_ALWAYS_SUCCESS_KEY = :@research_mod_follow_always_success
  BATTLE_ENEMY_STATUS_KEY = :@research_mod_battle_enemy_status
  BATTLE_PARTY_STATUS_KEY = :@research_mod_battle_party_status
  BATTLE_RECORD_KEY = :@research_mod_battle_record
  BATTLE_RECORD_MAX_LINES = 5000
  MANUAL_ENEMY_DIALOGUE_KEY = :@research_mod_manual_enemy_dialogue
  SPECIAL_ENEMY_DIALOGUE_SKILL_IDS = [*2109..2122, 9433, 9434]
  MILKING_COMMON_EVENT_ID = 12
  MILKING_RESULT_VARIABLE_ID = 11
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
  PERSONA_DIALOGUE_BASE_MENU_TEXTS = [
    'プレゼントをあげる',
    'プレゼントリストを見る',
    'やめる'
  ]

  def self.value_entries
    [
      { :key => :gold, :label => '金钱', :type => :gold },
      { :key => :casino_coin, :label => 'カジノコイン', :type => :variable,
        :id => CASINO_COIN_VARIABLE_ID, :maximum => VALUE_VARIABLE_MAX },
      { :key => :small_medal, :label => '小さなメダル', :type => :item,
        :id => SMALL_MEDAL_ITEM_ID },
      { :key => :large_medal, :label => '大きなメダル', :type => :item,
        :id => LARGE_MEDAL_ITEM_ID },
      { :key => :rabbit_point, :label => 'うさぎポイント', :type => :variable,
        :id => RABBIT_POINT_VARIABLE_ID, :maximum => VALUE_VARIABLE_MAX },
      { :key => :shura_bonus, :label => '修羅迷宮ボーナスポイント', :type => :variable,
        :id => SHURA_BONUS_POINT_VARIABLE_ID, :maximum => VALUE_VARIABLE_MAX },
      { :key => :party_member_max, :label => '队伍编成人数上限', :type => :party_member_max,
        :id => PARTY_MEMBER_MAX_PLUS_VARIABLE_ID, :minimum => PARTY_MEMBER_BASE_MAX,
        :maximum => PARTY_MEMBER_TOTAL_MAX },
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
    else
      return false
    end
    true
  end

  def self.lewd_soul_count
    item = $data_items[LEWD_SOUL_ITEM_ID]
    item ? $game_party.item_number(item) : 0
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
    actor_cutin_entries(actor).map { |entry| entry[1] }.uniq
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

  def self.author_info_text
    [
      '关于',
      '本研究修改器由作者狗棲制作，主要用于研究、调试和测试游戏内容。',
      '建议适度使用修改功能；如果所有内容都直接改成必定成功，可能会失去原本的探索、养成和战斗乐趣。',
      '前章卡圣山：将开关2479「アモス聖山暗転」改为 OFF，即可继续下山。',
      '终章卡新人类宴会：将变量1150「サラサ空賊団イベント」改为 17，',
      '然后再与サラサ、爱丽丝对话，即可结束该事件。',
      '蛭蟲細胞是物品 ID 282，可在按 ID 获取物品中直接输入 282。',
      '修改剧情开关或变量前，建议先保存存档，并尽量只修改提示中的目标数值。'
    ].join("\n")
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
    PANTY_ARMOR_ID_RANGE.map { |armor_id| $data_armors[armor_id] }.compact.select do |armor|
      !armor.name.empty?
    end
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
    entries = available.first(LOSE_EVENT_PAGE_SIZE)
    next_start_id = available[LOSE_EVENT_PAGE_SIZE]

    {
      :start_id => normalized_start_id,
      :entries => entries,
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
      '前章卡在アモス聖山：将开关2479「アモス聖山暗転」设为 OFF，即可下山。'
    else
      '终章卡在新人类宴会：将变量1150「サラサ空賊団イベント」设为17，再与サラサ、アリス对话。\n' +
        '戒指事件：变量1401「ルシフィナ指輪イベント」设为0可重复拿戒指，设为1可重复送戒指。\n' +
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
    ids = map_infos.keys.select { |id| id >= normalized_start_id }.sort
    entries = ids.first(MAP_PAGE_SIZE)
    next_id = ids[MAP_PAGE_SIZE]
    {
      :start_id => normalized_start_id,
      :entries => entries,
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

    category = "話し掛け回应"
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
          end
          next if skill_ids.empty?

          skill = skill_ids.map { |skill_id| $data_skills[skill_id] }.compact.find do |entry|
            !entry.name.to_s.empty?
          end
          skill_id = skill ? skill.id : skill_ids.first
          skill_name = skill ? skill.name : '未命名技能'
          words = NWConst::Actor.create_skill_words(word_data).select do |word|
            enemy.word_conditions_met?(word)
          end
          words.each_with_index do |word, word_index|
            converted = enemy.create_skill_words(word)
            next unless converted

            lines = enemy_dialogue_word_lines(converted)
            preview = lines.join(' ').strip
            preview = '(无文字)' if preview.empty?
            entries << {
              :category => '技能台词',
              :skill_id => skill_id,
              :skill_name => skill_name,
              :word_index => word_index + 1,
              :preview => preview,
              :lines => lines,
              :word => converted
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

  def self.candidate_dialogue_entries(list, choice_index)
    return [] unless list && choice_index

    actor_label_jump_index = nil
    upper_bound = [choice_index, list.size].min - 1
    upper_bound.downto(0) do |index|
      command = list[index]
      next unless candidate_dialogue_command?(command, 355)
      next unless command.parameters[0].to_s.strip == 'actor_label_jump'

      actor_label_jump_index = index
      break
    end
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

      actor = $data_actors[actor_id]
      name = actor ? actor.name.to_s : "Actor #{actor_id}"
      entries << {
        :actor_id => actor_id,
        :name => name,
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
    return Float::INFINITY if actor? && ResearchMod.steal_always_success?

    research_mod_steal_success
  end
end

class Game_Battler
  alias research_mod_item_hit item_hit
  alias research_mod_item_block_rate item_block_rate
  alias research_mod_sure_hit_item_apply_hit item_apply_hit
  alias research_mod_sure_kill_execute_damage execute_damage

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
  alias research_mod_make_drop_items make_drop_items

  def make_drop_items
    return research_mod_make_drop_items unless ResearchMod.drop_always_success?

    result = enemy.drop_items.select { |drop| drop.kind > 0 }
    result.each { |drop| $game_library.count_up_drop_item(id, drop) }
    result.map(&:object)
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
    persona_enabled = ResearchMod.persona_dialogue_compatibility? &&
                      ResearchMod.persona_dialogue_menu?(var_id, names) &&
                      !persona_ids.empty?
    dialogue_enabled = !candidate_entries.empty?
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
        research_mod_choose_candidate_dialogue(candidate_entries)
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

  def research_mod_choose_candidate_dialogue(entries)
    selected_index = nil
    choices = entries.map do |entry|
      if entry[:actor_id]
        format('%4d  %s', entry[:actor_id], entry[:name])
      else
        entry[:name]
      end
    end
    choices << "やめる"
    choices.each { |name| $game_message.choices.push(name) }
    $game_message.choice_cancel_type = choices.size
    $game_message.choice_proc = proc { |index| selected_index = index }
    Fiber.yield while $game_message.choice?
    return unless selected_index && selected_index < entries.size

    entries[selected_index][:blocks].each do |block|
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

class Game_Player
  alias research_mod_through_update update

  def update
    research_mod_through_update
    ResearchMod.apply_through_mode if ResearchMod.through_mode?
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

module BattleManager
  class << self
    alias research_mod_luca_order_giveup giveup
    alias research_mod_luca_order_process_defeat process_defeat

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
    [fitting_height(item_count * 6), Graphics.height - 16].min
  end

  def item_height
    line_height * 6
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
       ResearchMod.enemy_battler_file_name(enemy),
       ResearchMod.enemy_cutin_file_names(enemy),
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
      draw_text(rect.x, rect.y, rect.width, item_height, '返回', 1)
      return
    end

    enemy = command_ext(index)
    return unless enemy

    draw_text(rect.x, rect.y, rect.width, line_height,
              format('%d：%s', enemy.enemy_id, enemy.name), 0)
    draw_text(rect.x, rect.y + line_height, rect.width, line_height,
              format('HP %s / %s　　MP %s / %s',
                     formatted_number(enemy.hp), formatted_number(enemy.mhp),
                     formatted_number(enemy.mp), formatted_number(enemy.mmp)), 0)
    battler_name = ResearchMod.enemy_battler_file_name(enemy)
    battler_name = '无' if battler_name.empty?
    draw_text(rect.x, rect.y + line_height * 2, rect.width, line_height,
              format('战斗图：%s', battler_name), 0)
    draw_text(rect.x, rect.y + line_height * 3, rect.width, line_height,
              format('状态：%s', state_text(enemy)), 0)
    draw_text(rect.x, rect.y + line_height * 4, rect.width, line_height,
              format('强化/弱化：%s', buff_text(enemy)), 0)
    cutin_names = ResearchMod.enemy_cutin_file_names(enemy)
    cutin_text = cutin_names.empty? ? '无' : cutin_names.join(', ')
    draw_text(rect.x, rect.y + line_height * 5, rect.width, line_height,
              format('技能Cut-in：%s', cutin_text), 0)
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
       actor.class_id, actor.tribe_id,
       actor.states.map(&:id), buff_levels(actor),
       actor.atk, actor.def, actor.mat, actor.agi]
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
  def initialize(help_window)
    @enemy = nil
    @entries = []
    @dialogue_help_window = help_window
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

  def setup(enemy, entries)
    @enemy = enemy
    @entries = entries
    refresh
    select(0)
    update_help
  end

  def make_command_list
    @entries.each do |entry|
      if entry[:skill_id]
        label = format('[%s] %4d  %s  候选%d  %s', entry[:category],
                       entry[:skill_id], entry[:skill_name],
                       entry[:word_index], entry[:preview])
      else
        label = format('[%s] %s', entry[:category], entry[:preview])
      end
      add_command(label, :select, true, entry)
    end
    add_command('返回敌人列表', :cancel)
  end

  def update_help
    return unless help_window

    if current_symbol == :select
      entry = current_ext
      if entry[:skill_id]
        header = format('敌人：%04d「%s」  类型：%s  技能：%04d「%s」  候选%d',
                        @enemy.enemy_id, @enemy.name, entry[:category],
                        entry[:skill_id], entry[:skill_name], entry[:word_index])
      else
        header = format('敌人：%04d「%s」  类型：%s',
                        @enemy.enemy_id, @enemy.name, entry[:category])
      end
      help_window.set_text(([header] + entry[:lines]).join(10.chr))
    else
      help_window.set_text('返回敌人列表。选择对话只播放台词，不会发动对应技能。')
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

    contents.font.size = 18
    draw_text(item_rect_for_text(index), @records[index])
  end
end
class Window_PartyCommand < Window_Command
  alias research_mod_enemy_info_make_command_list make_command_list

  def make_command_list
    research_mod_enemy_info_make_command_list
    add_command('敌方信息', :research_enemy_info) if ResearchMod.battle_enemy_status?
    add_command('我方信息', :research_party_info) if ResearchMod.battle_party_status?
    add_command('可用技能台词', :research_enemy_dialogue_available) if ResearchMod.manual_enemy_dialogue?
    add_command('全部技能台词', :research_enemy_dialogue_all) if ResearchMod.manual_enemy_dialogue?
    add_command('特殊战斗对白', :research_enemy_dialogue_special) if ResearchMod.manual_enemy_dialogue?
    add_command('击败台词', :research_enemy_dialogue_down) if ResearchMod.manual_enemy_dialogue?
    add_command('战斗记录', :research_battle_record) if ResearchMod.battle_record_enabled?
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
    research_mod_battle_record_battle_start
  end

  def create_party_command_window
    research_mod_enemy_info_create_party_command_window
    @party_command_window.set_handler(:research_enemy_info,
                                      method(:open_research_mod_enemy_status))
    @party_command_window.set_handler(:research_party_info,
                                      method(:open_research_mod_party_status))
    @party_command_window.set_handler(:research_battle_record,
                                      method(:open_research_mod_battle_record))
    @party_command_window.set_handler(
      :research_enemy_dialogue_available,
      method(:open_research_mod_enemy_dialogue_available)
    )
    @party_command_window.set_handler(
      :research_enemy_dialogue_all,
      method(:open_research_mod_enemy_dialogue_all)
    )
    @party_command_window.set_handler(
      :research_enemy_dialogue_special,
      method(:open_research_mod_enemy_dialogue_special)
    )
    @party_command_window.set_handler(
      :research_enemy_dialogue_down,
      method(:open_research_mod_enemy_dialogue_down)
    )
  end

  def create_enemy_window
    research_mod_enemy_status_create_enemy_window
    @research_mod_enemy_status_window = Window_ResearchModBattleEnemyStatus.new
    @research_mod_enemy_status_window.set_handler(
      :enemy_status, method(:keep_research_mod_enemy_status)
    )
    @research_mod_enemy_status_window.set_handler(
      :cancel, method(:close_research_mod_enemy_status)
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
      :select, method(:execute_research_mod_enemy_dialogue)
    )
    @research_mod_enemy_dialogue_window.set_handler(
      :cancel, method(:close_research_mod_enemy_dialogue_list)
    )
  end

  def research_mod_visible_enemies
    return [] unless $game_troop

    $game_troop.members.select { |enemy| enemy && enemy.exist? }
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

  def close_research_mod_enemy_status
    @research_mod_enemy_status_window.hide
    @research_mod_enemy_status_window.deactivate
    @research_mod_enemy_status_window.unselect
    @party_command_window.activate
  end

  def update
    research_mod_enemy_status_update
    update_research_mod_enemy_status
    update_research_mod_party_status
  end

  def update_research_mod_enemy_status
    window = @research_mod_enemy_status_window
    return unless window && !window.disposed? && window.visible

    enemies = window.battle_enemies
    if enemies.empty?
      close_research_mod_enemy_status
      return
    end

    window.set_enemies(enemies)
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
    windows = [@research_mod_enemy_status_window,
               @research_mod_party_status_window,
               @research_mod_battle_record_window,
               @research_mod_enemy_dialogue_enemy_window,
               @research_mod_enemy_dialogue_window,
               @research_mod_enemy_dialogue_help_window]
    windows.each do |window|
      window.dispose if window && !window.disposed?
    end
    @research_mod_enemy_status_window = nil
    @research_mod_party_status_window = nil
    @research_mod_battle_record_window = nil
    @research_mod_enemy_dialogue_enemy_window = nil
    @research_mod_enemy_dialogue_window = nil
    @research_mod_enemy_dialogue_help_window = nil
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
    add_command('学习当前角色妖術', :learning, !ResearchMod.learning_skills.empty?)
    add_command('切换当前角色职业', :class)
    add_command('切换当前角色种族', :tribe)
    add_command('当前角色全职全种', :unlock_all)
    add_command('保存当前角色备份', :backup)
    add_command('恢复当前角色备份', :restore, ResearchMod.snapshot?(@actor))
    add_command('---------- 角色与队伍 ----------', :separator, false)
    add_command('全可入队角色加入候补', :recruit_all)
    add_command('全角色好感度设为30000', :set_all_love)
    add_command('魔王城形态变化（无视事件）：' + (ResearchMod.persona_dialogue_compatibility? ? '开' : '关'), :persona_dialogue)
    add_command('---------- 查看与资源 ----------', :separator, false)
    add_command('角色图鉴', :actor_encyclopedia)
    add_command('数值与货币修改', :value_editor)
    add_command('按ID获取物品／武器／防具', :database_item)
    add_command(format('获得全部内裤（%d/%d）', ResearchMod.owned_panty_count,
                       ResearchMod.panty_armors.size), :gain_all_panties)
    add_command(format('获得全部牛奶（%d/%d）', ResearchMod.owned_milk_count,
                       ResearchMod.milk_items.size), :gain_all_milk)
    add_command(format('获得全部结婚物品（%d/%d）', ResearchMod.owned_marriage_armor_count,
                       ResearchMod.marriage_armors.size), :gain_all_marriage_armors)
    add_command('当前音乐信息', :audio_info)
    add_command('关于', :author_info)
    add_command('---------- 地图与事件 ----------', :separator, false)
    add_command('随意开战', :arbitrary_battle)
    add_command('任意地图传送', :teleport)
    add_command('传送坐标记录', :teleport_slots)
    add_command('战败事件', :lose_event)
    add_command('地图与事件检查', :map_inspector)
    add_command('开关与变量修改', :debug_database)
    add_command('---------- 战斗与功能开关 ----------', :separator, false)
    add_command("魔王城全对话：" + (ResearchMod.candidate_dialogue_view? ? '开' : '关'), :candidate_dialogue)
    add_command('对话无视入队条件：' + (ResearchMod.all_dialogue_force_party? ? '开' : '关'), :all_dialogue_force_party)
    add_command('偷盗必定成功：' + (ResearchMod.steal_always_success? ? '开' : '关'), :steal_success)
    add_command('牛奶获取必定成功：' + (ResearchMod.milk_always_success? ? '开' : '关'), :milk_success)
    add_command('物品必定掉落：' + (ResearchMod.drop_always_success? ? '开' : '关'), :drop_success)
    add_command('敌人诱惑事件无视HP：' + (ResearchMod.temptation_ignore_hp? ? '开' : '关'), :temptation_ignore_hp)
    add_command('我方攻击必中必杀：' + (ResearchMod.sure_hit_kill? ? '开' : '关'), :sure_hit_kill)
    add_command('穿墙模式：' + (ResearchMod.through_mode? ? '开' : '关'), :through_mode)
    add_command('防止鲁卡强制置顶：' + (ResearchMod.prevent_event_luca_front? ? '开' : '关'), :prevent_luca_front)
    add_command('敌人入队率100：' + (ResearchMod.follow_always_success? ? '开' : '关'), :follow_success)
    add_command('战斗显示敌方信息：' + (ResearchMod.battle_enemy_status? ? '开' : '关'), :battle_enemy_status)
    add_command('战斗显示我方信息：' + (ResearchMod.battle_party_status? ? '开' : '关'), :battle_party_status)
    add_command('战斗记录：' + (ResearchMod.battle_record_enabled? ? '开' : '关'), :battle_record)
    add_command('战斗手动敌人对话：' + (ResearchMod.manual_enemy_dialogue? ? '开' : '关'), :manual_enemy_dialogue)
    add_command('返回菜单', :cancel)
  end

  def update_help
    return unless help_window

    text = case current_symbol
           when :recruit_all, :set_all_love
             '此操作会影响全局角色数据，可能影响全局成就判定。建议提前备份存档，再执行。'
           when :candidate_dialogue
             '开启后，候补角色相关的魔王城对话可以在不满足原条件时查看。'
           when :all_dialogue_force_party
             '开启后，对话会把相关角色视为已在队伍，显示更多队友相关对话。'
           when :steal_success
             '开启后，盗む相关判定必定成功，包括可偷取物品和成功率检查。'
           when :milk_success
             '开启后，ミルク获取判定必定成功，不再出现搾れなかった的失败结果。'
           when :drop_success
             '开启后，敌人的物品掉落率视为必定成功，符合掉落条件的物品会掉落。'
           when :temptation_ignore_hp
             '开启后，敌人诱惑事件不再检查当前HP是否低于原版触发条件。'
           when :sure_hit_kill
             '开启后，我方攻击必中，并尽量将命中目标直接判定为必杀效果。'
           when :through_mode
             '开启后，玩家可以穿过地图上的普通阻挡。部分特殊事件或区域仍可能限制移动。'
           when :prevent_luca_front
             '开启后，尽量阻止事件把鲁卡强制移动到队伍第一位。'
           when :follow_success
             '开启后，战斗结束后的敌人入队判定视为成功。'
           when :battle_enemy_status
             '开启后，战斗菜单显示敌人的HP、MP、状态、强化/弱化和图片相关信息。'
           when :battle_party_status
             '开启后，战斗菜单显示我方队员的等级、HP、MP、职业、种族和状态。'
           when :battle_record
             '开启后，记录本场战斗的技能、伤害、恢复和状态文字，可从战斗菜单查看。'
           when :manual_enemy_dialogue
             '开启后，可以在战斗菜单中手动查看和播放敌人的可用技能台词及特殊战斗对白。'
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

class Window_ResearchModActorEncyclopediaList < Window_Command
  attr_reader :page_index, :page_max

  def initialize(page_index, detail_window)
    @entries = ResearchMod.actor_encyclopedia_entries
    @page_max = [(@entries.size + ResearchMod::ACTOR_ENCYCLOPEDIA_PAGE_SIZE - 1) /
                 ResearchMod::ACTOR_ENCYCLOPEDIA_PAGE_SIZE, 1].max
    @page_index = [[page_index, @page_max - 1].min, 0].max
    @page_entries = @entries.slice(@page_index * ResearchMod::ACTOR_ENCYCLOPEDIA_PAGE_SIZE,
                                  ResearchMod::ACTOR_ENCYCLOPEDIA_PAGE_SIZE) || []
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

  def make_command_list
    @page_entries.each do |actor|
      add_command(format('%4d  %s', actor.id, actor.name), :select, true, actor)
    end
    add_command(format('上一批角色（%d/%d）', @page_index + 1, @page_max),
                :previous, @page_index > 0)
    add_command(format('下一批角色（%d/%d）', @page_index + 1, @page_max),
                :next, @page_index + 1 < @page_max)
    add_command('返回', :cancel)
  end

  def update_help
    @detail_window.set_message(command_help_text)
  end

  def command_help_text
    case current_symbol
    when :previous then '返回上一批角色。'
    when :next then '加载下一批角色。'
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
    4
  end

  def make_command_list
    add_command('备注', :note)
    add_command('固有アビリティ', :ability)
    add_command('Picture路径', :picture_path)
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
    add_command('---------- 队伍设置 ----------', :separator, false)
    add_value_command(:party_member_max)
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
    @page[:entries].each do |item|
      suffix = ResearchMod.database_item_special?(item) ? '（特殊模板／不可直接获取）' : ''
      enabled = ResearchMod.database_item_capacity(item) > 0
      add_command(format('%4d  %s%s', item.id, item.name, suffix), :select, enabled, item)
    end
    add_command(format('加载上一批%d个', ResearchMod::DATABASE_PAGE_SIZE),
                :previous, !@history.empty?)
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
    Graphics.height - fitting_height(3)
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
    @page[:entries].each do |entry|
      name = @kind == :enemy ? entry.name : ResearchMod.troop_display_name(entry)
      add_command(format('%4d  %s', entry.id, name), :select, true, entry)
    end
    add_command(format('加载上一批%d项', ResearchMod::BATTLE_PAGE_SIZE),
                :previous,
                !@history.empty? || !@page[:previous_start_id].nil?)
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
      hp = entry.params ? entry.params[0] : 0
      mp = entry.params ? entry.params[1] : 0
      format('敌人ID %d  %s\nHP %d  MP %d  EXP %d  G %d\n确认：选择挑战方式',
             entry.id, entry.name, hp, mp, entry.exp, entry.gold).gsub(92.chr + 'n', 10.chr)
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
    else '返回随意开战类型选择。'
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

  def initialize(start_id, history, help_window)
    @history = history
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
    @page[:entries].each do |enemy|
      add_command(format('%4d  E%4d  %s', enemy.id, enemy.lose_event_id, enemy.name),
                  :select, true, enemy)
    end
    add_command(format('加载上一批%d项', ResearchMod::LOSE_EVENT_PAGE_SIZE),
                :previous, !@history.empty?)
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
      text = format('敌人ID %d  %s\n基础敌人ID %d　战败事件ID %d\n确认：进入播放确认',
                    enemy.id, enemy.name, base_enemy_id, enemy.lose_event_id)
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
  def initialize(enemy, help_window)
    @enemy = enemy
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
    add_command('播放战败事件', :confirm)
    add_command('返回', :cancel)
  end

  def update_help
    return unless help_window

    text = format('敌人ID %d  %s　战败事件ID %d\n直接播放事件，不会开始战斗。',
                  @enemy.id, @enemy.name, @enemy.lose_event_id)
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
    @page[:entries].each do |entry_id|
      name = ResearchMod.debug_entry_name(@kind, entry_id)[0, 42]
      value = ResearchMod.debug_entry_value_text(@kind, entry_id).to_s[0, 30]
      add_command(format('%4d  %s：%s', entry_id, name, value), :select, true, entry_id)
    end
    add_command(format('加载上一批%d项', ResearchMod::DEBUG_DATABASE_PAGE_SIZE),
                :previous, !@history.empty?)
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
    add_command('重新输入地图ID', :reinput)
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
      text = format('地图 %04d「%s」\n事件 %04d「%s」　原始坐标 X=%d Y=%d\n%s\n确认后编辑传送坐标。',
                    @map_id, ResearchMod.map_name(@map_id), event.id,
                    ResearchMod.event_display_name(event), event.x, event.y,
                    ResearchMod.event_graphic_text(@map_id, event))
    elsif current_symbol == :reinput
      text = '重新输入目标地图 ID。'
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

  def initialize(start_id, history, help_window)
    @history = history
    @page = ResearchMod.map_page(start_id)
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
    @page[:entries].each do |map_id|
      add_command(format('%4d  %s', map_id, ResearchMod.map_name(map_id)), :select, true, map_id)
    end
    add_command(format('加载上一批%d张地图', ResearchMod::MAP_PAGE_SIZE),
                :previous, !@history.empty?)
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
             else '返回地图检查入口。'
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
    @command_window.set_handler(:value_editor, method(:open_value_editor))
    @command_window.set_handler(:audio_info, method(:open_audio_info))
    @command_window.set_handler(:author_info, method(:open_author_info))
    @command_window.set_handler(:arbitrary_battle, method(:open_arbitrary_battle))
    @command_window.set_handler(:teleport, method(:open_teleport_browser))
    @command_window.set_handler(:teleport_slots, method(:open_teleport_slots))
    @command_window.set_handler(:lose_event, method(:open_lose_event_browser))
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
    @command_window.set_handler(:sure_hit_kill, method(:toggle_sure_hit_kill))
    @command_window.set_handler(:through_mode, method(:toggle_through_mode))
    @command_window.set_handler(:prevent_luca_front, method(:toggle_prevent_event_luca_front))
    @command_window.set_handler(:follow_success, method(:toggle_follow_always_success))
    @command_window.set_handler(:battle_enemy_status, method(:toggle_battle_enemy_status))
    @command_window.set_handler(:battle_party_status, method(:toggle_battle_party_status))
    @command_window.set_handler(:battle_record, method(:toggle_battle_record))
    @command_window.set_handler(:manual_enemy_dialogue, method(:toggle_manual_enemy_dialogue))
    @command_window.set_handler(:persona, method(:select_persona))
    @command_window.set_handler(:backup, method(:backup_actor))
    @command_window.set_handler(:restore, method(:restore_actor))
    @command_window.set_handler(:cancel, method(:return_scene))
    restore_arbitrary_battle_after_battle if @return_to_arbitrary_battle
  end

  def update
    dispose_research_mod_deferred_windows
    super
  end

  def terminate
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
    ResearchMod.set_all_actor_love
    @command_window.activate
  end

  def recruit_all
    ResearchMod.recruit_all_available_actors
    @command_window.activate
  end

  def open_actor_encyclopedia
    @actor_encyclopedia_page = 0
    width = Graphics.width - ResearchMod::ACTOR_ENCYCLOPEDIA_LIST_WIDTH
    @actor_encyclopedia_detail_window = Window_ResearchModActorEncyclopediaDetail.new(
      ResearchMod::ACTOR_ENCYCLOPEDIA_LIST_WIDTH, 0, width, Graphics.height
    )
    @actor_encyclopedia_detail_window.set_handler(:cancel, method(:close_actor_encyclopedia_detail))
    create_actor_encyclopedia_list
    @command_window.deactivate
  end

  def create_actor_encyclopedia_list
    @actor_encyclopedia_list_window = Window_ResearchModActorEncyclopediaList.new(
      @actor_encyclopedia_page, @actor_encyclopedia_detail_window
    )
    @actor_encyclopedia_list_window.set_handler(:select, method(:select_actor_encyclopedia_entry))
    @actor_encyclopedia_list_window.set_handler(:previous, method(:load_previous_actor_encyclopedia_page))
    @actor_encyclopedia_list_window.set_handler(:next, method(:load_next_actor_encyclopedia_page))
    @actor_encyclopedia_list_window.set_handler(:cancel, method(:close_actor_encyclopedia))
  end

  def recreate_actor_encyclopedia_list
    @actor_encyclopedia_list_window.dispose
    create_actor_encyclopedia_list
  end

  def load_previous_actor_encyclopedia_page
    @actor_encyclopedia_page -= 1
    recreate_actor_encyclopedia_list
  end

  def load_next_actor_encyclopedia_page
    @actor_encyclopedia_page += 1
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

  def close_actor_encyclopedia_mode
    @actor_encyclopedia_mode_window.dispose
    @actor_encyclopedia_mode_window = nil
    @actor_encyclopedia_detail_window.set_message(
      '选择角色并确认后，可查看魔物备注、固有アビリティ或Picture路径。'
    )
    @actor_encyclopedia_list_window.activate
  end

  def close_actor_encyclopedia
    @actor_encyclopedia_mode_window.dispose if @actor_encyclopedia_mode_window
    @actor_encyclopedia_list_window.dispose
    @actor_encyclopedia_detail_window.dispose
    @actor_encyclopedia_mode_window = nil
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
    @teleport_return_to_event_list = false
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
    text = format('请输入目标地图ID（1～%d）\n确认后加载该地图全部事件。\n选择事件后可以编辑 X/Y 坐标。\n取消：%s',
                  ResearchMod.map_maximum_id,
                  @teleport_return_to_event_list ? '返回事件列表。' : '返回研究修改器。')
    @teleport_help_window.set_text(text.gsub(92.chr + 'n', 10.chr))
  end

  def close_teleport_map_id_input
    @teleport_map_id_window.close
    @teleport_map_id_window.deactivate
    if @teleport_return_to_event_list && @teleport_event_window
      @teleport_event_window.show
      @teleport_event_window.activate
      @teleport_event_window.update_help
      @teleport_return_to_event_list = false
    else
      close_teleport_browser
    end
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
    @teleport_return_to_event_list = false
    @teleport_map_id_window.close
    @teleport_map_id_window.deactivate
    dispose_teleport_event_list
    open_teleport_event_list
  end

  def open_teleport_event_list
    @teleport_event_window = Window_ResearchModTeleportEventList.new(
      @teleport_map_id, @teleport_help_window
    )
    @teleport_event_window.set_handler(:select, method(:select_teleport_event))
    @teleport_event_window.set_handler(:reinput, method(:reinput_teleport_map_id))
    @teleport_event_window.set_handler(:cancel, method(:close_teleport_browser))
  end

  def dispose_teleport_event_list
    defer_research_mod_window_dispose(@teleport_event_window)
    @teleport_event_window = nil
  end

  def reinput_teleport_map_id
    @teleport_event_window.hide
    @teleport_event_window.deactivate
    @teleport_return_to_event_list = true
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
    defer_research_mod_window_dispose(@teleport_map_id_window)
    defer_research_mod_window_dispose(@teleport_help_window)
    @teleport_confirm_window = nil
    @teleport_coordinate_input_window = nil
    @teleport_coordinate_window = nil
    @teleport_event_window = nil
    @teleport_map_id_window = nil
    @teleport_help_window = nil
    @teleport_event = nil
    @teleport_coordinate_axis = nil
    @teleport_return_to_event_list = false
    @command_window.activate
  end

  def open_lose_event_browser
    @lose_event_help_window = Window_Help.new(3)
    @lose_event_help_window.y = Graphics.height - @lose_event_help_window.height
    @lose_event_start_id ||= 1
    @lose_event_history = []
    @command_window.deactivate
    open_lose_event_id_input(false)
  end

  def open_lose_event_id_input(return_to_list)
    unless @lose_event_id_window
      @lose_event_id_window = Window_ResearchModLoseEventIdInput.new
      @lose_event_id_window.set_handler(:ok, method(:apply_lose_event_start_id))
      @lose_event_id_window.set_handler(:cancel, method(:close_lose_event_id_input))
    end
    @lose_event_return_to_list = return_to_list
    @lose_event_id_window.setup(@lose_event_start_id)
    maximum_id = [$data_enemies.size - 1, 1].max
    text = format('请输入敌人起始ID（1～%d）\n确认：加载最多%d个可回想事件　取消：返回\n跳过空名称、无事件和原版禁止回想的敌人。',
                  maximum_id, ResearchMod::LOSE_EVENT_PAGE_SIZE)
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
      start_id, @lose_event_history, @lose_event_help_window
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
    return @lose_event_list_window.activate unless previous_start_id

    @lose_event_start_id = previous_start_id
    dispose_lose_event_list
    open_lose_event_list(previous_start_id)
  end

  def select_lose_event_enemy
    @lose_event_enemy = @lose_event_list_window.current_ext
    @lose_event_list_window.deactivate
    @lose_event_confirm_window = Window_ResearchModLoseEventConfirm.new(
      @lose_event_enemy, @lose_event_help_window
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
    if ResearchMod.setup_lose_event(@lose_event_enemy)
      SceneManager.call(Scene_Novel)
    else
      Sound.play_buzzer
      @lose_event_confirm_window.activate
      @lose_event_help_window.set_text('该敌人的战败事件当前无法播放。')
    end
  end

  def open_arbitrary_battle
    @battle_help_window = Window_Help.new(3)
    @battle_help_window.y = Graphics.height - @battle_help_window.height
    @battle_type_window = Window_ResearchModBattleType.new(@battle_help_window)
    @battle_type_window.set_handler(:select, method(:select_battle_database))
    @battle_type_window.set_handler(:encounter, method(:select_map_encounter))
    @battle_type_window.set_handler(:cancel, method(:close_arbitrary_battle))
    @battle_start_ids ||= { :enemy => 1, :troop => 1 }
    @command_window.deactivate
  end

  def close_arbitrary_battle
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
    @battle_id_window.close
    @battle_id_window.deactivate
    @battle_type_window.activate
    @battle_type_window.update_help
  end

  def apply_battle_start_id
    @battle_start_ids[@battle_kind] = @battle_id_window.number
    @battle_history = []
    @battle_id_window.close
    @battle_id_window.deactivate
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
    @battle_confirm_window.set_handler(:confirm, method(:start_arbitrary_battle))
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

  def arbitrary_battle_return_state
    list_open = @battle_list_window && !@battle_list_window.disposed?
    {
      :kind => @battle_kind,
      :start_id => list_open ? @battle_list_window.page[:start_id] : nil,
      :list_index => list_open ? @battle_list_window.index : nil,
      :type_index => @battle_type_window ? @battle_type_window.index : 0
    }
  end

  def clear_arbitrary_battle_window_references
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

  def restore_arbitrary_battle_after_battle
    state = @return_to_arbitrary_battle
    @return_to_arbitrary_battle = nil
    ResearchMod.cleanup_temporary_troop
    clear_arbitrary_battle_window_references
    open_arbitrary_battle
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

  def start_arbitrary_battle
    unless ResearchMod.setup_battle_request(@battle_request)
      Sound.play_buzzer
      @battle_confirm_window.activate
      @battle_help_window.set_text(
        "无法开始该战斗，" +
        "请重新选择敌人或敌群。"
      )
      return
    end

    @return_to_arbitrary_battle = arbitrary_battle_return_state
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

  def toggle_battle_record
    ResearchMod.toggle_battle_record
    @command_window.refresh
    @command_window.activate
  end

  def toggle_manual_enemy_dialogue
    ResearchMod.toggle_manual_enemy_dialogue
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
  alias research_mod_arbitrary_battle_start start
  alias research_mod_arbitrary_battle_update_scene update_scene

  def start
    ResearchMod.cleanup_temporary_troop
    research_mod_arbitrary_battle_start
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
    research_mod_arbitrary_battle_update_scene
  end
end

class Window_MenuCommand < Window_Command
  alias research_mod_add_original_commands add_original_commands

  def add_original_commands
    research_mod_add_original_commands
    add_command('研究用修改器', :research_mod)
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
