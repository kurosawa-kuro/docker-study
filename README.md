# docker-study

Dockerコンテナの停止と削除の主なコマンドを説明します：

1. 基本的なコマンド
```bash
# 実行中のコンテナ確認
docker ps

# 全てのコンテナ確認（停止中含む）
docker ps -a

# コンテナの停止
docker stop <container_id or container_name>

# コンテナの削除
docker rm <container_id or container_name>
```

2. 複数のコンテナを一括で操作
```bash
# 全ての実行中コンテナを停止
docker stop $(docker ps -q)

# 全てのコンテナを削除（停止中含む）
docker rm $(docker ps -a -q)

# 強制的に全てのコンテナを削除
docker rm -f $(docker ps -a -q)
```

3. docker-compose環境の場合
```bash
# コンテナの停止
docker-compose stop

# コンテナの削除（ボリュームは保持）
docker-compose down

# コンテナとボリュームの削除
docker-compose down -v
```

4. イメージの削除
```bash
# 未使用イメージの削除
docker image prune

# 特定のイメージを削除
docker rmi <image_id or image_name>

# 全てのイメージを削除
docker rmi $(docker images -q)
```

5. システムのクリーンアップ
```bash
# 未使用のリソース（コンテナ、ネットワーク、イメージ、ボリューム）を削除
docker system prune

# ボリュームも含めて全て削除
docker system prune -a --volumes
```

6. 使用例とフラグ
```bash
# 停止中のコンテナを削除
docker container prune

# 強制削除（-f）
docker rm -f <container_id>

# ボリューム削除（-v）
docker rm -v <container_id>
```

エラー対処：
```bash
# コンテナが停止しない場合
docker kill <container_id>

# 権限エラーの場合
sudo docker stop <container_id>
```

便利なエイリアス設定：
```bash
# ~/.bashrcや~/.zshrcに追加
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dstop='docker stop'
alias drm='docker rm'
alias dprune='docker system prune -a'
```
