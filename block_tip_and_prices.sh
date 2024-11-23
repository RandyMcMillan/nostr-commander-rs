nostril \
--sec $(mempool-space --blocks_tip_hash) \
--content "BLOCKS_TIP_HEIGHT=$(mempool-space --blocks_tip_height) \

USD=$(mempool-space_prices | jq .USD) \

EUR=$(mempool-space_prices | jq .EUR) \

GBP=$(mempool-space_prices | jq .GBP) \

CAD=$(mempool-space_prices | jq .CAD) \

CHF=$(mempool-space_prices | jq .CHF)" \
--tag blocks_tip_height $(mempool-space --blocks_tip_height) \
-t gnostr | \
gnostr-post-event -r wss://relay.damus.io
