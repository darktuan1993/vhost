output=$(nginx -t 2>&1 | awk '!/nginx: the configuration file/')
echo "thong tin" $output

if [[ "$output" == *"successful"* ]]; then
    echo "Thành công"
    nginx -s reload
else
    echo "Không thành công"
fi
