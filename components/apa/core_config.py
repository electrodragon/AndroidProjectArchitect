class AppOrientation:

    def __init__(self):
        self.rather_not_say = "rather_not_say"
        self.portrait = "portrait"
        self.landscape = "landscape"


class SdkVersion:

    def __init__(self):
        self.minimum_version = 16
        self.maximum_version = 30
        self.sdk_versions = [
            {
                "name": "JellyBean 4.1",
                "api_version": 16
            },
            {
                "name": "JellyBean 4.2",
                "api_version": 17
            },
            {
                "name": "JellyBean 4.3",
                "api_version": 18
            },
            {
                "name": "Kitkat 4.4",
                "api_version": 19
            },
            {
                "name": "Lollipop 5.0",
                "api_version": 21
            },
            {
                "name": "Lollipop 5.1",
                "api_version": 22
            },
            {
                "name": "MarshMallow 6.0",
                "api_version": 23
            },
            {
                "name": "Nougat 7.0",
                "api_version": 24
            },
            {
                "name": "Nougat 7.1.1",
                "api_version": 25
            },
            {
                "name": "Oreo 8.0",
                "api_version": 26
            },
            {
                "name": "Oreo 8.1",
                "api_version": 27
            },
            {
                "name": "Pie 9.0",
                "api_version": 28
            },
            {
                "name": "Q 10.0",
                "api_version": 29
            },
            {
                "name": "R 11.0",
                "api_version": 30
            }
        ]


class CoreConfig:

    def __init__(self, min_sdk_version, app_orientation):
        self.root_project_name = ""
        self.app_name = ""
        self.package_name = ""
        self.hilt_app_name = ""
        self.min_sdk_version = min_sdk_version
        self.theme_no_action_bar = True
        self.app_orientation = app_orientation
