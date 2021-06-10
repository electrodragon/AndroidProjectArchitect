class HelpManual:

    def __init__(self):
        self.s = "\n   Android Project Architect ( apa )\n"
        self.s += "\n:: Usage:\n   apa [OPTION] [<args>...]\n"
        self.s += "\n:: Options:\n"
        self.s += "   init         | Starts Creating New Android Project in current dir, if dir is empty.\n"
        self.s += "   -h, --help   | Shows This Help Screen\n"
        self.s += "   --ca         | Creates New Blank Activity if name doesn't conflict\n"
        self.s += "   --cf         | Creates New Fragment if name doesn't conflict\n"
        self.s += "   --cvm        | Creates View Model if name doesn't conflict and PaViewModel Exist.\n"
        self.s += "\n:: Examples: \n"
        self.s += "   $ apa init\n"
        self.s += "   $ apa --cf RegisterFragment LoginFragment SplashFragment\n"
        self.s += "   $ apa --cvm RegisterFragmentViewModel LoginFragmentViewModel\n"

    def __str__(self) -> str:
        return self.s
