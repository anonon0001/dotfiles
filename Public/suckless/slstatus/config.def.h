/* appearance */
static const char *color_fg = "#B2B2B2";   /* Terminal grey */
static const char *color_bg = "#101010";   /* Dark void background */
static const char *separator = " | ";      /* Clean, minimal delimiter */
static const char *font = "JetBrainsMono Nerd Font Term:size=10";
/* interval between updates (in ms) */
const unsigned int interval = 1000;
/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";
/* maximum output string length */
#define MAXLEN 2048
/* function declarations */
static const struct arg args[] = {
    /* function        format                  argument */
    { cpu_perc,        " : : %s%% | ",             NULL },
    { ram_used,        "  : %s | ",             NULL },
    { netspeed_rx,     " : %s | ",              "wlp0s20u7" },
    { netspeed_tx,     " : %s | ",                "wlp0s20u7" },
    { disk_used,       "󰋊 : %s | ",            "/" },
	{ datetime,     "󰃭 : %s | ", "%a, %b %d" },
	{ datetime,     " : %s", "%H:%M:%S" },
};

