class WebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def process_raw
  # 这里假设你的原始数据是纯文本格式
  raw_data = request.body.read

  # 转换成期望的JSON格式
  processed_data = {
    category: "PLAIN_TEXT",
    data: raw_data
  }

  # 在这里存储数据或执行其他逻辑

  # 响应
  render json: { status: 'Success', processed_data: processed_data }, status: :ok
end
end
