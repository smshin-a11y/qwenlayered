# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# No registry-verified custom nodes found in the workflow.
# The workflow includes custom nodes from unknown_registry that have no aux_id (GitHub repository) information,
# so they cannot be automatically installed or cloned. Please provide repository URLs or place the node folders
# under /comfyui/custom_nodes/ in your build context if you have them.
# The unresolved unknown_registry nodes:
# - MarkdownNote
# - PreviewAny
# - MarkdownNote
# - AILab_QwenVL

# download models into comfyui
# No models specified in the workflow.

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
