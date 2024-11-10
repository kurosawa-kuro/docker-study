FROM golang:1.20.1-alpine

WORKDIR /app

# src ディレクトリではなく、カレントディレクトリの main.go をコピー
COPY main.go .

CMD ["go", "run", "main.go"]