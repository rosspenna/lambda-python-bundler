while test $# -gt 0; do
  case "$1" in
    -h|--help)
      echo "options:"
      echo "-f, --freeze    execute pip freeze to update requirements.txt"
      ;;
    -f| --freeze)
      shift
      pip freeze > requirements.txt
      ;;
  esac
done
docker run --rm --name python_lambda_builder -v ${PWD}:/working python_builder
echo "built"
