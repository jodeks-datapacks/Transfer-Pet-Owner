scoreboard players set @a transfer_pet_owner.config 0

$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Transfer Pet Owner Config",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        {\
          "translate": "transfer_pet_owner.config.escape_to_close",\
          "fallback": "Press escape to close"\
        },\
        "italic": true\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        {\
          "translate": "transfer_pet_owner.config.add_players",\
          "fallback": "Add players that can transfer any pet"\
        }\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        {\
          "translate": "transfer_pet_owner.config.no_ownership",\
          "fallback": "(They don't need to own the pet)"\
        }\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        {\
          "translate": "transfer_pet_owner.config.online_requirement",\
          "fallback": "When adding / resetting the players, they need to be online"\
        }\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": 'Currently added players: $(transfer_owner_players)'\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:text",\
      "key": "dialog_player",\
      "label": {\
        "translate": "transfer_pet_owner.config.player_name",\
        "fallback": "Player name"\
      },\
    }\
  ],\
  "pause": false,\
  "after_action": "none",\
  "actions": [\
    {\
      "label": {\
        "translate": "transfer_pet_owner.config.add_player",\
        "fallback": "Add Player"\
      },\
      "action": {\
        type:"dynamic/run_command",\
        template:"function transfer_pet_owner:config/add_player {dialog_player:$(dialog_player)}"\
      }\
    },\
    {\
      "label": {\
        "translate": "transfer_pet_owner.config.reset_players",\
        "fallback": "Reset Players"\
      },\
      "action": {\
        type:"run_command",\
        command:"function transfer_pet_owner:config/reset_players"\
      }\
    }\
  ]\
}