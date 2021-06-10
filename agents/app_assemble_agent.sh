APA_ROOT_DIR="$1"
DROID_PROJECT_DIR="$APA_ROOT_DIR/components/droid_project"
CURRENT_DIR="$(pwd)"
PACKAGE_DIRS="$2"

# Copy .idea folder to current initializing project
cp -rf "${DROID_PROJECT_DIR}/.idea" "${CURRENT_DIR}/"
# Rename copied .idea/gitignore to .idea/.gitignore  # Prefixed with a dot (.)
mv "${CURRENT_DIR}/.idea/gitignore" "${CURRENT_DIR}/.idea/.gitignore"

# Copy project level gitignore to initializing project as .gitignore
cp "${DROID_PROJECT_DIR}/gitignore" "${CURRENT_DIR}/.gitignore"

# Copy gradle dir, gradle.properties, gradlew and gradlew.bat
cp -rf "${DROID_PROJECT_DIR}"/gradle* "${CURRENT_DIR}/"

# Writing gradle-wrapper.properties
WRAPPER_PROPERTIES_FILE="gradle/wrapper/gradle-wrapper.properties"
# Write Current Time of EDT TimeZone To gradle-wrapper.properties file
TZ="America/New_York" date +'#%a %b %d %H:%M:%S EDT %Y' > "$CURRENT_DIR/$WRAPPER_PROPERTIES_FILE"
# Write Remaining Content of gradle-wrapper.properties file
tail -n +2 "$DROID_PROJECT_DIR/$WRAPPER_PROPERTIES_FILE" >> "$CURRENT_DIR/$WRAPPER_PROPERTIES_FILE"

# Creating app module dirs
mkdir -p "${CURRENT_DIR}/app/libs"

mkdir -p "${CURRENT_DIR}/app/src/androidTest/java/${PACKAGE_DIRS}"
mkdir -p "${CURRENT_DIR}/app/src/test/java/${PACKAGE_DIRS}"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/adapters"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/grand_parents/view_model"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/grand_parents/fragment"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/grand_parents/activity"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/data_bank"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/di"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/common"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/firebase/storage"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/firebase/firestore"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/firebase/database"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/view_models/activities"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/view_models/fragments"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/network/client"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/network/response"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/network/services"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/room/dao"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/room/model"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/room/db"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/model/room/entities"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/repository"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/utils/constants"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/utils/prefs_controller"

mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/views/activities"
mkdir -p "${CURRENT_DIR}/app/src/main/java/${PACKAGE_DIRS}/views/fragments"

mkdir -p "${CURRENT_DIR}/app/src/main/res"

mkdir -p "${CURRENT_DIR}/app/src/main/res/layout"

mkdir -p "${CURRENT_DIR}/app/src/main/res/menu"

mkdir -p "${CURRENT_DIR}/app/src/main/res/xml"

mkdir -p "${CURRENT_DIR}/app/src/main/res/navigation"

cp -rf "${DROID_PROJECT_DIR}/app/src/main/res/"drawable* "${CURRENT_DIR}/app/src/main/res/"

cp -rf "${DROID_PROJECT_DIR}/app/src/main/res/"mipmap* "${CURRENT_DIR}/app/src/main/res/"

cp -rf "${DROID_PROJECT_DIR}/app/src/main/res/"values* "${CURRENT_DIR}/app/src/main/res/"

cp "${DROID_PROJECT_DIR}/app/gitignore" "${CURRENT_DIR}/app/.gitignore"

cp "${DROID_PROJECT_DIR}/app/proguard-rules.pro" "${CURRENT_DIR}/app/"
