scoreboard players set @a transferpetowner.config 0

$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Transfer Pet Owner Config",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "text": "Press escape to close",\
        "italic": true\
      }\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": "Add players that can transfer any pet"\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": "(They don't need to own the pet)"\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": "When adding / resetting the players, they need to be online"\
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
      "label": "Player name"\
    }\
  ],\
  "pause": false,\
  "after_action": "none",\
  "actions": [\
    {\
      "label": "Add Player",\
      "action": {\
        type:"dynamic/run_command",\
        template:"function transferpetowner:config/add_player {dialog_player:$(dialog_player)}"\
      }\
    },\
    {\
      "label": "Reset Players",\
      "action": {\
        type:"run_command",\
        command:"function transferpetowner:config/reset_players"\
      }\
    }\
  ]\
}