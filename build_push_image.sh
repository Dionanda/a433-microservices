# Build image dengan tag "item-app:v1" menggunakan Dockerfile pada direktori saat ini
sudo docker build -t item-app:v1 .

# Melihat daftar image Docker yang ada
sudo docker images

# Menambahkan tag pada image dengan nama "item-app:v1" menjadi "ghcr.io/dionanda/item-app:v1"
sudo docker tag item-app:v1 ghcr.io/dionanda/item-app:v1

# Login ke GitHub Container Registry menggunakan access token yang disimpan dalam variabel $CR_PAT
echo $CR_PAT | docker login ghcr.io -u dionanda --password-stdin

# Mengunggah image dengan tag "ghcr.io/dionanda/item-app:v1" ke GitHub Container Registry
sudo docker push ghcr.io/dionanda/item-app:v1