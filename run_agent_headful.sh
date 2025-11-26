#!/bin/bash
set -e

# Default task if none provided
TASK="${1:-how many pages does wikipedia have}"

echo "Starting Fara Agent..."
echo "Task: $TASK"
echo "Mode: Headful (Browser GUI visible)"

# Run the agent with the --headful flag
uv run python test_fara_agent.py \
    --task "$TASK" \
    --start_page "https://www.bing.com" \
    --endpoint_config endpoint_configs/vllm_config.json \
    --headful
