#!/bin/bash
echo "카메라 스트리밍 시작"

# Python 스트리밍 서버 실행
python3 /dev/raspi/stream_camera.py &

device_ip=$(hostname -I | awk '{print $1}')
echo "스트리밍 서버가 실행 중 http://$device_ip:8080/video_feed 에서 확인"
